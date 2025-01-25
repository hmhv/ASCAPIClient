//
// AppsBetaTesterUsagesV1MetricResponseDataInner.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

public struct AppsBetaTesterUsagesV1MetricResponseDataInner: Sendable, Codable, JSONEncodable, Hashable {

    public var dataPoints: AppsBetaTesterUsagesV1MetricResponseDataInnerDataPoints?
    public var dimensions: AppsBetaTesterUsagesV1MetricResponseDataInnerDimensions?

    public init(dataPoints: AppsBetaTesterUsagesV1MetricResponseDataInnerDataPoints? = nil, dimensions: AppsBetaTesterUsagesV1MetricResponseDataInnerDimensions? = nil) {
        self.dataPoints = dataPoints
        self.dimensions = dimensions
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case dataPoints
        case dimensions
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(dataPoints, forKey: .dataPoints)
        try container.encodeIfPresent(dimensions, forKey: .dimensions)
    }
}

