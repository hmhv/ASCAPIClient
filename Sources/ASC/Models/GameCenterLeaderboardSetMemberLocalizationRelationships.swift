//
// GameCenterLeaderboardSetMemberLocalizationRelationships.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct GameCenterLeaderboardSetMemberLocalizationRelationships: Codable, JSONEncodable, Hashable {

    public var gameCenterLeaderboardSet: GameCenterLeaderboardSetLocalizationRelationshipsGameCenterLeaderboardSet?
    public var gameCenterLeaderboard: GameCenterDetailRelationshipsDefaultLeaderboard?

    public init(gameCenterLeaderboardSet: GameCenterLeaderboardSetLocalizationRelationshipsGameCenterLeaderboardSet? = nil, gameCenterLeaderboard: GameCenterDetailRelationshipsDefaultLeaderboard? = nil) {
        self.gameCenterLeaderboardSet = gameCenterLeaderboardSet
        self.gameCenterLeaderboard = gameCenterLeaderboard
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case gameCenterLeaderboardSet
        case gameCenterLeaderboard
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(gameCenterLeaderboardSet, forKey: .gameCenterLeaderboardSet)
        try container.encodeIfPresent(gameCenterLeaderboard, forKey: .gameCenterLeaderboard)
    }
}

