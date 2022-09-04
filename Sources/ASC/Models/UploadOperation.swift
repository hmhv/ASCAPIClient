//
// UploadOperation.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct UploadOperation: Codable, JSONEncodable, Hashable {

    public var method: String?
    public var url: String?
    public var length: Int?
    public var offset: Int?
    public var requestHeaders: [HttpHeader]?

    public init(method: String? = nil, url: String? = nil, length: Int? = nil, offset: Int? = nil, requestHeaders: [HttpHeader]? = nil) {
        self.method = method
        self.url = url
        self.length = length
        self.offset = offset
        self.requestHeaders = requestHeaders
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case method
        case url
        case length
        case offset
        case requestHeaders
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(method, forKey: .method)
        try container.encodeIfPresent(url, forKey: .url)
        try container.encodeIfPresent(length, forKey: .length)
        try container.encodeIfPresent(offset, forKey: .offset)
        try container.encodeIfPresent(requestHeaders, forKey: .requestHeaders)
    }
}

