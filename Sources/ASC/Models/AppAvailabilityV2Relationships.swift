//
// AppAvailabilityV2Relationships.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

public struct AppAvailabilityV2Relationships: Sendable, Codable, JSONEncodable, Hashable {

    public var territoryAvailabilities: AppAvailabilityV2RelationshipsTerritoryAvailabilities?

    public init(territoryAvailabilities: AppAvailabilityV2RelationshipsTerritoryAvailabilities? = nil) {
        self.territoryAvailabilities = territoryAvailabilities
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case territoryAvailabilities
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(territoryAvailabilities, forKey: .territoryAvailabilities)
    }
}

