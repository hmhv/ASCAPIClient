//
// AppCustomProductPageRelationships.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct AppCustomProductPageRelationships: Codable, JSONEncodable, Hashable {

    public var app: AppAvailabilityRelationshipsApp?
    public var appCustomProductPageVersions: AppCustomProductPageRelationshipsAppCustomProductPageVersions?

    public init(app: AppAvailabilityRelationshipsApp? = nil, appCustomProductPageVersions: AppCustomProductPageRelationshipsAppCustomProductPageVersions? = nil) {
        self.app = app
        self.appCustomProductPageVersions = appCustomProductPageVersions
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case app
        case appCustomProductPageVersions
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(app, forKey: .app)
        try container.encodeIfPresent(appCustomProductPageVersions, forKey: .appCustomProductPageVersions)
    }
}
