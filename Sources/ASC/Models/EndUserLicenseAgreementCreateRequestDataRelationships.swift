//
// EndUserLicenseAgreementCreateRequestDataRelationships.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct EndUserLicenseAgreementCreateRequestDataRelationships: Codable, JSONEncodable, Hashable {

    public var app: AnalyticsReportRequestCreateRequestDataRelationshipsApp
    public var territories: AppAvailabilityCreateRequestDataRelationshipsAvailableTerritories

    public init(app: AnalyticsReportRequestCreateRequestDataRelationshipsApp, territories: AppAvailabilityCreateRequestDataRelationshipsAvailableTerritories) {
        self.app = app
        self.territories = territories
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case app
        case territories
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(app, forKey: .app)
        try container.encode(territories, forKey: .territories)
    }
}

