//
// AlternativeDistributionPackageRelationships.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct AlternativeDistributionPackageRelationships: Codable, JSONEncodable, Hashable {

    public var versions: AlternativeDistributionPackageRelationshipsVersions?

    public init(versions: AlternativeDistributionPackageRelationshipsVersions? = nil) {
        self.versions = versions
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case versions
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(versions, forKey: .versions)
    }
}

