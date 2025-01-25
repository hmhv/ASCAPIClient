//
// AnalyticsReportRequestCreateRequestDataAttributes.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

public struct AnalyticsReportRequestCreateRequestDataAttributes: Sendable, Codable, JSONEncodable, Hashable {

    public enum AccessType: String, Sendable, Codable, CaseIterable, CaseIterableDefaultsLast {
        case oneTimeSnapshot = "ONE_TIME_SNAPSHOT"
        case ongoing = "ONGOING"
        case unknownDefaultOpenApi = "unknown_default_open_api"
    }
    public var accessType: AccessType

    public init(accessType: AccessType) {
        self.accessType = accessType
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case accessType
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(accessType, forKey: .accessType)
    }
}

