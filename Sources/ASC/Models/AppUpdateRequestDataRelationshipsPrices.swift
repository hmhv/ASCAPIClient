//
// AppUpdateRequestDataRelationshipsPrices.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

@available(*, deprecated, message: "This schema is deprecated.")
public struct AppUpdateRequestDataRelationshipsPrices: Codable, JSONEncodable, Hashable {

    public var data: [AppPriceScheduleRelationshipsManualPricesDataInner]?

    public init(data: [AppPriceScheduleRelationshipsManualPricesDataInner]? = nil) {
        self.data = data
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case data
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(data, forKey: .data)
    }
}
