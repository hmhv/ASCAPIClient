//
// InAppPurchasesV2ResponseIncludedInner.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public enum InAppPurchasesV2ResponseIncludedInner: Codable, JSONEncodable, Hashable {
    case typeInAppPurchaseAppStoreReviewScreenshot(InAppPurchaseAppStoreReviewScreenshot)
    case typeInAppPurchaseAvailability(InAppPurchaseAvailability)
    case typeInAppPurchaseContent(InAppPurchaseContent)
    case typeInAppPurchaseImage(InAppPurchaseImage)
    case typeInAppPurchaseLocalization(InAppPurchaseLocalization)
    case typeInAppPurchasePricePoint(InAppPurchasePricePoint)
    case typeInAppPurchasePriceSchedule(InAppPurchasePriceSchedule)
    case typePromotedPurchase(PromotedPurchase)

    public func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        switch self {
        case .typeInAppPurchaseAppStoreReviewScreenshot(let value):
            try container.encode(value)
        case .typeInAppPurchaseAvailability(let value):
            try container.encode(value)
        case .typeInAppPurchaseContent(let value):
            try container.encode(value)
        case .typeInAppPurchaseImage(let value):
            try container.encode(value)
        case .typeInAppPurchaseLocalization(let value):
            try container.encode(value)
        case .typeInAppPurchasePricePoint(let value):
            try container.encode(value)
        case .typeInAppPurchasePriceSchedule(let value):
            try container.encode(value)
        case .typePromotedPurchase(let value):
            try container.encode(value)
        }
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        if let value = try? container.decode(InAppPurchaseAppStoreReviewScreenshot.self) {
            self = .typeInAppPurchaseAppStoreReviewScreenshot(value)
        } else if let value = try? container.decode(InAppPurchaseAvailability.self) {
            self = .typeInAppPurchaseAvailability(value)
        } else if let value = try? container.decode(InAppPurchaseContent.self) {
            self = .typeInAppPurchaseContent(value)
        } else if let value = try? container.decode(InAppPurchaseImage.self) {
            self = .typeInAppPurchaseImage(value)
        } else if let value = try? container.decode(InAppPurchaseLocalization.self) {
            self = .typeInAppPurchaseLocalization(value)
        } else if let value = try? container.decode(InAppPurchasePricePoint.self) {
            self = .typeInAppPurchasePricePoint(value)
        } else if let value = try? container.decode(InAppPurchasePriceSchedule.self) {
            self = .typeInAppPurchasePriceSchedule(value)
        } else if let value = try? container.decode(PromotedPurchase.self) {
            self = .typePromotedPurchase(value)
        } else {
            throw DecodingError.typeMismatch(Self.Type.self, .init(codingPath: decoder.codingPath, debugDescription: "Unable to decode instance of InAppPurchasesV2ResponseIncludedInner"))
        }
    }
}

