//
// AppEncryptionDeclarationWithoutIncludesResponse.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct AppEncryptionDeclarationWithoutIncludesResponse: Codable, JSONEncodable, Hashable {

    public var data: AppEncryptionDeclaration
    public var links: DocumentLinks

    public init(data: AppEncryptionDeclaration, links: DocumentLinks) {
        self.data = data
        self.links = links
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case data
        case links
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(data, forKey: .data)
        try container.encode(links, forKey: .links)
    }
}

