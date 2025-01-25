//
// BetaAppLocalizationsAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

open class BetaAppLocalizationsAPI {

    /**
     * enum for parameter fieldsApps
     */
    public enum FieldsApps_betaAppLocalizationsAppGetToOneRelated: String, CaseIterable {
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
     - returns: AppWithoutIncludesResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func betaAppLocalizationsAppGetToOneRelated(id: String, fieldsApps: [FieldsApps_betaAppLocalizationsAppGetToOneRelated]? = nil) async throws -> AppWithoutIncludesResponse {
        return try await betaAppLocalizationsAppGetToOneRelatedWithRequestBuilder(id: id, fieldsApps: fieldsApps).execute().body
    }

    /**
     - parameter urlString: next or first url from App Store Connect API
     - returns: AppWithoutIncludesResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func betaAppLocalizationsAppGetToOneRelated(urlString: String) async throws -> AppWithoutIncludesResponse {
        return try await betaAppLocalizationsAppGetToOneRelatedWithRequestBuilder(urlString: urlString).execute().body
    }

    /**
     - GET /v1/betaAppLocalizations/{id}/app
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter id: (path) the id of the requested resource 
     - parameter fieldsApps: (query) the fields to include for returned resources of type apps (optional)
     - returns: RequestBuilder<AppWithoutIncludesResponse> 
     */
    open class func betaAppLocalizationsAppGetToOneRelatedWithRequestBuilder(id: String, fieldsApps: [FieldsApps_betaAppLocalizationsAppGetToOneRelated]? = nil) -> RequestBuilder<AppWithoutIncludesResponse> {
        var localVariablePath = "/v1/betaAppLocalizations/{id}/app"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = ASCAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "fields[apps]": (wrappedValue: fieldsApps?.encodeToJSON(), isExplode: false),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AppWithoutIncludesResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     - GET /v1/betaAppLocalizations/{id}/app
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter urlString: next or first url from App Store Connect API
     - returns: RequestBuilder<AppWithoutIncludesResponse> 
     */
    open class func betaAppLocalizationsAppGetToOneRelatedWithRequestBuilder(urlString: String) -> RequestBuilder<AppWithoutIncludesResponse> {
        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AppWithoutIncludesResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: urlString, parameters: nil, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**

     - parameter betaAppLocalizationCreateRequest: (body) BetaAppLocalization representation 
     - returns: BetaAppLocalizationResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func betaAppLocalizationsCreateInstance(betaAppLocalizationCreateRequest: BetaAppLocalizationCreateRequest) async throws -> BetaAppLocalizationResponse {
        return try await betaAppLocalizationsCreateInstanceWithRequestBuilder(betaAppLocalizationCreateRequest: betaAppLocalizationCreateRequest).execute().body
    }

