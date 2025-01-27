//
// InAppPurchasePriceScheduleCreateRequestDataRelationships.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

public struct InAppPurchasePriceScheduleCreateRequestDataRelationships: Sendable, Codable, JSONEncodable, Hashable {

    public var inAppPurchase: InAppPurchaseAppStoreReviewScreenshotCreateRequestDataRelationshipsInAppPurchaseV2
    public var baseTerritory: AppPriceScheduleCreateRequestDataRelationshipsBaseTerritory
    public var manualPrices: InAppPurchasePriceScheduleCreateRequestDataRelationshipsManualPrices

    public init(inAppPurchase: InAppPurchaseAppStoreReviewScreenshotCreateRequestDataRelationshipsInAppPurchaseV2, baseTerritory: AppPriceScheduleCreateRequestDataRelationshipsBaseTerritory, manualPrices: InAppPurchasePriceScheduleCreateRequestDataRelationshipsManualPrices) {
        self.inAppPurchase = inAppPurchase
        self.baseTerritory = baseTerritory
        self.manualPrices = manualPrices
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case inAppPurchase
        case baseTerritory
        case manualPrices
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(inAppPurchase, forKey: .inAppPurchase)
        try container.encode(baseTerritory, forKey: .baseTerritory)
        try container.encode(manualPrices, forKey: .manualPrices)
    }
}

