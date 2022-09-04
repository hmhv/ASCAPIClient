//
// AppPricePointV2RelationshipsPriceTier.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct AppPricePointV2RelationshipsPriceTier: Codable, JSONEncodable, Hashable {

    public var links: AppCategoryRelationshipsSubcategoriesLinks?
    public var data: AppPricePointV2RelationshipsPriceTierData?

    public init(links: AppCategoryRelationshipsSubcategoriesLinks? = nil, data: AppPricePointV2RelationshipsPriceTierData? = nil) {
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

