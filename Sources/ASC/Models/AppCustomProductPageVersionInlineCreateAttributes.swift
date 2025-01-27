//
// AppCustomProductPageVersionInlineCreateAttributes.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

public struct AppCustomProductPageVersionInlineCreateAttributes: Sendable, Codable, JSONEncodable, Hashable {

    public var deepLink: String?

    public init(deepLink: String? = nil) {
        self.deepLink = deepLink
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case deepLink
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(deepLink, forKey: .deepLink)
    }
}

