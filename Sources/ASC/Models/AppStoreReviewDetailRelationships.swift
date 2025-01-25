//
// AppStoreReviewDetailRelationships.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct AppStoreReviewDetailRelationships: Codable, JSONEncodable, Hashable {

    public var appStoreVersion: AppClipDefaultExperienceCreateRequestDataRelationshipsReleaseWithAppStoreVersion?
    public var appStoreReviewAttachments: AppStoreReviewDetailRelationshipsAppStoreReviewAttachments?

    public init(appStoreVersion: AppClipDefaultExperienceCreateRequestDataRelationshipsReleaseWithAppStoreVersion? = nil, appStoreReviewAttachments: AppStoreReviewDetailRelationshipsAppStoreReviewAttachments? = nil) {
        self.appStoreVersion = appStoreVersion
        self.appStoreReviewAttachments = appStoreReviewAttachments
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case appStoreVersion
        case appStoreReviewAttachments
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(appStoreVersion, forKey: .appStoreVersion)
        try container.encodeIfPresent(appStoreReviewAttachments, forKey: .appStoreReviewAttachments)
    }
}

