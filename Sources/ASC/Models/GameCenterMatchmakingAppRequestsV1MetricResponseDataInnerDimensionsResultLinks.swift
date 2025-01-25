//
// GameCenterMatchmakingAppRequestsV1MetricResponseDataInnerDimensionsResultLinks.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct GameCenterMatchmakingAppRequestsV1MetricResponseDataInnerDimensionsResultLinks: Codable, JSONEncodable, Hashable {

    public var groupBy: String?

    public init(groupBy: String? = nil) {
        self.groupBy = groupBy
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case groupBy
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(groupBy, forKey: .groupBy)
    }
}
