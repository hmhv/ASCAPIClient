//
// AlternativeDistributionPackageVersionRelationshipsVariantsLinks.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct AlternativeDistributionPackageVersionRelationshipsVariantsLinks: Codable, JSONEncodable, Hashable {

    public var _self: String?
    public var related: String?

    public init(_self: String? = nil, related: String? = nil) {
        self._self = _self
        self.related = related
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case _self = "self"
        case related
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(_self, forKey: ._self)
        try container.encodeIfPresent(related, forKey: .related)
    }
}
