//
// BetaAppReviewSubmissionCreateRequestDataRelationships.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

public struct BetaAppReviewSubmissionCreateRequestDataRelationships: Sendable, Codable, JSONEncodable, Hashable {

    public var build: BetaAppReviewSubmissionCreateRequestDataRelationshipsBuild

    public init(build: BetaAppReviewSubmissionCreateRequestDataRelationshipsBuild) {
        self.build = build
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case build
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(build, forKey: .build)
    }
}

