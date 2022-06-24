//
// AppClipRelationships.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct AppClipRelationships: Codable, Hashable {

    public var app: AppClipRelationshipsApp?
    public var appClipDefaultExperiences: AppClipRelationshipsAppClipDefaultExperiences?

    public init(app: AppClipRelationshipsApp? = nil, appClipDefaultExperiences: AppClipRelationshipsAppClipDefaultExperiences? = nil) {
        self.app = app
        self.appClipDefaultExperiences = appClipDefaultExperiences
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case app
        case appClipDefaultExperiences
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(app, forKey: .app)
        try container.encodeIfPresent(appClipDefaultExperiences, forKey: .appClipDefaultExperiences)
    }
}

