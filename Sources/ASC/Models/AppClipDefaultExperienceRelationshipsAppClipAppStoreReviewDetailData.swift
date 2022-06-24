//
// AppClipDefaultExperienceRelationshipsAppClipAppStoreReviewDetailData.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct AppClipDefaultExperienceRelationshipsAppClipAppStoreReviewDetailData: Codable, Hashable {

    public enum ModelType: String, Codable, CaseIterable, CaseIterableDefaultsLast {
        case appclipappstorereviewdetails = "appClipAppStoreReviewDetails"
        case unknownDefaultOpenApi = "unknown_default_open_api"
    }
    public var type: ModelType
    public var id: String

    public init(type: ModelType, id: String) {
        self.type = type
        self.id = id
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case type
        case id
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(type, forKey: .type)
        try container.encode(id, forKey: .id)
    }
}

