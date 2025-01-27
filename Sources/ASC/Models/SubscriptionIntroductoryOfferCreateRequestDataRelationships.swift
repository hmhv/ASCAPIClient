//
// SubscriptionIntroductoryOfferCreateRequestDataRelationships.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

public struct SubscriptionIntroductoryOfferCreateRequestDataRelationships: Sendable, Codable, JSONEncodable, Hashable {

    public var subscription: SubscriptionAppStoreReviewScreenshotCreateRequestDataRelationshipsSubscription
    public var territory: AppPricePointV3RelationshipsTerritory?
    public var subscriptionPricePoint: SubscriptionIntroductoryOfferRelationshipsSubscriptionPricePoint?

    public init(subscription: SubscriptionAppStoreReviewScreenshotCreateRequestDataRelationshipsSubscription, territory: AppPricePointV3RelationshipsTerritory? = nil, subscriptionPricePoint: SubscriptionIntroductoryOfferRelationshipsSubscriptionPricePoint? = nil) {
        self.subscription = subscription
        self.territory = territory
        self.subscriptionPricePoint = subscriptionPricePoint
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case subscription
        case territory
        case subscriptionPricePoint
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(subscription, forKey: .subscription)
        try container.encodeIfPresent(territory, forKey: .territory)
        try container.encodeIfPresent(subscriptionPricePoint, forKey: .subscriptionPricePoint)
    }
}

