//
// GameCenterDetailRelationshipsLeaderboardReleases.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

public struct GameCenterDetailRelationshipsLeaderboardReleases: Sendable, Codable, JSONEncodable, Hashable {

    public var links: RelationshipLinks?
    public var meta: PagingInformation?
    public var data: [GameCenterDetailRelationshipsLeaderboardReleasesDataInner]?

    public init(links: RelationshipLinks? = nil, meta: PagingInformation? = nil, data: [GameCenterDetailRelationshipsLeaderboardReleasesDataInner]? = nil) {
        self.links = links
        self.meta = meta
        self.data = data
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case links
        case meta
        case data
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(links, forKey: .links)
        try container.encodeIfPresent(meta, forKey: .meta)
        try container.encodeIfPresent(data, forKey: .data)
    }
}

