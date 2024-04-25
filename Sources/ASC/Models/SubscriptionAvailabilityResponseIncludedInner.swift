//
// SubscriptionAvailabilityResponseIncludedInner.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public enum SubscriptionAvailabilityResponseIncludedInner: Codable, JSONEncodable, Hashable {
    case typeSubscription(Subscription)
    case typeTerritory(Territory)

    public func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        switch self {
        case .typeSubscription(let value):
            try container.encode(value)
        case .typeTerritory(let value):
            try container.encode(value)
        }
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        if let value = try? container.decode(Subscription.self) {
            self = .typeSubscription(value)
        } else if let value = try? container.decode(Territory.self) {
            self = .typeTerritory(value)
        } else {
            throw DecodingError.typeMismatch(Self.Type.self, .init(codingPath: decoder.codingPath, debugDescription: "Unable to decode instance of SubscriptionAvailabilityResponseIncludedInner"))
        }
    }
}

