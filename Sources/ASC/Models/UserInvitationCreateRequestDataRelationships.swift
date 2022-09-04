//
// UserInvitationCreateRequestDataRelationships.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct UserInvitationCreateRequestDataRelationships: Codable, JSONEncodable, Hashable {

    public var visibleApps: UserInvitationCreateRequestDataRelationshipsVisibleApps?

    public init(visibleApps: UserInvitationCreateRequestDataRelationshipsVisibleApps? = nil) {
        self.visibleApps = visibleApps
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case visibleApps
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(visibleApps, forKey: .visibleApps)
    }
}

