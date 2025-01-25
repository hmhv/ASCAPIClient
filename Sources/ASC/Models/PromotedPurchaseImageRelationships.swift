//
// PromotedPurchaseImageRelationships.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

public struct PromotedPurchaseImageRelationships: Sendable, Codable, JSONEncodable, Hashable {

    public var promotedPurchase: PromotedPurchaseImageRelationshipsPromotedPurchase?

    public init(promotedPurchase: PromotedPurchaseImageRelationshipsPromotedPurchase? = nil) {
        self.promotedPurchase = promotedPurchase
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case promotedPurchase
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(promotedPurchase, forKey: .promotedPurchase)
    }
}

