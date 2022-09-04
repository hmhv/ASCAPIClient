//
// AppClipDefaultExperienceLocalizationRelationships.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct AppClipDefaultExperienceLocalizationRelationships: Codable, JSONEncodable, Hashable {

    public var appClipDefaultExperience: AppClipAppStoreReviewDetailRelationshipsAppClipDefaultExperience?
    public var appClipHeaderImage: AppClipDefaultExperienceLocalizationRelationshipsAppClipHeaderImage?

    public init(appClipDefaultExperience: AppClipAppStoreReviewDetailRelationshipsAppClipDefaultExperience? = nil, appClipHeaderImage: AppClipDefaultExperienceLocalizationRelationshipsAppClipHeaderImage? = nil) {
        self.appClipDefaultExperience = appClipDefaultExperience
        self.appClipHeaderImage = appClipHeaderImage
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case appClipDefaultExperience
        case appClipHeaderImage
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(appClipDefaultExperience, forKey: .appClipDefaultExperience)
        try container.encodeIfPresent(appClipHeaderImage, forKey: .appClipHeaderImage)
    }
}

