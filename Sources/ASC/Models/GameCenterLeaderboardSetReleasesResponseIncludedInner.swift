//
// GameCenterLeaderboardSetReleasesResponseIncludedInner.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public enum GameCenterLeaderboardSetReleasesResponseIncludedInner: Codable, JSONEncodable, Hashable {
    case typeGameCenterDetail(GameCenterDetail)
    case typeGameCenterLeaderboardSet(GameCenterLeaderboardSet)

    public func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        switch self {
        case .typeGameCenterDetail(let value):
            try container.encode(value)
        case .typeGameCenterLeaderboardSet(let value):
            try container.encode(value)
        }
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        if let value = try? container.decode(GameCenterDetail.self) {
            self = .typeGameCenterDetail(value)
        } else if let value = try? container.decode(GameCenterLeaderboardSet.self) {
            self = .typeGameCenterLeaderboardSet(value)
        } else {
            throw DecodingError.typeMismatch(Self.Type.self, .init(codingPath: decoder.codingPath, debugDescription: "Unable to decode instance of GameCenterLeaderboardSetReleasesResponseIncludedInner"))
        }
    }
}

