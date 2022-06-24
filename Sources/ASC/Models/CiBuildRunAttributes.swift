//
// CiBuildRunAttributes.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct CiBuildRunAttributes: Codable, Hashable {

    public enum StartReason: String, Codable, CaseIterable, CaseIterableDefaultsLast {
        case gitRefChange = "GIT_REF_CHANGE"
        case manual = "MANUAL"
        case manualRebuild = "MANUAL_REBUILD"
        case pullRequestOpen = "PULL_REQUEST_OPEN"
        case pullRequestUpdate = "PULL_REQUEST_UPDATE"
        case schedule = "SCHEDULE"
        case unknownDefaultOpenApi = "unknown_default_open_api"
    }
    public enum CancelReason: String, Codable, CaseIterable, CaseIterableDefaultsLast {
        case automaticallyByNewerBuild = "AUTOMATICALLY_BY_NEWER_BUILD"
        case manuallyByUser = "MANUALLY_BY_USER"
        case unknownDefaultOpenApi = "unknown_default_open_api"
    }
    public var number: Int?
    public var createdDate: Date?
    public var startedDate: Date?
    public var finishedDate: Date?
    public var sourceCommit: CiBuildRunAttributesSourceCommit?
    public var destinationCommit: CiBuildRunAttributesSourceCommit?
    public var isPullRequestBuild: Bool?
    public var issueCounts: CiIssueCounts?
    public var executionProgress: CiExecutionProgress?
    public var completionStatus: CiCompletionStatus?
    public var startReason: StartReason?
    public var cancelReason: CancelReason?

    public init(number: Int? = nil, createdDate: Date? = nil, startedDate: Date? = nil, finishedDate: Date? = nil, sourceCommit: CiBuildRunAttributesSourceCommit? = nil, destinationCommit: CiBuildRunAttributesSourceCommit? = nil, isPullRequestBuild: Bool? = nil, issueCounts: CiIssueCounts? = nil, executionProgress: CiExecutionProgress? = nil, completionStatus: CiCompletionStatus? = nil, startReason: StartReason? = nil, cancelReason: CancelReason? = nil) {
        self.number = number
        self.createdDate = createdDate
        self.startedDate = startedDate
        self.finishedDate = finishedDate
        self.sourceCommit = sourceCommit
        self.destinationCommit = destinationCommit
        self.isPullRequestBuild = isPullRequestBuild
        self.issueCounts = issueCounts
        self.executionProgress = executionProgress
        self.completionStatus = completionStatus
        self.startReason = startReason
        self.cancelReason = cancelReason
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case number
        case createdDate
        case startedDate
        case finishedDate
        case sourceCommit
        case destinationCommit
        case isPullRequestBuild
        case issueCounts
        case executionProgress
        case completionStatus
        case startReason
        case cancelReason
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(number, forKey: .number)
        try container.encodeIfPresent(createdDate, forKey: .createdDate)
        try container.encodeIfPresent(startedDate, forKey: .startedDate)
        try container.encodeIfPresent(finishedDate, forKey: .finishedDate)
        try container.encodeIfPresent(sourceCommit, forKey: .sourceCommit)
        try container.encodeIfPresent(destinationCommit, forKey: .destinationCommit)
        try container.encodeIfPresent(isPullRequestBuild, forKey: .isPullRequestBuild)
        try container.encodeIfPresent(issueCounts, forKey: .issueCounts)
        try container.encodeIfPresent(executionProgress, forKey: .executionProgress)
        try container.encodeIfPresent(completionStatus, forKey: .completionStatus)
        try container.encodeIfPresent(startReason, forKey: .startReason)
        try container.encodeIfPresent(cancelReason, forKey: .cancelReason)
    }
}

