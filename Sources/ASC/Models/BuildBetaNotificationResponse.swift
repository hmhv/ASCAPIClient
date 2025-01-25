//
// BuildBetaNotificationResponse.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

public struct BuildBetaNotificationResponse: Sendable, Codable, JSONEncodable, Hashable {

    public var data: BuildBetaNotification
    public var links: DocumentLinks

    public init(data: BuildBetaNotification, links: DocumentLinks) {
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

