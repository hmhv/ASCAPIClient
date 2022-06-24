//
// AppScreenshotRelationshipsAppScreenshotSet.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct AppScreenshotRelationshipsAppScreenshotSet: Codable, Hashable {

    public var links: AppCategoryRelationshipsSubcategoriesLinks?
    public var data: AppCustomProductPageLocalizationRelationshipsAppScreenshotSetsDataInner?

    public init(links: AppCategoryRelationshipsSubcategoriesLinks? = nil, data: AppCustomProductPageLocalizationRelationshipsAppScreenshotSetsDataInner? = nil) {
        self.links = links
        self.data = data
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case links
        case data
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(links, forKey: .links)
        try container.encodeIfPresent(data, forKey: .data)
    }
}

