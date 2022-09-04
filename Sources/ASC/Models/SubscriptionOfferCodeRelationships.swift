//
// SubscriptionOfferCodeRelationships.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct SubscriptionOfferCodeRelationships: Codable, JSONEncodable, Hashable {

    public var subscription: PromotedPurchaseRelationshipsSubscription?
    public var oneTimeUseCodes: SubscriptionOfferCodeRelationshipsOneTimeUseCodes?
    public var customCodes: SubscriptionOfferCodeRelationshipsCustomCodes?
    public var prices: SubscriptionOfferCodeRelationshipsPrices?

    public init(subscription: PromotedPurchaseRelationshipsSubscription? = nil, oneTimeUseCodes: SubscriptionOfferCodeRelationshipsOneTimeUseCodes? = nil, customCodes: SubscriptionOfferCodeRelationshipsCustomCodes? = nil, prices: SubscriptionOfferCodeRelationshipsPrices? = nil) {
        self.subscription = subscription
        self.oneTimeUseCodes = oneTimeUseCodes
        self.customCodes = customCodes
        self.prices = prices
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case subscription
        case oneTimeUseCodes
        case customCodes
        case prices
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(subscription, forKey: .subscription)
        try container.encodeIfPresent(oneTimeUseCodes, forKey: .oneTimeUseCodes)
        try container.encodeIfPresent(customCodes, forKey: .customCodes)
        try container.encodeIfPresent(prices, forKey: .prices)
    }
}

