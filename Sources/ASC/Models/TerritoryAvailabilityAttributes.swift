//
// TerritoryAvailabilityAttributes.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct TerritoryAvailabilityAttributes: Codable, JSONEncodable, Hashable {

    public enum ContentStatuses: String, Codable, CaseIterable, CaseIterableDefaultsLast {
        case available = "AVAILABLE"
        case availableForPreorderOnDate = "AVAILABLE_FOR_PREORDER_ON_DATE"
        case processingToNotAvailable = "PROCESSING_TO_NOT_AVAILABLE"
        case processingToAvailable = "PROCESSING_TO_AVAILABLE"
        case processingToPreOrder = "PROCESSING_TO_PRE_ORDER"
        case availableForSaleUnreleasedApp = "AVAILABLE_FOR_SALE_UNRELEASED_APP"
        case preorderOnUnreleasedApp = "PREORDER_ON_UNRELEASED_APP"
        case availableForPreorder = "AVAILABLE_FOR_PREORDER"
        case missingRating = "MISSING_RATING"
        case cannotSellRestrictedRating = "CANNOT_SELL_RESTRICTED_RATING"
        case brazilRequiredTaxId = "BRAZIL_REQUIRED_TAX_ID"
        case missingGrn = "MISSING_GRN"
        case unverifiedGrn = "UNVERIFIED_GRN"
        case cannotSellSeventeenPlusApps = "CANNOT_SELL_SEVENTEEN_PLUS_APPS"
        case cannotSellSexuallyExplicit = "CANNOT_SELL_SEXUALLY_EXPLICIT"
        case cannotSellNonIosGames = "CANNOT_SELL_NON_IOS_GAMES"
        case cannotSellSeventeenPlusGames = "CANNOT_SELL_SEVENTEEN_PLUS_GAMES"
        case cannotSellFrequentIntenseGambling = "CANNOT_SELL_FREQUENT_INTENSE_GAMBLING"
        case cannotSellCasino = "CANNOT_SELL_CASINO"
        case cannotSellCasinoWithoutGrac = "CANNOT_SELL_CASINO_WITHOUT_GRAC"
        case cannotSellCasinoWithoutAgeVerification = "CANNOT_SELL_CASINO_WITHOUT_AGE_VERIFICATION"
        case cannotSellFrequentIntenseAlcoholTobaccoDrugs = "CANNOT_SELL_FREQUENT_INTENSE_ALCOHOL_TOBACCO_DRUGS"
        case cannotSellFrequentIntenseViolence = "CANNOT_SELL_FREQUENT_INTENSE_VIOLENCE"
        case cannotSellFrequentIntenseSexualContentNudity = "CANNOT_SELL_FREQUENT_INTENSE_SEXUAL_CONTENT_NUDITY"
        case cannotSellInfrequentMildAlcoholTobaccoDrugs = "CANNOT_SELL_INFREQUENT_MILD_ALCOHOL_TOBACCO_DRUGS"
        case cannotSellInfrequentMildSexualContentNudity = "CANNOT_SELL_INFREQUENT_MILD_SEXUAL_CONTENT_NUDITY"
        case cannotSellAdultOnly = "CANNOT_SELL_ADULT_ONLY"
        case cannotSellFrequentIntense = "CANNOT_SELL_FREQUENT_INTENSE"
        case cannotSellFrequentIntenseWithoutGrac = "CANNOT_SELL_FREQUENT_INTENSE_WITHOUT_GRAC"
        case cannotSellGamblingContests = "CANNOT_SELL_GAMBLING_CONTESTS"
        case cannotSellGambling = "CANNOT_SELL_GAMBLING"
        case cannotSellContests = "CANNOT_SELL_CONTESTS"
        case cannotSell = "CANNOT_SELL"
        case unknownDefaultOpenApi = "unknown_default_open_api"
    }
    public var available: Bool?
    public var releaseDate: Date?
    public var preOrderEnabled: Bool?
    public var preOrderPublishDate: Date?
    public var contentStatuses: [ContentStatuses]?

    public init(available: Bool? = nil, releaseDate: Date? = nil, preOrderEnabled: Bool? = nil, preOrderPublishDate: Date? = nil, contentStatuses: [ContentStatuses]? = nil) {
        self.available = available
        self.releaseDate = releaseDate
        self.preOrderEnabled = preOrderEnabled
        self.preOrderPublishDate = preOrderPublishDate
        self.contentStatuses = contentStatuses
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case available
        case releaseDate
        case preOrderEnabled
        case preOrderPublishDate
        case contentStatuses
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(available, forKey: .available)
        try container.encodeIfPresent(releaseDate, forKey: .releaseDate)
        try container.encodeIfPresent(preOrderEnabled, forKey: .preOrderEnabled)
        try container.encodeIfPresent(preOrderPublishDate, forKey: .preOrderPublishDate)
        try container.encodeIfPresent(contentStatuses, forKey: .contentStatuses)
    }
}
