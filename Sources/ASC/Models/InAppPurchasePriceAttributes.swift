//
// InAppPurchasePriceAttributes.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

public struct InAppPurchasePriceAttributes: Sendable, Codable, JSONEncodable, Hashable {

    public var startDate: Date?
    public var endDate: Date?
    public var manual: Bool?

    public init(startDate: Date? = nil, endDate: Date? = nil, manual: Bool? = nil) {
        self.startDate = startDate
        self.endDate = endDate
        self.manual = manual
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case startDate
        case endDate
        case manual
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(startDate, forKey: .startDate)
        try container.encodeIfPresent(endDate, forKey: .endDate)
        try container.encodeIfPresent(manual, forKey: .manual)
    }
}

