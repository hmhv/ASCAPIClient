//
// AppEventScreenshotUpdateRequestDataAttributes.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct AppEventScreenshotUpdateRequestDataAttributes: Codable, JSONEncodable, Hashable {

    public var uploaded: Bool?

    public init(uploaded: Bool? = nil) {
        self.uploaded = uploaded
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case uploaded
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(uploaded, forKey: .uploaded)
    }
}
