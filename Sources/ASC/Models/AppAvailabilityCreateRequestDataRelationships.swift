//
// AppAvailabilityCreateRequestDataRelationships.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct AppAvailabilityCreateRequestDataRelationships: Codable, JSONEncodable, Hashable {

    public var app: AlternativeDistributionKeyCreateRequestDataRelationshipsApp
    public var availableTerritories: AppAvailabilityCreateRequestDataRelationshipsAvailableTerritories

    public init(app: AlternativeDistributionKeyCreateRequestDataRelationshipsApp, availableTerritories: AppAvailabilityCreateRequestDataRelationshipsAvailableTerritories) {
        self.app = app
        self.availableTerritories = availableTerritories
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case app
        case availableTerritories
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(app, forKey: .app)
        try container.encode(availableTerritories, forKey: .availableTerritories)
    }
}
