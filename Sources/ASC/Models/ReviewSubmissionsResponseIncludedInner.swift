//
// ReviewSubmissionsResponseIncludedInner.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public enum ReviewSubmissionsResponseIncludedInner: Codable, JSONEncodable, Hashable {
    case typeApp(App)
    case typeAppStoreVersion(AppStoreVersion)
    case typeReviewSubmissionItem(ReviewSubmissionItem)

    public func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        switch self {
        case .typeApp(let value):
            try container.encode(value)
        case .typeAppStoreVersion(let value):
            try container.encode(value)
        case .typeReviewSubmissionItem(let value):
            try container.encode(value)
        }
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        if let value = try? container.decode(App.self) {
            self = .typeApp(value)
        } else if let value = try? container.decode(AppStoreVersion.self) {
            self = .typeAppStoreVersion(value)
        } else if let value = try? container.decode(ReviewSubmissionItem.self) {
            self = .typeReviewSubmissionItem(value)
        } else {
            throw DecodingError.typeMismatch(Self.Type.self, .init(codingPath: decoder.codingPath, debugDescription: "Unable to decode instance of ReviewSubmissionsResponseIncludedInner"))
        }
    }
}

