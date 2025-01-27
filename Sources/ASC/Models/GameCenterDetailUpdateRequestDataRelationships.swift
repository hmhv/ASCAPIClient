//
// GameCenterDetailUpdateRequestDataRelationships.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

public struct GameCenterDetailUpdateRequestDataRelationships: Sendable, Codable, JSONEncodable, Hashable {

    public var gameCenterGroup: GameCenterAchievementRelationshipsGameCenterGroup?
    public var defaultLeaderboard: GameCenterDetailRelationshipsDefaultLeaderboard?
    public var defaultGroupLeaderboard: GameCenterDetailRelationshipsDefaultLeaderboard?

    public init(gameCenterGroup: GameCenterAchievementRelationshipsGameCenterGroup? = nil, defaultLeaderboard: GameCenterDetailRelationshipsDefaultLeaderboard? = nil, defaultGroupLeaderboard: GameCenterDetailRelationshipsDefaultLeaderboard? = nil) {
        self.gameCenterGroup = gameCenterGroup
        self.defaultLeaderboard = defaultLeaderboard
        self.defaultGroupLeaderboard = defaultGroupLeaderboard
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case gameCenterGroup
        case defaultLeaderboard
        case defaultGroupLeaderboard
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(gameCenterGroup, forKey: .gameCenterGroup)
        try container.encodeIfPresent(defaultLeaderboard, forKey: .defaultLeaderboard)
        try container.encodeIfPresent(defaultGroupLeaderboard, forKey: .defaultGroupLeaderboard)
    }
}

