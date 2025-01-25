//
// PreReleaseVersionsAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

open class PreReleaseVersionsAPI {

    /**
     * enum for parameter fieldsApps
     */
    public enum FieldsApps_preReleaseVersionsAppGetToOneRelated: String, CaseIterable {
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
    open class func preReleaseVersionsAppGetToOneRelated(id: String, fieldsApps: [FieldsApps_preReleaseVersionsAppGetToOneRelated]? = nil) async throws -> AppWithoutIncludesResponse {
        return try await preReleaseVersionsAppGetToOneRelatedWithRequestBuilder(id: id, fieldsApps: fieldsApps).execute().body
    }

    /**
     - parameter urlString: next or first url from App Store Connect API
     - returns: AppWithoutIncludesResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func preReleaseVersionsAppGetToOneRelated(urlString: String) async throws -> AppWithoutIncludesResponse {
        return try await preReleaseVersionsAppGetToOneRelatedWithRequestBuilder(urlString: urlString).execute().body
    }

    /**
     - GET /v1/preReleaseVersions/{id}/app
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter id: (path) the id of the requested resource 
     - parameter fieldsApps: (query) the fields to include for returned resources of type apps (optional)
     - returns: RequestBuilder<AppWithoutIncludesResponse> 
     */
    open class func preReleaseVersionsAppGetToOneRelatedWithRequestBuilder(id: String, fieldsApps: [FieldsApps_preReleaseVersionsAppGetToOneRelated]? = nil) -> RequestBuilder<AppWithoutIncludesResponse> {
        var localVariablePath = "/v1/preReleaseVersions/{id}/app"
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
     - GET /v1/preReleaseVersions/{id}/app
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter urlString: next or first url from App Store Connect API
     - returns: RequestBuilder<AppWithoutIncludesResponse> 
     */
    open class func preReleaseVersionsAppGetToOneRelatedWithRequestBuilder(urlString: String) -> RequestBuilder<AppWithoutIncludesResponse> {
        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AppWithoutIncludesResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: urlString, parameters: nil, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     * enum for parameter fieldsBuilds
     */
    public enum FieldsBuilds_preReleaseVersionsBuildsGetToManyRelated: String, CaseIterable {
        case version = "version"
        case uploadeddate = "uploadedDate"
        case expirationdate = "expirationDate"
        case expired = "expired"
        case minosversion = "minOsVersion"
        case lsminimumsystemversion = "lsMinimumSystemVersion"
        case computedminmacosversion = "computedMinMacOsVersion"
        case iconassettoken = "iconAssetToken"
        case processingstate = "processingState"
        case buildaudiencetype = "buildAudienceType"
        case usesnonexemptencryption = "usesNonExemptEncryption"
        case prereleaseversion = "preReleaseVersion"
        case individualtesters = "individualTesters"
        case betagroups = "betaGroups"
        case betabuildlocalizations = "betaBuildLocalizations"
        case appencryptiondeclaration = "appEncryptionDeclaration"
        case betaappreviewsubmission = "betaAppReviewSubmission"
        case app = "app"
        case buildbetadetail = "buildBetaDetail"
        case appstoreversion = "appStoreVersion"
        case icons = "icons"
        case buildbundles = "buildBundles"
        case perfpowermetrics = "perfPowerMetrics"
        case diagnosticsignatures = "diagnosticSignatures"
    }

