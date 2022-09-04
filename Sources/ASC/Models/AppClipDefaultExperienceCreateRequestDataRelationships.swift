//
// AppClipDefaultExperienceCreateRequestDataRelationships.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct AppClipDefaultExperienceCreateRequestDataRelationships: Codable, JSONEncodable, Hashable {

    public var appClip: AppClipAdvancedExperienceCreateRequestDataRelationshipsAppClip
    public var releaseWithAppStoreVersion: AppClipDefaultExperienceCreateRequestDataRelationshipsReleaseWithAppStoreVersion?
    public var appClipDefaultExperienceTemplate: AppClipDefaultExperienceCreateRequestDataRelationshipsAppClipDefaultExperienceTemplate?

    public init(appClip: AppClipAdvancedExperienceCreateRequestDataRelationshipsAppClip, releaseWithAppStoreVersion: AppClipDefaultExperienceCreateRequestDataRelationshipsReleaseWithAppStoreVersion? = nil, appClipDefaultExperienceTemplate: AppClipDefaultExperienceCreateRequestDataRelationshipsAppClipDefaultExperienceTemplate? = nil) {
        self.appClip = appClip
        self.releaseWithAppStoreVersion = releaseWithAppStoreVersion
        self.appClipDefaultExperienceTemplate = appClipDefaultExperienceTemplate
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case appClip
        case releaseWithAppStoreVersion
        case appClipDefaultExperienceTemplate
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(appClip, forKey: .appClip)
        try container.encodeIfPresent(releaseWithAppStoreVersion, forKey: .releaseWithAppStoreVersion)
        try container.encodeIfPresent(appClipDefaultExperienceTemplate, forKey: .appClipDefaultExperienceTemplate)
    }
}

