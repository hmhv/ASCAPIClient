//
// GameCenterAchievementReleasesResponseIncludedInner.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

public enum GameCenterAchievementReleasesResponseIncludedInner: Sendable, Codable, JSONEncodable, Hashable {
    case typeGameCenterAchievement(GameCenterAchievement)
    case typeGameCenterDetail(GameCenterDetail)

    public func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        switch self {
        case .typeGameCenterAchievement(let value):
            try container.encode(value)
        case .typeGameCenterDetail(let value):
            try container.encode(value)
        }
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        if let value = try? container.decode(GameCenterAchievement.self) {
            self = .typeGameCenterAchievement(value)
        } else if let value = try? container.decode(GameCenterDetail.self) {
            self = .typeGameCenterDetail(value)
        } else {
            throw DecodingError.typeMismatch(Self.Type.self, .init(codingPath: decoder.codingPath, debugDescription: "Unable to decode instance of GameCenterAchievementReleasesResponseIncludedInner"))
        }
    }
}

