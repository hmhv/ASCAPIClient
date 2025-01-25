//
// AppCustomProductPageVersionInlineCreateRelationships.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct AppCustomProductPageVersionInlineCreateRelationships: Codable, JSONEncodable, Hashable {

    public var appCustomProductPage: AppCustomProductPageVersionRelationshipsAppCustomProductPage?
    public var appCustomProductPageLocalizations: AppCustomProductPageVersionInlineCreateRelationshipsAppCustomProductPageLocalizations?

    public init(appCustomProductPage: AppCustomProductPageVersionRelationshipsAppCustomProductPage? = nil, appCustomProductPageLocalizations: AppCustomProductPageVersionInlineCreateRelationshipsAppCustomProductPageLocalizations? = nil) {
        self.appCustomProductPage = appCustomProductPage
        self.appCustomProductPageLocalizations = appCustomProductPageLocalizations
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case appCustomProductPage
        case appCustomProductPageLocalizations
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(appCustomProductPage, forKey: .appCustomProductPage)
        try container.encodeIfPresent(appCustomProductPageLocalizations, forKey: .appCustomProductPageLocalizations)
    }
}

