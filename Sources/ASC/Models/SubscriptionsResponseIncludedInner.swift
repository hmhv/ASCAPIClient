//
// SubscriptionsResponseIncludedInner.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

public enum SubscriptionsResponseIncludedInner: Sendable, Codable, JSONEncodable, Hashable {
    case typePromotedPurchase(PromotedPurchase)
    case typeSubscriptionAppStoreReviewScreenshot(SubscriptionAppStoreReviewScreenshot)
    case typeSubscriptionAvailability(SubscriptionAvailability)
    case typeSubscriptionGroup(SubscriptionGroup)
    case typeSubscriptionImage(SubscriptionImage)
    case typeSubscriptionIntroductoryOffer(SubscriptionIntroductoryOffer)
    case typeSubscriptionLocalization(SubscriptionLocalization)
    case typeSubscriptionOfferCode(SubscriptionOfferCode)
    case typeSubscriptionPrice(SubscriptionPrice)
    case typeSubscriptionPromotionalOffer(SubscriptionPromotionalOffer)
    case typeWinBackOffer(WinBackOffer)

    public func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        switch self {
        case .typePromotedPurchase(let value):
            try container.encode(value)
        case .typeSubscriptionAppStoreReviewScreenshot(let value):
            try container.encode(value)
        case .typeSubscriptionAvailability(let value):
            try container.encode(value)
        case .typeSubscriptionGroup(let value):
            try container.encode(value)
        case .typeSubscriptionImage(let value):
            try container.encode(value)
        case .typeSubscriptionIntroductoryOffer(let value):
            try container.encode(value)
        case .typeSubscriptionLocalization(let value):
            try container.encode(value)
        case .typeSubscriptionOfferCode(let value):
            try container.encode(value)
        case .typeSubscriptionPrice(let value):
            try container.encode(value)
        case .typeSubscriptionPromotionalOffer(let value):
            try container.encode(value)
        case .typeWinBackOffer(let value):
            try container.encode(value)
        }
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        if let value = try? container.decode(PromotedPurchase.self) {
            self = .typePromotedPurchase(value)
        } else if let value = try? container.decode(SubscriptionAppStoreReviewScreenshot.self) {
            self = .typeSubscriptionAppStoreReviewScreenshot(value)
        } else if let value = try? container.decode(SubscriptionAvailability.self) {
            self = .typeSubscriptionAvailability(value)
        } else if let value = try? container.decode(SubscriptionGroup.self) {
            self = .typeSubscriptionGroup(value)
        } else if let value = try? container.decode(SubscriptionImage.self) {
            self = .typeSubscriptionImage(value)
        } else if let value = try? container.decode(SubscriptionIntroductoryOffer.self) {
            self = .typeSubscriptionIntroductoryOffer(value)
        } else if let value = try? container.decode(SubscriptionLocalization.self) {
            self = .typeSubscriptionLocalization(value)
        } else if let value = try? container.decode(SubscriptionOfferCode.self) {
            self = .typeSubscriptionOfferCode(value)
        } else if let value = try? container.decode(SubscriptionPrice.self) {
            self = .typeSubscriptionPrice(value)
        } else if let value = try? container.decode(SubscriptionPromotionalOffer.self) {
            self = .typeSubscriptionPromotionalOffer(value)
        } else if let value = try? container.decode(WinBackOffer.self) {
            self = .typeWinBackOffer(value)
        } else {
            throw DecodingError.typeMismatch(Self.Type.self, .init(codingPath: decoder.codingPath, debugDescription: "Unable to decode instance of SubscriptionsResponseIncludedInner"))
        }
    }
}

