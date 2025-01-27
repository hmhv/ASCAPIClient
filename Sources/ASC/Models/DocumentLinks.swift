//
// DocumentLinks.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

public struct DocumentLinks: Sendable, Codable, JSONEncodable, Hashable {

    public var _self: String

    public init(_self: String) {
        self._self = _self
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case _self = "self"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(_self, forKey: ._self)
    }
}

