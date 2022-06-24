//
// ReviewSubmissionRelationships.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct ReviewSubmissionRelationships: Codable, Hashable {

    public var app: AppClipRelationshipsApp?
    public var items: ReviewSubmissionRelationshipsItems?
    public var appStoreVersionForReview: AppClipDefaultExperienceRelationshipsReleaseWithAppStoreVersion?

    public init(app: AppClipRelationshipsApp? = nil, items: ReviewSubmissionRelationshipsItems? = nil, appStoreVersionForReview: AppClipDefaultExperienceRelationshipsReleaseWithAppStoreVersion? = nil) {
        self.app = app
        self.items = items
        self.appStoreVersionForReview = appStoreVersionForReview
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case app
        case items
        case appStoreVersionForReview
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(app, forKey: .app)
        try container.encodeIfPresent(items, forKey: .items)
        try container.encodeIfPresent(appStoreVersionForReview, forKey: .appStoreVersionForReview)
    }
}

