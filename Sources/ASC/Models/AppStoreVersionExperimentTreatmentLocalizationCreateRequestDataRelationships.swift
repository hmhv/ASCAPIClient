//
// AppStoreVersionExperimentTreatmentLocalizationCreateRequestDataRelationships.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct AppStoreVersionExperimentTreatmentLocalizationCreateRequestDataRelationships: Codable, JSONEncodable, Hashable {

    public var appStoreVersionExperimentTreatment: AppStoreVersionExperimentTreatmentLocalizationCreateRequestDataRelationshipsAppStoreVersionExperimentTreatment

    public init(appStoreVersionExperimentTreatment: AppStoreVersionExperimentTreatmentLocalizationCreateRequestDataRelationshipsAppStoreVersionExperimentTreatment) {
        self.appStoreVersionExperimentTreatment = appStoreVersionExperimentTreatment
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case appStoreVersionExperimentTreatment
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(appStoreVersionExperimentTreatment, forKey: .appStoreVersionExperimentTreatment)
    }
}

