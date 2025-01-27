//
// GameCenterMatchmakingQueueSizesV1MetricResponseDataInner.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

public struct GameCenterMatchmakingQueueSizesV1MetricResponseDataInner: Sendable, Codable, JSONEncodable, Hashable {

    public enum Granularity: String, Sendable, Codable, CaseIterable, CaseIterableDefaultsLast {
        case p1D = "P1D"
        case pt1h = "PT1H"
        case pt15m = "PT15M"
        case unknownDefaultOpenApi = "unknown_default_open_api"
    }
    public var dataPoints: GameCenterMatchmakingQueueSizesV1MetricResponseDataInnerDataPoints?
    public var granularity: Granularity?

    public init(dataPoints: GameCenterMatchmakingQueueSizesV1MetricResponseDataInnerDataPoints? = nil, granularity: Granularity? = nil) {
        self.dataPoints = dataPoints
        self.granularity = granularity
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case dataPoints
        case granularity
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(dataPoints, forKey: .dataPoints)
        try container.encodeIfPresent(granularity, forKey: .granularity)
    }
}

