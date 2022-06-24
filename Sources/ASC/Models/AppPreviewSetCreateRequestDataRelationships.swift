//
// AppPreviewSetCreateRequestDataRelationships.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct AppPreviewSetCreateRequestDataRelationships: Codable, Hashable {

    public var appStoreVersionLocalization: AppPreviewSetCreateRequestDataRelationshipsAppStoreVersionLocalization?
    public var appCustomProductPageLocalization: AppPreviewSetCreateRequestDataRelationshipsAppCustomProductPageLocalization?
    public var appStoreVersionExperimentTreatmentLocalization: AppPreviewSetCreateRequestDataRelationshipsAppStoreVersionExperimentTreatmentLocalization?

    public init(appStoreVersionLocalization: AppPreviewSetCreateRequestDataRelationshipsAppStoreVersionLocalization? = nil, appCustomProductPageLocalization: AppPreviewSetCreateRequestDataRelationshipsAppCustomProductPageLocalization? = nil, appStoreVersionExperimentTreatmentLocalization: AppPreviewSetCreateRequestDataRelationshipsAppStoreVersionExperimentTreatmentLocalization? = nil) {
        self.appStoreVersionLocalization = appStoreVersionLocalization
        self.appCustomProductPageLocalization = appCustomProductPageLocalization
        self.appStoreVersionExperimentTreatmentLocalization = appStoreVersionExperimentTreatmentLocalization
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case appStoreVersionLocalization
        case appCustomProductPageLocalization
        case appStoreVersionExperimentTreatmentLocalization
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(appStoreVersionLocalization, forKey: .appStoreVersionLocalization)
        try container.encodeIfPresent(appCustomProductPageLocalization, forKey: .appCustomProductPageLocalization)
        try container.encodeIfPresent(appStoreVersionExperimentTreatmentLocalization, forKey: .appStoreVersionExperimentTreatmentLocalization)
    }
}

