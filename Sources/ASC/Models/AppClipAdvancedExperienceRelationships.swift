//
// AppClipAdvancedExperienceRelationships.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct AppClipAdvancedExperienceRelationships: Codable, JSONEncodable, Hashable {

    public var appClip: AppClipAdvancedExperienceRelationshipsAppClip?
    public var headerImage: AppClipAdvancedExperienceRelationshipsHeaderImage?
    public var localizations: AppClipAdvancedExperienceRelationshipsLocalizations?

    public init(appClip: AppClipAdvancedExperienceRelationshipsAppClip? = nil, headerImage: AppClipAdvancedExperienceRelationshipsHeaderImage? = nil, localizations: AppClipAdvancedExperienceRelationshipsLocalizations? = nil) {
        self.appClip = appClip
        self.headerImage = headerImage
        self.localizations = localizations
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case appClip
        case headerImage
        case localizations
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(appClip, forKey: .appClip)
        try container.encodeIfPresent(headerImage, forKey: .headerImage)
        try container.encodeIfPresent(localizations, forKey: .localizations)
    }
}

