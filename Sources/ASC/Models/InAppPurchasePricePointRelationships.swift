//
// InAppPurchasePricePointRelationships.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

public struct InAppPurchasePricePointRelationships: Sendable, Codable, JSONEncodable, Hashable {

    public var territory: AppPricePointV3RelationshipsTerritory?
    public var equalizations: AnalyticsReportInstanceRelationshipsSegments?

    public init(territory: AppPricePointV3RelationshipsTerritory? = nil, equalizations: AnalyticsReportInstanceRelationshipsSegments? = nil) {
        self.territory = territory
        self.equalizations = equalizations
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case territory
        case equalizations
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(territory, forKey: .territory)
        try container.encodeIfPresent(equalizations, forKey: .equalizations)
    }
}

