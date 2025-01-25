//
// AppCustomProductPageLocalizationInlineCreateRelationships.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

public struct AppCustomProductPageLocalizationInlineCreateRelationships: Sendable, Codable, JSONEncodable, Hashable {

    public var appCustomProductPageVersion: AppCustomProductPageLocalizationRelationshipsAppCustomProductPageVersion?

    public init(appCustomProductPageVersion: AppCustomProductPageLocalizationRelationshipsAppCustomProductPageVersion? = nil) {
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

