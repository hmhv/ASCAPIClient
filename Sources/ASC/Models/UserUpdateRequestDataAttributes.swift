//
// UserUpdateRequestDataAttributes.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

public struct UserUpdateRequestDataAttributes: Sendable, Codable, JSONEncodable, Hashable {

    public var roles: [UserRole]?
    public var allAppsVisible: Bool?
    public var provisioningAllowed: Bool?

    public init(roles: [UserRole]? = nil, allAppsVisible: Bool? = nil, provisioningAllowed: Bool? = nil) {
        self.roles = roles
        self.allAppsVisible = allAppsVisible
        self.provisioningAllowed = provisioningAllowed
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case roles
        case allAppsVisible
        case provisioningAllowed
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(roles, forKey: .roles)
        try container.encodeIfPresent(allAppsVisible, forKey: .allAppsVisible)
        try container.encodeIfPresent(provisioningAllowed, forKey: .provisioningAllowed)
    }
}

