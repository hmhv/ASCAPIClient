//
// PagingInformation.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct PagingInformation: Codable, JSONEncodable, Hashable {

    public var paging: PagingInformationPaging

    public init(paging: PagingInformationPaging) {
        self.paging = paging
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case paging
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(paging, forKey: .paging)
    }
}

