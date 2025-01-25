//
// AppEncryptionDeclarationRelationships.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

public struct AppEncryptionDeclarationRelationships: Sendable, Codable, JSONEncodable, Hashable {

    @available(*, deprecated, message: "This property is deprecated.")
    public var app: AppEncryptionDeclarationRelationshipsApp?
    @available(*, deprecated, message: "This property is deprecated.")
    public var builds: AppEncryptionDeclarationRelationshipsBuilds?
    public var appEncryptionDeclarationDocument: AppEncryptionDeclarationRelationshipsAppEncryptionDeclarationDocument?

    public init(app: AppEncryptionDeclarationRelationshipsApp? = nil, builds: AppEncryptionDeclarationRelationshipsBuilds? = nil, appEncryptionDeclarationDocument: AppEncryptionDeclarationRelationshipsAppEncryptionDeclarationDocument? = nil) {
        self.app = app
        self.builds = builds
        self.appEncryptionDeclarationDocument = appEncryptionDeclarationDocument
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case app
        case builds
        case appEncryptionDeclarationDocument
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(app, forKey: .app)
        try container.encodeIfPresent(builds, forKey: .builds)
        try container.encodeIfPresent(appEncryptionDeclarationDocument, forKey: .appEncryptionDeclarationDocument)
    }
}

