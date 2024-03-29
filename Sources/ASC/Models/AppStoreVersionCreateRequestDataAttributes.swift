//
// AppStoreVersionCreateRequestDataAttributes.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct AppStoreVersionCreateRequestDataAttributes: Codable, JSONEncodable, Hashable {

    public enum ReleaseType: String, Codable, CaseIterable, CaseIterableDefaultsLast {
        case manual = "MANUAL"
        case afterApproval = "AFTER_APPROVAL"
        case scheduled = "SCHEDULED"
        case unknownDefaultOpenApi = "unknown_default_open_api"
    }
    public var platform: Platform
    public var versionString: String
    public var copyright: String?
    public var releaseType: ReleaseType?
    public var earliestReleaseDate: Date?

    public init(platform: Platform, versionString: String, copyright: String? = nil, releaseType: ReleaseType? = nil, earliestReleaseDate: Date? = nil) {
        self.platform = platform
        self.versionString = versionString
        self.copyright = copyright
        self.releaseType = releaseType
        self.earliestReleaseDate = earliestReleaseDate
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case platform
        case versionString
        case copyright
        case releaseType
        case earliestReleaseDate
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(platform, forKey: .platform)
        try container.encode(versionString, forKey: .versionString)
        try container.encodeIfPresent(copyright, forKey: .copyright)
        try container.encodeIfPresent(releaseType, forKey: .releaseType)
        try container.encodeIfPresent(earliestReleaseDate, forKey: .earliestReleaseDate)
    }
}

