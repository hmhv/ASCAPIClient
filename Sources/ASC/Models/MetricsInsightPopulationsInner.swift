//
// MetricsInsightPopulationsInner.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

public struct MetricsInsightPopulationsInner: Sendable, Codable, JSONEncodable, Hashable {

    public var deltaPercentage: Double?
    public var percentile: String?
    public var summaryString: String?
    public var referenceAverageValue: Double?
    public var latestVersionValue: Double?
    public var device: String?

    public init(deltaPercentage: Double? = nil, percentile: String? = nil, summaryString: String? = nil, referenceAverageValue: Double? = nil, latestVersionValue: Double? = nil, device: String? = nil) {
        self.deltaPercentage = deltaPercentage
        self.percentile = percentile
        self.summaryString = summaryString
        self.referenceAverageValue = referenceAverageValue
        self.latestVersionValue = latestVersionValue
        self.device = device
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case deltaPercentage
        case percentile
        case summaryString
        case referenceAverageValue
        case latestVersionValue
        case device
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(deltaPercentage, forKey: .deltaPercentage)
        try container.encodeIfPresent(percentile, forKey: .percentile)
        try container.encodeIfPresent(summaryString, forKey: .summaryString)
        try container.encodeIfPresent(referenceAverageValue, forKey: .referenceAverageValue)
        try container.encodeIfPresent(latestVersionValue, forKey: .latestVersionValue)
        try container.encodeIfPresent(device, forKey: .device)
    }
}

