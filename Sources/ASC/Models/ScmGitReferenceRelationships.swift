//
// ScmGitReferenceRelationships.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

public struct ScmGitReferenceRelationships: Sendable, Codable, JSONEncodable, Hashable {

    public var repository: ScmGitReferenceRelationshipsRepository?

    public init(repository: ScmGitReferenceRelationshipsRepository? = nil) {
        self.repository = repository
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case repository
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(repository, forKey: .repository)
    }
}

