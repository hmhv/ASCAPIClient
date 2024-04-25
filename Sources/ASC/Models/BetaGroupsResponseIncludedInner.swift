//
// BetaGroupsResponseIncludedInner.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public enum BetaGroupsResponseIncludedInner: Codable, JSONEncodable, Hashable {
    case typeApp(App)
    case typeBetaTester(BetaTester)
    case typeBuild(Build)

    public func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        switch self {
        case .typeApp(let value):
            try container.encode(value)
        case .typeBetaTester(let value):
            try container.encode(value)
        case .typeBuild(let value):
            try container.encode(value)
        }
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        if let value = try? container.decode(App.self) {
            self = .typeApp(value)
        } else if let value = try? container.decode(BetaTester.self) {
            self = .typeBetaTester(value)
        } else if let value = try? container.decode(Build.self) {
            self = .typeBuild(value)
        } else {
            throw DecodingError.typeMismatch(Self.Type.self, .init(codingPath: decoder.codingPath, debugDescription: "Unable to decode instance of BetaGroupsResponseIncludedInner"))
        }
    }
}
