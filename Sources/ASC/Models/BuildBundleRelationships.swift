//
// BuildBundleRelationships.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct BuildBundleRelationships: Codable, Hashable {

    public var appClipDomainCacheStatus: BuildBundleRelationshipsAppClipDomainCacheStatus?
    public var appClipDomainDebugStatus: BuildBundleRelationshipsAppClipDomainCacheStatus?
    public var betaAppClipInvocations: BuildBundleRelationshipsBetaAppClipInvocations?
    public var buildBundleFileSizes: BuildBundleRelationshipsBuildBundleFileSizes?

    public init(appClipDomainCacheStatus: BuildBundleRelationshipsAppClipDomainCacheStatus? = nil, appClipDomainDebugStatus: BuildBundleRelationshipsAppClipDomainCacheStatus? = nil, betaAppClipInvocations: BuildBundleRelationshipsBetaAppClipInvocations? = nil, buildBundleFileSizes: BuildBundleRelationshipsBuildBundleFileSizes? = nil) {
        self.appClipDomainCacheStatus = appClipDomainCacheStatus
        self.appClipDomainDebugStatus = appClipDomainDebugStatus
        self.betaAppClipInvocations = betaAppClipInvocations
        self.buildBundleFileSizes = buildBundleFileSizes
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case appClipDomainCacheStatus
        case appClipDomainDebugStatus
        case betaAppClipInvocations
        case buildBundleFileSizes
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(appClipDomainCacheStatus, forKey: .appClipDomainCacheStatus)
        try container.encodeIfPresent(appClipDomainDebugStatus, forKey: .appClipDomainDebugStatus)
        try container.encodeIfPresent(betaAppClipInvocations, forKey: .betaAppClipInvocations)
        try container.encodeIfPresent(buildBundleFileSizes, forKey: .buildBundleFileSizes)
    }
}

