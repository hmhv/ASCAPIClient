//
// InAppPurchaseImageRelationships.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

public struct InAppPurchaseImageRelationships: Sendable, Codable, JSONEncodable, Hashable {

    public var inAppPurchase: InAppPurchaseAppStoreReviewScreenshotRelationshipsInAppPurchaseV2?

    public init(inAppPurchase: InAppPurchaseAppStoreReviewScreenshotRelationshipsInAppPurchaseV2? = nil) {
        self.inAppPurchase = inAppPurchase
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case inAppPurchase
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(inAppPurchase, forKey: .inAppPurchase)
    }
}

