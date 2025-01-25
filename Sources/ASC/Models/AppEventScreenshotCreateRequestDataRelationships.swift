//
// AppEventScreenshotCreateRequestDataRelationships.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

public struct AppEventScreenshotCreateRequestDataRelationships: Sendable, Codable, JSONEncodable, Hashable {

    public var appEventLocalization: AppEventScreenshotCreateRequestDataRelationshipsAppEventLocalization

    public init(appEventLocalization: AppEventScreenshotCreateRequestDataRelationshipsAppEventLocalization) {
        self.appEventLocalization = appEventLocalization
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case appEventLocalization
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(appEventLocalization, forKey: .appEventLocalization)
    }
}

