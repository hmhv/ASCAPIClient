//
// BuildsResponseIncludedInner.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

public enum BuildsResponseIncludedInner: Sendable, Codable, JSONEncodable, Hashable {
    case typeApp(App)
    case typeAppEncryptionDeclaration(AppEncryptionDeclaration)
    case typeAppStoreVersion(AppStoreVersion)
    case typeBetaAppReviewSubmission(BetaAppReviewSubmission)
    case typeBetaBuildLocalization(BetaBuildLocalization)
    case typeBetaGroup(BetaGroup)
    case typeBetaTester(BetaTester)
    case typeBuildBetaDetail(BuildBetaDetail)
    case typeBuildBundle(BuildBundle)
    case typeBuildIcon(BuildIcon)
    case typePrereleaseVersion(PrereleaseVersion)

    public func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        switch self {
        case .typeApp(let value):
            try container.encode(value)
        case .typeAppEncryptionDeclaration(let value):
            try container.encode(value)
        case .typeAppStoreVersion(let value):
            try container.encode(value)
        case .typeBetaAppReviewSubmission(let value):
            try container.encode(value)
        case .typeBetaBuildLocalization(let value):
            try container.encode(value)
        case .typeBetaGroup(let value):
            try container.encode(value)
        case .typeBetaTester(let value):
            try container.encode(value)
        case .typeBuildBetaDetail(let value):
            try container.encode(value)
        case .typeBuildBundle(let value):
            try container.encode(value)
        case .typeBuildIcon(let value):
            try container.encode(value)
        case .typePrereleaseVersion(let value):
            try container.encode(value)
        }
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        if let value = try? container.decode(App.self) {
            self = .typeApp(value)
        } else if let value = try? container.decode(AppEncryptionDeclaration.self) {
            self = .typeAppEncryptionDeclaration(value)
        } else if let value = try? container.decode(AppStoreVersion.self) {
            self = .typeAppStoreVersion(value)
        } else if let value = try? container.decode(BetaAppReviewSubmission.self) {
            self = .typeBetaAppReviewSubmission(value)
        } else if let value = try? container.decode(BetaBuildLocalization.self) {
            self = .typeBetaBuildLocalization(value)
        } else if let value = try? container.decode(BetaGroup.self) {
            self = .typeBetaGroup(value)
        } else if let value = try? container.decode(BetaTester.self) {
            self = .typeBetaTester(value)
        } else if let value = try? container.decode(BuildBetaDetail.self) {
            self = .typeBuildBetaDetail(value)
        } else if let value = try? container.decode(BuildBundle.self) {
            self = .typeBuildBundle(value)
        } else if let value = try? container.decode(BuildIcon.self) {
            self = .typeBuildIcon(value)
        } else if let value = try? container.decode(PrereleaseVersion.self) {
            self = .typePrereleaseVersion(value)
        } else {
            throw DecodingError.typeMismatch(Self.Type.self, .init(codingPath: decoder.codingPath, debugDescription: "Unable to decode instance of BuildsResponseIncludedInner"))
        }
    }
}

