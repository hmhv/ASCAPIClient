//
// AppClipAdvancedExperienceUpdateRequest.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct AppClipAdvancedExperienceUpdateRequest: Codable, JSONEncodable, Hashable {

    public var data: AppClipAdvancedExperienceUpdateRequestData
    public var included: [AppClipAdvancedExperienceLocalizationInlineCreate]?

    public init(data: AppClipAdvancedExperienceUpdateRequestData, included: [AppClipAdvancedExperienceLocalizationInlineCreate]? = nil) {
        self.data = data
        self.included = included
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case data
        case included
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(data, forKey: .data)
        try container.encodeIfPresent(included, forKey: .included)
    }
}

