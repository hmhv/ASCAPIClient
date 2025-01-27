//
// AppRelationships.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

public struct AppRelationships: Sendable, Codable, JSONEncodable, Hashable {

    public var appEncryptionDeclarations: AppRelationshipsAppEncryptionDeclarations?
    public var ciProduct: AppRelationshipsCiProduct?
    public var betaTesters: AnalyticsReportInstanceRelationshipsSegments?
    public var betaGroups: AppRelationshipsBetaGroups?
    public var appStoreVersions: AppRelationshipsAppStoreVersions?
    public var preReleaseVersions: AppRelationshipsPreReleaseVersions?
    public var betaAppLocalizations: AppRelationshipsBetaAppLocalizations?
    public var builds: AppRelationshipsBuilds?
    public var betaLicenseAgreement: AppRelationshipsBetaLicenseAgreement?
    public var betaAppReviewDetail: AppRelationshipsBetaAppReviewDetail?
    public var appInfos: AppRelationshipsAppInfos?
    public var appClips: AppRelationshipsAppClips?
    public var appPricePoints: AnalyticsReportInstanceRelationshipsSegments?
    public var endUserLicenseAgreement: AppRelationshipsEndUserLicenseAgreement?
    public var appPriceSchedule: AnalyticsReportInstanceRelationshipsSegments?
    public var appAvailabilityV2: AnalyticsReportInstanceRelationshipsSegments?
    @available(*, deprecated, message: "This property is deprecated.")
    public var inAppPurchases: AppRelationshipsInAppPurchases?
    public var subscriptionGroups: AppRelationshipsSubscriptionGroups?
    public var gameCenterEnabledVersions: AppRelationshipsGameCenterEnabledVersions?
    public var perfPowerMetrics: AnalyticsReportInstanceRelationshipsSegments?
    public var appCustomProductPages: AppRelationshipsAppCustomProductPages?
    public var inAppPurchasesV2: AppRelationshipsInAppPurchasesV2?
    public var promotedPurchases: AppRelationshipsPromotedPurchases?
    public var appEvents: AppRelationshipsAppEvents?
    public var reviewSubmissions: AppRelationshipsReviewSubmissions?
    public var subscriptionGracePeriod: AppRelationshipsSubscriptionGracePeriod?
    public var customerReviews: AnalyticsReportInstanceRelationshipsSegments?
    public var gameCenterDetail: AppRelationshipsGameCenterDetail?
    public var appStoreVersionExperimentsV2: AppStoreVersionRelationshipsAppStoreVersionExperiments?
    public var alternativeDistributionKey: AnalyticsReportInstanceRelationshipsSegments?
    public var analyticsReportRequests: AnalyticsReportInstanceRelationshipsSegments?
    public var marketplaceSearchDetail: AnalyticsReportInstanceRelationshipsSegments?

