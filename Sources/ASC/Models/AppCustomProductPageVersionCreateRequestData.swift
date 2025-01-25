//
// AppCustomProductPageVersionCreateRequestData.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

public struct AppCustomProductPageVersionCreateRequestData: Sendable, Codable, JSONEncodable, Hashable {

    public enum ModelType: String, Sendable, Codable, CaseIterable, CaseIterableDefaultsLast {
        case appcustomproductpageversions = "appCustomProductPageVersions"
        case unknownDefaultOpenApi = "unknown_default_open_api"
    }
    public var type: ModelType
    public var attributes: AppCustomProductPageVersionInlineCreateAttributes?
    public var relationships: AppCustomProductPageVersionCreateRequestDataRelationships

    public init(type: ModelType, attributes: AppCustomProductPageVersionInlineCreateAttributes? = nil, relationships: AppCustomProductPageVersionCreateRequestDataRelationships) {
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

