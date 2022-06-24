//
// AppClipAdvancedExperienceImageUpdateRequestDataAttributes.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct AppClipAdvancedExperienceImageUpdateRequestDataAttributes: Codable, Hashable {

    public var sourceFileChecksum: String?
    public var uploaded: Bool?

    public init(sourceFileChecksum: String? = nil, uploaded: Bool? = nil) {
        self.sourceFileChecksum = sourceFileChecksum
        self.uploaded = uploaded
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case sourceFileChecksum
        case uploaded
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(sourceFileChecksum, forKey: .sourceFileChecksum)
        try container.encodeIfPresent(uploaded, forKey: .uploaded)
    }
}

