//
// AppStoreVersionExperimentTreatmentLocalizationAttributes.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct AppStoreVersionExperimentTreatmentLocalizationAttributes: Codable, Hashable {

    public var locale: String?

    public init(locale: String? = nil) {
        self.locale = locale
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case locale
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(locale, forKey: .locale)
    }
}

