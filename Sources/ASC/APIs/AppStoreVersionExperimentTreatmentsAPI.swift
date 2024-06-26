//
// AppStoreVersionExperimentTreatmentsAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

open class AppStoreVersionExperimentTreatmentsAPI {

    /**
     * enum for parameter fieldsAppScreenshotSets
     */
    public enum FieldsAppScreenshotSets_appStoreVersionExperimentTreatmentsAppStoreVersionExperimentTreatmentLocalizationsGetToManyRelated: String, CaseIterable {
        case appcustomproductpagelocalization = "appCustomProductPageLocalization"
        case appscreenshots = "appScreenshots"
        case appstoreversionexperimenttreatmentlocalization = "appStoreVersionExperimentTreatmentLocalization"
        case appstoreversionlocalization = "appStoreVersionLocalization"
        case screenshotdisplaytype = "screenshotDisplayType"
    }

    /**
     * enum for parameter fieldsAppStoreVersionExperimentTreatments
     */
    public enum FieldsAppStoreVersionExperimentTreatments_appStoreVersionExperimentTreatmentsAppStoreVersionExperimentTreatmentLocalizationsGetToManyRelated: String, CaseIterable {
        case appicon = "appIcon"
        case appiconname = "appIconName"
        case appstoreversionexperiment = "appStoreVersionExperiment"
        case appstoreversionexperimenttreatmentlocalizations = "appStoreVersionExperimentTreatmentLocalizations"
        case appstoreversionexperimentv2 = "appStoreVersionExperimentV2"
        case name = "name"
        case promoteddate = "promotedDate"
    }

    /**
     * enum for parameter fieldsAppStoreVersionExperimentTreatmentLocalizations
     */
    public enum FieldsAppStoreVersionExperimentTreatmentLocalizations_appStoreVersionExperimentTreatmentsAppStoreVersionExperimentTreatmentLocalizationsGetToManyRelated: String, CaseIterable {
        case apppreviewsets = "appPreviewSets"
        case appscreenshotsets = "appScreenshotSets"
        case appstoreversionexperimenttreatment = "appStoreVersionExperimentTreatment"
        case locale = "locale"
    }

    /**
     * enum for parameter fieldsAppPreviewSets
     */
    public enum FieldsAppPreviewSets_appStoreVersionExperimentTreatmentsAppStoreVersionExperimentTreatmentLocalizationsGetToManyRelated: String, CaseIterable {
        case appcustomproductpagelocalization = "appCustomProductPageLocalization"
        case apppreviews = "appPreviews"
        case appstoreversionexperimenttreatmentlocalization = "appStoreVersionExperimentTreatmentLocalization"
        case appstoreversionlocalization = "appStoreVersionLocalization"
        case previewtype = "previewType"
    }

    /**
     * enum for parameter include
     */
    public enum Include_appStoreVersionExperimentTreatmentsAppStoreVersionExperimentTreatmentLocalizationsGetToManyRelated: String, CaseIterable {
        case apppreviewsets = "appPreviewSets"
        case appscreenshotsets = "appScreenshotSets"
        case appstoreversionexperimenttreatment = "appStoreVersionExperimentTreatment"
    }