    public init(appEncryptionDeclarations: AppRelationshipsAppEncryptionDeclarations? = nil, ciProduct: AppRelationshipsCiProduct? = nil, betaTesters: AnalyticsReportInstanceRelationshipsSegments? = nil, betaGroups: AppRelationshipsBetaGroups? = nil, appStoreVersions: AppRelationshipsAppStoreVersions? = nil, preReleaseVersions: AppRelationshipsPreReleaseVersions? = nil, betaAppLocalizations: AppRelationshipsBetaAppLocalizations? = nil, builds: AppRelationshipsBuilds? = nil, betaLicenseAgreement: AppRelationshipsBetaLicenseAgreement? = nil, betaAppReviewDetail: AppRelationshipsBetaAppReviewDetail? = nil, appInfos: AppRelationshipsAppInfos? = nil, appClips: AppRelationshipsAppClips? = nil, appPricePoints: AnalyticsReportInstanceRelationshipsSegments? = nil, endUserLicenseAgreement: AppRelationshipsEndUserLicenseAgreement? = nil, appPriceSchedule: AnalyticsReportInstanceRelationshipsSegments? = nil, appAvailabilityV2: AnalyticsReportInstanceRelationshipsSegments? = nil, inAppPurchases: AppRelationshipsInAppPurchases? = nil, subscriptionGroups: AppRelationshipsSubscriptionGroups? = nil, gameCenterEnabledVersions: AppRelationshipsGameCenterEnabledVersions? = nil, perfPowerMetrics: AnalyticsReportInstanceRelationshipsSegments? = nil, appCustomProductPages: AppRelationshipsAppCustomProductPages? = nil, inAppPurchasesV2: AppRelationshipsInAppPurchasesV2? = nil, promotedPurchases: AppRelationshipsPromotedPurchases? = nil, appEvents: AppRelationshipsAppEvents? = nil, reviewSubmissions: AppRelationshipsReviewSubmissions? = nil, subscriptionGracePeriod: AppRelationshipsSubscriptionGracePeriod? = nil, customerReviews: AnalyticsReportInstanceRelationshipsSegments? = nil, gameCenterDetail: AppRelationshipsGameCenterDetail? = nil, appStoreVersionExperimentsV2: AppStoreVersionRelationshipsAppStoreVersionExperiments? = nil, alternativeDistributionKey: AnalyticsReportInstanceRelationshipsSegments? = nil, analyticsReportRequests: AnalyticsReportInstanceRelationshipsSegments? = nil, marketplaceSearchDetail: AnalyticsReportInstanceRelationshipsSegments? = nil) {
        self.appEncryptionDeclarations = appEncryptionDeclarations
        self.ciProduct = ciProduct
        self.betaTesters = betaTesters
        self.betaGroups = betaGroups
        self.appStoreVersions = appStoreVersions
        self.preReleaseVersions = preReleaseVersions
        self.betaAppLocalizations = betaAppLocalizations
        self.builds = builds
        self.betaLicenseAgreement = betaLicenseAgreement
        self.betaAppReviewDetail = betaAppReviewDetail
        self.appInfos = appInfos
        self.appClips = appClips
        self.appPricePoints = appPricePoints
        self.endUserLicenseAgreement = endUserLicenseAgreement
        self.appPriceSchedule = appPriceSchedule
        self.appAvailabilityV2 = appAvailabilityV2
        self.inAppPurchases = inAppPurchases
        self.subscriptionGroups = subscriptionGroups
        self.gameCenterEnabledVersions = gameCenterEnabledVersions
        self.perfPowerMetrics = perfPowerMetrics
        self.appCustomProductPages = appCustomProductPages
        self.inAppPurchasesV2 = inAppPurchasesV2
        self.promotedPurchases = promotedPurchases
        self.appEvents = appEvents
        self.reviewSubmissions = reviewSubmissions
        self.subscriptionGracePeriod = subscriptionGracePeriod
        self.customerReviews = customerReviews
        self.gameCenterDetail = gameCenterDetail
        self.appStoreVersionExperimentsV2 = appStoreVersionExperimentsV2
        self.alternativeDistributionKey = alternativeDistributionKey
        self.analyticsReportRequests = analyticsReportRequests
        self.marketplaceSearchDetail = marketplaceSearchDetail
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case appEncryptionDeclarations
        case ciProduct
        case betaTesters
        case betaGroups
        case appStoreVersions
        case preReleaseVersions
        case betaAppLocalizations
        case builds
        case betaLicenseAgreement
        case betaAppReviewDetail
        case appInfos
        case appClips
        case appPricePoints
        case endUserLicenseAgreement
        case appPriceSchedule
        case appAvailabilityV2
        case inAppPurchases
        case subscriptionGroups
        case gameCenterEnabledVersions
        case perfPowerMetrics
        case appCustomProductPages
        case inAppPurchasesV2
        case promotedPurchases
        case appEvents
        case reviewSubmissions
        case subscriptionGracePeriod
        case customerReviews
        case gameCenterDetail
        case appStoreVersionExperimentsV2
        case alternativeDistributionKey
        case analyticsReportRequests
        case marketplaceSearchDetail
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(appEncryptionDeclarations, forKey: .appEncryptionDeclarations)
        try container.encodeIfPresent(ciProduct, forKey: .ciProduct)
        try container.encodeIfPresent(betaTesters, forKey: .betaTesters)
        try container.encodeIfPresent(betaGroups, forKey: .betaGroups)
        try container.encodeIfPresent(appStoreVersions, forKey: .appStoreVersions)
        try container.encodeIfPresent(preReleaseVersions, forKey: .preReleaseVersions)
        try container.encodeIfPresent(betaAppLocalizations, forKey: .betaAppLocalizations)
        try container.encodeIfPresent(builds, forKey: .builds)
        try container.encodeIfPresent(betaLicenseAgreement, forKey: .betaLicenseAgreement)
        try container.encodeIfPresent(betaAppReviewDetail, forKey: .betaAppReviewDetail)
        try container.encodeIfPresent(appInfos, forKey: .appInfos)
        try container.encodeIfPresent(appClips, forKey: .appClips)
        try container.encodeIfPresent(appPricePoints, forKey: .appPricePoints)
        try container.encodeIfPresent(endUserLicenseAgreement, forKey: .endUserLicenseAgreement)
        try container.encodeIfPresent(appPriceSchedule, forKey: .appPriceSchedule)
        try container.encodeIfPresent(appAvailabilityV2, forKey: .appAvailabilityV2)
        try container.encodeIfPresent(inAppPurchases, forKey: .inAppPurchases)
        try container.encodeIfPresent(subscriptionGroups, forKey: .subscriptionGroups)
        try container.encodeIfPresent(gameCenterEnabledVersions, forKey: .gameCenterEnabledVersions)
        try container.encodeIfPresent(perfPowerMetrics, forKey: .perfPowerMetrics)
        try container.encodeIfPresent(appCustomProductPages, forKey: .appCustomProductPages)
        try container.encodeIfPresent(inAppPurchasesV2, forKey: .inAppPurchasesV2)
        try container.encodeIfPresent(promotedPurchases, forKey: .promotedPurchases)
        try container.encodeIfPresent(appEvents, forKey: .appEvents)
        try container.encodeIfPresent(reviewSubmissions, forKey: .reviewSubmissions)
        try container.encodeIfPresent(subscriptionGracePeriod, forKey: .subscriptionGracePeriod)
        try container.encodeIfPresent(customerReviews, forKey: .customerReviews)
        try container.encodeIfPresent(gameCenterDetail, forKey: .gameCenterDetail)
        try container.encodeIfPresent(appStoreVersionExperimentsV2, forKey: .appStoreVersionExperimentsV2)
        try container.encodeIfPresent(alternativeDistributionKey, forKey: .alternativeDistributionKey)
        try container.encodeIfPresent(analyticsReportRequests, forKey: .analyticsReportRequests)
        try container.encodeIfPresent(marketplaceSearchDetail, forKey: .marketplaceSearchDetail)
    }
}

