//
// TerritoryAvailabilityUpdateRequestDataAttributes.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

public struct TerritoryAvailabilityUpdateRequestDataAttributes: Sendable, Codable, JSONEncodable, Hashable {

    public var available: Bool?
    public var releaseDate: Date?
    public var preOrderEnabled: Bool?

    public init(available: Bool? = nil, releaseDate: Date? = nil, preOrderEnabled: Bool? = nil) {
        self.available = available
        self.releaseDate = releaseDate
        self.preOrderEnabled = preOrderEnabled
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case available
        case releaseDate
        case preOrderEnabled
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(available, forKey: .available)
        try container.encodeIfPresent(releaseDate, forKey: .releaseDate)
        try container.encodeIfPresent(preOrderEnabled, forKey: .preOrderEnabled)
    }
}

