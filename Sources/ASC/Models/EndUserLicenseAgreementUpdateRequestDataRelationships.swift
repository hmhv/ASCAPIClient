//
// EndUserLicenseAgreementUpdateRequestDataRelationships.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

public struct EndUserLicenseAgreementUpdateRequestDataRelationships: Sendable, Codable, JSONEncodable, Hashable {

    public var territories: EndUserLicenseAgreementUpdateRequestDataRelationshipsTerritories?

    public init(territories: EndUserLicenseAgreementUpdateRequestDataRelationshipsTerritories? = nil) {
        self.territories = territories
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case territories
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(territories, forKey: .territories)
    }
}

