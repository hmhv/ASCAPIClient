//
// AlternativeDistributionPackageDelta.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

public struct AlternativeDistributionPackageDelta: Sendable, Codable, JSONEncodable, Hashable {

    public enum ModelType: String, Sendable, Codable, CaseIterable, CaseIterableDefaultsLast {
        case alternativedistributionpackagedeltas = "alternativeDistributionPackageDeltas"
        case unknownDefaultOpenApi = "unknown_default_open_api"
    }
    public var type: ModelType
    public var id: String
    public var attributes: AlternativeDistributionPackageDeltaAttributes?
    public var links: ResourceLinks?

    public init(type: ModelType, id: String, attributes: AlternativeDistributionPackageDeltaAttributes? = nil, links: ResourceLinks? = nil) {
        self.type = type
        self.id = id
        self.attributes = attributes
        self.links = links
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case type
        case id
        case attributes
        case links
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(type, forKey: .type)
        try container.encode(id, forKey: .id)
        try container.encodeIfPresent(attributes, forKey: .attributes)
        try container.encodeIfPresent(links, forKey: .links)
    }
}

