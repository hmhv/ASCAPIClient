//
// AppPricePointV3Relationships.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct AppPricePointV3Relationships: Codable, JSONEncodable, Hashable {

    public var app: AppAvailabilityRelationshipsApp?
    public var territory: AppPricePointV2RelationshipsTerritory?

    public init(app: AppAvailabilityRelationshipsApp? = nil, territory: AppPricePointV2RelationshipsTerritory? = nil) {
        self.app = app
        self.territory = territory
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case app
        case territory
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(app, forKey: .app)
        try container.encodeIfPresent(territory, forKey: .territory)
    }
}
