//
// GameCenterLeaderboardImageCreateRequestDataRelationships.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

public struct GameCenterLeaderboardImageCreateRequestDataRelationships: Sendable, Codable, JSONEncodable, Hashable {

    public var gameCenterLeaderboardLocalization: GameCenterLeaderboardImageCreateRequestDataRelationshipsGameCenterLeaderboardLocalization

    public init(gameCenterLeaderboardLocalization: GameCenterLeaderboardImageCreateRequestDataRelationshipsGameCenterLeaderboardLocalization) {
        self.gameCenterLeaderboardLocalization = gameCenterLeaderboardLocalization
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case gameCenterLeaderboardLocalization
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(gameCenterLeaderboardLocalization, forKey: .gameCenterLeaderboardLocalization)
    }
}

