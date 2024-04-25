//
// AppCustomProductPageLocalizationAttributes.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct AppCustomProductPageLocalizationAttributes: Codable, JSONEncodable, Hashable {

    public var locale: String?
    public var promotionalText: String?

    public init(locale: String? = nil, promotionalText: String? = nil) {
        self.locale = locale
        self.promotionalText = promotionalText
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case locale
        case promotionalText
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(locale, forKey: .locale)
        try container.encodeIfPresent(promotionalText, forKey: .promotionalText)
    }
}
