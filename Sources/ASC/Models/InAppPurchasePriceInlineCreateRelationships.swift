//
// InAppPurchasePriceInlineCreateRelationships.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct InAppPurchasePriceInlineCreateRelationships: Codable, JSONEncodable, Hashable {

    public var inAppPurchaseV2: InAppPurchaseAppStoreReviewScreenshotRelationshipsInAppPurchaseV2?
    public var inAppPurchasePricePoint: InAppPurchasePriceRelationshipsInAppPurchasePricePoint?

    public init(inAppPurchaseV2: InAppPurchaseAppStoreReviewScreenshotRelationshipsInAppPurchaseV2? = nil, inAppPurchasePricePoint: InAppPurchasePriceRelationshipsInAppPurchasePricePoint? = nil) {
        self.inAppPurchaseV2 = inAppPurchaseV2
        self.inAppPurchasePricePoint = inAppPurchasePricePoint
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case inAppPurchaseV2
        case inAppPurchasePricePoint
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(inAppPurchaseV2, forKey: .inAppPurchaseV2)
        try container.encodeIfPresent(inAppPurchasePricePoint, forKey: .inAppPurchasePricePoint)
    }
}

