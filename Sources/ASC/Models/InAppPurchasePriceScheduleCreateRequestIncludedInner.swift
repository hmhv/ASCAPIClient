//
// InAppPurchasePriceScheduleCreateRequestIncludedInner.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

public enum InAppPurchasePriceScheduleCreateRequestIncludedInner: Sendable, Codable, JSONEncodable, Hashable {
    case typeInAppPurchasePriceInlineCreate(InAppPurchasePriceInlineCreate)
    case typeTerritoryInlineCreate(TerritoryInlineCreate)

    public func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        switch self {
        case .typeInAppPurchasePriceInlineCreate(let value):
            try container.encode(value)
        case .typeTerritoryInlineCreate(let value):
            try container.encode(value)
        }
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        if let value = try? container.decode(InAppPurchasePriceInlineCreate.self) {
            self = .typeInAppPurchasePriceInlineCreate(value)
        } else if let value = try? container.decode(TerritoryInlineCreate.self) {
            self = .typeTerritoryInlineCreate(value)
        } else {
            throw DecodingError.typeMismatch(Self.Type.self, .init(codingPath: decoder.codingPath, debugDescription: "Unable to decode instance of InAppPurchasePriceScheduleCreateRequestIncludedInner"))
        }
    }
}

