//
// BundleIdCapabilityCreateRequestDataRelationships.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

public struct BundleIdCapabilityCreateRequestDataRelationships: Sendable, Codable, JSONEncodable, Hashable {

    public var bundleId: BundleIdCapabilityCreateRequestDataRelationshipsBundleId

    public init(bundleId: BundleIdCapabilityCreateRequestDataRelationshipsBundleId) {
        self.bundleId = bundleId
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case bundleId
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(bundleId, forKey: .bundleId)
    }
}

