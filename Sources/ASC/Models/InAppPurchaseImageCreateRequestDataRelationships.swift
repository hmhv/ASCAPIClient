//
// InAppPurchaseImageCreateRequestDataRelationships.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct InAppPurchaseImageCreateRequestDataRelationships: Codable, JSONEncodable, Hashable {

    public var inAppPurchase: InAppPurchaseAppStoreReviewScreenshotCreateRequestDataRelationshipsInAppPurchaseV2

    public init(inAppPurchase: InAppPurchaseAppStoreReviewScreenshotCreateRequestDataRelationshipsInAppPurchaseV2) {
        self.inAppPurchase = inAppPurchase
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case inAppPurchase
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(inAppPurchase, forKey: .inAppPurchase)
    }
}

