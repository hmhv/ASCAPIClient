//
// ReviewSubmissionCreateRequestDataAttributes.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

public struct ReviewSubmissionCreateRequestDataAttributes: Sendable, Codable, JSONEncodable, Hashable {

    public var platform: Platform

    public init(platform: Platform) {
        self.platform = platform
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case platform
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(platform, forKey: .platform)
    }
}

