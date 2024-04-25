//
// GameCenterAchievementLocalizationsAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

open class GameCenterAchievementLocalizationsAPI {

    /**

     - parameter gameCenterAchievementLocalizationCreateRequest: (body) GameCenterAchievementLocalization representation 
     - returns: GameCenterAchievementLocalizationResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func gameCenterAchievementLocalizationsCreateInstance(gameCenterAchievementLocalizationCreateRequest: GameCenterAchievementLocalizationCreateRequest) async throws -> GameCenterAchievementLocalizationResponse {
        return try await gameCenterAchievementLocalizationsCreateInstanceWithRequestBuilder(gameCenterAchievementLocalizationCreateRequest: gameCenterAchievementLocalizationCreateRequest).execute().body
    }

    /**
     - parameter urlString: next or first url from App Store Connect API
     - returns: GameCenterAchievementLocalizationResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func gameCenterAchievementLocalizationsCreateInstance(urlString: String) async throws -> GameCenterAchievementLocalizationResponse {
        return try await gameCenterAchievementLocalizationsCreateInstanceWithRequestBuilder(urlString: urlString).execute().body
    }

    /**
     - POST /v1/gameCenterAchievementLocalizations
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter gameCenterAchievementLocalizationCreateRequest: (body) GameCenterAchievementLocalization representation 
     - returns: RequestBuilder<GameCenterAchievementLocalizationResponse> 
     */
    open class func gameCenterAchievementLocalizationsCreateInstanceWithRequestBuilder(gameCenterAchievementLocalizationCreateRequest: GameCenterAchievementLocalizationCreateRequest) -> RequestBuilder<GameCenterAchievementLocalizationResponse> {
        let localVariablePath = "/v1/gameCenterAchievementLocalizations"
        let localVariableURLString = ASCAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: gameCenterAchievementLocalizationCreateRequest)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            "Content-Type": "application/json",
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<GameCenterAchievementLocalizationResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     - POST /v1/gameCenterAchievementLocalizations
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter urlString: next or first url from App Store Connect API
     - returns: RequestBuilder<GameCenterAchievementLocalizationResponse> 
     */
    open class func gameCenterAchievementLocalizationsCreateInstanceWithRequestBuilder(urlString: String) -> RequestBuilder<GameCenterAchievementLocalizationResponse> {
        let localVariableNillableHeaders: [String: Any?] = [
            "Content-Type": "application/json",
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<GameCenterAchievementLocalizationResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: urlString, parameters: nil, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**

     - parameter id: (path) the id of the requested resource 
     - returns: Void
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func gameCenterAchievementLocalizationsDeleteInstance(id: String) async throws {
        return try await gameCenterAchievementLocalizationsDeleteInstanceWithRequestBuilder(id: id).execute().body
    }

    /**
     - parameter urlString: next or first url from App Store Connect API
     - returns: Void
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func gameCenterAchievementLocalizationsDeleteInstance(urlString: String) async throws {
        return try await gameCenterAchievementLocalizationsDeleteInstanceWithRequestBuilder(urlString: urlString).execute().body
    }

    /**
     - DELETE /v1/gameCenterAchievementLocalizations/{id}
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter id: (path) the id of the requested resource 
     - returns: RequestBuilder<Void> 
     */
    open class func gameCenterAchievementLocalizationsDeleteInstanceWithRequestBuilder(id: String) -> RequestBuilder<Void> {
        var localVariablePath = "/v1/gameCenterAchievementLocalizations/{id}"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = ASCAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Void>.Type = ASCAPI.requestBuilderFactory.getNonDecodableBuilder()

        return localVariableRequestBuilder.init(method: "DELETE", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     - DELETE /v1/gameCenterAchievementLocalizations/{id}
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter urlString: next or first url from App Store Connect API
     - returns: RequestBuilder<Void> 
     */
    open class func gameCenterAchievementLocalizationsDeleteInstanceWithRequestBuilder(urlString: String) -> RequestBuilder<Void> {
        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Void>.Type = ASCAPI.requestBuilderFactory.getNonDecodableBuilder()

        return localVariableRequestBuilder.init(method: "DELETE", URLString: urlString, parameters: nil, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     * enum for parameter fieldsGameCenterAchievementReleases
     */
    public enum FieldsGameCenterAchievementReleases_gameCenterAchievementLocalizationsGameCenterAchievementGetToOneRelated: String, CaseIterable {
        case gamecenterachievement = "gameCenterAchievement"
        case gamecenterdetail = "gameCenterDetail"
        case live = "live"
    }

    /**
     * enum for parameter fieldsGameCenterGroups
     */
    public enum FieldsGameCenterGroups_gameCenterAchievementLocalizationsGameCenterAchievementGetToOneRelated: String, CaseIterable {
        case gamecenterachievements = "gameCenterAchievements"
        case gamecenterdetails = "gameCenterDetails"
        case gamecenterleaderboardsets = "gameCenterLeaderboardSets"
        case gamecenterleaderboards = "gameCenterLeaderboards"
        case referencename = "referenceName"
    }

    /**
     * enum for parameter fieldsGameCenterDetails
     */
    public enum FieldsGameCenterDetails_gameCenterAchievementLocalizationsGameCenterAchievementGetToOneRelated: String, CaseIterable {
        case achievementreleases = "achievementReleases"
        case app = "app"
        case arcadeenabled = "arcadeEnabled"
        case challengeenabled = "challengeEnabled"
        case defaultgroupleaderboard = "defaultGroupLeaderboard"
        case defaultleaderboard = "defaultLeaderboard"
        case gamecenterachievements = "gameCenterAchievements"
        case gamecenterappversions = "gameCenterAppVersions"
        case gamecentergroup = "gameCenterGroup"
        case gamecenterleaderboardsets = "gameCenterLeaderboardSets"
        case gamecenterleaderboards = "gameCenterLeaderboards"
        case leaderboardreleases = "leaderboardReleases"
        case leaderboardsetreleases = "leaderboardSetReleases"
    }

    /**
     * enum for parameter fieldsGameCenterAchievementLocalizations
     */
    public enum FieldsGameCenterAchievementLocalizations_gameCenterAchievementLocalizationsGameCenterAchievementGetToOneRelated: String, CaseIterable {
        case afterearneddescription = "afterEarnedDescription"
        case beforeearneddescription = "beforeEarnedDescription"
        case gamecenterachievement = "gameCenterAchievement"
        case gamecenterachievementimage = "gameCenterAchievementImage"
        case locale = "locale"
        case name = "name"
    }

    /**
     * enum for parameter fieldsGameCenterAchievements
     */
    public enum FieldsGameCenterAchievements_gameCenterAchievementLocalizationsGameCenterAchievementGetToOneRelated: String, CaseIterable {
        case archived = "archived"
        case gamecenterdetail = "gameCenterDetail"
        case gamecentergroup = "gameCenterGroup"
        case groupachievement = "groupAchievement"
        case localizations = "localizations"
        case points = "points"
        case referencename = "referenceName"
        case releases = "releases"
        case repeatable = "repeatable"
        case showbeforeearned = "showBeforeEarned"
        case vendoridentifier = "vendorIdentifier"
    }

    /**
     * enum for parameter include
     */
    public enum Include_gameCenterAchievementLocalizationsGameCenterAchievementGetToOneRelated: String, CaseIterable {
        case gamecenterdetail = "gameCenterDetail"
        case gamecentergroup = "gameCenterGroup"
        case groupachievement = "groupAchievement"
        case localizations = "localizations"
        case releases = "releases"
    }

    /**

     - parameter id: (path) the id of the requested resource 
     - parameter fieldsGameCenterAchievementReleases: (query) the fields to include for returned resources of type gameCenterAchievementReleases (optional)
     - parameter fieldsGameCenterGroups: (query) the fields to include for returned resources of type gameCenterGroups (optional)
     - parameter fieldsGameCenterDetails: (query) the fields to include for returned resources of type gameCenterDetails (optional)
     - parameter fieldsGameCenterAchievementLocalizations: (query) the fields to include for returned resources of type gameCenterAchievementLocalizations (optional)
     - parameter fieldsGameCenterAchievements: (query) the fields to include for returned resources of type gameCenterAchievements (optional)
     - parameter limitLocalizations: (query) maximum number of related localizations returned (when they are included) (optional)
     - parameter limitReleases: (query) maximum number of related releases returned (when they are included) (optional)
     - parameter include: (query) comma-separated list of relationships to include (optional)
     - returns: GameCenterAchievementResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func gameCenterAchievementLocalizationsGameCenterAchievementGetToOneRelated(id: String, fieldsGameCenterAchievementReleases: [FieldsGameCenterAchievementReleases_gameCenterAchievementLocalizationsGameCenterAchievementGetToOneRelated]? = nil, fieldsGameCenterGroups: [FieldsGameCenterGroups_gameCenterAchievementLocalizationsGameCenterAchievementGetToOneRelated]? = nil, fieldsGameCenterDetails: [FieldsGameCenterDetails_gameCenterAchievementLocalizationsGameCenterAchievementGetToOneRelated]? = nil, fieldsGameCenterAchievementLocalizations: [FieldsGameCenterAchievementLocalizations_gameCenterAchievementLocalizationsGameCenterAchievementGetToOneRelated]? = nil, fieldsGameCenterAchievements: [FieldsGameCenterAchievements_gameCenterAchievementLocalizationsGameCenterAchievementGetToOneRelated]? = nil, limitLocalizations: Int? = nil, limitReleases: Int? = nil, include: [Include_gameCenterAchievementLocalizationsGameCenterAchievementGetToOneRelated]? = nil) async throws -> GameCenterAchievementResponse {
        return try await gameCenterAchievementLocalizationsGameCenterAchievementGetToOneRelatedWithRequestBuilder(id: id, fieldsGameCenterAchievementReleases: fieldsGameCenterAchievementReleases, fieldsGameCenterGroups: fieldsGameCenterGroups, fieldsGameCenterDetails: fieldsGameCenterDetails, fieldsGameCenterAchievementLocalizations: fieldsGameCenterAchievementLocalizations, fieldsGameCenterAchievements: fieldsGameCenterAchievements, limitLocalizations: limitLocalizations, limitReleases: limitReleases, include: include).execute().body
    }

    /**
     - parameter urlString: next or first url from App Store Connect API
     - returns: GameCenterAchievementResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func gameCenterAchievementLocalizationsGameCenterAchievementGetToOneRelated(urlString: String) async throws -> GameCenterAchievementResponse {
        return try await gameCenterAchievementLocalizationsGameCenterAchievementGetToOneRelatedWithRequestBuilder(urlString: urlString).execute().body
    }

    /**
     - GET /v1/gameCenterAchievementLocalizations/{id}/gameCenterAchievement
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter id: (path) the id of the requested resource 
     - parameter fieldsGameCenterAchievementReleases: (query) the fields to include for returned resources of type gameCenterAchievementReleases (optional)
     - parameter fieldsGameCenterGroups: (query) the fields to include for returned resources of type gameCenterGroups (optional)
     - parameter fieldsGameCenterDetails: (query) the fields to include for returned resources of type gameCenterDetails (optional)
     - parameter fieldsGameCenterAchievementLocalizations: (query) the fields to include for returned resources of type gameCenterAchievementLocalizations (optional)
     - parameter fieldsGameCenterAchievements: (query) the fields to include for returned resources of type gameCenterAchievements (optional)
     - parameter limitLocalizations: (query) maximum number of related localizations returned (when they are included) (optional)
     - parameter limitReleases: (query) maximum number of related releases returned (when they are included) (optional)
     - parameter include: (query) comma-separated list of relationships to include (optional)
     - returns: RequestBuilder<GameCenterAchievementResponse> 
     */
    open class func gameCenterAchievementLocalizationsGameCenterAchievementGetToOneRelatedWithRequestBuilder(id: String, fieldsGameCenterAchievementReleases: [FieldsGameCenterAchievementReleases_gameCenterAchievementLocalizationsGameCenterAchievementGetToOneRelated]? = nil, fieldsGameCenterGroups: [FieldsGameCenterGroups_gameCenterAchievementLocalizationsGameCenterAchievementGetToOneRelated]? = nil, fieldsGameCenterDetails: [FieldsGameCenterDetails_gameCenterAchievementLocalizationsGameCenterAchievementGetToOneRelated]? = nil, fieldsGameCenterAchievementLocalizations: [FieldsGameCenterAchievementLocalizations_gameCenterAchievementLocalizationsGameCenterAchievementGetToOneRelated]? = nil, fieldsGameCenterAchievements: [FieldsGameCenterAchievements_gameCenterAchievementLocalizationsGameCenterAchievementGetToOneRelated]? = nil, limitLocalizations: Int? = nil, limitReleases: Int? = nil, include: [Include_gameCenterAchievementLocalizationsGameCenterAchievementGetToOneRelated]? = nil) -> RequestBuilder<GameCenterAchievementResponse> {
        var localVariablePath = "/v1/gameCenterAchievementLocalizations/{id}/gameCenterAchievement"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = ASCAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "fields[gameCenterAchievementReleases]": (wrappedValue: fieldsGameCenterAchievementReleases?.encodeToJSON(), isExplode: false),
            "fields[gameCenterGroups]": (wrappedValue: fieldsGameCenterGroups?.encodeToJSON(), isExplode: false),
            "fields[gameCenterDetails]": (wrappedValue: fieldsGameCenterDetails?.encodeToJSON(), isExplode: false),
            "fields[gameCenterAchievementLocalizations]": (wrappedValue: fieldsGameCenterAchievementLocalizations?.encodeToJSON(), isExplode: false),
            "fields[gameCenterAchievements]": (wrappedValue: fieldsGameCenterAchievements?.encodeToJSON(), isExplode: false),
            "limit[localizations]": (wrappedValue: limitLocalizations?.encodeToJSON(), isExplode: true),
            "limit[releases]": (wrappedValue: limitReleases?.encodeToJSON(), isExplode: true),
            "include": (wrappedValue: include?.encodeToJSON(), isExplode: false),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<GameCenterAchievementResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     - GET /v1/gameCenterAchievementLocalizations/{id}/gameCenterAchievement
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter urlString: next or first url from App Store Connect API
     - returns: RequestBuilder<GameCenterAchievementResponse> 
     */
    open class func gameCenterAchievementLocalizationsGameCenterAchievementGetToOneRelatedWithRequestBuilder(urlString: String) -> RequestBuilder<GameCenterAchievementResponse> {
        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<GameCenterAchievementResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: urlString, parameters: nil, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     * enum for parameter fieldsGameCenterAchievementImages
     */
    public enum FieldsGameCenterAchievementImages_gameCenterAchievementLocalizationsGameCenterAchievementImageGetToOneRelated: String, CaseIterable {
        case assetdeliverystate = "assetDeliveryState"
        case filename = "fileName"
        case filesize = "fileSize"
        case gamecenterachievementlocalization = "gameCenterAchievementLocalization"
        case imageasset = "imageAsset"
        case uploadoperations = "uploadOperations"
        case uploaded = "uploaded"
    }

    /**
     * enum for parameter fieldsGameCenterAchievementLocalizations
     */
    public enum FieldsGameCenterAchievementLocalizations_gameCenterAchievementLocalizationsGameCenterAchievementImageGetToOneRelated: String, CaseIterable {
        case afterearneddescription = "afterEarnedDescription"
        case beforeearneddescription = "beforeEarnedDescription"
        case gamecenterachievement = "gameCenterAchievement"
        case gamecenterachievementimage = "gameCenterAchievementImage"
        case locale = "locale"
        case name = "name"
    }

    /**
     * enum for parameter include
     */
    public enum Include_gameCenterAchievementLocalizationsGameCenterAchievementImageGetToOneRelated: String, CaseIterable {
        case gamecenterachievementlocalization = "gameCenterAchievementLocalization"
    }

    /**

     - parameter id: (path) the id of the requested resource 
     - parameter fieldsGameCenterAchievementImages: (query) the fields to include for returned resources of type gameCenterAchievementImages (optional)
     - parameter fieldsGameCenterAchievementLocalizations: (query) the fields to include for returned resources of type gameCenterAchievementLocalizations (optional)
     - parameter include: (query) comma-separated list of relationships to include (optional)
     - returns: GameCenterAchievementImageResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func gameCenterAchievementLocalizationsGameCenterAchievementImageGetToOneRelated(id: String, fieldsGameCenterAchievementImages: [FieldsGameCenterAchievementImages_gameCenterAchievementLocalizationsGameCenterAchievementImageGetToOneRelated]? = nil, fieldsGameCenterAchievementLocalizations: [FieldsGameCenterAchievementLocalizations_gameCenterAchievementLocalizationsGameCenterAchievementImageGetToOneRelated]? = nil, include: [Include_gameCenterAchievementLocalizationsGameCenterAchievementImageGetToOneRelated]? = nil) async throws -> GameCenterAchievementImageResponse {
        return try await gameCenterAchievementLocalizationsGameCenterAchievementImageGetToOneRelatedWithRequestBuilder(id: id, fieldsGameCenterAchievementImages: fieldsGameCenterAchievementImages, fieldsGameCenterAchievementLocalizations: fieldsGameCenterAchievementLocalizations, include: include).execute().body
    }

    /**
     - parameter urlString: next or first url from App Store Connect API
     - returns: GameCenterAchievementImageResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func gameCenterAchievementLocalizationsGameCenterAchievementImageGetToOneRelated(urlString: String) async throws -> GameCenterAchievementImageResponse {
        return try await gameCenterAchievementLocalizationsGameCenterAchievementImageGetToOneRelatedWithRequestBuilder(urlString: urlString).execute().body
    }

    /**
     - GET /v1/gameCenterAchievementLocalizations/{id}/gameCenterAchievementImage
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter id: (path) the id of the requested resource 
     - parameter fieldsGameCenterAchievementImages: (query) the fields to include for returned resources of type gameCenterAchievementImages (optional)
     - parameter fieldsGameCenterAchievementLocalizations: (query) the fields to include for returned resources of type gameCenterAchievementLocalizations (optional)
     - parameter include: (query) comma-separated list of relationships to include (optional)
     - returns: RequestBuilder<GameCenterAchievementImageResponse> 
     */
    open class func gameCenterAchievementLocalizationsGameCenterAchievementImageGetToOneRelatedWithRequestBuilder(id: String, fieldsGameCenterAchievementImages: [FieldsGameCenterAchievementImages_gameCenterAchievementLocalizationsGameCenterAchievementImageGetToOneRelated]? = nil, fieldsGameCenterAchievementLocalizations: [FieldsGameCenterAchievementLocalizations_gameCenterAchievementLocalizationsGameCenterAchievementImageGetToOneRelated]? = nil, include: [Include_gameCenterAchievementLocalizationsGameCenterAchievementImageGetToOneRelated]? = nil) -> RequestBuilder<GameCenterAchievementImageResponse> {
        var localVariablePath = "/v1/gameCenterAchievementLocalizations/{id}/gameCenterAchievementImage"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = ASCAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "fields[gameCenterAchievementImages]": (wrappedValue: fieldsGameCenterAchievementImages?.encodeToJSON(), isExplode: false),
            "fields[gameCenterAchievementLocalizations]": (wrappedValue: fieldsGameCenterAchievementLocalizations?.encodeToJSON(), isExplode: false),
            "include": (wrappedValue: include?.encodeToJSON(), isExplode: false),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<GameCenterAchievementImageResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     - GET /v1/gameCenterAchievementLocalizations/{id}/gameCenterAchievementImage
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter urlString: next or first url from App Store Connect API
     - returns: RequestBuilder<GameCenterAchievementImageResponse> 
     */
    open class func gameCenterAchievementLocalizationsGameCenterAchievementImageGetToOneRelatedWithRequestBuilder(urlString: String) -> RequestBuilder<GameCenterAchievementImageResponse> {
        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<GameCenterAchievementImageResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: urlString, parameters: nil, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     * enum for parameter fieldsGameCenterAchievementLocalizations
     */
    public enum FieldsGameCenterAchievementLocalizations_gameCenterAchievementLocalizationsGetInstance: String, CaseIterable {
        case afterearneddescription = "afterEarnedDescription"
        case beforeearneddescription = "beforeEarnedDescription"
        case gamecenterachievement = "gameCenterAchievement"
        case gamecenterachievementimage = "gameCenterAchievementImage"
        case locale = "locale"
        case name = "name"
    }

    /**
     * enum for parameter include
     */
    public enum Include_gameCenterAchievementLocalizationsGetInstance: String, CaseIterable {
        case gamecenterachievement = "gameCenterAchievement"
        case gamecenterachievementimage = "gameCenterAchievementImage"
    }

    /**
     * enum for parameter fieldsGameCenterAchievementImages
     */
    public enum FieldsGameCenterAchievementImages_gameCenterAchievementLocalizationsGetInstance: String, CaseIterable {
        case assetdeliverystate = "assetDeliveryState"
        case filename = "fileName"
        case filesize = "fileSize"
        case gamecenterachievementlocalization = "gameCenterAchievementLocalization"
        case imageasset = "imageAsset"
        case uploadoperations = "uploadOperations"
        case uploaded = "uploaded"
    }

    /**
     * enum for parameter fieldsGameCenterAchievements
     */
    public enum FieldsGameCenterAchievements_gameCenterAchievementLocalizationsGetInstance: String, CaseIterable {
        case archived = "archived"
        case gamecenterdetail = "gameCenterDetail"
        case gamecentergroup = "gameCenterGroup"
        case groupachievement = "groupAchievement"
        case localizations = "localizations"
        case points = "points"
        case referencename = "referenceName"
        case releases = "releases"
        case repeatable = "repeatable"
        case showbeforeearned = "showBeforeEarned"
        case vendoridentifier = "vendorIdentifier"
    }

    /**

     - parameter id: (path) the id of the requested resource 
     - parameter fieldsGameCenterAchievementLocalizations: (query) the fields to include for returned resources of type gameCenterAchievementLocalizations (optional)
     - parameter include: (query) comma-separated list of relationships to include (optional)
     - parameter fieldsGameCenterAchievementImages: (query) the fields to include for returned resources of type gameCenterAchievementImages (optional)
     - parameter fieldsGameCenterAchievements: (query) the fields to include for returned resources of type gameCenterAchievements (optional)
     - returns: GameCenterAchievementLocalizationResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func gameCenterAchievementLocalizationsGetInstance(id: String, fieldsGameCenterAchievementLocalizations: [FieldsGameCenterAchievementLocalizations_gameCenterAchievementLocalizationsGetInstance]? = nil, include: [Include_gameCenterAchievementLocalizationsGetInstance]? = nil, fieldsGameCenterAchievementImages: [FieldsGameCenterAchievementImages_gameCenterAchievementLocalizationsGetInstance]? = nil, fieldsGameCenterAchievements: [FieldsGameCenterAchievements_gameCenterAchievementLocalizationsGetInstance]? = nil) async throws -> GameCenterAchievementLocalizationResponse {
        return try await gameCenterAchievementLocalizationsGetInstanceWithRequestBuilder(id: id, fieldsGameCenterAchievementLocalizations: fieldsGameCenterAchievementLocalizations, include: include, fieldsGameCenterAchievementImages: fieldsGameCenterAchievementImages, fieldsGameCenterAchievements: fieldsGameCenterAchievements).execute().body
    }

    /**
     - parameter urlString: next or first url from App Store Connect API
     - returns: GameCenterAchievementLocalizationResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func gameCenterAchievementLocalizationsGetInstance(urlString: String) async throws -> GameCenterAchievementLocalizationResponse {
        return try await gameCenterAchievementLocalizationsGetInstanceWithRequestBuilder(urlString: urlString).execute().body
    }

    /**
     - GET /v1/gameCenterAchievementLocalizations/{id}
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter id: (path) the id of the requested resource 
     - parameter fieldsGameCenterAchievementLocalizations: (query) the fields to include for returned resources of type gameCenterAchievementLocalizations (optional)
     - parameter include: (query) comma-separated list of relationships to include (optional)
     - parameter fieldsGameCenterAchievementImages: (query) the fields to include for returned resources of type gameCenterAchievementImages (optional)
     - parameter fieldsGameCenterAchievements: (query) the fields to include for returned resources of type gameCenterAchievements (optional)
     - returns: RequestBuilder<GameCenterAchievementLocalizationResponse> 
     */
    open class func gameCenterAchievementLocalizationsGetInstanceWithRequestBuilder(id: String, fieldsGameCenterAchievementLocalizations: [FieldsGameCenterAchievementLocalizations_gameCenterAchievementLocalizationsGetInstance]? = nil, include: [Include_gameCenterAchievementLocalizationsGetInstance]? = nil, fieldsGameCenterAchievementImages: [FieldsGameCenterAchievementImages_gameCenterAchievementLocalizationsGetInstance]? = nil, fieldsGameCenterAchievements: [FieldsGameCenterAchievements_gameCenterAchievementLocalizationsGetInstance]? = nil) -> RequestBuilder<GameCenterAchievementLocalizationResponse> {
        var localVariablePath = "/v1/gameCenterAchievementLocalizations/{id}"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = ASCAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "fields[gameCenterAchievementLocalizations]": (wrappedValue: fieldsGameCenterAchievementLocalizations?.encodeToJSON(), isExplode: false),
            "include": (wrappedValue: include?.encodeToJSON(), isExplode: false),
            "fields[gameCenterAchievementImages]": (wrappedValue: fieldsGameCenterAchievementImages?.encodeToJSON(), isExplode: false),
            "fields[gameCenterAchievements]": (wrappedValue: fieldsGameCenterAchievements?.encodeToJSON(), isExplode: false),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<GameCenterAchievementLocalizationResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     - GET /v1/gameCenterAchievementLocalizations/{id}
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter urlString: next or first url from App Store Connect API
     - returns: RequestBuilder<GameCenterAchievementLocalizationResponse> 
     */
    open class func gameCenterAchievementLocalizationsGetInstanceWithRequestBuilder(urlString: String) -> RequestBuilder<GameCenterAchievementLocalizationResponse> {
        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<GameCenterAchievementLocalizationResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: urlString, parameters: nil, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**

     - parameter id: (path) the id of the requested resource 
     - parameter gameCenterAchievementLocalizationUpdateRequest: (body) GameCenterAchievementLocalization representation 
     - returns: GameCenterAchievementLocalizationResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func gameCenterAchievementLocalizationsUpdateInstance(id: String, gameCenterAchievementLocalizationUpdateRequest: GameCenterAchievementLocalizationUpdateRequest) async throws -> GameCenterAchievementLocalizationResponse {
        return try await gameCenterAchievementLocalizationsUpdateInstanceWithRequestBuilder(id: id, gameCenterAchievementLocalizationUpdateRequest: gameCenterAchievementLocalizationUpdateRequest).execute().body
    }

    /**
     - parameter urlString: next or first url from App Store Connect API
     - returns: GameCenterAchievementLocalizationResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func gameCenterAchievementLocalizationsUpdateInstance(urlString: String) async throws -> GameCenterAchievementLocalizationResponse {
        return try await gameCenterAchievementLocalizationsUpdateInstanceWithRequestBuilder(urlString: urlString).execute().body
    }

    /**
     - PATCH /v1/gameCenterAchievementLocalizations/{id}
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter id: (path) the id of the requested resource 
     - parameter gameCenterAchievementLocalizationUpdateRequest: (body) GameCenterAchievementLocalization representation 
     - returns: RequestBuilder<GameCenterAchievementLocalizationResponse> 
     */
    open class func gameCenterAchievementLocalizationsUpdateInstanceWithRequestBuilder(id: String, gameCenterAchievementLocalizationUpdateRequest: GameCenterAchievementLocalizationUpdateRequest) -> RequestBuilder<GameCenterAchievementLocalizationResponse> {
        var localVariablePath = "/v1/gameCenterAchievementLocalizations/{id}"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = ASCAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: gameCenterAchievementLocalizationUpdateRequest)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            "Content-Type": "application/json",
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<GameCenterAchievementLocalizationResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PATCH", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     - PATCH /v1/gameCenterAchievementLocalizations/{id}
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter urlString: next or first url from App Store Connect API
     - returns: RequestBuilder<GameCenterAchievementLocalizationResponse> 
     */
    open class func gameCenterAchievementLocalizationsUpdateInstanceWithRequestBuilder(urlString: String) -> RequestBuilder<GameCenterAchievementLocalizationResponse> {
        let localVariableNillableHeaders: [String: Any?] = [
            "Content-Type": "application/json",
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<GameCenterAchievementLocalizationResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PATCH", URLString: urlString, parameters: nil, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }
}
