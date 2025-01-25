//
// GameCenterLeaderboardSetMemberLocalizationCreateRequestData.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

public struct GameCenterLeaderboardSetMemberLocalizationCreateRequestData: Sendable, Codable, JSONEncodable, Hashable {

    public enum ModelType: String, Sendable, Codable, CaseIterable, CaseIterableDefaultsLast {
        case gamecenterleaderboardsetmemberlocalizations = "gameCenterLeaderboardSetMemberLocalizations"
        case unknownDefaultOpenApi = "unknown_default_open_api"
    }
    public var type: ModelType
    public var attributes: GameCenterLeaderboardSetMemberLocalizationAttributes?
    public var relationships: GameCenterLeaderboardSetMemberLocalizationCreateRequestDataRelationships

    public init(type: ModelType, attributes: GameCenterLeaderboardSetMemberLocalizationAttributes? = nil, relationships: GameCenterLeaderboardSetMemberLocalizationCreateRequestDataRelationships) {
        self.type = type
        self.attributes = attributes
        self.relationships = relationships
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case type
        case attributes
        case relationships
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(type, forKey: .type)
        try container.encodeIfPresent(attributes, forKey: .attributes)
        try container.encode(relationships, forKey: .relationships)
    }
}