    /**

     - parameter id: (path) the id of the requested resource 
     - parameter filterLocale: (query) filter by attribute &#39;locale&#39; (optional)
     - parameter fieldsAppScreenshotSets: (query) the fields to include for returned resources of type appScreenshotSets (optional)
     - parameter fieldsAppStoreVersionExperimentTreatments: (query) the fields to include for returned resources of type appStoreVersionExperimentTreatments (optional)
     - parameter fieldsAppStoreVersionExperimentTreatmentLocalizations: (query) the fields to include for returned resources of type appStoreVersionExperimentTreatmentLocalizations (optional)
     - parameter fieldsAppPreviewSets: (query) the fields to include for returned resources of type appPreviewSets (optional)
     - parameter limit: (query) maximum resources per page (optional)
     - parameter limitAppScreenshotSets: (query) maximum number of related appScreenshotSets returned (when they are included) (optional)
     - parameter limitAppPreviewSets: (query) maximum number of related appPreviewSets returned (when they are included) (optional)
     - parameter include: (query) comma-separated list of relationships to include (optional)
     - returns: AppStoreVersionExperimentTreatmentLocalizationsResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func appStoreVersionExperimentTreatmentsAppStoreVersionExperimentTreatmentLocalizationsGetToManyRelated(id: String, filterLocale: [String]? = nil, fieldsAppScreenshotSets: [FieldsAppScreenshotSets_appStoreVersionExperimentTreatmentsAppStoreVersionExperimentTreatmentLocalizationsGetToManyRelated]? = nil, fieldsAppStoreVersionExperimentTreatments: [FieldsAppStoreVersionExperimentTreatments_appStoreVersionExperimentTreatmentsAppStoreVersionExperimentTreatmentLocalizationsGetToManyRelated]? = nil, fieldsAppStoreVersionExperimentTreatmentLocalizations: [FieldsAppStoreVersionExperimentTreatmentLocalizations_appStoreVersionExperimentTreatmentsAppStoreVersionExperimentTreatmentLocalizationsGetToManyRelated]? = nil, fieldsAppPreviewSets: [FieldsAppPreviewSets_appStoreVersionExperimentTreatmentsAppStoreVersionExperimentTreatmentLocalizationsGetToManyRelated]? = nil, limit: Int? = nil, limitAppScreenshotSets: Int? = nil, limitAppPreviewSets: Int? = nil, include: [Include_appStoreVersionExperimentTreatmentsAppStoreVersionExperimentTreatmentLocalizationsGetToManyRelated]? = nil) async throws -> AppStoreVersionExperimentTreatmentLocalizationsResponse {
        return try await appStoreVersionExperimentTreatmentsAppStoreVersionExperimentTreatmentLocalizationsGetToManyRelatedWithRequestBuilder(id: id, filterLocale: filterLocale, fieldsAppScreenshotSets: fieldsAppScreenshotSets, fieldsAppStoreVersionExperimentTreatments: fieldsAppStoreVersionExperimentTreatments, fieldsAppStoreVersionExperimentTreatmentLocalizations: fieldsAppStoreVersionExperimentTreatmentLocalizations, fieldsAppPreviewSets: fieldsAppPreviewSets, limit: limit, limitAppScreenshotSets: limitAppScreenshotSets, limitAppPreviewSets: limitAppPreviewSets, include: include).execute().body
    }

    /**
     - parameter urlString: next or first url from App Store Connect API
     - returns: AppStoreVersionExperimentTreatmentLocalizationsResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func appStoreVersionExperimentTreatmentsAppStoreVersionExperimentTreatmentLocalizationsGetToManyRelated(urlString: String) async throws -> AppStoreVersionExperimentTreatmentLocalizationsResponse {
        return try await appStoreVersionExperimentTreatmentsAppStoreVersionExperimentTreatmentLocalizationsGetToManyRelatedWithRequestBuilder(urlString: urlString).execute().body
    }

    /**
     - GET /v1/appStoreVersionExperimentTreatments/{id}/appStoreVersionExperimentTreatmentLocalizations
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter id: (path) the id of the requested resource 
     - parameter filterLocale: (query) filter by attribute &#39;locale&#39; (optional)
     - parameter fieldsAppScreenshotSets: (query) the fields to include for returned resources of type appScreenshotSets (optional)
     - parameter fieldsAppStoreVersionExperimentTreatments: (query) the fields to include for returned resources of type appStoreVersionExperimentTreatments (optional)
     - parameter fieldsAppStoreVersionExperimentTreatmentLocalizations: (query) the fields to include for returned resources of type appStoreVersionExperimentTreatmentLocalizations (optional)
     - parameter fieldsAppPreviewSets: (query) the fields to include for returned resources of type appPreviewSets (optional)
     - parameter limit: (query) maximum resources per page (optional)
     - parameter limitAppScreenshotSets: (query) maximum number of related appScreenshotSets returned (when they are included) (optional)
     - parameter limitAppPreviewSets: (query) maximum number of related appPreviewSets returned (when they are included) (optional)
     - parameter include: (query) comma-separated list of relationships to include (optional)
     - returns: RequestBuilder<AppStoreVersionExperimentTreatmentLocalizationsResponse> 
     */
    open class func appStoreVersionExperimentTreatmentsAppStoreVersionExperimentTreatmentLocalizationsGetToManyRelatedWithRequestBuilder(id: String, filterLocale: [String]? = nil, fieldsAppScreenshotSets: [FieldsAppScreenshotSets_appStoreVersionExperimentTreatmentsAppStoreVersionExperimentTreatmentLocalizationsGetToManyRelated]? = nil, fieldsAppStoreVersionExperimentTreatments: [FieldsAppStoreVersionExperimentTreatments_appStoreVersionExperimentTreatmentsAppStoreVersionExperimentTreatmentLocalizationsGetToManyRelated]? = nil, fieldsAppStoreVersionExperimentTreatmentLocalizations: [FieldsAppStoreVersionExperimentTreatmentLocalizations_appStoreVersionExperimentTreatmentsAppStoreVersionExperimentTreatmentLocalizationsGetToManyRelated]? = nil, fieldsAppPreviewSets: [FieldsAppPreviewSets_appStoreVersionExperimentTreatmentsAppStoreVersionExperimentTreatmentLocalizationsGetToManyRelated]? = nil, limit: Int? = nil, limitAppScreenshotSets: Int? = nil, limitAppPreviewSets: Int? = nil, include: [Include_appStoreVersionExperimentTreatmentsAppStoreVersionExperimentTreatmentLocalizationsGetToManyRelated]? = nil) -> RequestBuilder<AppStoreVersionExperimentTreatmentLocalizationsResponse> {
        var localVariablePath = "/v1/appStoreVersionExperimentTreatments/{id}/appStoreVersionExperimentTreatmentLocalizations"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = ASCAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "filter[locale]": (wrappedValue: filterLocale?.encodeToJSON(), isExplode: false),
            "fields[appScreenshotSets]": (wrappedValue: fieldsAppScreenshotSets?.encodeToJSON(), isExplode: false),
            "fields[appStoreVersionExperimentTreatments]": (wrappedValue: fieldsAppStoreVersionExperimentTreatments?.encodeToJSON(), isExplode: false),
            "fields[appStoreVersionExperimentTreatmentLocalizations]": (wrappedValue: fieldsAppStoreVersionExperimentTreatmentLocalizations?.encodeToJSON(), isExplode: false),
            "fields[appPreviewSets]": (wrappedValue: fieldsAppPreviewSets?.encodeToJSON(), isExplode: false),
            "limit": (wrappedValue: limit?.encodeToJSON(), isExplode: true),
            "limit[appScreenshotSets]": (wrappedValue: limitAppScreenshotSets?.encodeToJSON(), isExplode: true),
            "limit[appPreviewSets]": (wrappedValue: limitAppPreviewSets?.encodeToJSON(), isExplode: true),
            "include": (wrappedValue: include?.encodeToJSON(), isExplode: false),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AppStoreVersionExperimentTreatmentLocalizationsResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     - GET /v1/appStoreVersionExperimentTreatments/{id}/appStoreVersionExperimentTreatmentLocalizations
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter urlString: next or first url from App Store Connect API
     - returns: RequestBuilder<AppStoreVersionExperimentTreatmentLocalizationsResponse> 
     */
    open class func appStoreVersionExperimentTreatmentsAppStoreVersionExperimentTreatmentLocalizationsGetToManyRelatedWithRequestBuilder(urlString: String) -> RequestBuilder<AppStoreVersionExperimentTreatmentLocalizationsResponse> {
        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AppStoreVersionExperimentTreatmentLocalizationsResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: urlString, parameters: nil, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**

