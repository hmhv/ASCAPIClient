//
// AppEventVideoClipUpdateRequestDataAttributes.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct AppEventVideoClipUpdateRequestDataAttributes: Codable, JSONEncodable, Hashable {

    public var previewFrameTimeCode: String?
    public var uploaded: Bool?

    public init(previewFrameTimeCode: String? = nil, uploaded: Bool? = nil) {
        self.previewFrameTimeCode = previewFrameTimeCode
        self.uploaded = uploaded
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case previewFrameTimeCode
        case uploaded
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(previewFrameTimeCode, forKey: .previewFrameTimeCode)
        try container.encodeIfPresent(uploaded, forKey: .uploaded)
    }
}

