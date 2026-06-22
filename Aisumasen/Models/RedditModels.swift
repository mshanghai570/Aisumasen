//
//  RedditModels.swift
//  Aisumasen
//
//  Reddit API data models
//

import Foundation

// MARK: - Reddit Token Response
struct RedditTokenResponse: Codable {
    let accessToken: String
    let tokenType: String
    let expiresIn: Int
    let scope: String
    let refreshToken: String?

    enum CodingKeys: String, CodingKey {
        case accessToken = "access_token"
        case tokenType = "token_type"
        case expiresIn = "expires_in"
        case scope
        case refreshToken = "refresh_token"
    }
}

// MARK: - Reddit Post Response (Add more models as needed)
struct RedditListing: Codable {
    let kind: String
    let data: RedditListingData
}

struct RedditListingData: Codable {
    let children: [RedditPostWrapper]
    let after: String?
    let before: String?
}

struct RedditPostWrapper: Codable {
    let kind: String
    let data: RedditPost
}

struct RedditPost: Codable {
    let title: String
    let author: String
    let subreddit: String
    let ups: Int
    let url: String?
    let selftext: String?
    let createdUtc: Double
    let permalink: String
}