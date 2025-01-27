//
// BetaTesterInvitationCreateRequestData.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

public struct BetaTesterInvitationCreateRequestData: Sendable, Codable, JSONEncodable, Hashable {

    public enum ModelType: String, Sendable, Codable, CaseIterable, CaseIterableDefaultsLast {
        case betatesterinvitations = "betaTesterInvitations"
        case unknownDefaultOpenApi = "unknown_default_open_api"
    }
    public var type: ModelType
    public var relationships: BetaTesterInvitationCreateRequestDataRelationships

    public init(type: ModelType, relationships: BetaTesterInvitationCreateRequestDataRelationships) {
        self.type = type
        self.relationships = relationships
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case type
        case relationships
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(type, forKey: .type)
        try container.encode(relationships, forKey: .relationships)
    }
}

