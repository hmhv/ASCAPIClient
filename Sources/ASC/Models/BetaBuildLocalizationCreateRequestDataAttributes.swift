//
// BetaBuildLocalizationCreateRequestDataAttributes.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct BetaBuildLocalizationCreateRequestDataAttributes: Codable, Hashable {

    public var whatsNew: String?
    public var locale: String

    public init(whatsNew: String? = nil, locale: String) {
        self.whatsNew = whatsNew
        self.locale = locale
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case whatsNew
        case locale
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(whatsNew, forKey: .whatsNew)
        try container.encode(locale, forKey: .locale)
    }
}

