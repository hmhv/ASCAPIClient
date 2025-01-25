//
// DeviceUpdateRequestDataAttributes.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

public struct DeviceUpdateRequestDataAttributes: Sendable, Codable, JSONEncodable, Hashable {

    public enum Status: String, Sendable, Codable, CaseIterable, CaseIterableDefaultsLast {
        case enabled = "ENABLED"
        case disabled = "DISABLED"
        case unknownDefaultOpenApi = "unknown_default_open_api"
    }
    public var name: String?
    public var status: Status?

    public init(name: String? = nil, status: Status? = nil) {
        self.name = name
        self.status = status
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case name
        case status
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(status, forKey: .status)
    }
}

