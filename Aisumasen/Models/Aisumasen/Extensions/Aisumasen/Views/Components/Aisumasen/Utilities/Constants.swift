//
//  Constants.swift
//  Aisumasen
//
//  App constants and configuration
//

import Foundation

struct Constants {
    // Reddit API Configuration
    static let redditBaseURL = "https://oauth.reddit.com"
    static let redditAuthURL = "https://www.reddit.com/api/v1/access_token"
    
    // App Configuration
    static let appName = "Aisumasen"
    static let appVersion = "1.0.0"
    
    // Vintage Theme Colors (for reference)
    struct VintageColors {
        static let background = "#FDFBF7"    // Warm record-jacket cream
        static let card = "#F5F2EB"         // Soft card stock
        static let primaryText = "#262524"   // Deep charcoal wax
        static let accent = "#D97724"       // 1970s amber/orange
        static let secondaryText = "#6E6B64" // Smoky slate gray
    }
}