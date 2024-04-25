//
// BetaAppClipInvocationLocalizationInlineCreateRelationships.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct BetaAppClipInvocationLocalizationInlineCreateRelationships: Codable, JSONEncodable, Hashable {

    public var betaAppClipInvocation: BetaAppClipInvocationLocalizationInlineCreateRelationshipsBetaAppClipInvocation?

    public init(betaAppClipInvocation: BetaAppClipInvocationLocalizationInlineCreateRelationshipsBetaAppClipInvocation? = nil) {
        self.betaAppClipInvocation = betaAppClipInvocation
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case betaAppClipInvocation
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(betaAppClipInvocation, forKey: .betaAppClipInvocation)
    }
}
