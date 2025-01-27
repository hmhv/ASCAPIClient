//
// ProfileRelationships.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

public struct ProfileRelationships: Sendable, Codable, JSONEncodable, Hashable {

    public var bundleId: ProfileRelationshipsBundleId?
    public var devices: ProfileRelationshipsDevices?
    public var certificates: ProfileRelationshipsCertificates?

    public init(bundleId: ProfileRelationshipsBundleId? = nil, devices: ProfileRelationshipsDevices? = nil, certificates: ProfileRelationshipsCertificates? = nil) {
        self.bundleId = bundleId
        self.devices = devices
        self.certificates = certificates
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case bundleId
        case devices
        case certificates
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(bundleId, forKey: .bundleId)
        try container.encodeIfPresent(devices, forKey: .devices)
        try container.encodeIfPresent(certificates, forKey: .certificates)
    }
}

