//
// AppPriceScheduleRelationships.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

public struct AppPriceScheduleRelationships: Sendable, Codable, JSONEncodable, Hashable {

    public var app: AlternativeDistributionKeyCreateRequestDataRelationshipsApp?
    public var baseTerritory: AppPriceScheduleRelationshipsBaseTerritory?
    public var manualPrices: AppPriceScheduleRelationshipsManualPrices?
    public var automaticPrices: AppPriceScheduleRelationshipsManualPrices?

    public init(app: AlternativeDistributionKeyCreateRequestDataRelationshipsApp? = nil, baseTerritory: AppPriceScheduleRelationshipsBaseTerritory? = nil, manualPrices: AppPriceScheduleRelationshipsManualPrices? = nil, automaticPrices: AppPriceScheduleRelationshipsManualPrices? = nil) {
        self.app = app
        self.baseTerritory = baseTerritory
        self.manualPrices = manualPrices
        self.automaticPrices = automaticPrices
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case app
        case baseTerritory
        case manualPrices
        case automaticPrices
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(app, forKey: .app)
        try container.encodeIfPresent(baseTerritory, forKey: .baseTerritory)
        try container.encodeIfPresent(manualPrices, forKey: .manualPrices)
        try container.encodeIfPresent(automaticPrices, forKey: .automaticPrices)
    }
}

