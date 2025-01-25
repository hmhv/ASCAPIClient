//
// CiTestDestination.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

public struct CiTestDestination: Sendable, Codable, JSONEncodable, Hashable {

    public var deviceTypeName: String?
    public var deviceTypeIdentifier: String?
    public var runtimeName: String?
    public var runtimeIdentifier: String?
    public var kind: CiTestDestinationKind?

    public init(deviceTypeName: String? = nil, deviceTypeIdentifier: String? = nil, runtimeName: String? = nil, runtimeIdentifier: String? = nil, kind: CiTestDestinationKind? = nil) {
        self.deviceTypeName = deviceTypeName
        self.deviceTypeIdentifier = deviceTypeIdentifier
        self.runtimeName = runtimeName
        self.runtimeIdentifier = runtimeIdentifier
        self.kind = kind
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case deviceTypeName
        case deviceTypeIdentifier
        case runtimeName
        case runtimeIdentifier
        case kind
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(deviceTypeName, forKey: .deviceTypeName)
        try container.encodeIfPresent(deviceTypeIdentifier, forKey: .deviceTypeIdentifier)
        try container.encodeIfPresent(runtimeName, forKey: .runtimeName)
        try container.encodeIfPresent(runtimeIdentifier, forKey: .runtimeIdentifier)
        try container.encodeIfPresent(kind, forKey: .kind)
    }
}

