//
// BetaBuildLocalizationUpdateRequestDataAttributes.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

public struct BetaBuildLocalizationUpdateRequestDataAttributes: Sendable, Codable, JSONEncodable, Hashable {

    public var whatsNew: String?

    public init(whatsNew: String? = nil) {
        self.whatsNew = whatsNew
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case whatsNew
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(whatsNew, forKey: .whatsNew)
    }
}

