//
// ReviewSubmissionUpdateRequestDataAttributes.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct ReviewSubmissionUpdateRequestDataAttributes: Codable, JSONEncodable, Hashable {

    public var submitted: Bool?
    public var canceled: Bool?

    public init(submitted: Bool? = nil, canceled: Bool? = nil) {
        self.submitted = submitted
        self.canceled = canceled
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case submitted
        case canceled
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(submitted, forKey: .submitted)
        try container.encodeIfPresent(canceled, forKey: .canceled)
    }
}

