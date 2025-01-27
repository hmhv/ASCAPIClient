//
// AppEventAttributes.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

public struct AppEventAttributes: Sendable, Codable, JSONEncodable, Hashable {

    public enum Badge: String, Sendable, Codable, CaseIterable, CaseIterableDefaultsLast {
        case liveEvent = "LIVE_EVENT"
        case premiere = "PREMIERE"
        case challenge = "CHALLENGE"
        case competition = "COMPETITION"
        case newSeason = "NEW_SEASON"
        case majorUpdate = "MAJOR_UPDATE"
        case specialEvent = "SPECIAL_EVENT"
        case unknownDefaultOpenApi = "unknown_default_open_api"
    }
    public enum EventState: String, Sendable, Codable, CaseIterable, CaseIterableDefaultsLast {
        case draft = "DRAFT"
        case readyForReview = "READY_FOR_REVIEW"
        case waitingForReview = "WAITING_FOR_REVIEW"
        case inReview = "IN_REVIEW"
        case rejected = "REJECTED"
        case accepted = "ACCEPTED"
        case approved = "APPROVED"
        case published = "PUBLISHED"
        case past = "PAST"
        case archived = "ARCHIVED"
        case unknownDefaultOpenApi = "unknown_default_open_api"
    }
    public enum Priority: String, Sendable, Codable, CaseIterable, CaseIterableDefaultsLast {
        case high = "HIGH"
        case normal = "NORMAL"
        case unknownDefaultOpenApi = "unknown_default_open_api"
    }
    public enum Purpose: String, Sendable, Codable, CaseIterable, CaseIterableDefaultsLast {
        case appropriateForAllUsers = "APPROPRIATE_FOR_ALL_USERS"
        case attractNewUsers = "ATTRACT_NEW_USERS"
        case keepActiveUsersInformed = "KEEP_ACTIVE_USERS_INFORMED"
        case bringBackLapsedUsers = "BRING_BACK_LAPSED_USERS"
        case unknownDefaultOpenApi = "unknown_default_open_api"
    }
    public var referenceName: String?
    public var badge: Badge?
    public var eventState: EventState?
    public var deepLink: String?
    public var purchaseRequirement: String?
    public var primaryLocale: String?
    public var priority: Priority?
    public var purpose: Purpose?
    public var territorySchedules: [AppEventAttributesTerritorySchedulesInner]?
    public var archivedTerritorySchedules: [AppEventAttributesTerritorySchedulesInner]?

    public init(referenceName: String? = nil, badge: Badge? = nil, eventState: EventState? = nil, deepLink: String? = nil, purchaseRequirement: String? = nil, primaryLocale: String? = nil, priority: Priority? = nil, purpose: Purpose? = nil, territorySchedules: [AppEventAttributesTerritorySchedulesInner]? = nil, archivedTerritorySchedules: [AppEventAttributesTerritorySchedulesInner]? = nil) {
        self.referenceName = referenceName
        self.badge = badge
        self.eventState = eventState
        self.deepLink = deepLink
        self.purchaseRequirement = purchaseRequirement
        self.primaryLocale = primaryLocale
        self.priority = priority
        self.purpose = purpose
        self.territorySchedules = territorySchedules
        self.archivedTerritorySchedules = archivedTerritorySchedules
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case referenceName
        case badge
        case eventState
        case deepLink
        case purchaseRequirement
        case primaryLocale
        case priority
        case purpose
        case territorySchedules
        case archivedTerritorySchedules
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(referenceName, forKey: .referenceName)
        try container.encodeIfPresent(badge, forKey: .badge)
        try container.encodeIfPresent(eventState, forKey: .eventState)
        try container.encodeIfPresent(deepLink, forKey: .deepLink)
        try container.encodeIfPresent(purchaseRequirement, forKey: .purchaseRequirement)
        try container.encodeIfPresent(primaryLocale, forKey: .primaryLocale)
        try container.encodeIfPresent(priority, forKey: .priority)
        try container.encodeIfPresent(purpose, forKey: .purpose)
        try container.encodeIfPresent(territorySchedules, forKey: .territorySchedules)
        try container.encodeIfPresent(archivedTerritorySchedules, forKey: .archivedTerritorySchedules)
    }
}

