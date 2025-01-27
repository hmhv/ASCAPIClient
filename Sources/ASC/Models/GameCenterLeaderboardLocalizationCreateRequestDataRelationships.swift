//
// GameCenterLeaderboardLocalizationCreateRequestDataRelationships.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

public struct GameCenterLeaderboardLocalizationCreateRequestDataRelationships: Sendable, Codable, JSONEncodable, Hashable {

    public var gameCenterLeaderboard: GameCenterLeaderboardLocalizationCreateRequestDataRelationshipsGameCenterLeaderboard

    public init(gameCenterLeaderboard: GameCenterLeaderboardLocalizationCreateRequestDataRelationshipsGameCenterLeaderboard) {
        self.gameCenterLeaderboard = gameCenterLeaderboard
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case gameCenterLeaderboard
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(gameCenterLeaderboard, forKey: .gameCenterLeaderboard)
    }
}

