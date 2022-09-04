//
// AppStoreVersionPhasedReleaseUpdateRequest.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct AppStoreVersionPhasedReleaseUpdateRequest: Codable, JSONEncodable, Hashable {

    public var data: AppStoreVersionPhasedReleaseUpdateRequestData

    public init(data: AppStoreVersionPhasedReleaseUpdateRequestData) {
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

