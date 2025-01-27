//
// AppAvailabilityV2Attributes.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

public struct AppAvailabilityV2Attributes: Sendable, Codable, JSONEncodable, Hashable {

    public var availableInNewTerritories: Bool?

    public init(availableInNewTerritories: Bool? = nil) {
        self.availableInNewTerritories = availableInNewTerritories
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case availableInNewTerritories
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(availableInNewTerritories, forKey: .availableInNewTerritories)
    }
}

