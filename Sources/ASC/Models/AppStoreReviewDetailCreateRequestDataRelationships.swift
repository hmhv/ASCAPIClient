//
// AppStoreReviewDetailCreateRequestDataRelationships.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct AppStoreReviewDetailCreateRequestDataRelationships: Codable, JSONEncodable, Hashable {

    public var appStoreVersion: AppStoreReviewDetailCreateRequestDataRelationshipsAppStoreVersion

    public init(appStoreVersion: AppStoreReviewDetailCreateRequestDataRelationshipsAppStoreVersion) {
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