    /**
     - parameter urlString: next or first url from App Store Connect API
     - returns: BetaAppLocalizationResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func betaAppLocalizationsCreateInstance(urlString: String) async throws -> BetaAppLocalizationResponse {
        return try await betaAppLocalizationsCreateInstanceWithRequestBuilder(urlString: urlString).execute().body
    }

    /**
     - POST /v1/betaAppLocalizations
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter betaAppLocalizationCreateRequest: (body) BetaAppLocalization representation 
     - returns: RequestBuilder<BetaAppLocalizationResponse> 
     */
    open class func betaAppLocalizationsCreateInstanceWithRequestBuilder(betaAppLocalizationCreateRequest: BetaAppLocalizationCreateRequest) -> RequestBuilder<BetaAppLocalizationResponse> {
        let localVariablePath = "/v1/betaAppLocalizations"
        let localVariableURLString = ASCAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: betaAppLocalizationCreateRequest)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            "Content-Type": "application/json",
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<BetaAppLocalizationResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     - POST /v1/betaAppLocalizations
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter urlString: next or first url from App Store Connect API
     - returns: RequestBuilder<BetaAppLocalizationResponse> 
     */
    open class func betaAppLocalizationsCreateInstanceWithRequestBuilder(urlString: String) -> RequestBuilder<BetaAppLocalizationResponse> {
        let localVariableNillableHeaders: [String: Any?] = [
            "Content-Type": "application/json",
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<BetaAppLocalizationResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: urlString, parameters: nil, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**

     - parameter id: (path) the id of the requested resource 
     - returns: Void
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func betaAppLocalizationsDeleteInstance(id: String) async throws {
        return try await betaAppLocalizationsDeleteInstanceWithRequestBuilder(id: id).execute().body
    }

    /**
     - parameter urlString: next or first url from App Store Connect API
     - returns: Void
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func betaAppLocalizationsDeleteInstance(urlString: String) async throws {
        return try await betaAppLocalizationsDeleteInstanceWithRequestBuilder(urlString: urlString).execute().body
    }

    /**
     - DELETE /v1/betaAppLocalizations/{id}
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter id: (path) the id of the requested resource 
     - returns: RequestBuilder<Void> 
     */
    open class func betaAppLocalizationsDeleteInstanceWithRequestBuilder(id: String) -> RequestBuilder<Void> {
        var localVariablePath = "/v1/betaAppLocalizations/{id}"
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
     - DELETE /v1/betaAppLocalizations/{id}
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter urlString: next or first url from App Store Connect API
     - returns: RequestBuilder<Void> 
     */
    open class func betaAppLocalizationsDeleteInstanceWithRequestBuilder(urlString: String) -> RequestBuilder<Void> {
        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Void>.Type = ASCAPI.requestBuilderFactory.getNonDecodableBuilder()

        return localVariableRequestBuilder.init(method: "DELETE", URLString: urlString, parameters: nil, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     * enum for parameter fieldsBetaAppLocalizations
     */
    public enum FieldsBetaAppLocalizations_betaAppLocalizationsGetCollection: String, CaseIterable {
        case feedbackemail = "feedbackEmail"
        case marketingurl = "marketingUrl"
        case privacypolicyurl = "privacyPolicyUrl"
        case tvosprivacypolicy = "tvOsPrivacyPolicy"
        case description = "description"
        case locale = "locale"
        case app = "app"
    }

    /**
     * enum for parameter fieldsApps
     */
    public enum FieldsApps_betaAppLocalizationsGetCollection: String, CaseIterable {
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
    public enum Include_betaAppLocalizationsGetCollection: String, CaseIterable {
        case app = "app"
    }

    /**

     - parameter filterLocale: (query) filter by attribute &#39;locale&#39; (optional)
     - parameter filterApp: (query) filter by id(s) of related &#39;app&#39; (optional)
     - parameter fieldsBetaAppLocalizations: (query) the fields to include for returned resources of type betaAppLocalizations (optional)
     - parameter fieldsApps: (query) the fields to include for returned resources of type apps (optional)
     - parameter limit: (query) maximum resources per page (optional)
     - parameter include: (query) comma-separated list of relationships to include (optional)
     - returns: BetaAppLocalizationsResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func betaAppLocalizationsGetCollection(filterLocale: [String]? = nil, filterApp: [String]? = nil, fieldsBetaAppLocalizations: [FieldsBetaAppLocalizations_betaAppLocalizationsGetCollection]? = nil, fieldsApps: [FieldsApps_betaAppLocalizationsGetCollection]? = nil, limit: Int? = nil, include: [Include_betaAppLocalizationsGetCollection]? = nil) async throws -> BetaAppLocalizationsResponse {
        return try await betaAppLocalizationsGetCollectionWithRequestBuilder(filterLocale: filterLocale, filterApp: filterApp, fieldsBetaAppLocalizations: fieldsBetaAppLocalizations, fieldsApps: fieldsApps, limit: limit, include: include).execute().body
    }

    /**
     - parameter urlString: next or first url from App Store Connect API
     - returns: BetaAppLocalizationsResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func betaAppLocalizationsGetCollection(urlString: String) async throws -> BetaAppLocalizationsResponse {
        return try await betaAppLocalizationsGetCollectionWithRequestBuilder(urlString: urlString).execute().body
    }

    /**
     - GET /v1/betaAppLocalizations
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter filterLocale: (query) filter by attribute &#39;locale&#39; (optional)
     - parameter filterApp: (query) filter by id(s) of related &#39;app&#39; (optional)
     - parameter fieldsBetaAppLocalizations: (query) the fields to include for returned resources of type betaAppLocalizations (optional)
     - parameter fieldsApps: (query) the fields to include for returned resources of type apps (optional)
     - parameter limit: (query) maximum resources per page (optional)
     - parameter include: (query) comma-separated list of relationships to include (optional)
     - returns: RequestBuilder<BetaAppLocalizationsResponse> 
     */
    open class func betaAppLocalizationsGetCollectionWithRequestBuilder(filterLocale: [String]? = nil, filterApp: [String]? = nil, fieldsBetaAppLocalizations: [FieldsBetaAppLocalizations_betaAppLocalizationsGetCollection]? = nil, fieldsApps: [FieldsApps_betaAppLocalizationsGetCollection]? = nil, limit: Int? = nil, include: [Include_betaAppLocalizationsGetCollection]? = nil) -> RequestBuilder<BetaAppLocalizationsResponse> {
        let localVariablePath = "/v1/betaAppLocalizations"
        let localVariableURLString = ASCAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "filter[locale]": (wrappedValue: filterLocale?.encodeToJSON(), isExplode: false),
            "filter[app]": (wrappedValue: filterApp?.encodeToJSON(), isExplode: false),
            "fields[betaAppLocalizations]": (wrappedValue: fieldsBetaAppLocalizations?.encodeToJSON(), isExplode: false),
            "fields[apps]": (wrappedValue: fieldsApps?.encodeToJSON(), isExplode: false),
            "limit": (wrappedValue: limit?.encodeToJSON(), isExplode: true),
            "include": (wrappedValue: include?.encodeToJSON(), isExplode: false),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<BetaAppLocalizationsResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     - GET /v1/betaAppLocalizations
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter urlString: next or first url from App Store Connect API
     - returns: RequestBuilder<BetaAppLocalizationsResponse> 
     */
    open class func betaAppLocalizationsGetCollectionWithRequestBuilder(urlString: String) -> RequestBuilder<BetaAppLocalizationsResponse> {
        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<BetaAppLocalizationsResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: urlString, parameters: nil, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     * enum for parameter fieldsBetaAppLocalizations
     */
    public enum FieldsBetaAppLocalizations_betaAppLocalizationsGetInstance: String, CaseIterable {
        case feedbackemail = "feedbackEmail"
        case marketingurl = "marketingUrl"
        case privacypolicyurl = "privacyPolicyUrl"
        case tvosprivacypolicy = "tvOsPrivacyPolicy"
        case description = "description"
        case locale = "locale"
        case app = "app"
    }

    /**
     * enum for parameter fieldsApps
     */
    public enum FieldsApps_betaAppLocalizationsGetInstance: String, CaseIterable {
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
    public enum Include_betaAppLocalizationsGetInstance: String, CaseIterable {
        case app = "app"
    }

    /**

     - parameter id: (path) the id of the requested resource 
     - parameter fieldsBetaAppLocalizations: (query) the fields to include for returned resources of type betaAppLocalizations (optional)
     - parameter fieldsApps: (query) the fields to include for returned resources of type apps (optional)
     - parameter include: (query) comma-separated list of relationships to include (optional)
     - returns: BetaAppLocalizationResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func betaAppLocalizationsGetInstance(id: String, fieldsBetaAppLocalizations: [FieldsBetaAppLocalizations_betaAppLocalizationsGetInstance]? = nil, fieldsApps: [FieldsApps_betaAppLocalizationsGetInstance]? = nil, include: [Include_betaAppLocalizationsGetInstance]? = nil) async throws -> BetaAppLocalizationResponse {
        return try await betaAppLocalizationsGetInstanceWithRequestBuilder(id: id, fieldsBetaAppLocalizations: fieldsBetaAppLocalizations, fieldsApps: fieldsApps, include: include).execute().body
    }

    /**
     - parameter urlString: next or first url from App Store Connect API
     - returns: BetaAppLocalizationResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func betaAppLocalizationsGetInstance(urlString: String) async throws -> BetaAppLocalizationResponse {
        return try await betaAppLocalizationsGetInstanceWithRequestBuilder(urlString: urlString).execute().body
    }

    /**
     - GET /v1/betaAppLocalizations/{id}
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter id: (path) the id of the requested resource 
     - parameter fieldsBetaAppLocalizations: (query) the fields to include for returned resources of type betaAppLocalizations (optional)
     - parameter fieldsApps: (query) the fields to include for returned resources of type apps (optional)
     - parameter include: (query) comma-separated list of relationships to include (optional)
     - returns: RequestBuilder<BetaAppLocalizationResponse> 
     */
    open class func betaAppLocalizationsGetInstanceWithRequestBuilder(id: String, fieldsBetaAppLocalizations: [FieldsBetaAppLocalizations_betaAppLocalizationsGetInstance]? = nil, fieldsApps: [FieldsApps_betaAppLocalizationsGetInstance]? = nil, include: [Include_betaAppLocalizationsGetInstance]? = nil) -> RequestBuilder<BetaAppLocalizationResponse> {
        var localVariablePath = "/v1/betaAppLocalizations/{id}"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = ASCAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "fields[betaAppLocalizations]": (wrappedValue: fieldsBetaAppLocalizations?.encodeToJSON(), isExplode: false),
            "fields[apps]": (wrappedValue: fieldsApps?.encodeToJSON(), isExplode: false),
            "include": (wrappedValue: include?.encodeToJSON(), isExplode: false),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<BetaAppLocalizationResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     - GET /v1/betaAppLocalizations/{id}
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter urlString: next or first url from App Store Connect API
     - returns: RequestBuilder<BetaAppLocalizationResponse> 
     */
    open class func betaAppLocalizationsGetInstanceWithRequestBuilder(urlString: String) -> RequestBuilder<BetaAppLocalizationResponse> {
        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<BetaAppLocalizationResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: urlString, parameters: nil, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**

     - parameter id: (path) the id of the requested resource 
     - parameter betaAppLocalizationUpdateRequest: (body) BetaAppLocalization representation 
     - returns: BetaAppLocalizationResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func betaAppLocalizationsUpdateInstance(id: String, betaAppLocalizationUpdateRequest: BetaAppLocalizationUpdateRequest) async throws -> BetaAppLocalizationResponse {
        return try await betaAppLocalizationsUpdateInstanceWithRequestBuilder(id: id, betaAppLocalizationUpdateRequest: betaAppLocalizationUpdateRequest).execute().body
    }

    /**
     - parameter urlString: next or first url from App Store Connect API
     - returns: BetaAppLocalizationResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func betaAppLocalizationsUpdateInstance(urlString: String) async throws -> BetaAppLocalizationResponse {
        return try await betaAppLocalizationsUpdateInstanceWithRequestBuilder(urlString: urlString).execute().body
    }

    /**
     - PATCH /v1/betaAppLocalizations/{id}
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter id: (path) the id of the requested resource 
     - parameter betaAppLocalizationUpdateRequest: (body) BetaAppLocalization representation 
     - returns: RequestBuilder<BetaAppLocalizationResponse> 
     */
    open class func betaAppLocalizationsUpdateInstanceWithRequestBuilder(id: String, betaAppLocalizationUpdateRequest: BetaAppLocalizationUpdateRequest) -> RequestBuilder<BetaAppLocalizationResponse> {
        var localVariablePath = "/v1/betaAppLocalizations/{id}"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = ASCAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: betaAppLocalizationUpdateRequest)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            "Content-Type": "application/json",
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<BetaAppLocalizationResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PATCH", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     - PATCH /v1/betaAppLocalizations/{id}
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter urlString: next or first url from App Store Connect API
     - returns: RequestBuilder<BetaAppLocalizationResponse> 
     */
    open class func betaAppLocalizationsUpdateInstanceWithRequestBuilder(urlString: String) -> RequestBuilder<BetaAppLocalizationResponse> {
        let localVariableNillableHeaders: [String: Any?] = [
            "Content-Type": "application/json",
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<BetaAppLocalizationResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PATCH", URLString: urlString, parameters: nil, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }
}
