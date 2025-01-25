//
// ReviewSubmissionAttributes.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

public struct ReviewSubmissionAttributes: Sendable, Codable, JSONEncodable, Hashable {

    public enum State: String, Sendable, Codable, CaseIterable, CaseIterableDefaultsLast {
        case readyForReview = "READY_FOR_REVIEW"
        case waitingForReview = "WAITING_FOR_REVIEW"
        case inReview = "IN_REVIEW"
        case unresolvedIssues = "UNRESOLVED_ISSUES"
        case canceling = "CANCELING"
        case completing = "COMPLETING"
        case complete = "COMPLETE"
        case unknownDefaultOpenApi = "unknown_default_open_api"
    }
    public var platform: Platform?
    public var submittedDate: Date?
    public var state: State?

    public init(platform: Platform? = nil, submittedDate: Date? = nil, state: State? = nil) {
        self.platform = platform
        self.submittedDate = submittedDate
        self.state = state
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case platform
        case submittedDate
        case state
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(platform, forKey: .platform)
        try container.encodeIfPresent(submittedDate, forKey: .submittedDate)
        try container.encodeIfPresent(state, forKey: .state)
    }
}

