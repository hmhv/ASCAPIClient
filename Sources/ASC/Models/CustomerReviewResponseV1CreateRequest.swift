//
// CustomerReviewResponseV1CreateRequest.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

public struct CustomerReviewResponseV1CreateRequest: Sendable, Codable, JSONEncodable, Hashable {

    public var data: CustomerReviewResponseV1CreateRequestData

    public init(data: CustomerReviewResponseV1CreateRequestData) {
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

