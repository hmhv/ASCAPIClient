//
// InAppPurchasePriceAttributes.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct InAppPurchasePriceAttributes: Codable, JSONEncodable, Hashable {

    public var startDate: Date?

    public init(startDate: Date? = nil) {
        self.startDate = startDate
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case startDate
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(startDate, forKey: .startDate)
    }
}

