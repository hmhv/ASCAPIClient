//
// AppPriceV2Attributes.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct AppPriceV2Attributes: Codable, JSONEncodable, Hashable {

    public var manual: Bool?
    public var startDate: Date?
    public var endDate: Date?

    public init(manual: Bool? = nil, startDate: Date? = nil, endDate: Date? = nil) {
        self.manual = manual
        self.startDate = startDate
        self.endDate = endDate
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case manual
        case startDate
        case endDate
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(manual, forKey: .manual)
        try container.encodeIfPresent(startDate, forKey: .startDate)
        try container.encodeIfPresent(endDate, forKey: .endDate)
    }
}
