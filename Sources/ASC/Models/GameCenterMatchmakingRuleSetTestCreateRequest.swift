//
// GameCenterMatchmakingRuleSetTestCreateRequest.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct GameCenterMatchmakingRuleSetTestCreateRequest: Codable, JSONEncodable, Hashable {

    public var data: GameCenterMatchmakingRuleSetTestCreateRequestData
    public var included: [GameCenterMatchmakingRuleSetTestCreateRequestIncludedInner]?

    public init(data: GameCenterMatchmakingRuleSetTestCreateRequestData, included: [GameCenterMatchmakingRuleSetTestCreateRequestIncludedInner]? = nil) {
        self.data = data
        self.included = included
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case data
        case included
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(data, forKey: .data)
        try container.encodeIfPresent(included, forKey: .included)
    }
}
