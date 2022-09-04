//
// CustomerReviewResponseV1Relationships.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct CustomerReviewResponseV1Relationships: Codable, JSONEncodable, Hashable {

    public var review: CustomerReviewResponseV1RelationshipsReview?

    public init(review: CustomerReviewResponseV1RelationshipsReview? = nil) {
        self.review = review
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case review
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(review, forKey: .review)
    }
}

