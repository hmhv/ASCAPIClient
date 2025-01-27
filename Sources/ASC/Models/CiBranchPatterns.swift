//
// CiBranchPatterns.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

public struct CiBranchPatterns: Sendable, Codable, JSONEncodable, Hashable {

    public var isAllMatch: Bool?
    public var patterns: [CiBranchPatternsPatternsInner]?

    public init(isAllMatch: Bool? = nil, patterns: [CiBranchPatternsPatternsInner]? = nil) {
        self.isAllMatch = isAllMatch
        self.patterns = patterns
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case isAllMatch
        case patterns
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(isAllMatch, forKey: .isAllMatch)
        try container.encodeIfPresent(patterns, forKey: .patterns)
    }
}

