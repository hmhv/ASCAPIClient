//
// CiPullRequestStartCondition.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

public struct CiPullRequestStartCondition: Sendable, Codable, JSONEncodable, Hashable {

    public var source: CiBranchPatterns?
    public var destination: CiBranchPatterns?
    public var filesAndFoldersRule: CiFilesAndFoldersRule?
    public var autoCancel: Bool?

    public init(source: CiBranchPatterns? = nil, destination: CiBranchPatterns? = nil, filesAndFoldersRule: CiFilesAndFoldersRule? = nil, autoCancel: Bool? = nil) {
        self.source = source
        self.destination = destination
        self.filesAndFoldersRule = filesAndFoldersRule
        self.autoCancel = autoCancel
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case source
        case destination
        case filesAndFoldersRule
        case autoCancel
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(source, forKey: .source)
        try container.encodeIfPresent(destination, forKey: .destination)
        try container.encodeIfPresent(filesAndFoldersRule, forKey: .filesAndFoldersRule)
        try container.encodeIfPresent(autoCancel, forKey: .autoCancel)
    }
}

