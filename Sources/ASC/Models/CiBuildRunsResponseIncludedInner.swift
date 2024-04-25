//
// CiBuildRunsResponseIncludedInner.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public enum CiBuildRunsResponseIncludedInner: Codable, JSONEncodable, Hashable {
    case typeBuild(Build)
    case typeCiProduct(CiProduct)
    case typeCiWorkflow(CiWorkflow)
    case typeScmGitReference(ScmGitReference)
    case typeScmPullRequest(ScmPullRequest)

    public func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        switch self {
        case .typeBuild(let value):
            try container.encode(value)
        case .typeCiProduct(let value):
            try container.encode(value)
        case .typeCiWorkflow(let value):
            try container.encode(value)
        case .typeScmGitReference(let value):
            try container.encode(value)
        case .typeScmPullRequest(let value):
            try container.encode(value)
        }
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        if let value = try? container.decode(Build.self) {
            self = .typeBuild(value)
        } else if let value = try? container.decode(CiProduct.self) {
            self = .typeCiProduct(value)
        } else if let value = try? container.decode(CiWorkflow.self) {
            self = .typeCiWorkflow(value)
        } else if let value = try? container.decode(ScmGitReference.self) {
            self = .typeScmGitReference(value)
        } else if let value = try? container.decode(ScmPullRequest.self) {
            self = .typeScmPullRequest(value)
        } else {
            throw DecodingError.typeMismatch(Self.Type.self, .init(codingPath: decoder.codingPath, debugDescription: "Unable to decode instance of CiBuildRunsResponseIncludedInner"))
        }
    }
}
