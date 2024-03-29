//
// AppPriceTierRelationships.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct AppPriceTierRelationships: Codable, JSONEncodable, Hashable {

    @available(*, deprecated, message: "This property is deprecated.")
    public var pricePoints: AppPriceTierRelationshipsPricePoints?

    public init(pricePoints: AppPriceTierRelationshipsPricePoints? = nil) {
        self.pricePoints = pricePoints
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case pricePoints
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(pricePoints, forKey: .pricePoints)
    }
}

