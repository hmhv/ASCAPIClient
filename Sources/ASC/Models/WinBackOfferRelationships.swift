//
// WinBackOfferRelationships.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct WinBackOfferRelationships: Codable, JSONEncodable, Hashable {

    public var prices: WinBackOfferRelationshipsPrices?

    public init(prices: WinBackOfferRelationshipsPrices? = nil) {
        self.prices = prices
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case prices
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(prices, forKey: .prices)
    }
}
