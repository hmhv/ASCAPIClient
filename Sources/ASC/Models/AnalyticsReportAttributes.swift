//
// AnalyticsReportAttributes.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

public struct AnalyticsReportAttributes: Sendable, Codable, JSONEncodable, Hashable {

    public enum Category: String, Sendable, Codable, CaseIterable, CaseIterableDefaultsLast {
        case appUsage = "APP_USAGE"
        case appStoreEngagement = "APP_STORE_ENGAGEMENT"
        case commerce = "COMMERCE"
        case frameworkUsage = "FRAMEWORK_USAGE"
        case performance = "PERFORMANCE"
        case unknownDefaultOpenApi = "unknown_default_open_api"
    }
    public var name: String?
    public var category: Category?

    public init(name: String? = nil, category: Category? = nil) {
        self.name = name
        self.category = category
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case name
        case category
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(category, forKey: .category)
    }
}

