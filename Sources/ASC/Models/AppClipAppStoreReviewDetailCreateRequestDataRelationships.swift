//
// AppClipAppStoreReviewDetailCreateRequestDataRelationships.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct AppClipAppStoreReviewDetailCreateRequestDataRelationships: Codable, JSONEncodable, Hashable {

    public var appClipDefaultExperience: AppClipAppStoreReviewDetailCreateRequestDataRelationshipsAppClipDefaultExperience

    public init(appClipDefaultExperience: AppClipAppStoreReviewDetailCreateRequestDataRelationshipsAppClipDefaultExperience) {
        self.appClipDefaultExperience = appClipDefaultExperience
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case appClipDefaultExperience
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(appClipDefaultExperience, forKey: .appClipDefaultExperience)
    }
}

