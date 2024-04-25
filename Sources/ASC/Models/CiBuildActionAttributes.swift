//
// CiBuildActionAttributes.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct CiBuildActionAttributes: Codable, JSONEncodable, Hashable {

    public var name: String?
    public var actionType: CiActionType?
    public var startedDate: Date?
    public var finishedDate: Date?
    public var issueCounts: CiIssueCounts?
    public var executionProgress: CiExecutionProgress?
    public var completionStatus: CiCompletionStatus?
    public var isRequiredToPass: Bool?

    public init(name: String? = nil, actionType: CiActionType? = nil, startedDate: Date? = nil, finishedDate: Date? = nil, issueCounts: CiIssueCounts? = nil, executionProgress: CiExecutionProgress? = nil, completionStatus: CiCompletionStatus? = nil, isRequiredToPass: Bool? = nil) {
        self.name = name
        self.actionType = actionType
        self.startedDate = startedDate
        self.finishedDate = finishedDate
        self.issueCounts = issueCounts
        self.executionProgress = executionProgress
        self.completionStatus = completionStatus
        self.isRequiredToPass = isRequiredToPass
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case name
        case actionType
        case startedDate
        case finishedDate
        case issueCounts
        case executionProgress
        case completionStatus
        case isRequiredToPass
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(actionType, forKey: .actionType)
        try container.encodeIfPresent(startedDate, forKey: .startedDate)
        try container.encodeIfPresent(finishedDate, forKey: .finishedDate)
        try container.encodeIfPresent(issueCounts, forKey: .issueCounts)
        try container.encodeIfPresent(executionProgress, forKey: .executionProgress)
        try container.encodeIfPresent(completionStatus, forKey: .completionStatus)
        try container.encodeIfPresent(isRequiredToPass, forKey: .isRequiredToPass)
    }
}
