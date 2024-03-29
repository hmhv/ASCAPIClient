//
// XcodeMetricsProductDataInnerMetricCategoriesInner.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct XcodeMetricsProductDataInnerMetricCategoriesInner: Codable, JSONEncodable, Hashable {

    public var identifier: MetricCategory?
    public var metrics: [XcodeMetricsProductDataInnerMetricCategoriesInnerMetricsInner]?

    public init(identifier: MetricCategory? = nil, metrics: [XcodeMetricsProductDataInnerMetricCategoriesInnerMetricsInner]? = nil) {
        self.identifier = identifier
        self.metrics = metrics
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case identifier
        case metrics
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(identifier, forKey: .identifier)
        try container.encodeIfPresent(metrics, forKey: .metrics)
    }
}

