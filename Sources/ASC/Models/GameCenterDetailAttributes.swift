//
// GameCenterDetailAttributes.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

public struct GameCenterDetailAttributes: Sendable, Codable, JSONEncodable, Hashable {

    public var arcadeEnabled: Bool?
    public var challengeEnabled: Bool?

    public init(arcadeEnabled: Bool? = nil, challengeEnabled: Bool? = nil) {
        self.arcadeEnabled = arcadeEnabled
        self.challengeEnabled = challengeEnabled
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case arcadeEnabled
        case challengeEnabled
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(arcadeEnabled, forKey: .arcadeEnabled)
        try container.encodeIfPresent(challengeEnabled, forKey: .challengeEnabled)
    }
}

