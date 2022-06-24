//
// AppStoreVersionPhasedReleaseAttributes.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct AppStoreVersionPhasedReleaseAttributes: Codable, Hashable {

    public var phasedReleaseState: PhasedReleaseState?
    public var startDate: Date?
    public var totalPauseDuration: Int?
    public var currentDayNumber: Int?

    public init(phasedReleaseState: PhasedReleaseState? = nil, startDate: Date? = nil, totalPauseDuration: Int? = nil, currentDayNumber: Int? = nil) {
        self.phasedReleaseState = phasedReleaseState
        self.startDate = startDate
        self.totalPauseDuration = totalPauseDuration
        self.currentDayNumber = currentDayNumber
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case phasedReleaseState
        case startDate
        case totalPauseDuration
        case currentDayNumber
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(phasedReleaseState, forKey: .phasedReleaseState)
        try container.encodeIfPresent(startDate, forKey: .startDate)
        try container.encodeIfPresent(totalPauseDuration, forKey: .totalPauseDuration)
        try container.encodeIfPresent(currentDayNumber, forKey: .currentDayNumber)
    }
}

