//
//  MindGamesPostRow.swift
//  Aisumasen
//
//  Vintage-styled Reddit post row view
//

import SwiftUI

struct MindGamesPostRow: View {
    let title: String
    let author: String
    let subreddit: String
    let upvotes: Int
    
    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            // Subreddit & Author Header
            HStack {
                Text("r/\(subreddit)")
                    .font(.caption)
                    .fontWeight(.bold)
                    .foregroundColor(Color.vintageAccent)
                    .padding(.horizontal, 8)
                    .padding(.vertical, 2)
                    .background(Color.vintageAccent.opacity(0.1))
                    .cornerRadius(4)
                
                Text("• posted by u/\(author)")
                    .font(.caption)
                    .foregroundColor(Color.vintageSecondaryText)
                Spacer()
            }
            
            // Post Title
            Text(title)
                .font(.headline)
                .fontWeight(.medium)
                .foregroundColor(Color.vintagePrimaryText)
                .lineLimit(3)
                .fixedSize(horizontal: false, vertical: true)
            
            // Interaction Bar
            HStack {
                HStack(spacing: 4) {
                    Image(systemName: "arrow.up")
                    Text("\(upvotes)")
                }
                .font(.footnote)
                .fontWeight(.semibold)
                .foregroundColor(Color.vintagePrimaryText)
                .padding(.horizontal, 8)
                .padding(.vertical, 4)
                .background(Color.vintageBackground)
                .cornerRadius(4)
                
                Spacer()
                
                Image(systemName: "bubble.right")
                    .font(.footnote)
                    .foregroundColor(Color.vintageSecondaryText)
                    .padding(.horizontal, 8)
                    .padding(.vertical, 4)
                    .background(Color.vintageBackground)
                    .cornerRadius(4)
            }
            .padding(.top, 4)
        }
        .padding(16)
        .background(
            RoundedRectangle(cornerRadius: 8)
                .fill(Color.vintageCard)
                .overlay(
                    RoundedRectangle(cornerRadius: 8)
                        .stroke(Color.vintageSecondaryText.opacity(0.1), lineWidth: 1)
                )
        )
        .cornerRadius(8)
        .shadow(color: Color.black.opacity(0.05), radius: 2, x: 0, y: 1)
        .shadow(color: Color.black.opacity(0.03), radius: 6, x: 0, y: 2)
    }
}

// MARK: - Preview
struct MindGamesPostRow_Previews: PreviewProvider {
    static var previews: some View {
        MindGamesPostRow(
            title: "This is a sample Reddit post title that demonstrates the vintage styling",
            author: "sample_user",
            subreddit: "swift",
            upvotes: 1247
        )
        .padding()
        .background(Color.vintageBackground)
        .previewLayout(.sizeThatFits)
    }
}