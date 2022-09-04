//
// BetaAppClipInvocationCreateRequestDataRelationships.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct BetaAppClipInvocationCreateRequestDataRelationships: Codable, JSONEncodable, Hashable {

    public var buildBundle: BetaAppClipInvocationCreateRequestDataRelationshipsBuildBundle
    public var betaAppClipInvocationLocalizations: BetaAppClipInvocationCreateRequestDataRelationshipsBetaAppClipInvocationLocalizations

    public init(buildBundle: BetaAppClipInvocationCreateRequestDataRelationshipsBuildBundle, betaAppClipInvocationLocalizations: BetaAppClipInvocationCreateRequestDataRelationshipsBetaAppClipInvocationLocalizations) {
        self.buildBundle = buildBundle
        self.betaAppClipInvocationLocalizations = betaAppClipInvocationLocalizations
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case buildBundle
        case betaAppClipInvocationLocalizations
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(buildBundle, forKey: .buildBundle)
        try container.encode(betaAppClipInvocationLocalizations, forKey: .betaAppClipInvocationLocalizations)
    }
}

