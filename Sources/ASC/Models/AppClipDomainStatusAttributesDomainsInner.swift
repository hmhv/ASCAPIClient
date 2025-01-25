//
// AppClipDomainStatusAttributesDomainsInner.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

public struct AppClipDomainStatusAttributesDomainsInner: Sendable, Codable, JSONEncodable, Hashable {

    public enum ErrorCode: String, Sendable, Codable, CaseIterable, CaseIterableDefaultsLast {
        case badHttpResponse = "BAD_HTTP_RESPONSE"
        case badJsonContent = "BAD_JSON_CONTENT"
        case badPkcs7Signature = "BAD_PKCS7_SIGNATURE"
        case cannotReachAasaFile = "CANNOT_REACH_AASA_FILE"
        case dnsError = "DNS_ERROR"
        case insecureRedirectsForbidden = "INSECURE_REDIRECTS_FORBIDDEN"
        case invalidEntitlementMissingSection = "INVALID_ENTITLEMENT_MISSING_SECTION"
        case invalidEntitlementSyntaxError = "INVALID_ENTITLEMENT_SYNTAX_ERROR"
        case invalidEntitlementUnhandledSection = "INVALID_ENTITLEMENT_UNHANDLED_SECTION"
        case invalidEntitlementUnknownId = "INVALID_ENTITLEMENT_UNKNOWN_ID"
        case networkError = "NETWORK_ERROR"
        case networkErrorTemporary = "NETWORK_ERROR_TEMPORARY"
        case otherError = "OTHER_ERROR"
        case timeout = "TIMEOUT"
        case tlsError = "TLS_ERROR"
        case unexpectedError = "UNEXPECTED_ERROR"
        case unknownDefaultOpenApi = "unknown_default_open_api"
    }
    public var domain: String?
    public var isValid: Bool?
    public var lastUpdatedDate: Date?
    public var errorCode: ErrorCode?

    public init(domain: String? = nil, isValid: Bool? = nil, lastUpdatedDate: Date? = nil, errorCode: ErrorCode? = nil) {
        self.domain = domain
        self.isValid = isValid
        self.lastUpdatedDate = lastUpdatedDate
        self.errorCode = errorCode
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case domain
        case isValid
        case lastUpdatedDate
        case errorCode
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(domain, forKey: .domain)
        try container.encodeIfPresent(isValid, forKey: .isValid)
        try container.encodeIfPresent(lastUpdatedDate, forKey: .lastUpdatedDate)
        try container.encodeIfPresent(errorCode, forKey: .errorCode)
    }
}