    /**

     - parameter id: (path) the id of the requested resource 
     - parameter fieldsBuilds: (query) the fields to include for returned resources of type builds (optional)
     - parameter limit: (query) maximum resources per page (optional)
     - returns: BuildsWithoutIncludesResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func preReleaseVersionsBuildsGetToManyRelated(id: String, fieldsBuilds: [FieldsBuilds_preReleaseVersionsBuildsGetToManyRelated]? = nil, limit: Int? = nil) async throws -> BuildsWithoutIncludesResponse {
        return try await preReleaseVersionsBuildsGetToManyRelatedWithRequestBuilder(id: id, fieldsBuilds: fieldsBuilds, limit: limit).execute().body
    }

    /**
     - parameter urlString: next or first url from App Store Connect API
     - returns: BuildsWithoutIncludesResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func preReleaseVersionsBuildsGetToManyRelated(urlString: String) async throws -> BuildsWithoutIncludesResponse {
        return try await preReleaseVersionsBuildsGetToManyRelatedWithRequestBuilder(urlString: urlString).execute().body
    }

    /**
     - GET /v1/preReleaseVersions/{id}/builds
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter id: (path) the id of the requested resource 
     - parameter fieldsBuilds: (query) the fields to include for returned resources of type builds (optional)
     - parameter limit: (query) maximum resources per page (optional)
     - returns: RequestBuilder<BuildsWithoutIncludesResponse> 
     */
    open class func preReleaseVersionsBuildsGetToManyRelatedWithRequestBuilder(id: String, fieldsBuilds: [FieldsBuilds_preReleaseVersionsBuildsGetToManyRelated]? = nil, limit: Int? = nil) -> RequestBuilder<BuildsWithoutIncludesResponse> {
        var localVariablePath = "/v1/preReleaseVersions/{id}/builds"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = ASCAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "fields[builds]": (wrappedValue: fieldsBuilds?.encodeToJSON(), isExplode: false),
            "limit": (wrappedValue: limit?.encodeToJSON(), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<BuildsWithoutIncludesResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     - GET /v1/preReleaseVersions/{id}/builds
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter urlString: next or first url from App Store Connect API
     - returns: RequestBuilder<BuildsWithoutIncludesResponse> 
     */
    open class func preReleaseVersionsBuildsGetToManyRelatedWithRequestBuilder(urlString: String) -> RequestBuilder<BuildsWithoutIncludesResponse> {
        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<BuildsWithoutIncludesResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: urlString, parameters: nil, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     * enum for parameter filterBuildsProcessingState
     */
    public enum FilterBuildsProcessingState_preReleaseVersionsGetCollection: String, CaseIterable {
        case processing = "PROCESSING"
        case failed = "FAILED"
        case invalid = "INVALID"
        case valid = "VALID"
    }

    /**
     * enum for parameter filterPlatform
     */
    public enum FilterPlatform_preReleaseVersionsGetCollection: String, CaseIterable {
        case ios = "IOS"
        case macOs = "MAC_OS"
        case tvOs = "TV_OS"
        case visionOs = "VISION_OS"
    }

    /**
     * enum for parameter sort
     */
    public enum Sort_preReleaseVersionsGetCollection: String, CaseIterable {
        case version = "version"
        case version2 = "-version"
    }

    /**
     * enum for parameter fieldsPreReleaseVersions
     */
    public enum FieldsPreReleaseVersions_preReleaseVersionsGetCollection: String, CaseIterable {
        case version = "version"
        case platform = "platform"
        case builds = "builds"
        case app = "app"
    }

    /**
     * enum for parameter fieldsBuilds
     */
    public enum FieldsBuilds_preReleaseVersionsGetCollection: String, CaseIterable {
        case version = "version"
        case uploadeddate = "uploadedDate"
        case expirationdate = "expirationDate"
        case expired = "expired"
        case minosversion = "minOsVersion"
        case lsminimumsystemversion = "lsMinimumSystemVersion"
        case computedminmacosversion = "computedMinMacOsVersion"
        case iconassettoken = "iconAssetToken"
        case processingstate = "processingState"
        case buildaudiencetype = "buildAudienceType"
        case usesnonexemptencryption = "usesNonExemptEncryption"
        case prereleaseversion = "preReleaseVersion"
        case individualtesters = "individualTesters"
        case betagroups = "betaGroups"
        case betabuildlocalizations = "betaBuildLocalizations"
        case appencryptiondeclaration = "appEncryptionDeclaration"
        case betaappreviewsubmission = "betaAppReviewSubmission"
        case app = "app"
        case buildbetadetail = "buildBetaDetail"
        case appstoreversion = "appStoreVersion"
        case icons = "icons"
        case buildbundles = "buildBundles"
        case perfpowermetrics = "perfPowerMetrics"
        case diagnosticsignatures = "diagnosticSignatures"
    }

    /**
     * enum for parameter fieldsApps
     */
    public enum FieldsApps_preReleaseVersionsGetCollection: String, CaseIterable {
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
    public enum Include_preReleaseVersionsGetCollection: String, CaseIterable {
        case builds = "builds"
        case app = "app"
    }

    /**

     - parameter filterBuildsExpired: (query) filter by attribute &#39;builds.expired&#39; (optional)
     - parameter filterBuildsProcessingState: (query) filter by attribute &#39;builds.processingState&#39; (optional)
     - parameter filterBuildsVersion: (query) filter by attribute &#39;builds.version&#39; (optional)
     - parameter filterPlatform: (query) filter by attribute &#39;platform&#39; (optional)
     - parameter filterVersion: (query) filter by attribute &#39;version&#39; (optional)
     - parameter filterApp: (query) filter by id(s) of related &#39;app&#39; (optional)
     - parameter filterBuilds: (query) filter by id(s) of related &#39;builds&#39; (optional)
     - parameter sort: (query) comma-separated list of sort expressions; resources will be sorted as specified (optional)
     - parameter fieldsPreReleaseVersions: (query) the fields to include for returned resources of type preReleaseVersions (optional)
     - parameter fieldsBuilds: (query) the fields to include for returned resources of type builds (optional)
     - parameter fieldsApps: (query) the fields to include for returned resources of type apps (optional)
     - parameter limit: (query) maximum resources per page (optional)
     - parameter include: (query) comma-separated list of relationships to include (optional)
     - parameter limitBuilds: (query) maximum number of related builds returned (when they are included) (optional)
     - returns: PreReleaseVersionsResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func preReleaseVersionsGetCollection(filterBuildsExpired: [String]? = nil, filterBuildsProcessingState: [FilterBuildsProcessingState_preReleaseVersionsGetCollection]? = nil, filterBuildsVersion: [String]? = nil, filterPlatform: [FilterPlatform_preReleaseVersionsGetCollection]? = nil, filterVersion: [String]? = nil, filterApp: [String]? = nil, filterBuilds: [String]? = nil, sort: [Sort_preReleaseVersionsGetCollection]? = nil, fieldsPreReleaseVersions: [FieldsPreReleaseVersions_preReleaseVersionsGetCollection]? = nil, fieldsBuilds: [FieldsBuilds_preReleaseVersionsGetCollection]? = nil, fieldsApps: [FieldsApps_preReleaseVersionsGetCollection]? = nil, limit: Int? = nil, include: [Include_preReleaseVersionsGetCollection]? = nil, limitBuilds: Int? = nil) async throws -> PreReleaseVersionsResponse {
        return try await preReleaseVersionsGetCollectionWithRequestBuilder(filterBuildsExpired: filterBuildsExpired, filterBuildsProcessingState: filterBuildsProcessingState, filterBuildsVersion: filterBuildsVersion, filterPlatform: filterPlatform, filterVersion: filterVersion, filterApp: filterApp, filterBuilds: filterBuilds, sort: sort, fieldsPreReleaseVersions: fieldsPreReleaseVersions, fieldsBuilds: fieldsBuilds, fieldsApps: fieldsApps, limit: limit, include: include, limitBuilds: limitBuilds).execute().body
    }

    /**
     - parameter urlString: next or first url from App Store Connect API
     - returns: PreReleaseVersionsResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func preReleaseVersionsGetCollection(urlString: String) async throws -> PreReleaseVersionsResponse {
        return try await preReleaseVersionsGetCollectionWithRequestBuilder(urlString: urlString).execute().body
    }

    /**
     - GET /v1/preReleaseVersions
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter filterBuildsExpired: (query) filter by attribute &#39;builds.expired&#39; (optional)
     - parameter filterBuildsProcessingState: (query) filter by attribute &#39;builds.processingState&#39; (optional)
     - parameter filterBuildsVersion: (query) filter by attribute &#39;builds.version&#39; (optional)
     - parameter filterPlatform: (query) filter by attribute &#39;platform&#39; (optional)
     - parameter filterVersion: (query) filter by attribute &#39;version&#39; (optional)
     - parameter filterApp: (query) filter by id(s) of related &#39;app&#39; (optional)
     - parameter filterBuilds: (query) filter by id(s) of related &#39;builds&#39; (optional)
     - parameter sort: (query) comma-separated list of sort expressions; resources will be sorted as specified (optional)
     - parameter fieldsPreReleaseVersions: (query) the fields to include for returned resources of type preReleaseVersions (optional)
     - parameter fieldsBuilds: (query) the fields to include for returned resources of type builds (optional)
     - parameter fieldsApps: (query) the fields to include for returned resources of type apps (optional)
     - parameter limit: (query) maximum resources per page (optional)
     - parameter include: (query) comma-separated list of relationships to include (optional)
     - parameter limitBuilds: (query) maximum number of related builds returned (when they are included) (optional)
     - returns: RequestBuilder<PreReleaseVersionsResponse> 
     */
    open class func preReleaseVersionsGetCollectionWithRequestBuilder(filterBuildsExpired: [String]? = nil, filterBuildsProcessingState: [FilterBuildsProcessingState_preReleaseVersionsGetCollection]? = nil, filterBuildsVersion: [String]? = nil, filterPlatform: [FilterPlatform_preReleaseVersionsGetCollection]? = nil, filterVersion: [String]? = nil, filterApp: [String]? = nil, filterBuilds: [String]? = nil, sort: [Sort_preReleaseVersionsGetCollection]? = nil, fieldsPreReleaseVersions: [FieldsPreReleaseVersions_preReleaseVersionsGetCollection]? = nil, fieldsBuilds: [FieldsBuilds_preReleaseVersionsGetCollection]? = nil, fieldsApps: [FieldsApps_preReleaseVersionsGetCollection]? = nil, limit: Int? = nil, include: [Include_preReleaseVersionsGetCollection]? = nil, limitBuilds: Int? = nil) -> RequestBuilder<PreReleaseVersionsResponse> {
        let localVariablePath = "/v1/preReleaseVersions"
        let localVariableURLString = ASCAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "filter[builds.expired]": (wrappedValue: filterBuildsExpired?.encodeToJSON(), isExplode: false),
            "filter[builds.processingState]": (wrappedValue: filterBuildsProcessingState?.encodeToJSON(), isExplode: false),
            "filter[builds.version]": (wrappedValue: filterBuildsVersion?.encodeToJSON(), isExplode: false),
            "filter[platform]": (wrappedValue: filterPlatform?.encodeToJSON(), isExplode: false),
            "filter[version]": (wrappedValue: filterVersion?.encodeToJSON(), isExplode: false),
            "filter[app]": (wrappedValue: filterApp?.encodeToJSON(), isExplode: false),
            "filter[builds]": (wrappedValue: filterBuilds?.encodeToJSON(), isExplode: false),
            "sort": (wrappedValue: sort?.encodeToJSON(), isExplode: false),
            "fields[preReleaseVersions]": (wrappedValue: fieldsPreReleaseVersions?.encodeToJSON(), isExplode: false),
            "fields[builds]": (wrappedValue: fieldsBuilds?.encodeToJSON(), isExplode: false),
            "fields[apps]": (wrappedValue: fieldsApps?.encodeToJSON(), isExplode: false),
            "limit": (wrappedValue: limit?.encodeToJSON(), isExplode: true),
            "include": (wrappedValue: include?.encodeToJSON(), isExplode: false),
            "limit[builds]": (wrappedValue: limitBuilds?.encodeToJSON(), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<PreReleaseVersionsResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     - GET /v1/preReleaseVersions
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter urlString: next or first url from App Store Connect API
     - returns: RequestBuilder<PreReleaseVersionsResponse> 
     */
    open class func preReleaseVersionsGetCollectionWithRequestBuilder(urlString: String) -> RequestBuilder<PreReleaseVersionsResponse> {
        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<PreReleaseVersionsResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: urlString, parameters: nil, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     * enum for parameter fieldsPreReleaseVersions
     */
    public enum FieldsPreReleaseVersions_preReleaseVersionsGetInstance: String, CaseIterable {
        case version = "version"
        case platform = "platform"
        case builds = "builds"
        case app = "app"
    }

    /**
     * enum for parameter fieldsBuilds
     */
    public enum FieldsBuilds_preReleaseVersionsGetInstance: String, CaseIterable {
        case version = "version"
        case uploadeddate = "uploadedDate"
        case expirationdate = "expirationDate"
        case expired = "expired"
        case minosversion = "minOsVersion"
        case lsminimumsystemversion = "lsMinimumSystemVersion"
        case computedminmacosversion = "computedMinMacOsVersion"
        case iconassettoken = "iconAssetToken"
        case processingstate = "processingState"
        case buildaudiencetype = "buildAudienceType"
        case usesnonexemptencryption = "usesNonExemptEncryption"
        case prereleaseversion = "preReleaseVersion"
        case individualtesters = "individualTesters"
        case betagroups = "betaGroups"
        case betabuildlocalizations = "betaBuildLocalizations"
        case appencryptiondeclaration = "appEncryptionDeclaration"
        case betaappreviewsubmission = "betaAppReviewSubmission"
        case app = "app"
        case buildbetadetail = "buildBetaDetail"
        case appstoreversion = "appStoreVersion"
        case icons = "icons"
        case buildbundles = "buildBundles"
        case perfpowermetrics = "perfPowerMetrics"
        case diagnosticsignatures = "diagnosticSignatures"
    }

    /**
     * enum for parameter fieldsApps
     */
    public enum FieldsApps_preReleaseVersionsGetInstance: String, CaseIterable {
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
    public enum Include_preReleaseVersionsGetInstance: String, CaseIterable {
        case builds = "builds"
        case app = "app"
    }

    /**

     - parameter id: (path) the id of the requested resource 
     - parameter fieldsPreReleaseVersions: (query) the fields to include for returned resources of type preReleaseVersions (optional)
     - parameter fieldsBuilds: (query) the fields to include for returned resources of type builds (optional)
     - parameter fieldsApps: (query) the fields to include for returned resources of type apps (optional)
     - parameter include: (query) comma-separated list of relationships to include (optional)
     - parameter limitBuilds: (query) maximum number of related builds returned (when they are included) (optional)
     - returns: PrereleaseVersionResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func preReleaseVersionsGetInstance(id: String, fieldsPreReleaseVersions: [FieldsPreReleaseVersions_preReleaseVersionsGetInstance]? = nil, fieldsBuilds: [FieldsBuilds_preReleaseVersionsGetInstance]? = nil, fieldsApps: [FieldsApps_preReleaseVersionsGetInstance]? = nil, include: [Include_preReleaseVersionsGetInstance]? = nil, limitBuilds: Int? = nil) async throws -> PrereleaseVersionResponse {
        return try await preReleaseVersionsGetInstanceWithRequestBuilder(id: id, fieldsPreReleaseVersions: fieldsPreReleaseVersions, fieldsBuilds: fieldsBuilds, fieldsApps: fieldsApps, include: include, limitBuilds: limitBuilds).execute().body
    }

    /**
     - parameter urlString: next or first url from App Store Connect API
     - returns: PrereleaseVersionResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func preReleaseVersionsGetInstance(urlString: String) async throws -> PrereleaseVersionResponse {
        return try await preReleaseVersionsGetInstanceWithRequestBuilder(urlString: urlString).execute().body
    }

    /**
     - GET /v1/preReleaseVersions/{id}
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter id: (path) the id of the requested resource 
     - parameter fieldsPreReleaseVersions: (query) the fields to include for returned resources of type preReleaseVersions (optional)
     - parameter fieldsBuilds: (query) the fields to include for returned resources of type builds (optional)
     - parameter fieldsApps: (query) the fields to include for returned resources of type apps (optional)
     - parameter include: (query) comma-separated list of relationships to include (optional)
     - parameter limitBuilds: (query) maximum number of related builds returned (when they are included) (optional)
     - returns: RequestBuilder<PrereleaseVersionResponse> 
     */
    open class func preReleaseVersionsGetInstanceWithRequestBuilder(id: String, fieldsPreReleaseVersions: [FieldsPreReleaseVersions_preReleaseVersionsGetInstance]? = nil, fieldsBuilds: [FieldsBuilds_preReleaseVersionsGetInstance]? = nil, fieldsApps: [FieldsApps_preReleaseVersionsGetInstance]? = nil, include: [Include_preReleaseVersionsGetInstance]? = nil, limitBuilds: Int? = nil) -> RequestBuilder<PrereleaseVersionResponse> {
        var localVariablePath = "/v1/preReleaseVersions/{id}"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = ASCAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "fields[preReleaseVersions]": (wrappedValue: fieldsPreReleaseVersions?.encodeToJSON(), isExplode: false),
            "fields[builds]": (wrappedValue: fieldsBuilds?.encodeToJSON(), isExplode: false),
            "fields[apps]": (wrappedValue: fieldsApps?.encodeToJSON(), isExplode: false),
            "include": (wrappedValue: include?.encodeToJSON(), isExplode: false),
            "limit[builds]": (wrappedValue: limitBuilds?.encodeToJSON(), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<PrereleaseVersionResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     - GET /v1/preReleaseVersions/{id}
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter urlString: next or first url from App Store Connect API
     - returns: RequestBuilder<PrereleaseVersionResponse> 
     */
    open class func preReleaseVersionsGetInstanceWithRequestBuilder(urlString: String) -> RequestBuilder<PrereleaseVersionResponse> {
        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<PrereleaseVersionResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: urlString, parameters: nil, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }
}
