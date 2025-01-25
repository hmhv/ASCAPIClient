//
// BetaTesterAttributes.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

public struct BetaTesterAttributes: Sendable, Codable, JSONEncodable, Hashable {

    public var firstName: String?
    public var lastName: String?
    public var email: String?
    public var inviteType: BetaInviteType?
    public var state: BetaTesterState?

    public init(firstName: String? = nil, lastName: String? = nil, email: String? = nil, inviteType: BetaInviteType? = nil, state: BetaTesterState? = nil) {
        self.firstName = firstName
        self.lastName = lastName
        self.email = email
        self.inviteType = inviteType
        self.state = state
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case firstName
        case lastName
        case email
        case inviteType
        case state
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(firstName, forKey: .firstName)
        try container.encodeIfPresent(lastName, forKey: .lastName)
        try container.encodeIfPresent(email, forKey: .email)
        try container.encodeIfPresent(inviteType, forKey: .inviteType)
        try container.encodeIfPresent(state, forKey: .state)
    }
}

