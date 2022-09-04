//
// PrereleaseVersionRelationships.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct PrereleaseVersionRelationships: Codable, JSONEncodable, Hashable {

    public var builds: AppRelationshipsBuilds?
    public var app: AppClipRelationshipsApp?

    public init(builds: AppRelationshipsBuilds? = nil, app: AppClipRelationshipsApp? = nil) {
        self.builds = builds
        self.app = app
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case builds
        case app
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(builds, forKey: .builds)
        try container.encodeIfPresent(app, forKey: .app)
    }
}

