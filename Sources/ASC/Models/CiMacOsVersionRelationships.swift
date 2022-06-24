//
// CiMacOsVersionRelationships.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct CiMacOsVersionRelationships: Codable, Hashable {

    public var xcodeVersions: CiMacOsVersionRelationshipsXcodeVersions?

    public init(xcodeVersions: CiMacOsVersionRelationshipsXcodeVersions? = nil) {
        self.xcodeVersions = xcodeVersions
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case xcodeVersions
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(xcodeVersions, forKey: .xcodeVersions)
    }
}

