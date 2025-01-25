//
// InAppPurchaseAppStoreReviewScreenshotRelationships.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

public struct InAppPurchaseAppStoreReviewScreenshotRelationships: Sendable, Codable, JSONEncodable, Hashable {

    public var inAppPurchaseV2: InAppPurchaseAppStoreReviewScreenshotRelationshipsInAppPurchaseV2?

    public init(inAppPurchaseV2: InAppPurchaseAppStoreReviewScreenshotRelationshipsInAppPurchaseV2? = nil) {
        self.inAppPurchaseV2 = inAppPurchaseV2
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case inAppPurchaseV2
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(inAppPurchaseV2, forKey: .inAppPurchaseV2)
    }
}

