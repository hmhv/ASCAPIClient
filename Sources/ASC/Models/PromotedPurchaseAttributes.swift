//
// PromotedPurchaseAttributes.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct PromotedPurchaseAttributes: Codable, JSONEncodable, Hashable {

    public enum State: String, Codable, CaseIterable, CaseIterableDefaultsLast {
        case approved = "APPROVED"
        case inReview = "IN_REVIEW"
        case prepareForSubmission = "PREPARE_FOR_SUBMISSION"
        case rejected = "REJECTED"
        case unknownDefaultOpenApi = "unknown_default_open_api"
    }
    public var visibleForAllUsers: Bool?
    public var enabled: Bool?
    public var state: State?

    public init(visibleForAllUsers: Bool? = nil, enabled: Bool? = nil, state: State? = nil) {
        self.visibleForAllUsers = visibleForAllUsers
        self.enabled = enabled
        self.state = state
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case visibleForAllUsers
        case enabled
        case state
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(visibleForAllUsers, forKey: .visibleForAllUsers)
        try container.encodeIfPresent(enabled, forKey: .enabled)
        try container.encodeIfPresent(state, forKey: .state)
    }
}
