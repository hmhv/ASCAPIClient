//
// SubscriptionGroupLocalizationCreateRequestDataRelationships.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

public struct SubscriptionGroupLocalizationCreateRequestDataRelationships: Sendable, Codable, JSONEncodable, Hashable {

    public var subscriptionGroup: SubscriptionGroupLocalizationCreateRequestDataRelationshipsSubscriptionGroup

    public init(subscriptionGroup: SubscriptionGroupLocalizationCreateRequestDataRelationshipsSubscriptionGroup) {
        self.subscriptionGroup = subscriptionGroup
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case subscriptionGroup
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(subscriptionGroup, forKey: .subscriptionGroup)
    }
}

