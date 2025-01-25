//
// AppEncryptionDeclarationDocumentCreateRequestData.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

public struct AppEncryptionDeclarationDocumentCreateRequestData: Sendable, Codable, JSONEncodable, Hashable {

    public enum ModelType: String, Sendable, Codable, CaseIterable, CaseIterableDefaultsLast {
        case appencryptiondeclarationdocuments = "appEncryptionDeclarationDocuments"
        case unknownDefaultOpenApi = "unknown_default_open_api"
    }
    public var type: ModelType
    public var attributes: AppClipAdvancedExperienceImageCreateRequestDataAttributes
    public var relationships: AppEncryptionDeclarationDocumentCreateRequestDataRelationships

    public init(type: ModelType, attributes: AppClipAdvancedExperienceImageCreateRequestDataAttributes, relationships: AppEncryptionDeclarationDocumentCreateRequestDataRelationships) {
        self.type = type
        self.attributes = attributes
        self.relationships = relationships
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case type
        case attributes
        case relationships
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(type, forKey: .type)
        try container.encode(attributes, forKey: .attributes)
        try container.encode(relationships, forKey: .relationships)
    }
}

