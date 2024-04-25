//
// SubscriptionOfferCodeOneTimeUseCodeCreateRequestDataAttributes.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct SubscriptionOfferCodeOneTimeUseCodeCreateRequestDataAttributes: Codable, JSONEncodable, Hashable {

    public var numberOfCodes: Int
    public var expirationDate: Date

    public init(numberOfCodes: Int, expirationDate: Date) {
        self.numberOfCodes = numberOfCodes
        self.expirationDate = expirationDate
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case numberOfCodes
        case expirationDate
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(numberOfCodes, forKey: .numberOfCodes)
        try container.encode(expirationDate, forKey: .expirationDate)
    }
}
