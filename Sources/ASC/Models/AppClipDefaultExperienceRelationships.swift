//
// AppClipDefaultExperienceRelationships.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct AppClipDefaultExperienceRelationships: Codable, JSONEncodable, Hashable {

    public var appClip: AppClipAdvancedExperienceRelationshipsAppClip?
    public var releaseWithAppStoreVersion: AppClipDefaultExperienceRelationshipsReleaseWithAppStoreVersion?
    public var appClipDefaultExperienceLocalizations: AppClipDefaultExperienceRelationshipsAppClipDefaultExperienceLocalizations?
    public var appClipAppStoreReviewDetail: AppClipDefaultExperienceRelationshipsAppClipAppStoreReviewDetail?

    public init(appClip: AppClipAdvancedExperienceRelationshipsAppClip? = nil, releaseWithAppStoreVersion: AppClipDefaultExperienceRelationshipsReleaseWithAppStoreVersion? = nil, appClipDefaultExperienceLocalizations: AppClipDefaultExperienceRelationshipsAppClipDefaultExperienceLocalizations? = nil, appClipAppStoreReviewDetail: AppClipDefaultExperienceRelationshipsAppClipAppStoreReviewDetail? = nil) {
        self.appClip = appClip
        self.releaseWithAppStoreVersion = releaseWithAppStoreVersion
        self.appClipDefaultExperienceLocalizations = appClipDefaultExperienceLocalizations
        self.appClipAppStoreReviewDetail = appClipAppStoreReviewDetail
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case appClip
        case releaseWithAppStoreVersion
        case appClipDefaultExperienceLocalizations
        case appClipAppStoreReviewDetail
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(appClip, forKey: .appClip)
        try container.encodeIfPresent(releaseWithAppStoreVersion, forKey: .releaseWithAppStoreVersion)
        try container.encodeIfPresent(appClipDefaultExperienceLocalizations, forKey: .appClipDefaultExperienceLocalizations)
        try container.encodeIfPresent(appClipAppStoreReviewDetail, forKey: .appClipAppStoreReviewDetail)
    }
}

