//
// AppInfoResponse.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

public struct AppInfoResponse: Sendable, Codable, JSONEncodable, Hashable {

    public var data: AppInfo
    public var included: [AppInfosResponseIncludedInner]?
    public var links: DocumentLinks

    public init(data: AppInfo, included: [AppInfosResponseIncludedInner]? = nil, links: DocumentLinks) {
        self.data = data
        self.included = included
        self.links = links
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case data
        case included
        case links
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(data, forKey: .data)
        try container.encodeIfPresent(included, forKey: .included)
        try container.encode(links, forKey: .links)
    }
}

