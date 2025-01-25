//
// SubscriptionPromotionalOfferAttributes.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

public struct SubscriptionPromotionalOfferAttributes: Sendable, Codable, JSONEncodable, Hashable {

    public var name: String?
    public var offerCode: String?
    public var duration: SubscriptionOfferDuration?
    public var offerMode: SubscriptionOfferMode?
    public var numberOfPeriods: Int?

    public init(name: String? = nil, offerCode: String? = nil, duration: SubscriptionOfferDuration? = nil, offerMode: SubscriptionOfferMode? = nil, numberOfPeriods: Int? = nil) {
        self.name = name
        self.offerCode = offerCode
        self.duration = duration
        self.offerMode = offerMode
        self.numberOfPeriods = numberOfPeriods
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case name
        case offerCode
        case duration
        case offerMode
        case numberOfPeriods
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(offerCode, forKey: .offerCode)
        try container.encodeIfPresent(duration, forKey: .duration)
        try container.encodeIfPresent(offerMode, forKey: .offerMode)
        try container.encodeIfPresent(numberOfPeriods, forKey: .numberOfPeriods)
    }
}

