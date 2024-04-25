//
// CapabilityOption.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct CapabilityOption: Codable, JSONEncodable, Hashable {

    public enum Key: String, Codable, CaseIterable, CaseIterableDefaultsLast {
        case xcode5 = "XCODE_5"
        case xcode6 = "XCODE_6"
        case completeProtection = "COMPLETE_PROTECTION"
        case protectedUnlessOpen = "PROTECTED_UNLESS_OPEN"
        case protectedUntilFirstUserAuth = "PROTECTED_UNTIL_FIRST_USER_AUTH"
        case primaryAppConsent = "PRIMARY_APP_CONSENT"
        case unknownDefaultOpenApi = "unknown_default_open_api"
    }
    public var key: Key?
    public var name: String?
    public var description: String?
    public var enabledByDefault: Bool?
    public var enabled: Bool?
    public var supportsWildcard: Bool?

    public init(key: Key? = nil, name: String? = nil, description: String? = nil, enabledByDefault: Bool? = nil, enabled: Bool? = nil, supportsWildcard: Bool? = nil) {
        self.key = key
        self.name = name
        self.description = description
        self.enabledByDefault = enabledByDefault
        self.enabled = enabled
        self.supportsWildcard = supportsWildcard
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case key
        case name
        case description
        case enabledByDefault
        case enabled
        case supportsWildcard
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(key, forKey: .key)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(description, forKey: .description)
        try container.encodeIfPresent(enabledByDefault, forKey: .enabledByDefault)
        try container.encodeIfPresent(enabled, forKey: .enabled)
        try container.encodeIfPresent(supportsWildcard, forKey: .supportsWildcard)
    }
}
