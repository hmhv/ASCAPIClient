//
// BetaBuildUsagesV1MetricResponseDataInnerDataPointsValues.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct BetaBuildUsagesV1MetricResponseDataInnerDataPointsValues: Codable, JSONEncodable, Hashable {

    public var crashCount: Int?
    public var installCount: Int?
    public var sessionCount: Int?
    public var feedbackCount: Int?
    public var inviteCount: Int?

    public init(crashCount: Int? = nil, installCount: Int? = nil, sessionCount: Int? = nil, feedbackCount: Int? = nil, inviteCount: Int? = nil) {
        self.crashCount = crashCount
        self.installCount = installCount
        self.sessionCount = sessionCount
        self.feedbackCount = feedbackCount
        self.inviteCount = inviteCount
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case crashCount
        case installCount
        case sessionCount
        case feedbackCount
        case inviteCount
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(crashCount, forKey: .crashCount)
        try container.encodeIfPresent(installCount, forKey: .installCount)
        try container.encodeIfPresent(sessionCount, forKey: .sessionCount)
        try container.encodeIfPresent(feedbackCount, forKey: .feedbackCount)
        try container.encodeIfPresent(inviteCount, forKey: .inviteCount)
    }
}

