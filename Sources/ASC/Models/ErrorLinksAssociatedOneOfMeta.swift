//
// ErrorLinksAssociatedOneOfMeta.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

public struct ErrorLinksAssociatedOneOfMeta: Sendable, Codable, JSONEncodable, Hashable {

    public var source: String?

    public init(source: String? = nil) {
        self.source = source
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case source
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(source, forKey: .source)
    }
}

