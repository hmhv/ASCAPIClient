//
// CiManualPullRequestStartCondition.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct CiManualPullRequestStartCondition: Codable, JSONEncodable, Hashable {

    public var source: CiBranchPatterns?
    public var destination: CiBranchPatterns?

    public init(source: CiBranchPatterns? = nil, destination: CiBranchPatterns? = nil) {
        self.source = source
        self.destination = destination
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case source
        case destination
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(source, forKey: .source)
        try container.encodeIfPresent(destination, forKey: .destination)
    }
}

