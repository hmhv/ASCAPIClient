//
// ScmProviderRelationships.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

public struct ScmProviderRelationships: Sendable, Codable, JSONEncodable, Hashable {

    public var repositories: AnalyticsReportInstanceRelationshipsSegments?

    public init(repositories: AnalyticsReportInstanceRelationshipsSegments? = nil) {
        self.repositories = repositories
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case repositories
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(repositories, forKey: .repositories)
    }
}

