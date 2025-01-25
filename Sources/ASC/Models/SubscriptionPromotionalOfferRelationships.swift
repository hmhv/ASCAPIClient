//
// SubscriptionPromotionalOfferRelationships.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

public struct SubscriptionPromotionalOfferRelationships: Sendable, Codable, JSONEncodable, Hashable {

    public var subscription: PromotedPurchaseRelationshipsSubscription?
    public var prices: SubscriptionPromotionalOfferRelationshipsPrices?

    public init(subscription: PromotedPurchaseRelationshipsSubscription? = nil, prices: SubscriptionPromotionalOfferRelationshipsPrices? = nil) {
        self.subscription = subscription
        self.prices = prices
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case subscription
        case prices
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(subscription, forKey: .subscription)
        try container.encodeIfPresent(prices, forKey: .prices)
    }
}

