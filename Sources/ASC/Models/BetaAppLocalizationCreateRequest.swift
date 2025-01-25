//
// BetaAppLocalizationCreateRequest.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

public struct BetaAppLocalizationCreateRequest: Sendable, Codable, JSONEncodable, Hashable {

    public var data: BetaAppLocalizationCreateRequestData

    public init(data: BetaAppLocalizationCreateRequestData) {
        self.data = data
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case data
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(data, forKey: .data)
    }
}

