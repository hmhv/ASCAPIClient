//
// BetaAppReviewDetailsAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

open class BetaAppReviewDetailsAPI {

    /**
     * enum for parameter fieldsApps
     */
    public enum FieldsApps_betaAppReviewDetailsAppGetToOneRelated: String, Sendable, CaseIterable {
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

     - parameter id: (path) the id of the requested resource 
     - parameter fieldsApps: (query) the fields to include for returned resources of type apps (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: AppWithoutIncludesResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func betaAppReviewDetailsAppGetToOneRelated(id: String, fieldsApps: [FieldsApps_betaAppReviewDetailsAppGetToOneRelated]? = nil, apiConfiguration: ASCAPIConfiguration = ASCAPIConfiguration.shared) async throws(ErrorResponse) -> AppWithoutIncludesResponse {
        return try await betaAppReviewDetailsAppGetToOneRelatedWithRequestBuilder(id: id, fieldsApps: fieldsApps, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     - parameter urlString: next or first url from App Store Connect API
     - parameter apiConfiguration: The configuration for the http request.
     - returns: AppWithoutIncludesResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func betaAppReviewDetailsAppGetToOneRelated(urlString: String, apiConfiguration: ASCAPIConfiguration = ASCAPIConfiguration.shared) async throws(ErrorResponse) -> AppWithoutIncludesResponse {
        return try await betaAppReviewDetailsAppGetToOneRelatedWithRequestBuilder(urlString: urlString, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     - GET /v1/betaAppReviewDetails/{id}/app
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter id: (path) the id of the requested resource 
     - parameter fieldsApps: (query) the fields to include for returned resources of type apps (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<AppWithoutIncludesResponse> 
     */
    open class func betaAppReviewDetailsAppGetToOneRelatedWithRequestBuilder(id: String, fieldsApps: [FieldsApps_betaAppReviewDetailsAppGetToOneRelated]? = nil, apiConfiguration: ASCAPIConfiguration = ASCAPIConfiguration.shared) -> RequestBuilder<AppWithoutIncludesResponse> {
        var localVariablePath = "/v1/betaAppReviewDetails/{id}/app"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "fields[apps]": (wrappedValue: fieldsApps?.encodeToJSON(codableHelper: apiConfiguration.codableHelper), isExplode: false),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AppWithoutIncludesResponse>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     - GET /v1/betaAppReviewDetails/{id}/app
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter urlString: next or first url from App Store Connect API
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<AppWithoutIncludesResponse> 
     */
    open class func betaAppReviewDetailsAppGetToOneRelatedWithRequestBuilder(urlString: String, apiConfiguration: ASCAPIConfiguration = ASCAPIConfiguration.shared) -> RequestBuilder<AppWithoutIncludesResponse> {
        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AppWithoutIncludesResponse>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: urlString, parameters: nil, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     * enum for parameter fieldsBetaAppReviewDetails
     */
    public enum FieldsBetaAppReviewDetails_betaAppReviewDetailsGetCollection: String, Sendable, CaseIterable {
        case contactfirstname = "contactFirstName"
        case contactlastname = "contactLastName"
        case contactphone = "contactPhone"
        case contactemail = "contactEmail"
        case demoaccountname = "demoAccountName"
        case demoaccountpassword = "demoAccountPassword"
        case demoaccountrequired = "demoAccountRequired"
        case notes = "notes"
        case app = "app"
    }

    /**
     * enum for parameter fieldsApps
     */
    public enum FieldsApps_betaAppReviewDetailsGetCollection: String, Sendable, CaseIterable {
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
    public enum Include_betaAppReviewDetailsGetCollection: String, Sendable, CaseIterable {
        case app = "app"
    }

    /**

     - parameter filterApp: (query) filter by id(s) of related &#39;app&#39; 
     - parameter fieldsBetaAppReviewDetails: (query) the fields to include for returned resources of type betaAppReviewDetails (optional)
     - parameter fieldsApps: (query) the fields to include for returned resources of type apps (optional)
     - parameter limit: (query) maximum resources per page (optional)
     - parameter include: (query) comma-separated list of relationships to include (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: BetaAppReviewDetailsResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func betaAppReviewDetailsGetCollection(filterApp: [String], fieldsBetaAppReviewDetails: [FieldsBetaAppReviewDetails_betaAppReviewDetailsGetCollection]? = nil, fieldsApps: [FieldsApps_betaAppReviewDetailsGetCollection]? = nil, limit: Int? = nil, include: [Include_betaAppReviewDetailsGetCollection]? = nil, apiConfiguration: ASCAPIConfiguration = ASCAPIConfiguration.shared) async throws(ErrorResponse) -> BetaAppReviewDetailsResponse {
        return try await betaAppReviewDetailsGetCollectionWithRequestBuilder(filterApp: filterApp, fieldsBetaAppReviewDetails: fieldsBetaAppReviewDetails, fieldsApps: fieldsApps, limit: limit, include: include, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     - parameter urlString: next or first url from App Store Connect API
     - parameter apiConfiguration: The configuration for the http request.
     - returns: BetaAppReviewDetailsResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func betaAppReviewDetailsGetCollection(urlString: String, apiConfiguration: ASCAPIConfiguration = ASCAPIConfiguration.shared) async throws(ErrorResponse) -> BetaAppReviewDetailsResponse {
        return try await betaAppReviewDetailsGetCollectionWithRequestBuilder(urlString: urlString, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     - GET /v1/betaAppReviewDetails
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter filterApp: (query) filter by id(s) of related &#39;app&#39; 
     - parameter fieldsBetaAppReviewDetails: (query) the fields to include for returned resources of type betaAppReviewDetails (optional)
     - parameter fieldsApps: (query) the fields to include for returned resources of type apps (optional)
     - parameter limit: (query) maximum resources per page (optional)
     - parameter include: (query) comma-separated list of relationships to include (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<BetaAppReviewDetailsResponse> 
     */
    open class func betaAppReviewDetailsGetCollectionWithRequestBuilder(filterApp: [String], fieldsBetaAppReviewDetails: [FieldsBetaAppReviewDetails_betaAppReviewDetailsGetCollection]? = nil, fieldsApps: [FieldsApps_betaAppReviewDetailsGetCollection]? = nil, limit: Int? = nil, include: [Include_betaAppReviewDetailsGetCollection]? = nil, apiConfiguration: ASCAPIConfiguration = ASCAPIConfiguration.shared) -> RequestBuilder<BetaAppReviewDetailsResponse> {
        let localVariablePath = "/v1/betaAppReviewDetails"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "filter[app]": (wrappedValue: filterApp.encodeToJSON(codableHelper: apiConfiguration.codableHelper), isExplode: false),
            "fields[betaAppReviewDetails]": (wrappedValue: fieldsBetaAppReviewDetails?.encodeToJSON(codableHelper: apiConfiguration.codableHelper), isExplode: false),
            "fields[apps]": (wrappedValue: fieldsApps?.encodeToJSON(codableHelper: apiConfiguration.codableHelper), isExplode: false),
            "limit": (wrappedValue: limit?.encodeToJSON(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "include": (wrappedValue: include?.encodeToJSON(codableHelper: apiConfiguration.codableHelper), isExplode: false),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<BetaAppReviewDetailsResponse>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     - GET /v1/betaAppReviewDetails
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter urlString: next or first url from App Store Connect API
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<BetaAppReviewDetailsResponse> 
     */
    open class func betaAppReviewDetailsGetCollectionWithRequestBuilder(urlString: String, apiConfiguration: ASCAPIConfiguration = ASCAPIConfiguration.shared) -> RequestBuilder<BetaAppReviewDetailsResponse> {
        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<BetaAppReviewDetailsResponse>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: urlString, parameters: nil, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     * enum for parameter fieldsBetaAppReviewDetails
     */
    public enum FieldsBetaAppReviewDetails_betaAppReviewDetailsGetInstance: String, Sendable, CaseIterable {
        case contactfirstname = "contactFirstName"
        case contactlastname = "contactLastName"
        case contactphone = "contactPhone"
        case contactemail = "contactEmail"
        case demoaccountname = "demoAccountName"
        case demoaccountpassword = "demoAccountPassword"
        case demoaccountrequired = "demoAccountRequired"
        case notes = "notes"
        case app = "app"
    }

    /**
     * enum for parameter fieldsApps
     */
    public enum FieldsApps_betaAppReviewDetailsGetInstance: String, Sendable, CaseIterable {
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
    public enum Include_betaAppReviewDetailsGetInstance: String, Sendable, CaseIterable {
        case app = "app"
    }

    /**

     - parameter id: (path) the id of the requested resource 
     - parameter fieldsBetaAppReviewDetails: (query) the fields to include for returned resources of type betaAppReviewDetails (optional)
     - parameter fieldsApps: (query) the fields to include for returned resources of type apps (optional)
     - parameter include: (query) comma-separated list of relationships to include (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: BetaAppReviewDetailResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func betaAppReviewDetailsGetInstance(id: String, fieldsBetaAppReviewDetails: [FieldsBetaAppReviewDetails_betaAppReviewDetailsGetInstance]? = nil, fieldsApps: [FieldsApps_betaAppReviewDetailsGetInstance]? = nil, include: [Include_betaAppReviewDetailsGetInstance]? = nil, apiConfiguration: ASCAPIConfiguration = ASCAPIConfiguration.shared) async throws(ErrorResponse) -> BetaAppReviewDetailResponse {
        return try await betaAppReviewDetailsGetInstanceWithRequestBuilder(id: id, fieldsBetaAppReviewDetails: fieldsBetaAppReviewDetails, fieldsApps: fieldsApps, include: include, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     - parameter urlString: next or first url from App Store Connect API
     - parameter apiConfiguration: The configuration for the http request.
     - returns: BetaAppReviewDetailResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func betaAppReviewDetailsGetInstance(urlString: String, apiConfiguration: ASCAPIConfiguration = ASCAPIConfiguration.shared) async throws(ErrorResponse) -> BetaAppReviewDetailResponse {
        return try await betaAppReviewDetailsGetInstanceWithRequestBuilder(urlString: urlString, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     - GET /v1/betaAppReviewDetails/{id}
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter id: (path) the id of the requested resource 
     - parameter fieldsBetaAppReviewDetails: (query) the fields to include for returned resources of type betaAppReviewDetails (optional)
     - parameter fieldsApps: (query) the fields to include for returned resources of type apps (optional)
     - parameter include: (query) comma-separated list of relationships to include (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<BetaAppReviewDetailResponse> 
     */
    open class func betaAppReviewDetailsGetInstanceWithRequestBuilder(id: String, fieldsBetaAppReviewDetails: [FieldsBetaAppReviewDetails_betaAppReviewDetailsGetInstance]? = nil, fieldsApps: [FieldsApps_betaAppReviewDetailsGetInstance]? = nil, include: [Include_betaAppReviewDetailsGetInstance]? = nil, apiConfiguration: ASCAPIConfiguration = ASCAPIConfiguration.shared) -> RequestBuilder<BetaAppReviewDetailResponse> {
        var localVariablePath = "/v1/betaAppReviewDetails/{id}"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "fields[betaAppReviewDetails]": (wrappedValue: fieldsBetaAppReviewDetails?.encodeToJSON(codableHelper: apiConfiguration.codableHelper), isExplode: false),
            "fields[apps]": (wrappedValue: fieldsApps?.encodeToJSON(codableHelper: apiConfiguration.codableHelper), isExplode: false),
            "include": (wrappedValue: include?.encodeToJSON(codableHelper: apiConfiguration.codableHelper), isExplode: false),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<BetaAppReviewDetailResponse>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     - GET /v1/betaAppReviewDetails/{id}
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter urlString: next or first url from App Store Connect API
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<BetaAppReviewDetailResponse> 
     */
    open class func betaAppReviewDetailsGetInstanceWithRequestBuilder(urlString: String, apiConfiguration: ASCAPIConfiguration = ASCAPIConfiguration.shared) -> RequestBuilder<BetaAppReviewDetailResponse> {
        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<BetaAppReviewDetailResponse>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: urlString, parameters: nil, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**

     - parameter id: (path) the id of the requested resource 
     - parameter betaAppReviewDetailUpdateRequest: (body) BetaAppReviewDetail representation 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: BetaAppReviewDetailResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func betaAppReviewDetailsUpdateInstance(id: String, betaAppReviewDetailUpdateRequest: BetaAppReviewDetailUpdateRequest, apiConfiguration: ASCAPIConfiguration = ASCAPIConfiguration.shared) async throws(ErrorResponse) -> BetaAppReviewDetailResponse {
        return try await betaAppReviewDetailsUpdateInstanceWithRequestBuilder(id: id, betaAppReviewDetailUpdateRequest: betaAppReviewDetailUpdateRequest, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     - parameter urlString: next or first url from App Store Connect API
     - parameter apiConfiguration: The configuration for the http request.
     - returns: BetaAppReviewDetailResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func betaAppReviewDetailsUpdateInstance(urlString: String, apiConfiguration: ASCAPIConfiguration = ASCAPIConfiguration.shared) async throws(ErrorResponse) -> BetaAppReviewDetailResponse {
        return try await betaAppReviewDetailsUpdateInstanceWithRequestBuilder(urlString: urlString, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     - PATCH /v1/betaAppReviewDetails/{id}
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter id: (path) the id of the requested resource 
     - parameter betaAppReviewDetailUpdateRequest: (body) BetaAppReviewDetail representation 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<BetaAppReviewDetailResponse> 
     */
    open class func betaAppReviewDetailsUpdateInstanceWithRequestBuilder(id: String, betaAppReviewDetailUpdateRequest: BetaAppReviewDetailUpdateRequest, apiConfiguration: ASCAPIConfiguration = ASCAPIConfiguration.shared) -> RequestBuilder<BetaAppReviewDetailResponse> {
        var localVariablePath = "/v1/betaAppReviewDetails/{id}"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: betaAppReviewDetailUpdateRequest, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            "Content-Type": "application/json",
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<BetaAppReviewDetailResponse>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PATCH", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     - PATCH /v1/betaAppReviewDetails/{id}
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter urlString: next or first url from App Store Connect API
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<BetaAppReviewDetailResponse> 
     */
    open class func betaAppReviewDetailsUpdateInstanceWithRequestBuilder(urlString: String, apiConfiguration: ASCAPIConfiguration = ASCAPIConfiguration.shared) -> RequestBuilder<BetaAppReviewDetailResponse> {
        let localVariableNillableHeaders: [String: Any?] = [
            "Content-Type": "application/json",
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<BetaAppReviewDetailResponse>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PATCH", URLString: urlString, parameters: nil, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }
}
