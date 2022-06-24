//
// AppStoreVersionExperimentTreatmentLocalizationRelationships.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct AppStoreVersionExperimentTreatmentLocalizationRelationships: Codable, Hashable {

    public var appStoreVersionExperimentTreatment: AppStoreVersionExperimentTreatmentLocalizationRelationshipsAppStoreVersionExperimentTreatment?
    public var appScreenshotSets: AppCustomProductPageLocalizationRelationshipsAppScreenshotSets?
    public var appPreviewSets: AppCustomProductPageLocalizationRelationshipsAppPreviewSets?

    public init(appStoreVersionExperimentTreatment: AppStoreVersionExperimentTreatmentLocalizationRelationshipsAppStoreVersionExperimentTreatment? = nil, appScreenshotSets: AppCustomProductPageLocalizationRelationshipsAppScreenshotSets? = nil, appPreviewSets: AppCustomProductPageLocalizationRelationshipsAppPreviewSets? = nil) {
        self.appStoreVersionExperimentTreatment = appStoreVersionExperimentTreatment
        self.appScreenshotSets = appScreenshotSets
        self.appPreviewSets = appPreviewSets
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case appStoreVersionExperimentTreatment
        case appScreenshotSets
        case appPreviewSets
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(appStoreVersionExperimentTreatment, forKey: .appStoreVersionExperimentTreatment)
        try container.encodeIfPresent(appScreenshotSets, forKey: .appScreenshotSets)
        try container.encodeIfPresent(appPreviewSets, forKey: .appPreviewSets)
    }
}

