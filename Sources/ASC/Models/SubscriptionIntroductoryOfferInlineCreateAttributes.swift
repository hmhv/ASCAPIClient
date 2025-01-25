//
// SubscriptionIntroductoryOfferInlineCreateAttributes.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

public struct SubscriptionIntroductoryOfferInlineCreateAttributes: Sendable, Codable, JSONEncodable, Hashable {

    public var startDate: Date?
    public var endDate: Date?
    public var duration: SubscriptionOfferDuration
    public var offerMode: SubscriptionOfferMode
    public var numberOfPeriods: Int

    public init(startDate: Date? = nil, endDate: Date? = nil, duration: SubscriptionOfferDuration, offerMode: SubscriptionOfferMode, numberOfPeriods: Int) {
        self.startDate = startDate
        self.endDate = endDate
        self.duration = duration
        self.offerMode = offerMode
        self.numberOfPeriods = numberOfPeriods
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case startDate
        case endDate
        case duration
        case offerMode
        case numberOfPeriods
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(startDate, forKey: .startDate)
        try container.encodeIfPresent(endDate, forKey: .endDate)
        try container.encode(duration, forKey: .duration)
        try container.encode(offerMode, forKey: .offerMode)
        try container.encode(numberOfPeriods, forKey: .numberOfPeriods)
    }
}

