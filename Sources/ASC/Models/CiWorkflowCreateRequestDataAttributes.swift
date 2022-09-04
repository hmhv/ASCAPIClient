//
// CiWorkflowCreateRequestDataAttributes.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct CiWorkflowCreateRequestDataAttributes: Codable, JSONEncodable, Hashable {

    public var name: String
    public var description: String
    public var branchStartCondition: CiBranchStartCondition?
    public var tagStartCondition: CiTagStartCondition?
    public var pullRequestStartCondition: CiPullRequestStartCondition?
    public var scheduledStartCondition: CiScheduledStartCondition?
    public var actions: [CiAction]
    public var isEnabled: Bool
    public var isLockedForEditing: Bool?
    public var clean: Bool
    public var containerFilePath: String

    public init(name: String, description: String, branchStartCondition: CiBranchStartCondition? = nil, tagStartCondition: CiTagStartCondition? = nil, pullRequestStartCondition: CiPullRequestStartCondition? = nil, scheduledStartCondition: CiScheduledStartCondition? = nil, actions: [CiAction], isEnabled: Bool, isLockedForEditing: Bool? = nil, clean: Bool, containerFilePath: String) {
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
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(name, forKey: .name)
        try container.encode(description, forKey: .description)
        try container.encodeIfPresent(branchStartCondition, forKey: .branchStartCondition)
        try container.encodeIfPresent(tagStartCondition, forKey: .tagStartCondition)
        try container.encodeIfPresent(pullRequestStartCondition, forKey: .pullRequestStartCondition)
        try container.encodeIfPresent(scheduledStartCondition, forKey: .scheduledStartCondition)
        try container.encode(actions, forKey: .actions)
        try container.encode(isEnabled, forKey: .isEnabled)
        try container.encodeIfPresent(isLockedForEditing, forKey: .isLockedForEditing)
        try container.encode(clean, forKey: .clean)
        try container.encode(containerFilePath, forKey: .containerFilePath)
    }
}

