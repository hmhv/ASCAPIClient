//
// EndUserLicenseAgreementCreateRequestDataRelationships.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

public struct EndUserLicenseAgreementCreateRequestDataRelationships: Sendable, Codable, JSONEncodable, Hashable {

    public var app: AnalyticsReportRequestCreateRequestDataRelationshipsApp
    public var territories: EndUserLicenseAgreementCreateRequestDataRelationshipsTerritories

    public init(app: AnalyticsReportRequestCreateRequestDataRelationshipsApp, territories: EndUserLicenseAgreementCreateRequestDataRelationshipsTerritories) {
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

