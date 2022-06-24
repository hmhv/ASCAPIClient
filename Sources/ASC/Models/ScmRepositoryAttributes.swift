//
// ScmRepositoryAttributes.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct ScmRepositoryAttributes: Codable, Hashable {

    public var lastAccessedDate: Date?
    public var httpCloneUrl: String?
    public var sshCloneUrl: String?
    public var ownerName: String?
    public var repositoryName: String?

    public init(lastAccessedDate: Date? = nil, httpCloneUrl: String? = nil, sshCloneUrl: String? = nil, ownerName: String? = nil, repositoryName: String? = nil) {
        self.lastAccessedDate = lastAccessedDate
        self.httpCloneUrl = httpCloneUrl
        self.sshCloneUrl = sshCloneUrl
        self.ownerName = ownerName
        self.repositoryName = repositoryName
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case lastAccessedDate
        case httpCloneUrl
        case sshCloneUrl
        case ownerName
        case repositoryName
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(lastAccessedDate, forKey: .lastAccessedDate)
        try container.encodeIfPresent(httpCloneUrl, forKey: .httpCloneUrl)
        try container.encodeIfPresent(sshCloneUrl, forKey: .sshCloneUrl)
        try container.encodeIfPresent(ownerName, forKey: .ownerName)
        try container.encodeIfPresent(repositoryName, forKey: .repositoryName)
    }
}

