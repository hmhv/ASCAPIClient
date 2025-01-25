//
// ReviewSubmissionItem.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

public struct ReviewSubmissionItem: Sendable, Codable, JSONEncodable, Hashable {

    public enum ModelType: String, Sendable, Codable, CaseIterable, CaseIterableDefaultsLast {
        case reviewsubmissionitems = "reviewSubmissionItems"
        case unknownDefaultOpenApi = "unknown_default_open_api"
    }
    public var type: ModelType
    public var id: String
    public var attributes: ReviewSubmissionItemAttributes?
    public var relationships: ReviewSubmissionItemRelationships?
    public var links: ResourceLinks?

    public init(type: ModelType, id: String, attributes: ReviewSubmissionItemAttributes? = nil, relationships: ReviewSubmissionItemRelationships? = nil, links: ResourceLinks? = nil) {
        self.type = type
        self.id = id
        self.attributes = attributes
        self.relationships = relationships
        self.links = links
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case type
        case id
        case attributes
        case relationships
        case links
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(type, forKey: .type)
        try container.encode(id, forKey: .id)
        try container.encodeIfPresent(attributes, forKey: .attributes)
        try container.encodeIfPresent(relationships, forKey: .relationships)
        try container.encodeIfPresent(links, forKey: .links)
    }
}

