//
// AppInfoLocalizationCreateRequestDataRelationships.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

public struct AppInfoLocalizationCreateRequestDataRelationships: Sendable, Codable, JSONEncodable, Hashable {

    public var appInfo: AppInfoLocalizationCreateRequestDataRelationshipsAppInfo

    public init(appInfo: AppInfoLocalizationCreateRequestDataRelationshipsAppInfo) {
        self.appInfo = appInfo
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case appInfo
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(appInfo, forKey: .appInfo)
    }
}

