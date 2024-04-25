//
// SubscriptionOfferCodeCustomCodeAttributes.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct SubscriptionOfferCodeCustomCodeAttributes: Codable, JSONEncodable, Hashable {

    public var customCode: String?
    public var numberOfCodes: Int?
    public var createdDate: Date?
    public var expirationDate: Date?
    public var active: Bool?

    public init(customCode: String? = nil, numberOfCodes: Int? = nil, createdDate: Date? = nil, expirationDate: Date? = nil, active: Bool? = nil) {
        self.customCode = customCode
        self.numberOfCodes = numberOfCodes
        self.createdDate = createdDate
        self.expirationDate = expirationDate
        self.active = active
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case customCode
        case numberOfCodes
        case createdDate
        case expirationDate
        case active
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(customCode, forKey: .customCode)
        try container.encodeIfPresent(numberOfCodes, forKey: .numberOfCodes)
        try container.encodeIfPresent(createdDate, forKey: .createdDate)
        try container.encodeIfPresent(expirationDate, forKey: .expirationDate)
        try container.encodeIfPresent(active, forKey: .active)
    }
}

