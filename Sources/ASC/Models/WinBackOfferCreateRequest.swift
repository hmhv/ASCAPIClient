//
// WinBackOfferCreateRequest.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

public struct WinBackOfferCreateRequest: Sendable, Codable, JSONEncodable, Hashable {

    public var data: WinBackOfferCreateRequestData
    public var included: [WinBackOfferPriceInlineCreate]?

    public init(data: WinBackOfferCreateRequestData, included: [WinBackOfferPriceInlineCreate]? = nil) {
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

