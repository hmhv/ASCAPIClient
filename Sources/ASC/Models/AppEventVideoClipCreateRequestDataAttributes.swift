//
// AppEventVideoClipCreateRequestDataAttributes.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct AppEventVideoClipCreateRequestDataAttributes: Codable, JSONEncodable, Hashable {

    public var fileSize: Int
    public var fileName: String
    public var previewFrameTimeCode: String?
    public var appEventAssetType: AppEventAssetType

    public init(fileSize: Int, fileName: String, previewFrameTimeCode: String? = nil, appEventAssetType: AppEventAssetType) {
        self.fileSize = fileSize
        self.fileName = fileName
        self.previewFrameTimeCode = previewFrameTimeCode
        self.appEventAssetType = appEventAssetType
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case fileSize
        case fileName
        case previewFrameTimeCode
        case appEventAssetType
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(fileSize, forKey: .fileSize)
        try container.encode(fileName, forKey: .fileName)
        try container.encodeIfPresent(previewFrameTimeCode, forKey: .previewFrameTimeCode)
        try container.encode(appEventAssetType, forKey: .appEventAssetType)
    }
}
