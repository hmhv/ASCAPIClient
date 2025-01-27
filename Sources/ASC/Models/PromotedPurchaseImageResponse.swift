//
// PromotedPurchaseImageResponse.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

@available(*, deprecated, message: "This schema is deprecated.")
public struct PromotedPurchaseImageResponse: Sendable, Codable, JSONEncodable, Hashable {

    @available(*, deprecated, message: "This property is deprecated.")
    public var data: PromotedPurchaseImage
    public var included: [PromotedPurchase]?
    public var links: DocumentLinks

    public init(data: PromotedPurchaseImage, included: [PromotedPurchase]? = nil, links: DocumentLinks) {
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

