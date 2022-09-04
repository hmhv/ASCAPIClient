//
// BetaBuildLocalizationCreateRequestData.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct BetaBuildLocalizationCreateRequestData: Codable, JSONEncodable, Hashable {

    public enum ModelType: String, Codable, CaseIterable, CaseIterableDefaultsLast {
        case betabuildlocalizations = "betaBuildLocalizations"
        case unknownDefaultOpenApi = "unknown_default_open_api"
    }
    public var type: ModelType
    public var attributes: BetaBuildLocalizationCreateRequestDataAttributes
    public var relationships: BetaAppReviewSubmissionCreateRequestDataRelationships

    public init(type: ModelType, attributes: BetaBuildLocalizationCreateRequestDataAttributes, relationships: BetaAppReviewSubmissionCreateRequestDataRelationships) {
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
        try container.encode(relationships, forKey: .relationships)
    }
}

