//
// GameCenterMatchmakingRuleSetUpdateRequestDataAttributes.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

public struct GameCenterMatchmakingRuleSetUpdateRequestDataAttributes: Sendable, Codable, JSONEncodable, Hashable {

    public var minPlayers: Int?
    public var maxPlayers: Int?

    public init(minPlayers: Int? = nil, maxPlayers: Int? = nil) {
        self.minPlayers = minPlayers
        self.maxPlayers = maxPlayers
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case minPlayers
        case maxPlayers
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(minPlayers, forKey: .minPlayers)
        try container.encodeIfPresent(maxPlayers, forKey: .maxPlayers)
    }
}

