//
// SubscriptionOfferCodeCustomCodeCreateRequestDataRelationships.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct SubscriptionOfferCodeCustomCodeCreateRequestDataRelationships: Codable, JSONEncodable, Hashable {

    public var offerCode: SubscriptionOfferCodeCustomCodeCreateRequestDataRelationshipsOfferCode

    public init(offerCode: SubscriptionOfferCodeCustomCodeCreateRequestDataRelationshipsOfferCode) {
        self.offerCode = offerCode
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case offerCode
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(offerCode, forKey: .offerCode)
    }
}

