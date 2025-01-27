//
// GameCenterLeaderboardGroupLeaderboardLinkageResponse.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

@available(*, deprecated, message: "This schema is deprecated.")
public struct GameCenterLeaderboardGroupLeaderboardLinkageResponse: Sendable, Codable, JSONEncodable, Hashable {

    public var data: GameCenterDetailRelationshipsGameCenterLeaderboardsDataInner
    public var links: DocumentLinks

    public init(data: GameCenterDetailRelationshipsGameCenterLeaderboardsDataInner, links: DocumentLinks) {
        self.data = data
        self.links = links
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case data
        case links
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(data, forKey: .data)
        try container.encode(links, forKey: .links)
    }
}

