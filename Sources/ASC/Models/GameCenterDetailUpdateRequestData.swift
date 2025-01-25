//
// GameCenterDetailUpdateRequestData.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

public struct GameCenterDetailUpdateRequestData: Sendable, Codable, JSONEncodable, Hashable {

    public enum ModelType: String, Sendable, Codable, CaseIterable, CaseIterableDefaultsLast {
        case gamecenterdetails = "gameCenterDetails"
        case unknownDefaultOpenApi = "unknown_default_open_api"
    }
    public var type: ModelType
    public var id: String
    public var attributes: GameCenterDetailCreateRequestDataAttributes?
    public var relationships: GameCenterDetailUpdateRequestDataRelationships?

    public init(type: ModelType, id: String, attributes: GameCenterDetailCreateRequestDataAttributes? = nil, relationships: GameCenterDetailUpdateRequestDataRelationships? = nil) {
        self.type = type
        self.id = id
        self.attributes = attributes
        self.relationships = relationships
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case type
        case id
        case attributes
        case relationships
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(type, forKey: .type)
        try container.encode(id, forKey: .id)
        try container.encodeIfPresent(attributes, forKey: .attributes)
        try container.encodeIfPresent(relationships, forKey: .relationships)
    }
}

