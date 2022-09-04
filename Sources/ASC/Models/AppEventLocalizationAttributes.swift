//
// AppEventLocalizationAttributes.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct AppEventLocalizationAttributes: Codable, JSONEncodable, Hashable {

    public var locale: String?
    public var name: String?
    public var shortDescription: String?
    public var longDescription: String?

    public init(locale: String? = nil, name: String? = nil, shortDescription: String? = nil, longDescription: String? = nil) {
        self.locale = locale
        self.name = name
        self.shortDescription = shortDescription
        self.longDescription = longDescription
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case locale
        case name
        case shortDescription
        case longDescription
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(locale, forKey: .locale)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(shortDescription, forKey: .shortDescription)
        try container.encodeIfPresent(longDescription, forKey: .longDescription)
    }
}

