//
// AppClipsAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

open class AppClipsAPI {

    /**
     * enum for parameter filterStatus
     */
    public enum FilterStatus_appClipsAppClipAdvancedExperiencesGetToManyRelated: String, Sendable, CaseIterable {
        case received = "RECEIVED"
        case deactivated = "DEACTIVATED"
        case appTransferInProgress = "APP_TRANSFER_IN_PROGRESS"
    }

    /**
     * enum for parameter filterPlaceStatus
     */
    public enum FilterPlaceStatus_appClipsAppClipAdvancedExperiencesGetToManyRelated: String, Sendable, CaseIterable {
        case pending = "PENDING"
        case matched = "MATCHED"
        case noMatch = "NO_MATCH"
    }

    /**
     * enum for parameter filterAction
     */
    public enum FilterAction_appClipsAppClipAdvancedExperiencesGetToManyRelated: String, Sendable, CaseIterable {
        case _open = "OPEN"
        case view = "VIEW"
        case play = "PLAY"
    }

    /**
     * enum for parameter fieldsAppClipAdvancedExperiences
     */
    public enum FieldsAppClipAdvancedExperiences_appClipsAppClipAdvancedExperiencesGetToManyRelated: String, Sendable, CaseIterable {
        case link = "link"
        case version = "version"
        case status = "status"
        case action = "action"
        case ispoweredby = "isPoweredBy"
        case place = "place"
        case placestatus = "placeStatus"
        case businesscategory = "businessCategory"
        case defaultlanguage = "defaultLanguage"
        case appclip = "appClip"
        case headerimage = "headerImage"
        case localizations = "localizations"
    }

    /**
     * enum for parameter fieldsAppClips
     */
    public enum FieldsAppClips_appClipsAppClipAdvancedExperiencesGetToManyRelated: String, Sendable, CaseIterable {
        case bundleid = "bundleId"
        case app = "app"
        case appclipdefaultexperiences = "appClipDefaultExperiences"
        case appclipadvancedexperiences = "appClipAdvancedExperiences"
    }

    /**
     * enum for parameter fieldsAppClipAdvancedExperienceImages
     */
    public enum FieldsAppClipAdvancedExperienceImages_appClipsAppClipAdvancedExperiencesGetToManyRelated: String, Sendable, CaseIterable {
        case filesize = "fileSize"
        case filename = "fileName"
        case sourcefilechecksum = "sourceFileChecksum"
        case imageasset = "imageAsset"
        case uploadoperations = "uploadOperations"
        case assetdeliverystate = "assetDeliveryState"
    }

    /**
     * enum for parameter fieldsAppClipAdvancedExperienceLocalizations
     */
    public enum FieldsAppClipAdvancedExperienceLocalizations_appClipsAppClipAdvancedExperiencesGetToManyRelated: String, Sendable, CaseIterable {
        case language = "language"
        case title = "title"
        case subtitle = "subtitle"
    }

    /**
     * enum for parameter include
     */
    public enum Include_appClipsAppClipAdvancedExperiencesGetToManyRelated: String, Sendable, CaseIterable {
        case appclip = "appClip"
        case headerimage = "headerImage"
        case localizations = "localizations"
    }

