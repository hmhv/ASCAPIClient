//
// AppStoreVersionSubmissionCreateRequestData.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

public struct AppStoreVersionSubmissionCreateRequestData: Sendable, Codable, JSONEncodable, Hashable {

    public enum ModelType: String, Sendable, Codable, CaseIterable, CaseIterableDefaultsLast {
        case appstoreversionsubmissions = "appStoreVersionSubmissions"
        case unknownDefaultOpenApi = "unknown_default_open_api"
    }
    public var type: ModelType
    public var relationships: AlternativeDistributionPackageCreateRequestDataRelationships

    public init(type: ModelType, relationships: AlternativeDistributionPackageCreateRequestDataRelationships) {
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

