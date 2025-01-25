//
// CertificateAttributes.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

public struct CertificateAttributes: Sendable, Codable, JSONEncodable, Hashable {

    public var name: String?
    public var certificateType: CertificateType?
    public var displayName: String?
    public var serialNumber: String?
    public var platform: BundleIdPlatform?
    public var expirationDate: Date?
    public var certificateContent: String?

    public init(name: String? = nil, certificateType: CertificateType? = nil, displayName: String? = nil, serialNumber: String? = nil, platform: BundleIdPlatform? = nil, expirationDate: Date? = nil, certificateContent: String? = nil) {
        self.name = name
        self.certificateType = certificateType
        self.displayName = displayName
        self.serialNumber = serialNumber
        self.platform = platform
        self.expirationDate = expirationDate
        self.certificateContent = certificateContent
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case name
        case certificateType
        case displayName
        case serialNumber
        case platform
        case expirationDate
        case certificateContent
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(certificateType, forKey: .certificateType)
        try container.encodeIfPresent(displayName, forKey: .displayName)
        try container.encodeIfPresent(serialNumber, forKey: .serialNumber)
        try container.encodeIfPresent(platform, forKey: .platform)
        try container.encodeIfPresent(expirationDate, forKey: .expirationDate)
        try container.encodeIfPresent(certificateContent, forKey: .certificateContent)
    }
}

