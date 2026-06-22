//
//  Color+Vintage.swift
//  Aisumasen
//
//  Vintage color palette extension
//

import SwiftUI

// MARK: - Mind Games Vintage Color Palette
extension Color {
    static let vintageBackground = Color(hex: "#FDFBF7")    // Warm record-jacket cream
    static let vintageCard = Color(hex: "#F5F2EB")         // Soft card stock
    static let vintagePrimaryText = Color(hex: "#262524")   // Deep charcoal wax
    static let vintageAccent = Color(hex: "#D97724")       // 1970s amber/orange
    static let vintageSecondaryText = Color(hex: "#6E6B64") // Smoky slate gray
    
    init(hex: String) {
        let hex = hex.trimmingCharacters(in: CharacterSet.alphanumerics.inverted)
        var int: UInt64 = 0
        Scanner(string: hex).scanHexInt64(&int)
        let a, r, g, b: UInt64
        switch hex.count {
        case 3: // RGB (12-bit)
            (a, r, g, b) = (255, (int >> 8) * 17, (int >> 4 & 0xF) * 17, (int & 0xF) * 17)
        case 6: // RGB (24-bit)
            (a, r, g, b) = (255, int >> 16, int >> 8 & 0xFF, int & 0xFF)
        case 8: // ARGB (32-bit)
            (a, r, g, b) = (int >> 24, int >> 16 & 0xFF, int >> 8 & 0xFF, int & 0xFF)
        default:
            (a, r, g, b) = (1, 1, 1, 1)
        }
        self.init(.sRGB, red: Double(r) / 255, green: Double(g) / 255, blue: Double(b) / 255, opacity: Double(a) / 255)
    }
}