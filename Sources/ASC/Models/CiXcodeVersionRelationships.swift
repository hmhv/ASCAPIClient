//
// CiXcodeVersionRelationships.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

public struct CiXcodeVersionRelationships: Sendable, Codable, JSONEncodable, Hashable {

    public var macOsVersions: CiXcodeVersionRelationshipsMacOsVersions?

    public init(macOsVersions: CiXcodeVersionRelationshipsMacOsVersions? = nil) {
        self.macOsVersions = macOsVersions
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case macOsVersions
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(macOsVersions, forKey: .macOsVersions)
    }
}

