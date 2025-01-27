//
// SubscriptionGroupLocalizationAttributes.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

public struct SubscriptionGroupLocalizationAttributes: Sendable, Codable, JSONEncodable, Hashable {

    public enum State: String, Sendable, Codable, CaseIterable, CaseIterableDefaultsLast {
        case prepareForSubmission = "PREPARE_FOR_SUBMISSION"
        case waitingForReview = "WAITING_FOR_REVIEW"
        case approved = "APPROVED"
        case rejected = "REJECTED"
        case unknownDefaultOpenApi = "unknown_default_open_api"
    }
    public var name: String?
    public var customAppName: String?
    public var locale: String?
    public var state: State?

    public init(name: String? = nil, customAppName: String? = nil, locale: String? = nil, state: State? = nil) {
        self.name = name
        self.customAppName = customAppName
        self.locale = locale
        self.state = state
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case name
        case customAppName
        case locale
        case state
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(customAppName, forKey: .customAppName)
        try container.encodeIfPresent(locale, forKey: .locale)
        try container.encodeIfPresent(state, forKey: .state)
    }
}

