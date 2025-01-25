//
// AppEncryptionDeclarationCreateRequestDataRelationshipsApp.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

@available(*, deprecated, message: "This schema is deprecated.")
public struct AppEncryptionDeclarationCreateRequestDataRelationshipsApp: Sendable, Codable, JSONEncodable, Hashable {

    public var data: AlternativeDistributionKeyCreateRequestDataRelationshipsAppData

    public init(data: AlternativeDistributionKeyCreateRequestDataRelationshipsAppData) {
        self.data = data
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case data
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(data, forKey: .data)
    }
}

