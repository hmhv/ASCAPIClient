//
// GameCenterLeaderboardCreateRequestData.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

public struct GameCenterLeaderboardCreateRequestData: Sendable, Codable, JSONEncodable, Hashable {

    public enum ModelType: String, Sendable, Codable, CaseIterable, CaseIterableDefaultsLast {
        case gamecenterleaderboards = "gameCenterLeaderboards"
        case unknownDefaultOpenApi = "unknown_default_open_api"
    }
    public var type: ModelType
    public var attributes: GameCenterLeaderboardCreateRequestDataAttributes
    public var relationships: GameCenterLeaderboardCreateRequestDataRelationships?

    public init(type: ModelType, attributes: GameCenterLeaderboardCreateRequestDataAttributes, relationships: GameCenterLeaderboardCreateRequestDataRelationships? = nil) {
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
        try container.encode(attributes, forKey: .attributes)
        try container.encodeIfPresent(relationships, forKey: .relationships)
    }
}