    /**

     - parameter id: (path) the id of the requested resource 
     - parameter filterStatus: (query) filter by attribute &#39;status&#39; (optional)
     - parameter filterPlaceStatus: (query) filter by attribute &#39;placeStatus&#39; (optional)
     - parameter filterAction: (query) filter by attribute &#39;action&#39; (optional)
     - parameter fieldsAppClipAdvancedExperiences: (query) the fields to include for returned resources of type appClipAdvancedExperiences (optional)
     - parameter fieldsAppClips: (query) the fields to include for returned resources of type appClips (optional)
     - parameter fieldsAppClipAdvancedExperienceImages: (query) the fields to include for returned resources of type appClipAdvancedExperienceImages (optional)
     - parameter fieldsAppClipAdvancedExperienceLocalizations: (query) the fields to include for returned resources of type appClipAdvancedExperienceLocalizations (optional)
     - parameter limit: (query) maximum resources per page (optional)
     - parameter include: (query) comma-separated list of relationships to include (optional)
     - parameter limitLocalizations: (query) maximum number of related localizations returned (when they are included) (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: AppClipAdvancedExperiencesResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func appClipsAppClipAdvancedExperiencesGetToManyRelated(id: String, filterStatus: [FilterStatus_appClipsAppClipAdvancedExperiencesGetToManyRelated]? = nil, filterPlaceStatus: [FilterPlaceStatus_appClipsAppClipAdvancedExperiencesGetToManyRelated]? = nil, filterAction: [FilterAction_appClipsAppClipAdvancedExperiencesGetToManyRelated]? = nil, fieldsAppClipAdvancedExperiences: [FieldsAppClipAdvancedExperiences_appClipsAppClipAdvancedExperiencesGetToManyRelated]? = nil, fieldsAppClips: [FieldsAppClips_appClipsAppClipAdvancedExperiencesGetToManyRelated]? = nil, fieldsAppClipAdvancedExperienceImages: [FieldsAppClipAdvancedExperienceImages_appClipsAppClipAdvancedExperiencesGetToManyRelated]? = nil, fieldsAppClipAdvancedExperienceLocalizations: [FieldsAppClipAdvancedExperienceLocalizations_appClipsAppClipAdvancedExperiencesGetToManyRelated]? = nil, limit: Int? = nil, include: [Include_appClipsAppClipAdvancedExperiencesGetToManyRelated]? = nil, limitLocalizations: Int? = nil, apiConfiguration: ASCAPIConfiguration = ASCAPIConfiguration.shared) async throws(ErrorResponse) -> AppClipAdvancedExperiencesResponse {
        return try await appClipsAppClipAdvancedExperiencesGetToManyRelatedWithRequestBuilder(id: id, filterStatus: filterStatus, filterPlaceStatus: filterPlaceStatus, filterAction: filterAction, fieldsAppClipAdvancedExperiences: fieldsAppClipAdvancedExperiences, fieldsAppClips: fieldsAppClips, fieldsAppClipAdvancedExperienceImages: fieldsAppClipAdvancedExperienceImages, fieldsAppClipAdvancedExperienceLocalizations: fieldsAppClipAdvancedExperienceLocalizations, limit: limit, include: include, limitLocalizations: limitLocalizations, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     - parameter urlString: next or first url from App Store Connect API
     - parameter apiConfiguration: The configuration for the http request.
     - returns: AppClipAdvancedExperiencesResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func appClipsAppClipAdvancedExperiencesGetToManyRelated(urlString: String, apiConfiguration: ASCAPIConfiguration = ASCAPIConfiguration.shared) async throws(ErrorResponse) -> AppClipAdvancedExperiencesResponse {
        return try await appClipsAppClipAdvancedExperiencesGetToManyRelatedWithRequestBuilder(urlString: urlString, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     - GET /v1/appClips/{id}/appClipAdvancedExperiences
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter id: (path) the id of the requested resource 
     - parameter filterStatus: (query) filter by attribute &#39;status&#39; (optional)
     - parameter filterPlaceStatus: (query) filter by attribute &#39;placeStatus&#39; (optional)
     - parameter filterAction: (query) filter by attribute &#39;action&#39; (optional)
     - parameter fieldsAppClipAdvancedExperiences: (query) the fields to include for returned resources of type appClipAdvancedExperiences (optional)
     - parameter fieldsAppClips: (query) the fields to include for returned resources of type appClips (optional)
     - parameter fieldsAppClipAdvancedExperienceImages: (query) the fields to include for returned resources of type appClipAdvancedExperienceImages (optional)
     - parameter fieldsAppClipAdvancedExperienceLocalizations: (query) the fields to include for returned resources of type appClipAdvancedExperienceLocalizations (optional)
     - parameter limit: (query) maximum resources per page (optional)
     - parameter include: (query) comma-separated list of relationships to include (optional)
     - parameter limitLocalizations: (query) maximum number of related localizations returned (when they are included) (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<AppClipAdvancedExperiencesResponse> 
     */
    open class func appClipsAppClipAdvancedExperiencesGetToManyRelatedWithRequestBuilder(id: String, filterStatus: [FilterStatus_appClipsAppClipAdvancedExperiencesGetToManyRelated]? = nil, filterPlaceStatus: [FilterPlaceStatus_appClipsAppClipAdvancedExperiencesGetToManyRelated]? = nil, filterAction: [FilterAction_appClipsAppClipAdvancedExperiencesGetToManyRelated]? = nil, fieldsAppClipAdvancedExperiences: [FieldsAppClipAdvancedExperiences_appClipsAppClipAdvancedExperiencesGetToManyRelated]? = nil, fieldsAppClips: [FieldsAppClips_appClipsAppClipAdvancedExperiencesGetToManyRelated]? = nil, fieldsAppClipAdvancedExperienceImages: [FieldsAppClipAdvancedExperienceImages_appClipsAppClipAdvancedExperiencesGetToManyRelated]? = nil, fieldsAppClipAdvancedExperienceLocalizations: [FieldsAppClipAdvancedExperienceLocalizations_appClipsAppClipAdvancedExperiencesGetToManyRelated]? = nil, limit: Int? = nil, include: [Include_appClipsAppClipAdvancedExperiencesGetToManyRelated]? = nil, limitLocalizations: Int? = nil, apiConfiguration: ASCAPIConfiguration = ASCAPIConfiguration.shared) -> RequestBuilder<AppClipAdvancedExperiencesResponse> {
        var localVariablePath = "/v1/appClips/{id}/appClipAdvancedExperiences"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "filter[status]": (wrappedValue: filterStatus?.encodeToJSON(codableHelper: apiConfiguration.codableHelper), isExplode: false),
            "filter[placeStatus]": (wrappedValue: filterPlaceStatus?.encodeToJSON(codableHelper: apiConfiguration.codableHelper), isExplode: false),
            "filter[action]": (wrappedValue: filterAction?.encodeToJSON(codableHelper: apiConfiguration.codableHelper), isExplode: false),
            "fields[appClipAdvancedExperiences]": (wrappedValue: fieldsAppClipAdvancedExperiences?.encodeToJSON(codableHelper: apiConfiguration.codableHelper), isExplode: false),
            "fields[appClips]": (wrappedValue: fieldsAppClips?.encodeToJSON(codableHelper: apiConfiguration.codableHelper), isExplode: false),
            "fields[appClipAdvancedExperienceImages]": (wrappedValue: fieldsAppClipAdvancedExperienceImages?.encodeToJSON(codableHelper: apiConfiguration.codableHelper), isExplode: false),
            "fields[appClipAdvancedExperienceLocalizations]": (wrappedValue: fieldsAppClipAdvancedExperienceLocalizations?.encodeToJSON(codableHelper: apiConfiguration.codableHelper), isExplode: false),
            "limit": (wrappedValue: limit?.encodeToJSON(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "include": (wrappedValue: include?.encodeToJSON(codableHelper: apiConfiguration.codableHelper), isExplode: false),
            "limit[localizations]": (wrappedValue: limitLocalizations?.encodeToJSON(codableHelper: apiConfiguration.codableHelper), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AppClipAdvancedExperiencesResponse>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     - GET /v1/appClips/{id}/appClipAdvancedExperiences
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter urlString: next or first url from App Store Connect API
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<AppClipAdvancedExperiencesResponse> 
     */
    open class func appClipsAppClipAdvancedExperiencesGetToManyRelatedWithRequestBuilder(urlString: String, apiConfiguration: ASCAPIConfiguration = ASCAPIConfiguration.shared) -> RequestBuilder<AppClipAdvancedExperiencesResponse> {
        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AppClipAdvancedExperiencesResponse>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: urlString, parameters: nil, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     * enum for parameter fieldsAppClipDefaultExperiences
     */
    public enum FieldsAppClipDefaultExperiences_appClipsAppClipDefaultExperiencesGetToManyRelated: String, Sendable, CaseIterable {
        case action = "action"
        case appclip = "appClip"
        case releasewithappstoreversion = "releaseWithAppStoreVersion"
        case appclipdefaultexperiencelocalizations = "appClipDefaultExperienceLocalizations"
        case appclipappstorereviewdetail = "appClipAppStoreReviewDetail"
    }

    /**
     * enum for parameter fieldsAppClips
     */
    public enum FieldsAppClips_appClipsAppClipDefaultExperiencesGetToManyRelated: String, Sendable, CaseIterable {
        case bundleid = "bundleId"
        case app = "app"
        case appclipdefaultexperiences = "appClipDefaultExperiences"
        case appclipadvancedexperiences = "appClipAdvancedExperiences"
    }

    /**
     * enum for parameter fieldsAppStoreVersions
     */
    public enum FieldsAppStoreVersions_appClipsAppClipDefaultExperiencesGetToManyRelated: String, Sendable, CaseIterable {
        case platform = "platform"
        case versionstring = "versionString"
        case appstorestate = "appStoreState"
        case appversionstate = "appVersionState"
        case copyright = "copyright"
        case reviewtype = "reviewType"
        case releasetype = "releaseType"
        case earliestreleasedate = "earliestReleaseDate"
        case downloadable = "downloadable"
        case createddate = "createdDate"
        case app = "app"
        case ageratingdeclaration = "ageRatingDeclaration"
        case appstoreversionlocalizations = "appStoreVersionLocalizations"
        case build = "build"
        case appstoreversionphasedrelease = "appStoreVersionPhasedRelease"
        case gamecenterappversion = "gameCenterAppVersion"
        case routingappcoverage = "routingAppCoverage"
        case appstorereviewdetail = "appStoreReviewDetail"
        case appstoreversionsubmission = "appStoreVersionSubmission"
        case appclipdefaultexperience = "appClipDefaultExperience"
        case appstoreversionexperiments = "appStoreVersionExperiments"
        case appstoreversionexperimentsv2 = "appStoreVersionExperimentsV2"
        case customerreviews = "customerReviews"
        case alternativedistributionpackage = "alternativeDistributionPackage"
    }

    /**
     * enum for parameter fieldsAppClipDefaultExperienceLocalizations
     */
    public enum FieldsAppClipDefaultExperienceLocalizations_appClipsAppClipDefaultExperiencesGetToManyRelated: String, Sendable, CaseIterable {
        case locale = "locale"
        case subtitle = "subtitle"
        case appclipdefaultexperience = "appClipDefaultExperience"
        case appclipheaderimage = "appClipHeaderImage"
    }

    /**
     * enum for parameter fieldsAppClipAppStoreReviewDetails
     */
    public enum FieldsAppClipAppStoreReviewDetails_appClipsAppClipDefaultExperiencesGetToManyRelated: String, Sendable, CaseIterable {
        case invocationurls = "invocationUrls"
        case appclipdefaultexperience = "appClipDefaultExperience"
    }

    /**
     * enum for parameter include
     */
    public enum Include_appClipsAppClipDefaultExperiencesGetToManyRelated: String, Sendable, CaseIterable {
        case appclip = "appClip"
        case releasewithappstoreversion = "releaseWithAppStoreVersion"
        case appclipdefaultexperiencelocalizations = "appClipDefaultExperienceLocalizations"
        case appclipappstorereviewdetail = "appClipAppStoreReviewDetail"
    }

    /**

     - parameter id: (path) the id of the requested resource 
     - parameter existsReleaseWithAppStoreVersion: (query) filter by existence or non-existence of related &#39;releaseWithAppStoreVersion&#39; (optional)
     - parameter fieldsAppClipDefaultExperiences: (query) the fields to include for returned resources of type appClipDefaultExperiences (optional)
     - parameter fieldsAppClips: (query) the fields to include for returned resources of type appClips (optional)
     - parameter fieldsAppStoreVersions: (query) the fields to include for returned resources of type appStoreVersions (optional)
     - parameter fieldsAppClipDefaultExperienceLocalizations: (query) the fields to include for returned resources of type appClipDefaultExperienceLocalizations (optional)
     - parameter fieldsAppClipAppStoreReviewDetails: (query) the fields to include for returned resources of type appClipAppStoreReviewDetails (optional)
     - parameter limit: (query) maximum resources per page (optional)
     - parameter include: (query) comma-separated list of relationships to include (optional)
     - parameter limitAppClipDefaultExperienceLocalizations: (query) maximum number of related appClipDefaultExperienceLocalizations returned (when they are included) (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: AppClipDefaultExperiencesResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func appClipsAppClipDefaultExperiencesGetToManyRelated(id: String, existsReleaseWithAppStoreVersion: Bool? = nil, fieldsAppClipDefaultExperiences: [FieldsAppClipDefaultExperiences_appClipsAppClipDefaultExperiencesGetToManyRelated]? = nil, fieldsAppClips: [FieldsAppClips_appClipsAppClipDefaultExperiencesGetToManyRelated]? = nil, fieldsAppStoreVersions: [FieldsAppStoreVersions_appClipsAppClipDefaultExperiencesGetToManyRelated]? = nil, fieldsAppClipDefaultExperienceLocalizations: [FieldsAppClipDefaultExperienceLocalizations_appClipsAppClipDefaultExperiencesGetToManyRelated]? = nil, fieldsAppClipAppStoreReviewDetails: [FieldsAppClipAppStoreReviewDetails_appClipsAppClipDefaultExperiencesGetToManyRelated]? = nil, limit: Int? = nil, include: [Include_appClipsAppClipDefaultExperiencesGetToManyRelated]? = nil, limitAppClipDefaultExperienceLocalizations: Int? = nil, apiConfiguration: ASCAPIConfiguration = ASCAPIConfiguration.shared) async throws(ErrorResponse) -> AppClipDefaultExperiencesResponse {
        return try await appClipsAppClipDefaultExperiencesGetToManyRelatedWithRequestBuilder(id: id, existsReleaseWithAppStoreVersion: existsReleaseWithAppStoreVersion, fieldsAppClipDefaultExperiences: fieldsAppClipDefaultExperiences, fieldsAppClips: fieldsAppClips, fieldsAppStoreVersions: fieldsAppStoreVersions, fieldsAppClipDefaultExperienceLocalizations: fieldsAppClipDefaultExperienceLocalizations, fieldsAppClipAppStoreReviewDetails: fieldsAppClipAppStoreReviewDetails, limit: limit, include: include, limitAppClipDefaultExperienceLocalizations: limitAppClipDefaultExperienceLocalizations, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     - parameter urlString: next or first url from App Store Connect API
     - parameter apiConfiguration: The configuration for the http request.
     - returns: AppClipDefaultExperiencesResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func appClipsAppClipDefaultExperiencesGetToManyRelated(urlString: String, apiConfiguration: ASCAPIConfiguration = ASCAPIConfiguration.shared) async throws(ErrorResponse) -> AppClipDefaultExperiencesResponse {
        return try await appClipsAppClipDefaultExperiencesGetToManyRelatedWithRequestBuilder(urlString: urlString, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     - GET /v1/appClips/{id}/appClipDefaultExperiences
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter id: (path) the id of the requested resource 
     - parameter existsReleaseWithAppStoreVersion: (query) filter by existence or non-existence of related &#39;releaseWithAppStoreVersion&#39; (optional)
     - parameter fieldsAppClipDefaultExperiences: (query) the fields to include for returned resources of type appClipDefaultExperiences (optional)
     - parameter fieldsAppClips: (query) the fields to include for returned resources of type appClips (optional)
     - parameter fieldsAppStoreVersions: (query) the fields to include for returned resources of type appStoreVersions (optional)
     - parameter fieldsAppClipDefaultExperienceLocalizations: (query) the fields to include for returned resources of type appClipDefaultExperienceLocalizations (optional)
     - parameter fieldsAppClipAppStoreReviewDetails: (query) the fields to include for returned resources of type appClipAppStoreReviewDetails (optional)
     - parameter limit: (query) maximum resources per page (optional)
     - parameter include: (query) comma-separated list of relationships to include (optional)
     - parameter limitAppClipDefaultExperienceLocalizations: (query) maximum number of related appClipDefaultExperienceLocalizations returned (when they are included) (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<AppClipDefaultExperiencesResponse> 
     */
    open class func appClipsAppClipDefaultExperiencesGetToManyRelatedWithRequestBuilder(id: String, existsReleaseWithAppStoreVersion: Bool? = nil, fieldsAppClipDefaultExperiences: [FieldsAppClipDefaultExperiences_appClipsAppClipDefaultExperiencesGetToManyRelated]? = nil, fieldsAppClips: [FieldsAppClips_appClipsAppClipDefaultExperiencesGetToManyRelated]? = nil, fieldsAppStoreVersions: [FieldsAppStoreVersions_appClipsAppClipDefaultExperiencesGetToManyRelated]? = nil, fieldsAppClipDefaultExperienceLocalizations: [FieldsAppClipDefaultExperienceLocalizations_appClipsAppClipDefaultExperiencesGetToManyRelated]? = nil, fieldsAppClipAppStoreReviewDetails: [FieldsAppClipAppStoreReviewDetails_appClipsAppClipDefaultExperiencesGetToManyRelated]? = nil, limit: Int? = nil, include: [Include_appClipsAppClipDefaultExperiencesGetToManyRelated]? = nil, limitAppClipDefaultExperienceLocalizations: Int? = nil, apiConfiguration: ASCAPIConfiguration = ASCAPIConfiguration.shared) -> RequestBuilder<AppClipDefaultExperiencesResponse> {
        var localVariablePath = "/v1/appClips/{id}/appClipDefaultExperiences"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "exists[releaseWithAppStoreVersion]": (wrappedValue: existsReleaseWithAppStoreVersion?.encodeToJSON(codableHelper: apiConfiguration.codableHelper), isExplode: false),
            "fields[appClipDefaultExperiences]": (wrappedValue: fieldsAppClipDefaultExperiences?.encodeToJSON(codableHelper: apiConfiguration.codableHelper), isExplode: false),
            "fields[appClips]": (wrappedValue: fieldsAppClips?.encodeToJSON(codableHelper: apiConfiguration.codableHelper), isExplode: false),
            "fields[appStoreVersions]": (wrappedValue: fieldsAppStoreVersions?.encodeToJSON(codableHelper: apiConfiguration.codableHelper), isExplode: false),
            "fields[appClipDefaultExperienceLocalizations]": (wrappedValue: fieldsAppClipDefaultExperienceLocalizations?.encodeToJSON(codableHelper: apiConfiguration.codableHelper), isExplode: false),
            "fields[appClipAppStoreReviewDetails]": (wrappedValue: fieldsAppClipAppStoreReviewDetails?.encodeToJSON(codableHelper: apiConfiguration.codableHelper), isExplode: false),
            "limit": (wrappedValue: limit?.encodeToJSON(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "include": (wrappedValue: include?.encodeToJSON(codableHelper: apiConfiguration.codableHelper), isExplode: false),
            "limit[appClipDefaultExperienceLocalizations]": (wrappedValue: limitAppClipDefaultExperienceLocalizations?.encodeToJSON(codableHelper: apiConfiguration.codableHelper), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AppClipDefaultExperiencesResponse>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     - GET /v1/appClips/{id}/appClipDefaultExperiences
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter urlString: next or first url from App Store Connect API
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<AppClipDefaultExperiencesResponse> 
     */
    open class func appClipsAppClipDefaultExperiencesGetToManyRelatedWithRequestBuilder(urlString: String, apiConfiguration: ASCAPIConfiguration = ASCAPIConfiguration.shared) -> RequestBuilder<AppClipDefaultExperiencesResponse> {
        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AppClipDefaultExperiencesResponse>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: urlString, parameters: nil, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     * enum for parameter fieldsAppClips
     */
    public enum FieldsAppClips_appClipsGetInstance: String, Sendable, CaseIterable {
        case bundleid = "bundleId"
        case app = "app"
        case appclipdefaultexperiences = "appClipDefaultExperiences"
        case appclipadvancedexperiences = "appClipAdvancedExperiences"
    }

    /**
     * enum for parameter fieldsAppClipDefaultExperiences
     */
    public enum FieldsAppClipDefaultExperiences_appClipsGetInstance: String, Sendable, CaseIterable {
        case action = "action"
        case appclip = "appClip"
        case releasewithappstoreversion = "releaseWithAppStoreVersion"
        case appclipdefaultexperiencelocalizations = "appClipDefaultExperienceLocalizations"
        case appclipappstorereviewdetail = "appClipAppStoreReviewDetail"
    }

    /**
     * enum for parameter include
     */
    public enum Include_appClipsGetInstance: String, Sendable, CaseIterable {
        case app = "app"
        case appclipdefaultexperiences = "appClipDefaultExperiences"
    }

    /**

     - parameter id: (path) the id of the requested resource 
     - parameter fieldsAppClips: (query) the fields to include for returned resources of type appClips (optional)
     - parameter fieldsAppClipDefaultExperiences: (query) the fields to include for returned resources of type appClipDefaultExperiences (optional)
     - parameter include: (query) comma-separated list of relationships to include (optional)
     - parameter limitAppClipDefaultExperiences: (query) maximum number of related appClipDefaultExperiences returned (when they are included) (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: AppClipResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func appClipsGetInstance(id: String, fieldsAppClips: [FieldsAppClips_appClipsGetInstance]? = nil, fieldsAppClipDefaultExperiences: [FieldsAppClipDefaultExperiences_appClipsGetInstance]? = nil, include: [Include_appClipsGetInstance]? = nil, limitAppClipDefaultExperiences: Int? = nil, apiConfiguration: ASCAPIConfiguration = ASCAPIConfiguration.shared) async throws(ErrorResponse) -> AppClipResponse {
        return try await appClipsGetInstanceWithRequestBuilder(id: id, fieldsAppClips: fieldsAppClips, fieldsAppClipDefaultExperiences: fieldsAppClipDefaultExperiences, include: include, limitAppClipDefaultExperiences: limitAppClipDefaultExperiences, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     - parameter urlString: next or first url from App Store Connect API
     - parameter apiConfiguration: The configuration for the http request.
     - returns: AppClipResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func appClipsGetInstance(urlString: String, apiConfiguration: ASCAPIConfiguration = ASCAPIConfiguration.shared) async throws(ErrorResponse) -> AppClipResponse {
        return try await appClipsGetInstanceWithRequestBuilder(urlString: urlString, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     - GET /v1/appClips/{id}
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter id: (path) the id of the requested resource 
     - parameter fieldsAppClips: (query) the fields to include for returned resources of type appClips (optional)
     - parameter fieldsAppClipDefaultExperiences: (query) the fields to include for returned resources of type appClipDefaultExperiences (optional)
     - parameter include: (query) comma-separated list of relationships to include (optional)
     - parameter limitAppClipDefaultExperiences: (query) maximum number of related appClipDefaultExperiences returned (when they are included) (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<AppClipResponse> 
     */
    open class func appClipsGetInstanceWithRequestBuilder(id: String, fieldsAppClips: [FieldsAppClips_appClipsGetInstance]? = nil, fieldsAppClipDefaultExperiences: [FieldsAppClipDefaultExperiences_appClipsGetInstance]? = nil, include: [Include_appClipsGetInstance]? = nil, limitAppClipDefaultExperiences: Int? = nil, apiConfiguration: ASCAPIConfiguration = ASCAPIConfiguration.shared) -> RequestBuilder<AppClipResponse> {
        var localVariablePath = "/v1/appClips/{id}"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "fields[appClips]": (wrappedValue: fieldsAppClips?.encodeToJSON(codableHelper: apiConfiguration.codableHelper), isExplode: false),
            "fields[appClipDefaultExperiences]": (wrappedValue: fieldsAppClipDefaultExperiences?.encodeToJSON(codableHelper: apiConfiguration.codableHelper), isExplode: false),
            "include": (wrappedValue: include?.encodeToJSON(codableHelper: apiConfiguration.codableHelper), isExplode: false),
            "limit[appClipDefaultExperiences]": (wrappedValue: limitAppClipDefaultExperiences?.encodeToJSON(codableHelper: apiConfiguration.codableHelper), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AppClipResponse>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     - GET /v1/appClips/{id}
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter urlString: next or first url from App Store Connect API
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<AppClipResponse> 
     */
    open class func appClipsGetInstanceWithRequestBuilder(urlString: String, apiConfiguration: ASCAPIConfiguration = ASCAPIConfiguration.shared) -> RequestBuilder<AppClipResponse> {
        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AppClipResponse>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: urlString, parameters: nil, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }
}
