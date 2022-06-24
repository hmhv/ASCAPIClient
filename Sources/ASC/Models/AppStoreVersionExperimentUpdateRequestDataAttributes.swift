//
// AppStoreVersionExperimentUpdateRequestDataAttributes.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct AppStoreVersionExperimentUpdateRequestDataAttributes: Codable, Hashable {

    public var name: String?
    public var trafficProportion: Int?
    public var started: Bool?

    public init(name: String? = nil, trafficProportion: Int? = nil, started: Bool? = nil) {
        self.name = name
        self.trafficProportion = trafficProportion
        self.started = started
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case name
        case trafficProportion
        case started
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(trafficProportion, forKey: .trafficProportion)
        try container.encodeIfPresent(started, forKey: .started)
    }
}

