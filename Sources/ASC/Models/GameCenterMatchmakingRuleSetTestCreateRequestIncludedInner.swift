//
// GameCenterMatchmakingRuleSetTestCreateRequestIncludedInner.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public enum GameCenterMatchmakingRuleSetTestCreateRequestIncludedInner: Codable, JSONEncodable, Hashable {
    case typeGameCenterMatchmakingTestPlayerPropertyInlineCreate(GameCenterMatchmakingTestPlayerPropertyInlineCreate)
    case typeGameCenterMatchmakingTestRequestInlineCreate(GameCenterMatchmakingTestRequestInlineCreate)

    public func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        switch self {
        case .typeGameCenterMatchmakingTestPlayerPropertyInlineCreate(let value):
            try container.encode(value)
        case .typeGameCenterMatchmakingTestRequestInlineCreate(let value):
            try container.encode(value)
        }
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        if let value = try? container.decode(GameCenterMatchmakingTestPlayerPropertyInlineCreate.self) {
            self = .typeGameCenterMatchmakingTestPlayerPropertyInlineCreate(value)
        } else if let value = try? container.decode(GameCenterMatchmakingTestRequestInlineCreate.self) {
            self = .typeGameCenterMatchmakingTestRequestInlineCreate(value)
        } else {
            throw DecodingError.typeMismatch(Self.Type.self, .init(codingPath: decoder.codingPath, debugDescription: "Unable to decode instance of GameCenterMatchmakingRuleSetTestCreateRequestIncludedInner"))
        }
    }
}
