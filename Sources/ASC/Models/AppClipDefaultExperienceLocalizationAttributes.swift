//
// AppClipDefaultExperienceLocalizationAttributes.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

public struct AppClipDefaultExperienceLocalizationAttributes: Sendable, Codable, JSONEncodable, Hashable {

    public var locale: String?
    public var subtitle: String?

    public init(locale: String? = nil, subtitle: String? = nil) {
        self.locale = locale
        self.subtitle = subtitle
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case locale
        case subtitle
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(locale, forKey: .locale)
        try container.encodeIfPresent(subtitle, forKey: .subtitle)
    }
}

