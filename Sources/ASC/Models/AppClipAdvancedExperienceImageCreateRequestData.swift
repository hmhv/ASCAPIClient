//
// AppClipAdvancedExperienceImageCreateRequestData.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct AppClipAdvancedExperienceImageCreateRequestData: Codable, Hashable {

    public enum ModelType: String, Codable, CaseIterable, CaseIterableDefaultsLast {
        case appclipadvancedexperienceimages = "appClipAdvancedExperienceImages"
        case unknownDefaultOpenApi = "unknown_default_open_api"
    }
    public var type: ModelType
    public var attributes: AppClipAdvancedExperienceImageCreateRequestDataAttributes

    public init(type: ModelType, attributes: AppClipAdvancedExperienceImageCreateRequestDataAttributes) {
        self.type = type
        self.attributes = attributes
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case type
        case attributes
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(type, forKey: .type)
        try container.encode(attributes, forKey: .attributes)
    }
}

