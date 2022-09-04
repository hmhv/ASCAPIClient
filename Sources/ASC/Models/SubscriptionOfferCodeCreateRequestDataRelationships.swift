//
// SubscriptionOfferCodeCreateRequestDataRelationships.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct SubscriptionOfferCodeCreateRequestDataRelationships: Codable, JSONEncodable, Hashable {

    public var subscription: SubscriptionAppStoreReviewScreenshotCreateRequestDataRelationshipsSubscription
    public var prices: SubscriptionOfferCodeCreateRequestDataRelationshipsPrices

    public init(subscription: SubscriptionAppStoreReviewScreenshotCreateRequestDataRelationshipsSubscription, prices: SubscriptionOfferCodeCreateRequestDataRelationshipsPrices) {
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
        try container.encode(subscription, forKey: .subscription)
        try container.encode(prices, forKey: .prices)
    }
}

