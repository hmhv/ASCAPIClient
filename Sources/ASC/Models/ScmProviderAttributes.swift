//
// ScmProviderAttributes.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

public struct ScmProviderAttributes: Sendable, Codable, JSONEncodable, Hashable {

    public var scmProviderType: ScmProviderType?
    public var url: String?

    public init(scmProviderType: ScmProviderType? = nil, url: String? = nil) {
        self.scmProviderType = scmProviderType
        self.url = url
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case scmProviderType
        case url
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(scmProviderType, forKey: .scmProviderType)
        try container.encodeIfPresent(url, forKey: .url)
    }
}

