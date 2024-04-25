//
// PromotedPurchaseCreateRequestDataRelationships.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct PromotedPurchaseCreateRequestDataRelationships: Codable, JSONEncodable, Hashable {

    public var app: AlternativeDistributionKeyCreateRequestDataRelationshipsApp
    public var inAppPurchaseV2: InAppPurchasePriceInlineCreateRelationshipsInAppPurchaseV2?
    public var subscription: PromotedPurchaseCreateRequestDataRelationshipsSubscription?

    public init(app: AlternativeDistributionKeyCreateRequestDataRelationshipsApp, inAppPurchaseV2: InAppPurchasePriceInlineCreateRelationshipsInAppPurchaseV2? = nil, subscription: PromotedPurchaseCreateRequestDataRelationshipsSubscription? = nil) {
        self.app = app
        self.inAppPurchaseV2 = inAppPurchaseV2
        self.subscription = subscription
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case app
        case inAppPurchaseV2
        case subscription
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(app, forKey: .app)
        try container.encodeIfPresent(inAppPurchaseV2, forKey: .inAppPurchaseV2)
        try container.encodeIfPresent(subscription, forKey: .subscription)
    }
}

