//
// InAppPurchaseLocalizationResponse.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct InAppPurchaseLocalizationResponse: Codable, JSONEncodable, Hashable {

    public var data: InAppPurchaseLocalization
    public var included: [InAppPurchaseV2]?
    public var links: DocumentLinks

    public init(data: InAppPurchaseLocalization, included: [InAppPurchaseV2]? = nil, links: DocumentLinks) {
        self.data = data
        self.included = included
        self.links = links
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case data
        case included
        case links
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(data, forKey: .data)
        try container.encodeIfPresent(included, forKey: .included)
        try container.encode(links, forKey: .links)
    }
}

