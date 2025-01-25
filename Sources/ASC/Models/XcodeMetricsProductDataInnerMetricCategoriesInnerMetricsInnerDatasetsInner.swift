//
// XcodeMetricsProductDataInnerMetricCategoriesInnerMetricsInnerDatasetsInner.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

public struct XcodeMetricsProductDataInnerMetricCategoriesInnerMetricsInnerDatasetsInner: Sendable, Codable, JSONEncodable, Hashable {

    public var filterCriteria: XcodeMetricsProductDataInnerMetricCategoriesInnerMetricsInnerDatasetsInnerFilterCriteria?
    public var points: [XcodeMetricsProductDataInnerMetricCategoriesInnerMetricsInnerDatasetsInnerPointsInner]?

    public init(filterCriteria: XcodeMetricsProductDataInnerMetricCategoriesInnerMetricsInnerDatasetsInnerFilterCriteria? = nil, points: [XcodeMetricsProductDataInnerMetricCategoriesInnerMetricsInnerDatasetsInnerPointsInner]? = nil) {
        self.filterCriteria = filterCriteria
        self.points = points
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case filterCriteria
        case points
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(filterCriteria, forKey: .filterCriteria)
        try container.encodeIfPresent(points, forKey: .points)
    }
}

