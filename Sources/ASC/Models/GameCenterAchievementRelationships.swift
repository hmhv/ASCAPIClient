//
// GameCenterAchievementRelationships.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

public struct GameCenterAchievementRelationships: Sendable, Codable, JSONEncodable, Hashable {

    public var gameCenterDetail: GameCenterAchievementReleaseRelationshipsGameCenterDetail?
    public var gameCenterGroup: GameCenterAchievementRelationshipsGameCenterGroup?
    @available(*, deprecated, message: "This property is deprecated.")
    public var groupAchievement: GameCenterAchievementRelationshipsGroupAchievement?
    public var localizations: GameCenterAchievementRelationshipsLocalizations?
    public var releases: GameCenterAchievementRelationshipsReleases?

    public init(gameCenterDetail: GameCenterAchievementReleaseRelationshipsGameCenterDetail? = nil, gameCenterGroup: GameCenterAchievementRelationshipsGameCenterGroup? = nil, groupAchievement: GameCenterAchievementRelationshipsGroupAchievement? = nil, localizations: GameCenterAchievementRelationshipsLocalizations? = nil, releases: GameCenterAchievementRelationshipsReleases? = nil) {
        self.gameCenterDetail = gameCenterDetail
        self.gameCenterGroup = gameCenterGroup
        self.groupAchievement = groupAchievement
        self.localizations = localizations
        self.releases = releases
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case gameCenterDetail
        case gameCenterGroup
        case groupAchievement
        case localizations
        case releases
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(gameCenterDetail, forKey: .gameCenterDetail)
        try container.encodeIfPresent(gameCenterGroup, forKey: .gameCenterGroup)
        try container.encodeIfPresent(groupAchievement, forKey: .groupAchievement)
        try container.encodeIfPresent(localizations, forKey: .localizations)
        try container.encodeIfPresent(releases, forKey: .releases)
    }
}

