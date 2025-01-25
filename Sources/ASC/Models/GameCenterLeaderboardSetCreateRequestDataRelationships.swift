//
// GameCenterLeaderboardSetCreateRequestDataRelationships.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

public struct GameCenterLeaderboardSetCreateRequestDataRelationships: Sendable, Codable, JSONEncodable, Hashable {

    public var gameCenterDetail: GameCenterAchievementReleaseRelationshipsGameCenterDetail?
    public var gameCenterGroup: GameCenterAchievementRelationshipsGameCenterGroup?
    public var gameCenterLeaderboards: GameCenterLeaderboardSetCreateRequestDataRelationshipsGameCenterLeaderboards?

    public init(gameCenterDetail: GameCenterAchievementReleaseRelationshipsGameCenterDetail? = nil, gameCenterGroup: GameCenterAchievementRelationshipsGameCenterGroup? = nil, gameCenterLeaderboards: GameCenterLeaderboardSetCreateRequestDataRelationshipsGameCenterLeaderboards? = nil) {
        self.gameCenterDetail = gameCenterDetail
        self.gameCenterGroup = gameCenterGroup
        self.gameCenterLeaderboards = gameCenterLeaderboards
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case gameCenterDetail
        case gameCenterGroup
        case gameCenterLeaderboards
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(gameCenterDetail, forKey: .gameCenterDetail)
        try container.encodeIfPresent(gameCenterGroup, forKey: .gameCenterGroup)
        try container.encodeIfPresent(gameCenterLeaderboards, forKey: .gameCenterLeaderboards)
    }
}

