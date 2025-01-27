//
// AppCustomProductPageVersionsResponseIncludedInner.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

public enum AppCustomProductPageVersionsResponseIncludedInner: Sendable, Codable, JSONEncodable, Hashable {
    case typeAppCustomProductPage(AppCustomProductPage)
    case typeAppCustomProductPageLocalization(AppCustomProductPageLocalization)

    public func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        switch self {
        case .typeAppCustomProductPage(let value):
            try container.encode(value)
        case .typeAppCustomProductPageLocalization(let value):
            try container.encode(value)
        }
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        if let value = try? container.decode(AppCustomProductPage.self) {
            self = .typeAppCustomProductPage(value)
        } else if let value = try? container.decode(AppCustomProductPageLocalization.self) {
            self = .typeAppCustomProductPageLocalization(value)
        } else {
            throw DecodingError.typeMismatch(Self.Type.self, .init(codingPath: decoder.codingPath, debugDescription: "Unable to decode instance of AppCustomProductPageVersionsResponseIncludedInner"))
        }
    }
}

