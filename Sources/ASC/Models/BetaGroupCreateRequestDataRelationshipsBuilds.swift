//
// BetaGroupCreateRequestDataRelationshipsBuilds.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

public struct BetaGroupCreateRequestDataRelationshipsBuilds: Sendable, Codable, JSONEncodable, Hashable {

    public var data: [AppEncryptionDeclarationRelationshipsBuildsDataInner]?

    public init(data: [AppEncryptionDeclarationRelationshipsBuildsDataInner]? = nil) {
        self.data = data
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case data
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(data, forKey: .data)
    }
}

