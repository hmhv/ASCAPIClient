//
// GameCenterEnabledVersionsAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

open class GameCenterEnabledVersionsAPI {

    /**

     - parameter id: (path) the id of the requested resource 
     - parameter gameCenterEnabledVersionCompatibleVersionsLinkagesRequest: (body) List of related linkages 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: Void
     */
    @available(*, deprecated, message: "This operation is deprecated.")
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func gameCenterEnabledVersionsCompatibleVersionsCreateToManyRelationship(id: String, gameCenterEnabledVersionCompatibleVersionsLinkagesRequest: GameCenterEnabledVersionCompatibleVersionsLinkagesRequest, apiConfiguration: ASCAPIConfiguration = ASCAPIConfiguration.shared) async throws(ErrorResponse) {
        return try await gameCenterEnabledVersionsCompatibleVersionsCreateToManyRelationshipWithRequestBuilder(id: id, gameCenterEnabledVersionCompatibleVersionsLinkagesRequest: gameCenterEnabledVersionCompatibleVersionsLinkagesRequest, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     - parameter urlString: next or first url from App Store Connect API
     - parameter apiConfiguration: The configuration for the http request.
     - returns: Void
     */
    @available(*, deprecated, message: "This operation is deprecated.")
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func gameCenterEnabledVersionsCompatibleVersionsCreateToManyRelationship(urlString: String, apiConfiguration: ASCAPIConfiguration = ASCAPIConfiguration.shared) async throws(ErrorResponse) {
        return try await gameCenterEnabledVersionsCompatibleVersionsCreateToManyRelationshipWithRequestBuilder(urlString: urlString, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     - POST /v1/gameCenterEnabledVersions/{id}/relationships/compatibleVersions
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter id: (path) the id of the requested resource 
     - parameter gameCenterEnabledVersionCompatibleVersionsLinkagesRequest: (body) List of related linkages 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<Void> 
     */
    @available(*, deprecated, message: "This operation is deprecated.")
    open class func gameCenterEnabledVersionsCompatibleVersionsCreateToManyRelationshipWithRequestBuilder(id: String, gameCenterEnabledVersionCompatibleVersionsLinkagesRequest: GameCenterEnabledVersionCompatibleVersionsLinkagesRequest, apiConfiguration: ASCAPIConfiguration = ASCAPIConfiguration.shared) -> RequestBuilder<Void> {
        var localVariablePath = "/v1/gameCenterEnabledVersions/{id}/relationships/compatibleVersions"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: gameCenterEnabledVersionCompatibleVersionsLinkagesRequest, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            "Content-Type": "application/json",
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Void>.Type = apiConfiguration.requestBuilderFactory.getNonDecodableBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     - POST /v1/gameCenterEnabledVersions/{id}/relationships/compatibleVersions
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter urlString: next or first url from App Store Connect API
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<Void> 
     */
    @available(*, deprecated, message: "This operation is deprecated.")
    open class func gameCenterEnabledVersionsCompatibleVersionsCreateToManyRelationshipWithRequestBuilder(urlString: String, apiConfiguration: ASCAPIConfiguration = ASCAPIConfiguration.shared) -> RequestBuilder<Void> {
        let localVariableNillableHeaders: [String: Any?] = [
            "Content-Type": "application/json",
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Void>.Type = apiConfiguration.requestBuilderFactory.getNonDecodableBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: urlString, parameters: nil, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**

     - parameter id: (path) the id of the requested resource 
     - parameter gameCenterEnabledVersionCompatibleVersionsLinkagesRequest: (body) List of related linkages 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: Void
     */
    @available(*, deprecated, message: "This operation is deprecated.")
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func gameCenterEnabledVersionsCompatibleVersionsDeleteToManyRelationship(id: String, gameCenterEnabledVersionCompatibleVersionsLinkagesRequest: GameCenterEnabledVersionCompatibleVersionsLinkagesRequest, apiConfiguration: ASCAPIConfiguration = ASCAPIConfiguration.shared) async throws(ErrorResponse) {
        return try await gameCenterEnabledVersionsCompatibleVersionsDeleteToManyRelationshipWithRequestBuilder(id: id, gameCenterEnabledVersionCompatibleVersionsLinkagesRequest: gameCenterEnabledVersionCompatibleVersionsLinkagesRequest, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     - parameter urlString: next or first url from App Store Connect API
     - parameter apiConfiguration: The configuration for the http request.
     - returns: Void
     */
    @available(*, deprecated, message: "This operation is deprecated.")
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func gameCenterEnabledVersionsCompatibleVersionsDeleteToManyRelationship(urlString: String, apiConfiguration: ASCAPIConfiguration = ASCAPIConfiguration.shared) async throws(ErrorResponse) {
        return try await gameCenterEnabledVersionsCompatibleVersionsDeleteToManyRelationshipWithRequestBuilder(urlString: urlString, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     - DELETE /v1/gameCenterEnabledVersions/{id}/relationships/compatibleVersions
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter id: (path) the id of the requested resource 
     - parameter gameCenterEnabledVersionCompatibleVersionsLinkagesRequest: (body) List of related linkages 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<Void> 
     */
    @available(*, deprecated, message: "This operation is deprecated.")
    open class func gameCenterEnabledVersionsCompatibleVersionsDeleteToManyRelationshipWithRequestBuilder(id: String, gameCenterEnabledVersionCompatibleVersionsLinkagesRequest: GameCenterEnabledVersionCompatibleVersionsLinkagesRequest, apiConfiguration: ASCAPIConfiguration = ASCAPIConfiguration.shared) -> RequestBuilder<Void> {
        var localVariablePath = "/v1/gameCenterEnabledVersions/{id}/relationships/compatibleVersions"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: gameCenterEnabledVersionCompatibleVersionsLinkagesRequest, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            "Content-Type": "application/json",
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Void>.Type = apiConfiguration.requestBuilderFactory.getNonDecodableBuilder()

        return localVariableRequestBuilder.init(method: "DELETE", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     - DELETE /v1/gameCenterEnabledVersions/{id}/relationships/compatibleVersions
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter urlString: next or first url from App Store Connect API
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<Void> 
     */
    @available(*, deprecated, message: "This operation is deprecated.")
    open class func gameCenterEnabledVersionsCompatibleVersionsDeleteToManyRelationshipWithRequestBuilder(urlString: String, apiConfiguration: ASCAPIConfiguration = ASCAPIConfiguration.shared) -> RequestBuilder<Void> {
        let localVariableNillableHeaders: [String: Any?] = [
            "Content-Type": "application/json",
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Void>.Type = apiConfiguration.requestBuilderFactory.getNonDecodableBuilder()

        return localVariableRequestBuilder.init(method: "DELETE", URLString: urlString, parameters: nil, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     * enum for parameter filterPlatform
     */
    public enum FilterPlatform_gameCenterEnabledVersionsCompatibleVersionsGetToManyRelated: String, Sendable, CaseIterable {
        case ios = "IOS"
        case macOs = "MAC_OS"
        case tvOs = "TV_OS"
        case visionOs = "VISION_OS"
    }

    /**
     * enum for parameter sort
     */
    public enum Sort_gameCenterEnabledVersionsCompatibleVersionsGetToManyRelated: String, Sendable, CaseIterable {
        case versionstring = "versionString"
        case versionstring2 = "-versionString"
    }

    /**
     * enum for parameter fieldsGameCenterEnabledVersions
     */
    public enum FieldsGameCenterEnabledVersions_gameCenterEnabledVersionsCompatibleVersionsGetToManyRelated: String, Sendable, CaseIterable {
        case platform = "platform"
        case versionstring = "versionString"
        case iconasset = "iconAsset"
        case compatibleversions = "compatibleVersions"
        case app = "app"
    }

    /**
     * enum for parameter fieldsApps
     */
    public enum FieldsApps_gameCenterEnabledVersionsCompatibleVersionsGetToManyRelated: String, Sendable, CaseIterable {
        case name = "name"
        case bundleid = "bundleId"
        case sku = "sku"
        case primarylocale = "primaryLocale"
        case isoreverwasmadeforkids = "isOrEverWasMadeForKids"
        case subscriptionstatusurl = "subscriptionStatusUrl"
        case subscriptionstatusurlversion = "subscriptionStatusUrlVersion"
        case subscriptionstatusurlforsandbox = "subscriptionStatusUrlForSandbox"
        case subscriptionstatusurlversionforsandbox = "subscriptionStatusUrlVersionForSandbox"
        case contentrightsdeclaration = "contentRightsDeclaration"
        case streamlinedpurchasingenabled = "streamlinedPurchasingEnabled"
        case appencryptiondeclarations = "appEncryptionDeclarations"
        case ciproduct = "ciProduct"
        case betatesters = "betaTesters"
        case betagroups = "betaGroups"
        case appstoreversions = "appStoreVersions"
        case prereleaseversions = "preReleaseVersions"
        case betaapplocalizations = "betaAppLocalizations"
        case builds = "builds"
        case betalicenseagreement = "betaLicenseAgreement"
        case betaappreviewdetail = "betaAppReviewDetail"
        case appinfos = "appInfos"
        case appclips = "appClips"
        case apppricepoints = "appPricePoints"
        case enduserlicenseagreement = "endUserLicenseAgreement"
        case apppriceschedule = "appPriceSchedule"
        case appavailabilityv2 = "appAvailabilityV2"
        case inapppurchases = "inAppPurchases"
        case subscriptiongroups = "subscriptionGroups"
        case gamecenterenabledversions = "gameCenterEnabledVersions"
        case perfpowermetrics = "perfPowerMetrics"
        case appcustomproductpages = "appCustomProductPages"
        case inapppurchasesv2 = "inAppPurchasesV2"
        case promotedpurchases = "promotedPurchases"
        case appevents = "appEvents"
        case reviewsubmissions = "reviewSubmissions"
        case subscriptiongraceperiod = "subscriptionGracePeriod"
        case customerreviews = "customerReviews"
        case gamecenterdetail = "gameCenterDetail"
        case appstoreversionexperimentsv2 = "appStoreVersionExperimentsV2"
        case alternativedistributionkey = "alternativeDistributionKey"
        case analyticsreportrequests = "analyticsReportRequests"
        case marketplacesearchdetail = "marketplaceSearchDetail"
    }

    /**
     * enum for parameter include
     */
    public enum Include_gameCenterEnabledVersionsCompatibleVersionsGetToManyRelated: String, Sendable, CaseIterable {
        case compatibleversions = "compatibleVersions"
        case app = "app"
    }

    /**

     - parameter id: (path) the id of the requested resource 
     - parameter filterPlatform: (query) filter by attribute &#39;platform&#39; (optional)
     - parameter filterVersionString: (query) filter by attribute &#39;versionString&#39; (optional)
     - parameter filterApp: (query) filter by id(s) of related &#39;app&#39; (optional)
     - parameter filterId: (query) filter by id(s) (optional)
     - parameter sort: (query) comma-separated list of sort expressions; resources will be sorted as specified (optional)
     - parameter fieldsGameCenterEnabledVersions: (query) the fields to include for returned resources of type gameCenterEnabledVersions (optional)
     - parameter fieldsApps: (query) the fields to include for returned resources of type apps (optional)
     - parameter limit: (query) maximum resources per page (optional)
     - parameter include: (query) comma-separated list of relationships to include (optional)
     - parameter limitCompatibleVersions: (query) maximum number of related compatibleVersions returned (when they are included) (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: GameCenterEnabledVersionsResponse
     */
    @available(*, deprecated, message: "This operation is deprecated.")
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func gameCenterEnabledVersionsCompatibleVersionsGetToManyRelated(id: String, filterPlatform: [FilterPlatform_gameCenterEnabledVersionsCompatibleVersionsGetToManyRelated]? = nil, filterVersionString: [String]? = nil, filterApp: [String]? = nil, filterId: [String]? = nil, sort: [Sort_gameCenterEnabledVersionsCompatibleVersionsGetToManyRelated]? = nil, fieldsGameCenterEnabledVersions: [FieldsGameCenterEnabledVersions_gameCenterEnabledVersionsCompatibleVersionsGetToManyRelated]? = nil, fieldsApps: [FieldsApps_gameCenterEnabledVersionsCompatibleVersionsGetToManyRelated]? = nil, limit: Int? = nil, include: [Include_gameCenterEnabledVersionsCompatibleVersionsGetToManyRelated]? = nil, limitCompatibleVersions: Int? = nil, apiConfiguration: ASCAPIConfiguration = ASCAPIConfiguration.shared) async throws(ErrorResponse) -> GameCenterEnabledVersionsResponse {
        return try await gameCenterEnabledVersionsCompatibleVersionsGetToManyRelatedWithRequestBuilder(id: id, filterPlatform: filterPlatform, filterVersionString: filterVersionString, filterApp: filterApp, filterId: filterId, sort: sort, fieldsGameCenterEnabledVersions: fieldsGameCenterEnabledVersions, fieldsApps: fieldsApps, limit: limit, include: include, limitCompatibleVersions: limitCompatibleVersions, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     - parameter urlString: next or first url from App Store Connect API
     - parameter apiConfiguration: The configuration for the http request.
     - returns: GameCenterEnabledVersionsResponse
     */
    @available(*, deprecated, message: "This operation is deprecated.")
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func gameCenterEnabledVersionsCompatibleVersionsGetToManyRelated(urlString: String, apiConfiguration: ASCAPIConfiguration = ASCAPIConfiguration.shared) async throws(ErrorResponse) -> GameCenterEnabledVersionsResponse {
        return try await gameCenterEnabledVersionsCompatibleVersionsGetToManyRelatedWithRequestBuilder(urlString: urlString, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     - GET /v1/gameCenterEnabledVersions/{id}/compatibleVersions
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter id: (path) the id of the requested resource 
     - parameter filterPlatform: (query) filter by attribute &#39;platform&#39; (optional)
     - parameter filterVersionString: (query) filter by attribute &#39;versionString&#39; (optional)
     - parameter filterApp: (query) filter by id(s) of related &#39;app&#39; (optional)
     - parameter filterId: (query) filter by id(s) (optional)
     - parameter sort: (query) comma-separated list of sort expressions; resources will be sorted as specified (optional)
     - parameter fieldsGameCenterEnabledVersions: (query) the fields to include for returned resources of type gameCenterEnabledVersions (optional)
     - parameter fieldsApps: (query) the fields to include for returned resources of type apps (optional)
     - parameter limit: (query) maximum resources per page (optional)
     - parameter include: (query) comma-separated list of relationships to include (optional)
     - parameter limitCompatibleVersions: (query) maximum number of related compatibleVersions returned (when they are included) (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<GameCenterEnabledVersionsResponse> 
     */
    @available(*, deprecated, message: "This operation is deprecated.")
    open class func gameCenterEnabledVersionsCompatibleVersionsGetToManyRelatedWithRequestBuilder(id: String, filterPlatform: [FilterPlatform_gameCenterEnabledVersionsCompatibleVersionsGetToManyRelated]? = nil, filterVersionString: [String]? = nil, filterApp: [String]? = nil, filterId: [String]? = nil, sort: [Sort_gameCenterEnabledVersionsCompatibleVersionsGetToManyRelated]? = nil, fieldsGameCenterEnabledVersions: [FieldsGameCenterEnabledVersions_gameCenterEnabledVersionsCompatibleVersionsGetToManyRelated]? = nil, fieldsApps: [FieldsApps_gameCenterEnabledVersionsCompatibleVersionsGetToManyRelated]? = nil, limit: Int? = nil, include: [Include_gameCenterEnabledVersionsCompatibleVersionsGetToManyRelated]? = nil, limitCompatibleVersions: Int? = nil, apiConfiguration: ASCAPIConfiguration = ASCAPIConfiguration.shared) -> RequestBuilder<GameCenterEnabledVersionsResponse> {
        var localVariablePath = "/v1/gameCenterEnabledVersions/{id}/compatibleVersions"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "filter[platform]": (wrappedValue: filterPlatform?.encodeToJSON(codableHelper: apiConfiguration.codableHelper), isExplode: false),
            "filter[versionString]": (wrappedValue: filterVersionString?.encodeToJSON(codableHelper: apiConfiguration.codableHelper), isExplode: false),
            "filter[app]": (wrappedValue: filterApp?.encodeToJSON(codableHelper: apiConfiguration.codableHelper), isExplode: false),
            "filter[id]": (wrappedValue: filterId?.encodeToJSON(codableHelper: apiConfiguration.codableHelper), isExplode: false),
            "sort": (wrappedValue: sort?.encodeToJSON(codableHelper: apiConfiguration.codableHelper), isExplode: false),
            "fields[gameCenterEnabledVersions]": (wrappedValue: fieldsGameCenterEnabledVersions?.encodeToJSON(codableHelper: apiConfiguration.codableHelper), isExplode: false),
            "fields[apps]": (wrappedValue: fieldsApps?.encodeToJSON(codableHelper: apiConfiguration.codableHelper), isExplode: false),
            "limit": (wrappedValue: limit?.encodeToJSON(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "include": (wrappedValue: include?.encodeToJSON(codableHelper: apiConfiguration.codableHelper), isExplode: false),
            "limit[compatibleVersions]": (wrappedValue: limitCompatibleVersions?.encodeToJSON(codableHelper: apiConfiguration.codableHelper), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<GameCenterEnabledVersionsResponse>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     - GET /v1/gameCenterEnabledVersions/{id}/compatibleVersions
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter urlString: next or first url from App Store Connect API
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<GameCenterEnabledVersionsResponse> 
     */
    @available(*, deprecated, message: "This operation is deprecated.")
    open class func gameCenterEnabledVersionsCompatibleVersionsGetToManyRelatedWithRequestBuilder(urlString: String, apiConfiguration: ASCAPIConfiguration = ASCAPIConfiguration.shared) -> RequestBuilder<GameCenterEnabledVersionsResponse> {
        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<GameCenterEnabledVersionsResponse>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: urlString, parameters: nil, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**

     - parameter id: (path) the id of the requested resource 
     - parameter limit: (query) maximum resources per page (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: GameCenterEnabledVersionCompatibleVersionsLinkagesResponse
     */
    @available(*, deprecated, message: "This operation is deprecated.")
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func gameCenterEnabledVersionsCompatibleVersionsGetToManyRelationship(id: String, limit: Int? = nil, apiConfiguration: ASCAPIConfiguration = ASCAPIConfiguration.shared) async throws(ErrorResponse) -> GameCenterEnabledVersionCompatibleVersionsLinkagesResponse {
        return try await gameCenterEnabledVersionsCompatibleVersionsGetToManyRelationshipWithRequestBuilder(id: id, limit: limit, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     - parameter urlString: next or first url from App Store Connect API
     - parameter apiConfiguration: The configuration for the http request.
     - returns: GameCenterEnabledVersionCompatibleVersionsLinkagesResponse
     */
    @available(*, deprecated, message: "This operation is deprecated.")
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func gameCenterEnabledVersionsCompatibleVersionsGetToManyRelationship(urlString: String, apiConfiguration: ASCAPIConfiguration = ASCAPIConfiguration.shared) async throws(ErrorResponse) -> GameCenterEnabledVersionCompatibleVersionsLinkagesResponse {
        return try await gameCenterEnabledVersionsCompatibleVersionsGetToManyRelationshipWithRequestBuilder(urlString: urlString, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     - GET /v1/gameCenterEnabledVersions/{id}/relationships/compatibleVersions
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter id: (path) the id of the requested resource 
     - parameter limit: (query) maximum resources per page (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<GameCenterEnabledVersionCompatibleVersionsLinkagesResponse> 
     */
    @available(*, deprecated, message: "This operation is deprecated.")
    open class func gameCenterEnabledVersionsCompatibleVersionsGetToManyRelationshipWithRequestBuilder(id: String, limit: Int? = nil, apiConfiguration: ASCAPIConfiguration = ASCAPIConfiguration.shared) -> RequestBuilder<GameCenterEnabledVersionCompatibleVersionsLinkagesResponse> {
        var localVariablePath = "/v1/gameCenterEnabledVersions/{id}/relationships/compatibleVersions"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "limit": (wrappedValue: limit?.encodeToJSON(codableHelper: apiConfiguration.codableHelper), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<GameCenterEnabledVersionCompatibleVersionsLinkagesResponse>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     - GET /v1/gameCenterEnabledVersions/{id}/relationships/compatibleVersions
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter urlString: next or first url from App Store Connect API
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<GameCenterEnabledVersionCompatibleVersionsLinkagesResponse> 
     */
    @available(*, deprecated, message: "This operation is deprecated.")
    open class func gameCenterEnabledVersionsCompatibleVersionsGetToManyRelationshipWithRequestBuilder(urlString: String, apiConfiguration: ASCAPIConfiguration = ASCAPIConfiguration.shared) -> RequestBuilder<GameCenterEnabledVersionCompatibleVersionsLinkagesResponse> {
        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<GameCenterEnabledVersionCompatibleVersionsLinkagesResponse>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: urlString, parameters: nil, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**

     - parameter id: (path) the id of the requested resource 
     - parameter gameCenterEnabledVersionCompatibleVersionsLinkagesRequest: (body) List of related linkages 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: Void
     */
    @available(*, deprecated, message: "This operation is deprecated.")
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func gameCenterEnabledVersionsCompatibleVersionsReplaceToManyRelationship(id: String, gameCenterEnabledVersionCompatibleVersionsLinkagesRequest: GameCenterEnabledVersionCompatibleVersionsLinkagesRequest, apiConfiguration: ASCAPIConfiguration = ASCAPIConfiguration.shared) async throws(ErrorResponse) {
        return try await gameCenterEnabledVersionsCompatibleVersionsReplaceToManyRelationshipWithRequestBuilder(id: id, gameCenterEnabledVersionCompatibleVersionsLinkagesRequest: gameCenterEnabledVersionCompatibleVersionsLinkagesRequest, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     - parameter urlString: next or first url from App Store Connect API
     - parameter apiConfiguration: The configuration for the http request.
     - returns: Void
     */
    @available(*, deprecated, message: "This operation is deprecated.")
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func gameCenterEnabledVersionsCompatibleVersionsReplaceToManyRelationship(urlString: String, apiConfiguration: ASCAPIConfiguration = ASCAPIConfiguration.shared) async throws(ErrorResponse) {
        return try await gameCenterEnabledVersionsCompatibleVersionsReplaceToManyRelationshipWithRequestBuilder(urlString: urlString, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     - PATCH /v1/gameCenterEnabledVersions/{id}/relationships/compatibleVersions
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter id: (path) the id of the requested resource 
     - parameter gameCenterEnabledVersionCompatibleVersionsLinkagesRequest: (body) List of related linkages 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<Void> 
     */
    @available(*, deprecated, message: "This operation is deprecated.")
    open class func gameCenterEnabledVersionsCompatibleVersionsReplaceToManyRelationshipWithRequestBuilder(id: String, gameCenterEnabledVersionCompatibleVersionsLinkagesRequest: GameCenterEnabledVersionCompatibleVersionsLinkagesRequest, apiConfiguration: ASCAPIConfiguration = ASCAPIConfiguration.shared) -> RequestBuilder<Void> {
        var localVariablePath = "/v1/gameCenterEnabledVersions/{id}/relationships/compatibleVersions"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: gameCenterEnabledVersionCompatibleVersionsLinkagesRequest, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            "Content-Type": "application/json",
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Void>.Type = apiConfiguration.requestBuilderFactory.getNonDecodableBuilder()

        return localVariableRequestBuilder.init(method: "PATCH", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     - PATCH /v1/gameCenterEnabledVersions/{id}/relationships/compatibleVersions
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter urlString: next or first url from App Store Connect API
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<Void> 
     */
    @available(*, deprecated, message: "This operation is deprecated.")
    open class func gameCenterEnabledVersionsCompatibleVersionsReplaceToManyRelationshipWithRequestBuilder(urlString: String, apiConfiguration: ASCAPIConfiguration = ASCAPIConfiguration.shared) -> RequestBuilder<Void> {
        let localVariableNillableHeaders: [String: Any?] = [
            "Content-Type": "application/json",
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Void>.Type = apiConfiguration.requestBuilderFactory.getNonDecodableBuilder()

        return localVariableRequestBuilder.init(method: "PATCH", URLString: urlString, parameters: nil, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }
}
