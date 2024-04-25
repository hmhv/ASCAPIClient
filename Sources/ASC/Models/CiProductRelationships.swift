//
// CiProductRelationships.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct CiProductRelationships: Codable, JSONEncodable, Hashable {

    public var app: AppAvailabilityRelationshipsApp?
    public var bundleId: CiProductRelationshipsBundleId?
    public var primaryRepositories: CiProductRelationshipsPrimaryRepositories?

    public init(app: AppAvailabilityRelationshipsApp? = nil, bundleId: CiProductRelationshipsBundleId? = nil, primaryRepositories: CiProductRelationshipsPrimaryRepositories? = nil) {
        self.app = app
        self.bundleId = bundleId
        self.primaryRepositories = primaryRepositories
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case app
        case bundleId
        case primaryRepositories
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(app, forKey: .app)
        try container.encodeIfPresent(bundleId, forKey: .bundleId)
        try container.encodeIfPresent(primaryRepositories, forKey: .primaryRepositories)
    }
}