     - parameter appStoreVersionExperimentTreatmentCreateRequest: (body) AppStoreVersionExperimentTreatment representation 
     - returns: AppStoreVersionExperimentTreatmentResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func appStoreVersionExperimentTreatmentsCreateInstance(appStoreVersionExperimentTreatmentCreateRequest: AppStoreVersionExperimentTreatmentCreateRequest) async throws -> AppStoreVersionExperimentTreatmentResponse {
        return try await appStoreVersionExperimentTreatmentsCreateInstanceWithRequestBuilder(appStoreVersionExperimentTreatmentCreateRequest: appStoreVersionExperimentTreatmentCreateRequest).execute().body
    }

    /**
     - parameter urlString: next or first url from App Store Connect API
     - returns: AppStoreVersionExperimentTreatmentResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func appStoreVersionExperimentTreatmentsCreateInstance(urlString: String) async throws -> AppStoreVersionExperimentTreatmentResponse {
        return try await appStoreVersionExperimentTreatmentsCreateInstanceWithRequestBuilder(urlString: urlString).execute().body
    }

    /**
     - POST /v1/appStoreVersionExperimentTreatments
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter appStoreVersionExperimentTreatmentCreateRequest: (body) AppStoreVersionExperimentTreatment representation 
     - returns: RequestBuilder<AppStoreVersionExperimentTreatmentResponse> 
     */
    open class func appStoreVersionExperimentTreatmentsCreateInstanceWithRequestBuilder(appStoreVersionExperimentTreatmentCreateRequest: AppStoreVersionExperimentTreatmentCreateRequest) -> RequestBuilder<AppStoreVersionExperimentTreatmentResponse> {
        let localVariablePath = "/v1/appStoreVersionExperimentTreatments"
        let localVariableURLString = ASCAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: appStoreVersionExperimentTreatmentCreateRequest)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            "Content-Type": "application/json",
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AppStoreVersionExperimentTreatmentResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     - POST /v1/appStoreVersionExperimentTreatments
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter urlString: next or first url from App Store Connect API
     - returns: RequestBuilder<AppStoreVersionExperimentTreatmentResponse> 
     */
    open class func appStoreVersionExperimentTreatmentsCreateInstanceWithRequestBuilder(urlString: String) -> RequestBuilder<AppStoreVersionExperimentTreatmentResponse> {
        let localVariableNillableHeaders: [String: Any?] = [
            "Content-Type": "application/json",
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AppStoreVersionExperimentTreatmentResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: urlString, parameters: nil, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**

     - parameter id: (path) the id of the requested resource 
     - returns: Void
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func appStoreVersionExperimentTreatmentsDeleteInstance(id: String) async throws {
        return try await appStoreVersionExperimentTreatmentsDeleteInstanceWithRequestBuilder(id: id).execute().body
    }

    /**
     - parameter urlString: next or first url from App Store Connect API
     - returns: Void
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func appStoreVersionExperimentTreatmentsDeleteInstance(urlString: String) async throws {
        return try await appStoreVersionExperimentTreatmentsDeleteInstanceWithRequestBuilder(urlString: urlString).execute().body
    }

    /**
     - DELETE /v1/appStoreVersionExperimentTreatments/{id}
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter id: (path) the id of the requested resource 
     - returns: RequestBuilder<Void> 
     */
    open class func appStoreVersionExperimentTreatmentsDeleteInstanceWithRequestBuilder(id: String) -> RequestBuilder<Void> {
        var localVariablePath = "/v1/appStoreVersionExperimentTreatments/{id}"
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
     - DELETE /v1/appStoreVersionExperimentTreatments/{id}
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter urlString: next or first url from App Store Connect API
     - returns: RequestBuilder<Void> 
     */
    open class func appStoreVersionExperimentTreatmentsDeleteInstanceWithRequestBuilder(urlString: String) -> RequestBuilder<Void> {
        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Void>.Type = ASCAPI.requestBuilderFactory.getNonDecodableBuilder()

        return localVariableRequestBuilder.init(method: "DELETE", URLString: urlString, parameters: nil, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     * enum for parameter fieldsAppStoreVersionExperimentTreatments
     */
    public enum FieldsAppStoreVersionExperimentTreatments_appStoreVersionExperimentTreatmentsGetInstance: String, CaseIterable {
        case appicon = "appIcon"
        case appiconname = "appIconName"
        case appstoreversionexperiment = "appStoreVersionExperiment"
        case appstoreversionexperimenttreatmentlocalizations = "appStoreVersionExperimentTreatmentLocalizations"
        case appstoreversionexperimentv2 = "appStoreVersionExperimentV2"
        case name = "name"
        case promoteddate = "promotedDate"
    }

    /**
     * enum for parameter include
     */
    public enum Include_appStoreVersionExperimentTreatmentsGetInstance: String, CaseIterable {
        case appstoreversionexperiment = "appStoreVersionExperiment"
        case appstoreversionexperimenttreatmentlocalizations = "appStoreVersionExperimentTreatmentLocalizations"
        case appstoreversionexperimentv2 = "appStoreVersionExperimentV2"
    }

    /**
     * enum for parameter fieldsAppStoreVersionExperimentTreatmentLocalizations
     */
    public enum FieldsAppStoreVersionExperimentTreatmentLocalizations_appStoreVersionExperimentTreatmentsGetInstance: String, CaseIterable {
        case apppreviewsets = "appPreviewSets"
        case appscreenshotsets = "appScreenshotSets"
        case appstoreversionexperimenttreatment = "appStoreVersionExperimentTreatment"
        case locale = "locale"
    }

    /**

     - parameter id: (path) the id of the requested resource 
     - parameter fieldsAppStoreVersionExperimentTreatments: (query) the fields to include for returned resources of type appStoreVersionExperimentTreatments (optional)
     - parameter include: (query) comma-separated list of relationships to include (optional)
     - parameter fieldsAppStoreVersionExperimentTreatmentLocalizations: (query) the fields to include for returned resources of type appStoreVersionExperimentTreatmentLocalizations (optional)
     - parameter limitAppStoreVersionExperimentTreatmentLocalizations: (query) maximum number of related appStoreVersionExperimentTreatmentLocalizations returned (when they are included) (optional)
     - returns: AppStoreVersionExperimentTreatmentResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func appStoreVersionExperimentTreatmentsGetInstance(id: String, fieldsAppStoreVersionExperimentTreatments: [FieldsAppStoreVersionExperimentTreatments_appStoreVersionExperimentTreatmentsGetInstance]? = nil, include: [Include_appStoreVersionExperimentTreatmentsGetInstance]? = nil, fieldsAppStoreVersionExperimentTreatmentLocalizations: [FieldsAppStoreVersionExperimentTreatmentLocalizations_appStoreVersionExperimentTreatmentsGetInstance]? = nil, limitAppStoreVersionExperimentTreatmentLocalizations: Int? = nil) async throws -> AppStoreVersionExperimentTreatmentResponse {
        return try await appStoreVersionExperimentTreatmentsGetInstanceWithRequestBuilder(id: id, fieldsAppStoreVersionExperimentTreatments: fieldsAppStoreVersionExperimentTreatments, include: include, fieldsAppStoreVersionExperimentTreatmentLocalizations: fieldsAppStoreVersionExperimentTreatmentLocalizations, limitAppStoreVersionExperimentTreatmentLocalizations: limitAppStoreVersionExperimentTreatmentLocalizations).execute().body
    }

    /**
     - parameter urlString: next or first url from App Store Connect API
     - returns: AppStoreVersionExperimentTreatmentResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func appStoreVersionExperimentTreatmentsGetInstance(urlString: String) async throws -> AppStoreVersionExperimentTreatmentResponse {
        return try await appStoreVersionExperimentTreatmentsGetInstanceWithRequestBuilder(urlString: urlString).execute().body
    }

    /**
     - GET /v1/appStoreVersionExperimentTreatments/{id}
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter id: (path) the id of the requested resource 
     - parameter fieldsAppStoreVersionExperimentTreatments: (query) the fields to include for returned resources of type appStoreVersionExperimentTreatments (optional)
     - parameter include: (query) comma-separated list of relationships to include (optional)
     - parameter fieldsAppStoreVersionExperimentTreatmentLocalizations: (query) the fields to include for returned resources of type appStoreVersionExperimentTreatmentLocalizations (optional)
     - parameter limitAppStoreVersionExperimentTreatmentLocalizations: (query) maximum number of related appStoreVersionExperimentTreatmentLocalizations returned (when they are included) (optional)
     - returns: RequestBuilder<AppStoreVersionExperimentTreatmentResponse> 
     */
    open class func appStoreVersionExperimentTreatmentsGetInstanceWithRequestBuilder(id: String, fieldsAppStoreVersionExperimentTreatments: [FieldsAppStoreVersionExperimentTreatments_appStoreVersionExperimentTreatmentsGetInstance]? = nil, include: [Include_appStoreVersionExperimentTreatmentsGetInstance]? = nil, fieldsAppStoreVersionExperimentTreatmentLocalizations: [FieldsAppStoreVersionExperimentTreatmentLocalizations_appStoreVersionExperimentTreatmentsGetInstance]? = nil, limitAppStoreVersionExperimentTreatmentLocalizations: Int? = nil) -> RequestBuilder<AppStoreVersionExperimentTreatmentResponse> {
        var localVariablePath = "/v1/appStoreVersionExperimentTreatments/{id}"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = ASCAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "fields[appStoreVersionExperimentTreatments]": (wrappedValue: fieldsAppStoreVersionExperimentTreatments?.encodeToJSON(), isExplode: false),
            "include": (wrappedValue: include?.encodeToJSON(), isExplode: false),
            "fields[appStoreVersionExperimentTreatmentLocalizations]": (wrappedValue: fieldsAppStoreVersionExperimentTreatmentLocalizations?.encodeToJSON(), isExplode: false),
            "limit[appStoreVersionExperimentTreatmentLocalizations]": (wrappedValue: limitAppStoreVersionExperimentTreatmentLocalizations?.encodeToJSON(), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AppStoreVersionExperimentTreatmentResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     - GET /v1/appStoreVersionExperimentTreatments/{id}
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter urlString: next or first url from App Store Connect API
     - returns: RequestBuilder<AppStoreVersionExperimentTreatmentResponse> 
     */
    open class func appStoreVersionExperimentTreatmentsGetInstanceWithRequestBuilder(urlString: String) -> RequestBuilder<AppStoreVersionExperimentTreatmentResponse> {
        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AppStoreVersionExperimentTreatmentResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: urlString, parameters: nil, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**

     - parameter id: (path) the id of the requested resource 
     - parameter appStoreVersionExperimentTreatmentUpdateRequest: (body) AppStoreVersionExperimentTreatment representation 
     - returns: AppStoreVersionExperimentTreatmentResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func appStoreVersionExperimentTreatmentsUpdateInstance(id: String, appStoreVersionExperimentTreatmentUpdateRequest: AppStoreVersionExperimentTreatmentUpdateRequest) async throws -> AppStoreVersionExperimentTreatmentResponse {
        return try await appStoreVersionExperimentTreatmentsUpdateInstanceWithRequestBuilder(id: id, appStoreVersionExperimentTreatmentUpdateRequest: appStoreVersionExperimentTreatmentUpdateRequest).execute().body
    }

    /**
     - parameter urlString: next or first url from App Store Connect API
     - returns: AppStoreVersionExperimentTreatmentResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func appStoreVersionExperimentTreatmentsUpdateInstance(urlString: String) async throws -> AppStoreVersionExperimentTreatmentResponse {
        return try await appStoreVersionExperimentTreatmentsUpdateInstanceWithRequestBuilder(urlString: urlString).execute().body
    }

    /**
     - PATCH /v1/appStoreVersionExperimentTreatments/{id}
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter id: (path) the id of the requested resource 
     - parameter appStoreVersionExperimentTreatmentUpdateRequest: (body) AppStoreVersionExperimentTreatment representation 
     - returns: RequestBuilder<AppStoreVersionExperimentTreatmentResponse> 
     */
    open class func appStoreVersionExperimentTreatmentsUpdateInstanceWithRequestBuilder(id: String, appStoreVersionExperimentTreatmentUpdateRequest: AppStoreVersionExperimentTreatmentUpdateRequest) -> RequestBuilder<AppStoreVersionExperimentTreatmentResponse> {
        var localVariablePath = "/v1/appStoreVersionExperimentTreatments/{id}"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = ASCAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: appStoreVersionExperimentTreatmentUpdateRequest)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            "Content-Type": "application/json",
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AppStoreVersionExperimentTreatmentResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PATCH", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     - PATCH /v1/appStoreVersionExperimentTreatments/{id}
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter urlString: next or first url from App Store Connect API
     - returns: RequestBuilder<AppStoreVersionExperimentTreatmentResponse> 
     */
    open class func appStoreVersionExperimentTreatmentsUpdateInstanceWithRequestBuilder(urlString: String) -> RequestBuilder<AppStoreVersionExperimentTreatmentResponse> {
        let localVariableNillableHeaders: [String: Any?] = [
            "Content-Type": "application/json",
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AppStoreVersionExperimentTreatmentResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PATCH", URLString: urlString, parameters: nil, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }
}
