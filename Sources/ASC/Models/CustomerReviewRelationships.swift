//
// CustomerReviewRelationships.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

public struct CustomerReviewRelationships: Sendable, Codable, JSONEncodable, Hashable {

    public var response: CustomerReviewRelationshipsResponse?

    public init(response: CustomerReviewRelationshipsResponse? = nil) {
        self.response = response
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case response
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(response, forKey: .response)
    }
}

