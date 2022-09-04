//
// AppCustomProductPageLocalizationInlineCreateRelationships.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct AppCustomProductPageLocalizationInlineCreateRelationships: Codable, JSONEncodable, Hashable {

    public var appCustomProductPageVersion: AppCustomProductPageLocalizationInlineCreateRelationshipsAppCustomProductPageVersion?

    public init(appCustomProductPageVersion: AppCustomProductPageLocalizationInlineCreateRelationshipsAppCustomProductPageVersion? = nil) {
        self.appCustomProductPageVersion = appCustomProductPageVersion
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case appCustomProductPageVersion
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(appCustomProductPageVersion, forKey: .appCustomProductPageVersion)
    }
}

