//
// CiXcodeVersionAttributesTestDestinationsInner.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

public struct CiXcodeVersionAttributesTestDestinationsInner: Sendable, Codable, JSONEncodable, Hashable {

    public var deviceTypeName: String?
    public var deviceTypeIdentifier: String?
    public var availableRuntimes: [CiXcodeVersionAttributesTestDestinationsInnerAvailableRuntimesInner]?
    public var kind: CiTestDestinationKind?

    public init(deviceTypeName: String? = nil, deviceTypeIdentifier: String? = nil, availableRuntimes: [CiXcodeVersionAttributesTestDestinationsInnerAvailableRuntimesInner]? = nil, kind: CiTestDestinationKind? = nil) {
        self.deviceTypeName = deviceTypeName
        self.deviceTypeIdentifier = deviceTypeIdentifier
        self.availableRuntimes = availableRuntimes
        self.kind = kind
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case deviceTypeName
        case deviceTypeIdentifier
        case availableRuntimes
        case kind
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(deviceTypeName, forKey: .deviceTypeName)
        try container.encodeIfPresent(deviceTypeIdentifier, forKey: .deviceTypeIdentifier)
        try container.encodeIfPresent(availableRuntimes, forKey: .availableRuntimes)
        try container.encodeIfPresent(kind, forKey: .kind)
    }
}

