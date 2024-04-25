//
// CiBuildActionRelationships.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct CiBuildActionRelationships: Codable, JSONEncodable, Hashable {

    public var buildRun: CiBuildActionRelationshipsBuildRun?

    public init(buildRun: CiBuildActionRelationshipsBuildRun? = nil) {
        self.buildRun = buildRun
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case buildRun
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(buildRun, forKey: .buildRun)
    }
}
