//
// SubscriptionAttributes.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct SubscriptionAttributes: Codable, JSONEncodable, Hashable {

    public enum State: String, Codable, CaseIterable, CaseIterableDefaultsLast {
        case missingMetadata = "MISSING_METADATA"
        case readyToSubmit = "READY_TO_SUBMIT"
        case waitingForReview = "WAITING_FOR_REVIEW"
        case inReview = "IN_REVIEW"
        case developerActionNeeded = "DEVELOPER_ACTION_NEEDED"
        case pendingBinaryApproval = "PENDING_BINARY_APPROVAL"
        case approved = "APPROVED"
        case developerRemovedFromSale = "DEVELOPER_REMOVED_FROM_SALE"
        case removedFromSale = "REMOVED_FROM_SALE"
        case rejected = "REJECTED"
        case unknownDefaultOpenApi = "unknown_default_open_api"
    }
    public enum SubscriptionPeriod: String, Codable, CaseIterable, CaseIterableDefaultsLast {
        case oneWeek = "ONE_WEEK"
        case oneMonth = "ONE_MONTH"
        case twoMonths = "TWO_MONTHS"
        case threeMonths = "THREE_MONTHS"
        case sixMonths = "SIX_MONTHS"
        case oneYear = "ONE_YEAR"
        case unknownDefaultOpenApi = "unknown_default_open_api"
    }
    public var name: String?
    public var productId: String?
    public var familySharable: Bool?
    public var state: State?
    public var subscriptionPeriod: SubscriptionPeriod?
    public var reviewNote: String?
    public var groupLevel: Int?

    public init(name: String? = nil, productId: String? = nil, familySharable: Bool? = nil, state: State? = nil, subscriptionPeriod: SubscriptionPeriod? = nil, reviewNote: String? = nil, groupLevel: Int? = nil) {
        self.name = name
        self.productId = productId
        self.familySharable = familySharable
        self.state = state
        self.subscriptionPeriod = subscriptionPeriod
        self.reviewNote = reviewNote
        self.groupLevel = groupLevel
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case name
        case productId
        case familySharable
        case state
        case subscriptionPeriod
        case reviewNote
        case groupLevel
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(productId, forKey: .productId)
        try container.encodeIfPresent(familySharable, forKey: .familySharable)
        try container.encodeIfPresent(state, forKey: .state)
        try container.encodeIfPresent(subscriptionPeriod, forKey: .subscriptionPeriod)
        try container.encodeIfPresent(reviewNote, forKey: .reviewNote)
        try container.encodeIfPresent(groupLevel, forKey: .groupLevel)
    }
}

