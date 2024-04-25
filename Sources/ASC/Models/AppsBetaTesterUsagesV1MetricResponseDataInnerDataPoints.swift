//
// AppsBetaTesterUsagesV1MetricResponseDataInnerDataPoints.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct AppsBetaTesterUsagesV1MetricResponseDataInnerDataPoints: Codable, JSONEncodable, Hashable {

    public var start: Date?
    public var end: Date?
    public var values: AppsBetaTesterUsagesV1MetricResponseDataInnerDataPointsValues?

    public init(start: Date? = nil, end: Date? = nil, values: AppsBetaTesterUsagesV1MetricResponseDataInnerDataPointsValues? = nil) {
        self.start = start
        self.end = end
        self.values = values
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case start
        case end
        case values
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(start, forKey: .start)
        try container.encodeIfPresent(end, forKey: .end)
        try container.encodeIfPresent(values, forKey: .values)
    }
}

