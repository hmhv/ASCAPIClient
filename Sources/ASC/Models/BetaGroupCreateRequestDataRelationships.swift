//
// BetaGroupCreateRequestDataRelationships.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct BetaGroupCreateRequestDataRelationships: Codable, Hashable {

    public var app: AppCustomProductPageCreateRequestDataRelationshipsApp
    public var builds: BetaGroupCreateRequestDataRelationshipsBuilds?
    public var betaTesters: BetaGroupCreateRequestDataRelationshipsBetaTesters?

    public init(app: AppCustomProductPageCreateRequestDataRelationshipsApp, builds: BetaGroupCreateRequestDataRelationshipsBuilds? = nil, betaTesters: BetaGroupCreateRequestDataRelationshipsBetaTesters? = nil) {
        self.app = app
        self.builds = builds
        self.betaTesters = betaTesters
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case app
        case builds
        case betaTesters
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(app, forKey: .app)
        try container.encodeIfPresent(builds, forKey: .builds)
        try container.encodeIfPresent(betaTesters, forKey: .betaTesters)
    }
}

