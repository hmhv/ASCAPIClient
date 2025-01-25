//
// SubscriptionIntroductoryOfferCreateRequest.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

public struct SubscriptionIntroductoryOfferCreateRequest: Sendable, Codable, JSONEncodable, Hashable {

    public var data: SubscriptionIntroductoryOfferCreateRequestData
    public var included: [SubscriptionPricePointInlineCreate]?

    public init(data: SubscriptionIntroductoryOfferCreateRequestData, included: [SubscriptionPricePointInlineCreate]? = nil) {
        self.data = data
        self.included = included
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case data
        case included
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(data, forKey: .data)
        try container.encodeIfPresent(included, forKey: .included)
    }
}

