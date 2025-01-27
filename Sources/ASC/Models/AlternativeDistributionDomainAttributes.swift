//
// AlternativeDistributionDomainAttributes.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

public struct AlternativeDistributionDomainAttributes: Sendable, Codable, JSONEncodable, Hashable {

    public var domain: String?
    public var referenceName: String?
    public var createdDate: Date?

    public init(domain: String? = nil, referenceName: String? = nil, createdDate: Date? = nil) {
        self.domain = domain
        self.referenceName = referenceName
        self.createdDate = createdDate
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case domain
        case referenceName
        case createdDate
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(domain, forKey: .domain)
        try container.encodeIfPresent(referenceName, forKey: .referenceName)
        try container.encodeIfPresent(createdDate, forKey: .createdDate)
    }
}

