//
// AppStoreVersionExperimentCreateRequestDataAttributes.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct AppStoreVersionExperimentCreateRequestDataAttributes: Codable, JSONEncodable, Hashable {

    public var name: String
    public var trafficProportion: Int

    public init(name: String, trafficProportion: Int) {
        self.name = name
        self.trafficProportion = trafficProportion
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case name
        case trafficProportion
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(name, forKey: .name)
        try container.encode(trafficProportion, forKey: .trafficProportion)
    }
}

