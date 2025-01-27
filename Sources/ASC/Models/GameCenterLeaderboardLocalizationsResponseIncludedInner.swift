//
// GameCenterLeaderboardLocalizationsResponseIncludedInner.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

public enum GameCenterLeaderboardLocalizationsResponseIncludedInner: Sendable, Codable, JSONEncodable, Hashable {
    case typeGameCenterLeaderboard(GameCenterLeaderboard)
    case typeGameCenterLeaderboardImage(GameCenterLeaderboardImage)

    public func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        switch self {
        case .typeGameCenterLeaderboard(let value):
            try container.encode(value)
        case .typeGameCenterLeaderboardImage(let value):
            try container.encode(value)
        }
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        if let value = try? container.decode(GameCenterLeaderboard.self) {
            self = .typeGameCenterLeaderboard(value)
        } else if let value = try? container.decode(GameCenterLeaderboardImage.self) {
            self = .typeGameCenterLeaderboardImage(value)
        } else {
            throw DecodingError.typeMismatch(Self.Type.self, .init(codingPath: decoder.codingPath, debugDescription: "Unable to decode instance of GameCenterLeaderboardLocalizationsResponseIncludedInner"))
        }
    }
}

