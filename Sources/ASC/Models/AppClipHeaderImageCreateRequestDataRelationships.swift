//
// AppClipHeaderImageCreateRequestDataRelationships.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct AppClipHeaderImageCreateRequestDataRelationships: Codable, JSONEncodable, Hashable {

    public var appClipDefaultExperienceLocalization: AppClipHeaderImageCreateRequestDataRelationshipsAppClipDefaultExperienceLocalization

    public init(appClipDefaultExperienceLocalization: AppClipHeaderImageCreateRequestDataRelationshipsAppClipDefaultExperienceLocalization) {
        self.appClipDefaultExperienceLocalization = appClipDefaultExperienceLocalization
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case appClipDefaultExperienceLocalization
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(appClipDefaultExperienceLocalization, forKey: .appClipDefaultExperienceLocalization)
    }
}

