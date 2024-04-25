//
// SubscriptionOfferCodeCustomCodeUpdateRequestDataAttributes.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct SubscriptionOfferCodeCustomCodeUpdateRequestDataAttributes: Codable, JSONEncodable, Hashable {

    public var active: Bool?

    public init(active: Bool? = nil) {
        self.active = active
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case active
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(active, forKey: .active)
    }
}
