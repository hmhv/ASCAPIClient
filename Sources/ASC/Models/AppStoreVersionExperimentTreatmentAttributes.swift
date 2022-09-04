//
// AppStoreVersionExperimentTreatmentAttributes.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct AppStoreVersionExperimentTreatmentAttributes: Codable, JSONEncodable, Hashable {

    public var name: String?
    public var appIcon: ImageAsset?
    public var appIconName: String?
    public var promotedDate: Date?

    public init(name: String? = nil, appIcon: ImageAsset? = nil, appIconName: String? = nil, promotedDate: Date? = nil) {
        self.name = name
        self.appIcon = appIcon
        self.appIconName = appIconName
        self.promotedDate = promotedDate
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case name
        case appIcon
        case appIconName
        case promotedDate
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(appIcon, forKey: .appIcon)
        try container.encodeIfPresent(appIconName, forKey: .appIconName)
        try container.encodeIfPresent(promotedDate, forKey: .promotedDate)
    }
}

