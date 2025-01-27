//
// SandboxTesterV2UpdateRequestDataAttributes.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

public struct SandboxTesterV2UpdateRequestDataAttributes: Sendable, Codable, JSONEncodable, Hashable {

    public enum SubscriptionRenewalRate: String, Sendable, Codable, CaseIterable, CaseIterableDefaultsLast {
        case monthlyRenewalEveryOneHour = "MONTHLY_RENEWAL_EVERY_ONE_HOUR"
        case monthlyRenewalEveryThirtyMinutes = "MONTHLY_RENEWAL_EVERY_THIRTY_MINUTES"
        case monthlyRenewalEveryFifteenMinutes = "MONTHLY_RENEWAL_EVERY_FIFTEEN_MINUTES"
        case monthlyRenewalEveryFiveMinutes = "MONTHLY_RENEWAL_EVERY_FIVE_MINUTES"
        case monthlyRenewalEveryThreeMinutes = "MONTHLY_RENEWAL_EVERY_THREE_MINUTES"
        case unknownDefaultOpenApi = "unknown_default_open_api"
    }
    public var territory: TerritoryCode?
    public var interruptPurchases: Bool?
    public var subscriptionRenewalRate: SubscriptionRenewalRate?

    public init(territory: TerritoryCode? = nil, interruptPurchases: Bool? = nil, subscriptionRenewalRate: SubscriptionRenewalRate? = nil) {
        self.territory = territory
        self.interruptPurchases = interruptPurchases
        self.subscriptionRenewalRate = subscriptionRenewalRate
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case territory
        case interruptPurchases
        case subscriptionRenewalRate
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(territory, forKey: .territory)
        try container.encodeIfPresent(interruptPurchases, forKey: .interruptPurchases)
        try container.encodeIfPresent(subscriptionRenewalRate, forKey: .subscriptionRenewalRate)
    }
}

