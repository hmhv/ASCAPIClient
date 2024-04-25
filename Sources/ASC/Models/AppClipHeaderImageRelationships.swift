//
// AppClipHeaderImageRelationships.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct AppClipHeaderImageRelationships: Codable, JSONEncodable, Hashable {

    public var appClipDefaultExperienceLocalization: AppClipHeaderImageRelationshipsAppClipDefaultExperienceLocalization?

    public init(appClipDefaultExperienceLocalization: AppClipHeaderImageRelationshipsAppClipDefaultExperienceLocalization? = nil) {
        self.appClipDefaultExperienceLocalization = appClipDefaultExperienceLocalization
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case appClipDefaultExperienceLocalization
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(appClipDefaultExperienceLocalization, forKey: .appClipDefaultExperienceLocalization)
    }
}

