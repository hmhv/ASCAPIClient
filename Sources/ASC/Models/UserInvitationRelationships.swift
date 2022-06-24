//
// UserInvitationRelationships.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct UserInvitationRelationships: Codable, Hashable {

    public var visibleApps: BetaTesterRelationshipsApps?

    public init(visibleApps: BetaTesterRelationshipsApps? = nil) {
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

