//
// GameCenterLeaderboardSetReleaseCreateRequestDataRelationships.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

public struct GameCenterLeaderboardSetReleaseCreateRequestDataRelationships: Sendable, Codable, JSONEncodable, Hashable {

    public var gameCenterDetail: GameCenterAchievementReleaseCreateRequestDataRelationshipsGameCenterDetail
    public var gameCenterLeaderboardSet: GameCenterLeaderboardSetLocalizationCreateRequestDataRelationshipsGameCenterLeaderboardSet

    public init(gameCenterDetail: GameCenterAchievementReleaseCreateRequestDataRelationshipsGameCenterDetail, gameCenterLeaderboardSet: GameCenterLeaderboardSetLocalizationCreateRequestDataRelationshipsGameCenterLeaderboardSet) {
        self.gameCenterDetail = gameCenterDetail
        self.gameCenterLeaderboardSet = gameCenterLeaderboardSet
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case gameCenterDetail
        case gameCenterLeaderboardSet
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(gameCenterDetail, forKey: .gameCenterDetail)
        try container.encode(gameCenterLeaderboardSet, forKey: .gameCenterLeaderboardSet)
    }
}

