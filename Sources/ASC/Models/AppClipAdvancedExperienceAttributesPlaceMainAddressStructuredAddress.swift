//
// AppClipAdvancedExperienceAttributesPlaceMainAddressStructuredAddress.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct AppClipAdvancedExperienceAttributesPlaceMainAddressStructuredAddress: Codable, JSONEncodable, Hashable {

    public var streetAddress: [String]?
    public var floor: String?
    public var neighborhood: String?
    public var locality: String?
    public var stateProvince: String?
    public var postalCode: String?
    public var countryCode: String?

    public init(streetAddress: [String]? = nil, floor: String? = nil, neighborhood: String? = nil, locality: String? = nil, stateProvince: String? = nil, postalCode: String? = nil, countryCode: String? = nil) {
        self.streetAddress = streetAddress
        self.floor = floor
        self.neighborhood = neighborhood
        self.locality = locality
        self.stateProvince = stateProvince
        self.postalCode = postalCode
        self.countryCode = countryCode
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case streetAddress
        case floor
        case neighborhood
        case locality
        case stateProvince
        case postalCode
        case countryCode
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(streetAddress, forKey: .streetAddress)
        try container.encodeIfPresent(floor, forKey: .floor)
        try container.encodeIfPresent(neighborhood, forKey: .neighborhood)
        try container.encodeIfPresent(locality, forKey: .locality)
        try container.encodeIfPresent(stateProvince, forKey: .stateProvince)
        try container.encodeIfPresent(postalCode, forKey: .postalCode)
        try container.encodeIfPresent(countryCode, forKey: .countryCode)
    }
}
