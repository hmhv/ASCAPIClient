//
// BetaAppClipInvocationLocalizationCreateRequestDataRelationships.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

public struct BetaAppClipInvocationLocalizationCreateRequestDataRelationships: Sendable, Codable, JSONEncodable, Hashable {

    public var betaAppClipInvocation: BetaAppClipInvocationLocalizationCreateRequestDataRelationshipsBetaAppClipInvocation

    public init(betaAppClipInvocation: BetaAppClipInvocationLocalizationCreateRequestDataRelationshipsBetaAppClipInvocation) {
        self.betaAppClipInvocation = betaAppClipInvocation
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case betaAppClipInvocation
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(betaAppClipInvocation, forKey: .betaAppClipInvocation)
    }
}

