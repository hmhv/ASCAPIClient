//
// BundleIdRelationships.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct BundleIdRelationships: Codable, JSONEncodable, Hashable {

    public var profiles: BundleIdRelationshipsProfiles?
    public var bundleIdCapabilities: BundleIdRelationshipsBundleIdCapabilities?
    public var app: AppClipRelationshipsApp?

    public init(profiles: BundleIdRelationshipsProfiles? = nil, bundleIdCapabilities: BundleIdRelationshipsBundleIdCapabilities? = nil, app: AppClipRelationshipsApp? = nil) {
        self.profiles = profiles
        self.bundleIdCapabilities = bundleIdCapabilities
        self.app = app
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case profiles
        case bundleIdCapabilities
        case app
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(profiles, forKey: .profiles)
        try container.encodeIfPresent(bundleIdCapabilities, forKey: .bundleIdCapabilities)
        try container.encodeIfPresent(app, forKey: .app)
    }
}

