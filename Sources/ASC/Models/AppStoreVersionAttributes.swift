//
// AppStoreVersionAttributes.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct AppStoreVersionAttributes: Codable, JSONEncodable, Hashable {

    public enum ReviewType: String, Codable, CaseIterable, CaseIterableDefaultsLast {
        case appStore = "APP_STORE"
        case notarization = "NOTARIZATION"
        case unknownDefaultOpenApi = "unknown_default_open_api"
    }
    public enum ReleaseType: String, Codable, CaseIterable, CaseIterableDefaultsLast {
        case manual = "MANUAL"
        case afterApproval = "AFTER_APPROVAL"
        case scheduled = "SCHEDULED"
        case unknownDefaultOpenApi = "unknown_default_open_api"
    }
    public var platform: Platform?
    public var versionString: String?
    public var appStoreState: AppStoreVersionState?
    public var appVersionState: AppVersionState?
    public var copyright: String?
    public var reviewType: ReviewType?
    public var releaseType: ReleaseType?
    public var earliestReleaseDate: Date?
    public var downloadable: Bool?
    public var createdDate: Date?

    public init(platform: Platform? = nil, versionString: String? = nil, appStoreState: AppStoreVersionState? = nil, appVersionState: AppVersionState? = nil, copyright: String? = nil, reviewType: ReviewType? = nil, releaseType: ReleaseType? = nil, earliestReleaseDate: Date? = nil, downloadable: Bool? = nil, createdDate: Date? = nil) {
        self.platform = platform
        self.versionString = versionString
        self.appStoreState = appStoreState
        self.appVersionState = appVersionState
        self.copyright = copyright
        self.reviewType = reviewType
        self.releaseType = releaseType
        self.earliestReleaseDate = earliestReleaseDate
        self.downloadable = downloadable
        self.createdDate = createdDate
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case platform
        case versionString
        case appStoreState
        case appVersionState
        case copyright
        case reviewType
        case releaseType
        case earliestReleaseDate
        case downloadable
        case createdDate
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(platform, forKey: .platform)
        try container.encodeIfPresent(versionString, forKey: .versionString)
        try container.encodeIfPresent(appStoreState, forKey: .appStoreState)
        try container.encodeIfPresent(appVersionState, forKey: .appVersionState)
        try container.encodeIfPresent(copyright, forKey: .copyright)
        try container.encodeIfPresent(reviewType, forKey: .reviewType)
        try container.encodeIfPresent(releaseType, forKey: .releaseType)
        try container.encodeIfPresent(earliestReleaseDate, forKey: .earliestReleaseDate)
        try container.encodeIfPresent(downloadable, forKey: .downloadable)
        try container.encodeIfPresent(createdDate, forKey: .createdDate)
    }
}
