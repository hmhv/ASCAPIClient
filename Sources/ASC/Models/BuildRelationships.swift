//
// BuildRelationships.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

public struct BuildRelationships: Sendable, Codable, JSONEncodable, Hashable {

    public var preReleaseVersion: BuildRelationshipsPreReleaseVersion?
    public var individualTesters: BetaGroupRelationshipsBetaTesters?
    public var betaGroups: AppRelationshipsBetaGroups?
    public var betaBuildLocalizations: BuildRelationshipsBetaBuildLocalizations?
    public var appEncryptionDeclaration: BuildRelationshipsAppEncryptionDeclaration?
    public var betaAppReviewSubmission: BuildRelationshipsBetaAppReviewSubmission?
    public var app: BetaAppLocalizationRelationshipsApp?
    public var buildBetaDetail: BuildRelationshipsBuildBetaDetail?
    public var appStoreVersion: AppClipDefaultExperienceRelationshipsReleaseWithAppStoreVersion?
    public var icons: BuildRelationshipsIcons?
    public var buildBundles: BuildRelationshipsBuildBundles?
    public var perfPowerMetrics: AnalyticsReportInstanceRelationshipsSegments?
    public var diagnosticSignatures: AnalyticsReportInstanceRelationshipsSegments?

    public init(preReleaseVersion: BuildRelationshipsPreReleaseVersion? = nil, individualTesters: BetaGroupRelationshipsBetaTesters? = nil, betaGroups: AppRelationshipsBetaGroups? = nil, betaBuildLocalizations: BuildRelationshipsBetaBuildLocalizations? = nil, appEncryptionDeclaration: BuildRelationshipsAppEncryptionDeclaration? = nil, betaAppReviewSubmission: BuildRelationshipsBetaAppReviewSubmission? = nil, app: BetaAppLocalizationRelationshipsApp? = nil, buildBetaDetail: BuildRelationshipsBuildBetaDetail? = nil, appStoreVersion: AppClipDefaultExperienceRelationshipsReleaseWithAppStoreVersion? = nil, icons: BuildRelationshipsIcons? = nil, buildBundles: BuildRelationshipsBuildBundles? = nil, perfPowerMetrics: AnalyticsReportInstanceRelationshipsSegments? = nil, diagnosticSignatures: AnalyticsReportInstanceRelationshipsSegments? = nil) {
        self.preReleaseVersion = preReleaseVersion
        self.individualTesters = individualTesters
        self.betaGroups = betaGroups
        self.betaBuildLocalizations = betaBuildLocalizations
        self.appEncryptionDeclaration = appEncryptionDeclaration
        self.betaAppReviewSubmission = betaAppReviewSubmission
        self.app = app
        self.buildBetaDetail = buildBetaDetail
        self.appStoreVersion = appStoreVersion
        self.icons = icons
        self.buildBundles = buildBundles
        self.perfPowerMetrics = perfPowerMetrics
        self.diagnosticSignatures = diagnosticSignatures
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case preReleaseVersion
        case individualTesters
        case betaGroups
        case betaBuildLocalizations
        case appEncryptionDeclaration
        case betaAppReviewSubmission
        case app
        case buildBetaDetail
        case appStoreVersion
        case icons
        case buildBundles
        case perfPowerMetrics
        case diagnosticSignatures
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(preReleaseVersion, forKey: .preReleaseVersion)
        try container.encodeIfPresent(individualTesters, forKey: .individualTesters)
        try container.encodeIfPresent(betaGroups, forKey: .betaGroups)
        try container.encodeIfPresent(betaBuildLocalizations, forKey: .betaBuildLocalizations)
        try container.encodeIfPresent(appEncryptionDeclaration, forKey: .appEncryptionDeclaration)
        try container.encodeIfPresent(betaAppReviewSubmission, forKey: .betaAppReviewSubmission)
        try container.encodeIfPresent(app, forKey: .app)
        try container.encodeIfPresent(buildBetaDetail, forKey: .buildBetaDetail)
        try container.encodeIfPresent(appStoreVersion, forKey: .appStoreVersion)
        try container.encodeIfPresent(icons, forKey: .icons)
        try container.encodeIfPresent(buildBundles, forKey: .buildBundles)
        try container.encodeIfPresent(perfPowerMetrics, forKey: .perfPowerMetrics)
        try container.encodeIfPresent(diagnosticSignatures, forKey: .diagnosticSignatures)
    }
}

