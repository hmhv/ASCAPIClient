//
// ErrorLinksAssociatedOneOf.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct ErrorLinksAssociatedOneOf: Codable, JSONEncodable, Hashable {

    public var href: String?
    public var meta: ErrorLinksAssociatedOneOfMeta?

    public init(href: String? = nil, meta: ErrorLinksAssociatedOneOfMeta? = nil) {
        self.href = href
        self.meta = meta
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case href
        case meta
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(href, forKey: .href)
        try container.encodeIfPresent(meta, forKey: .meta)
    }
}
