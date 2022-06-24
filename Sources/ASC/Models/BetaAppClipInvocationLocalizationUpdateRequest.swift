//
// BetaAppClipInvocationLocalizationUpdateRequest.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct BetaAppClipInvocationLocalizationUpdateRequest: Codable, Hashable {

    public var data: BetaAppClipInvocationLocalizationUpdateRequestData

    public init(data: BetaAppClipInvocationLocalizationUpdateRequestData) {
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

