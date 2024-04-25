//
// DiagnosticSignatureAttributes.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct DiagnosticSignatureAttributes: Codable, JSONEncodable, Hashable {

    public enum DiagnosticType: String, Codable, CaseIterable, CaseIterableDefaultsLast {
        case diskWrites = "DISK_WRITES"
        case hangs = "HANGS"
        case unknownDefaultOpenApi = "unknown_default_open_api"
    }
    public var diagnosticType: DiagnosticType?
    public var signature: String?
    public var weight: Double?

    public init(diagnosticType: DiagnosticType? = nil, signature: String? = nil, weight: Double? = nil) {
        self.diagnosticType = diagnosticType
        self.signature = signature
        self.weight = weight
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case diagnosticType
        case signature
        case weight
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(diagnosticType, forKey: .diagnosticType)
        try container.encodeIfPresent(signature, forKey: .signature)
        try container.encodeIfPresent(weight, forKey: .weight)
    }
}
