//
// AppEncryptionDeclarationDocumentCreateRequestDataRelationships.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

public struct AppEncryptionDeclarationDocumentCreateRequestDataRelationships: Sendable, Codable, JSONEncodable, Hashable {

    public var appEncryptionDeclaration: AppEncryptionDeclarationDocumentCreateRequestDataRelationshipsAppEncryptionDeclaration

    public init(appEncryptionDeclaration: AppEncryptionDeclarationDocumentCreateRequestDataRelationshipsAppEncryptionDeclaration) {
        self.appEncryptionDeclaration = appEncryptionDeclaration
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case appEncryptionDeclaration
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(appEncryptionDeclaration, forKey: .appEncryptionDeclaration)
    }
}

