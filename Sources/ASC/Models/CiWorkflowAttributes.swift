//
// CiWorkflowAttributes.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct CiWorkflowAttributes: Codable, Hashable {

    public var name: String?
    public var description: String?
    public var branchStartCondition: CiBranchStartCondition?
    public var tagStartCondition: CiTagStartCondition?
    public var pullRequestStartCondition: CiPullRequestStartCondition?
    public var scheduledStartCondition: CiScheduledStartCondition?
    public var actions: [CiAction]?
    public var isEnabled: Bool?
    public var isLockedForEditing: Bool?
    public var clean: Bool?
    public var containerFilePath: String?
    public var lastModifiedDate: Date?

    public init(name: String? = nil, description: String? = nil, branchStartCondition: CiBranchStartCondition? = nil, tagStartCondition: CiTagStartCondition? = nil, pullRequestStartCondition: CiPullRequestStartCondition? = nil, scheduledStartCondition: CiScheduledStartCondition? = nil, actions: [CiAction]? = nil, isEnabled: Bool? = nil, isLockedForEditing: Bool? = nil, clean: Bool? = nil, containerFilePath: String? = nil, lastModifiedDate: Date? = nil) {
        self.name = name
        self.description = description
        self.branchStartCondition = branchStartCondition
        self.tagStartCondition = tagStartCondition
        self.pullRequestStartCondition = pullRequestStartCondition
        self.scheduledStartCondition = scheduledStartCondition
        self.actions = actions
        self.isEnabled = isEnabled
        self.isLockedForEditing = isLockedForEditing
        self.clean = clean
        self.containerFilePath = containerFilePath
        self.lastModifiedDate = lastModifiedDate
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case name
        case description
        case branchStartCondition
        case tagStartCondition
        case pullRequestStartCondition
        case scheduledStartCondition
        case actions
        case isEnabled
        case isLockedForEditing
        case clean
        case containerFilePath
        case lastModifiedDate
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(description, forKey: .description)
        try container.encodeIfPresent(branchStartCondition, forKey: .branchStartCondition)
        try container.encodeIfPresent(tagStartCondition, forKey: .tagStartCondition)
        try container.encodeIfPresent(pullRequestStartCondition, forKey: .pullRequestStartCondition)
        try container.encodeIfPresent(scheduledStartCondition, forKey: .scheduledStartCondition)
        try container.encodeIfPresent(actions, forKey: .actions)
        try container.encodeIfPresent(isEnabled, forKey: .isEnabled)
        try container.encodeIfPresent(isLockedForEditing, forKey: .isLockedForEditing)
        try container.encodeIfPresent(clean, forKey: .clean)
        try container.encodeIfPresent(containerFilePath, forKey: .containerFilePath)
        try container.encodeIfPresent(lastModifiedDate, forKey: .lastModifiedDate)
    }
}

