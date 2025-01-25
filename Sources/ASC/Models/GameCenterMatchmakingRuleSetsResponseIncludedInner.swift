//
// GameCenterMatchmakingRuleSetsResponseIncludedInner.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

public enum GameCenterMatchmakingRuleSetsResponseIncludedInner: Sendable, Codable, JSONEncodable, Hashable {
    case typeGameCenterMatchmakingQueue(GameCenterMatchmakingQueue)
    case typeGameCenterMatchmakingRule(GameCenterMatchmakingRule)
    case typeGameCenterMatchmakingTeam(GameCenterMatchmakingTeam)

    public func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        switch self {
        case .typeGameCenterMatchmakingQueue(let value):
            try container.encode(value)
        case .typeGameCenterMatchmakingRule(let value):
            try container.encode(value)
        case .typeGameCenterMatchmakingTeam(let value):
            try container.encode(value)
        }
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        if let value = try? container.decode(GameCenterMatchmakingQueue.self) {
            self = .typeGameCenterMatchmakingQueue(value)
        } else if let value = try? container.decode(GameCenterMatchmakingRule.self) {
            self = .typeGameCenterMatchmakingRule(value)
        } else if let value = try? container.decode(GameCenterMatchmakingTeam.self) {
            self = .typeGameCenterMatchmakingTeam(value)
        } else {
            throw DecodingError.typeMismatch(Self.Type.self, .init(codingPath: decoder.codingPath, debugDescription: "Unable to decode instance of GameCenterMatchmakingRuleSetsResponseIncludedInner"))
        }
    }
}

