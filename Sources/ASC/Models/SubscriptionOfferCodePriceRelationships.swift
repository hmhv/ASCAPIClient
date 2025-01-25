//
// SubscriptionOfferCodePriceRelationships.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct SubscriptionOfferCodePriceRelationships: Codable, JSONEncodable, Hashable {

    public var territory: AppPricePointV3RelationshipsTerritory?
    public var subscriptionPricePoint: SubscriptionIntroductoryOfferRelationshipsSubscriptionPricePoint?

    public init(territory: AppPricePointV3RelationshipsTerritory? = nil, subscriptionPricePoint: SubscriptionIntroductoryOfferRelationshipsSubscriptionPricePoint? = nil) {
        self.territory = territory
        self.subscriptionPricePoint = subscriptionPricePoint
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case territory
        case subscriptionPricePoint
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(territory, forKey: .territory)
        try container.encodeIfPresent(subscriptionPricePoint, forKey: .subscriptionPricePoint)
    }
}

