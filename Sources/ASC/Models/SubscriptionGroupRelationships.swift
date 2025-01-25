//
// SubscriptionGroupRelationships.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

public struct SubscriptionGroupRelationships: Sendable, Codable, JSONEncodable, Hashable {

    public var subscriptions: SubscriptionGroupRelationshipsSubscriptions?
    public var subscriptionGroupLocalizations: SubscriptionGroupRelationshipsSubscriptionGroupLocalizations?

    public init(subscriptions: SubscriptionGroupRelationshipsSubscriptions? = nil, subscriptionGroupLocalizations: SubscriptionGroupRelationshipsSubscriptionGroupLocalizations? = nil) {
        self.subscriptions = subscriptions
        self.subscriptionGroupLocalizations = subscriptionGroupLocalizations
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case subscriptions
        case subscriptionGroupLocalizations
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(subscriptions, forKey: .subscriptions)
        try container.encodeIfPresent(subscriptionGroupLocalizations, forKey: .subscriptionGroupLocalizations)
    }
}

