//
// SubscriptionPromotionalOfferInlineCreate.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct SubscriptionPromotionalOfferInlineCreate: Codable, JSONEncodable, Hashable {

    public enum ModelType: String, Codable, CaseIterable, CaseIterableDefaultsLast {
        case subscriptionpromotionaloffers = "subscriptionPromotionalOffers"
        case unknownDefaultOpenApi = "unknown_default_open_api"
    }
    public var type: ModelType
    public var id: String?
    public var attributes: SubscriptionPromotionalOfferInlineCreateAttributes
    public var relationships: SubscriptionPromotionalOfferInlineCreateRelationships?

    public init(type: ModelType, id: String? = nil, attributes: SubscriptionPromotionalOfferInlineCreateAttributes, relationships: SubscriptionPromotionalOfferInlineCreateRelationships? = nil) {
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
        try container.encodeIfPresent(id, forKey: .id)
        try container.encode(attributes, forKey: .attributes)
        try container.encodeIfPresent(relationships, forKey: .relationships)
    }
}

