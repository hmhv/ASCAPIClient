//
// AppClipHeaderImageRelationshipsAppClipDefaultExperienceLocalization.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

public struct AppClipHeaderImageRelationshipsAppClipDefaultExperienceLocalization: Sendable, Codable, JSONEncodable, Hashable {

    public var data: AppClipDefaultExperienceRelationshipsAppClipDefaultExperienceLocalizationsDataInner?

    public init(data: AppClipDefaultExperienceRelationshipsAppClipDefaultExperienceLocalizationsDataInner? = nil) {
        self.data = data
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case data
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(data, forKey: .data)
    }
}

