//
// AppCustomProductPageCreateRequestIncludedInner.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

public enum AppCustomProductPageCreateRequestIncludedInner: Sendable, Codable, JSONEncodable, Hashable {
    case typeAppCustomProductPageLocalizationInlineCreate(AppCustomProductPageLocalizationInlineCreate)
    case typeAppCustomProductPageVersionInlineCreate(AppCustomProductPageVersionInlineCreate)

    public func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        switch self {
        case .typeAppCustomProductPageLocalizationInlineCreate(let value):
            try container.encode(value)
        case .typeAppCustomProductPageVersionInlineCreate(let value):
            try container.encode(value)
        }
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        if let value = try? container.decode(AppCustomProductPageLocalizationInlineCreate.self) {
            self = .typeAppCustomProductPageLocalizationInlineCreate(value)
        } else if let value = try? container.decode(AppCustomProductPageVersionInlineCreate.self) {
            self = .typeAppCustomProductPageVersionInlineCreate(value)
        } else {
            throw DecodingError.typeMismatch(Self.Type.self, .init(codingPath: decoder.codingPath, debugDescription: "Unable to decode instance of AppCustomProductPageCreateRequestIncludedInner"))
        }
    }
}

