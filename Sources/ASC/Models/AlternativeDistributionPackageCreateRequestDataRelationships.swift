//
// AlternativeDistributionPackageCreateRequestDataRelationships.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

public struct AlternativeDistributionPackageCreateRequestDataRelationships: Sendable, Codable, JSONEncodable, Hashable {

    public var appStoreVersion: AlternativeDistributionPackageCreateRequestDataRelationshipsAppStoreVersion

    public init(appStoreVersion: AlternativeDistributionPackageCreateRequestDataRelationshipsAppStoreVersion) {
        self.appStoreVersion = appStoreVersion
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case appStoreVersion
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(appStoreVersion, forKey: .appStoreVersion)
    }
}

