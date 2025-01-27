//
// AppStoreVersionExperimentV2CreateRequestDataAttributes.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

public struct AppStoreVersionExperimentV2CreateRequestDataAttributes: Sendable, Codable, JSONEncodable, Hashable {

    public var name: String
    public var platform: Platform
    public var trafficProportion: Int

    public init(name: String, platform: Platform, trafficProportion: Int) {
        self.name = name
        self.platform = platform
        self.trafficProportion = trafficProportion
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case name
        case platform
        case trafficProportion
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(name, forKey: .name)
        try container.encode(platform, forKey: .platform)
        try container.encode(trafficProportion, forKey: .trafficProportion)
    }
}

