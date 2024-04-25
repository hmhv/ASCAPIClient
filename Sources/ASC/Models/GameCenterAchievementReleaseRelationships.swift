//
// GameCenterAchievementReleaseRelationships.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct GameCenterAchievementReleaseRelationships: Codable, JSONEncodable, Hashable {

    public var gameCenterDetail: AppRelationshipsGameCenterDetail?
    public var gameCenterAchievement: GameCenterAchievementLocalizationRelationshipsGameCenterAchievement?

    public init(gameCenterDetail: AppRelationshipsGameCenterDetail? = nil, gameCenterAchievement: GameCenterAchievementLocalizationRelationshipsGameCenterAchievement? = nil) {
        self.gameCenterDetail = gameCenterDetail
        self.gameCenterAchievement = gameCenterAchievement
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case gameCenterDetail
        case gameCenterAchievement
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(gameCenterDetail, forKey: .gameCenterDetail)
        try container.encodeIfPresent(gameCenterAchievement, forKey: .gameCenterAchievement)
    }
}

