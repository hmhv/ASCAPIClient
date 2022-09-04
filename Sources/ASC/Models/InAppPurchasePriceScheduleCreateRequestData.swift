//
// InAppPurchasePriceScheduleCreateRequestData.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct InAppPurchasePriceScheduleCreateRequestData: Codable, JSONEncodable, Hashable {

    public enum ModelType: String, Codable, CaseIterable, CaseIterableDefaultsLast {
        case inapppurchasepriceschedules = "inAppPurchasePriceSchedules"
        case unknownDefaultOpenApi = "unknown_default_open_api"
    }
    public var type: ModelType
    public var relationships: InAppPurchasePriceScheduleCreateRequestDataRelationships

    public init(type: ModelType, relationships: InAppPurchasePriceScheduleCreateRequestDataRelationships) {
        self.type = type
        self.relationships = relationships
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case type
        case relationships
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(type, forKey: .type)
        try container.encode(relationships, forKey: .relationships)
    }
}

