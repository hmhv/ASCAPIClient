//
// AppCustomProductPageLocalizationUpdateRequestDataAttributes.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct AppCustomProductPageLocalizationUpdateRequestDataAttributes: Codable, Hashable {

    public var promotionalText: String?

    public init(promotionalText: String? = nil) {
        self.promotionalText = promotionalText
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case promotionalText
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(promotionalText, forKey: .promotionalText)
    }
}

