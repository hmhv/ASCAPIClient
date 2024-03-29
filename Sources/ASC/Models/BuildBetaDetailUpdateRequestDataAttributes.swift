//
// BuildBetaDetailUpdateRequestDataAttributes.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct BuildBetaDetailUpdateRequestDataAttributes: Codable, JSONEncodable, Hashable {

    public var autoNotifyEnabled: Bool?

    public init(autoNotifyEnabled: Bool? = nil) {
        self.autoNotifyEnabled = autoNotifyEnabled
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case autoNotifyEnabled
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(autoNotifyEnabled, forKey: .autoNotifyEnabled)
    }
}

