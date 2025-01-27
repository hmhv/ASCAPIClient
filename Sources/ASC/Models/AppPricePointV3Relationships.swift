//
// AppPricePointV3Relationships.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

public struct AppPricePointV3Relationships: Sendable, Codable, JSONEncodable, Hashable {

    public var app: AlternativeDistributionKeyCreateRequestDataRelationshipsApp?
    public var equalizations: AnalyticsReportInstanceRelationshipsSegments?
    public var territory: AppPricePointV3RelationshipsTerritory?

    public init(app: AlternativeDistributionKeyCreateRequestDataRelationshipsApp? = nil, equalizations: AnalyticsReportInstanceRelationshipsSegments? = nil, territory: AppPricePointV3RelationshipsTerritory? = nil) {
        self.app = app
        self.equalizations = equalizations
        self.territory = territory
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case app
        case equalizations
        case territory
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(app, forKey: .app)
        try container.encodeIfPresent(equalizations, forKey: .equalizations)
        try container.encodeIfPresent(territory, forKey: .territory)
    }
}

