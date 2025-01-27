//
// GameCenterAchievementReleasesResponse.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

public struct GameCenterAchievementReleasesResponse: Sendable, Codable, JSONEncodable, Hashable {

    public var data: [GameCenterAchievementRelease]
    public var included: [GameCenterAchievementReleasesResponseIncludedInner]?
    public var links: PagedDocumentLinks
    public var meta: PagingInformation?

    public init(data: [GameCenterAchievementRelease], included: [GameCenterAchievementReleasesResponseIncludedInner]? = nil, links: PagedDocumentLinks, meta: PagingInformation? = nil) {
        self.data = data
        self.included = included
        self.links = links
        self.meta = meta
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case data
        case included
        case links
        case meta
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(data, forKey: .data)
        try container.encodeIfPresent(included, forKey: .included)
        try container.encode(links, forKey: .links)
        try container.encodeIfPresent(meta, forKey: .meta)
    }
}

