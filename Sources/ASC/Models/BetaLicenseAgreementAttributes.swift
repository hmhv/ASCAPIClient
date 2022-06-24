//
// BetaLicenseAgreementAttributes.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct BetaLicenseAgreementAttributes: Codable, Hashable {

    public var agreementText: String?

    public init(agreementText: String? = nil) {
        self.agreementText = agreementText
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case agreementText
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(agreementText, forKey: .agreementText)
    }
}

