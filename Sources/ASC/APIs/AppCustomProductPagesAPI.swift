//
// AppCustomProductPagesAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

open class AppCustomProductPagesAPI {

    /**
     * enum for parameter filterState
     */
    public enum FilterState_appCustomProductPagesAppCustomProductPageVersionsGetToManyRelated: String, CaseIterable {
        case prepareForSubmission = "PREPARE_FOR_SUBMISSION"
        case readyForReview = "READY_FOR_REVIEW"
        case waitingForReview = "WAITING_FOR_REVIEW"
        case inReview = "IN_REVIEW"
        case accepted = "ACCEPTED"
        case approved = "APPROVED"
        case replacedWithNewVersion = "REPLACED_WITH_NEW_VERSION"
        case rejected = "REJECTED"
    }

    /**
     * enum for parameter fieldsAppCustomProductPageLocalizations
     */
    public enum FieldsAppCustomProductPageLocalizations_appCustomProductPagesAppCustomProductPageVersionsGetToManyRelated: String, CaseIterable {
        case appcustomproductpageversion = "appCustomProductPageVersion"
        case apppreviewsets = "appPreviewSets"
        case appscreenshotsets = "appScreenshotSets"
        case locale = "locale"
        case promotionaltext = "promotionalText"
    }

    /**
     * enum for parameter fieldsAppCustomProductPageVersions
     */
    public enum FieldsAppCustomProductPageVersions_appCustomProductPagesAppCustomProductPageVersionsGetToManyRelated: String, CaseIterable {
        case appcustomproductpage = "appCustomProductPage"
        case appcustomproductpagelocalizations = "appCustomProductPageLocalizations"
        case state = "state"
        case version = "version"
    }

    /**
     * enum for parameter fieldsAppCustomProductPages
     */
    public enum FieldsAppCustomProductPages_appCustomProductPagesAppCustomProductPageVersionsGetToManyRelated: String, CaseIterable {
        case app = "app"
        case appcustomproductpageversions = "appCustomProductPageVersions"
        case appstoreversiontemplate = "appStoreVersionTemplate"
        case customproductpagetemplate = "customProductPageTemplate"
        case name = "name"
        case url = "url"
        case visible = "visible"
    }

    /**
     * enum for parameter include
     */
    public enum Include_appCustomProductPagesAppCustomProductPageVersionsGetToManyRelated: String, CaseIterable {
        case appcustomproductpage = "appCustomProductPage"
        case appcustomproductpagelocalizations = "appCustomProductPageLocalizations"
    }

    /**

     - parameter id: (path) the id of the requested resource 
     - parameter filterState: (query) filter by attribute &#39;state&#39; (optional)
     - parameter fieldsAppCustomProductPageLocalizations: (query) the fields to include for returned resources of type appCustomProductPageLocalizations (optional)
     - parameter fieldsAppCustomProductPageVersions: (query) the fields to include for returned resources of type appCustomProductPageVersions (optional)
     - parameter fieldsAppCustomProductPages: (query) the fields to include for returned resources of type appCustomProductPages (optional)
     - parameter limit: (query) maximum resources per page (optional)
     - parameter limitAppCustomProductPageLocalizations: (query) maximum number of related appCustomProductPageLocalizations returned (when they are included) (optional)
     - parameter include: (query) comma-separated list of relationships to include (optional)
     - returns: AppCustomProductPageVersionsResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func appCustomProductPagesAppCustomProductPageVersionsGetToManyRelated(id: String, filterState: [FilterState_appCustomProductPagesAppCustomProductPageVersionsGetToManyRelated]? = nil, fieldsAppCustomProductPageLocalizations: [FieldsAppCustomProductPageLocalizations_appCustomProductPagesAppCustomProductPageVersionsGetToManyRelated]? = nil, fieldsAppCustomProductPageVersions: [FieldsAppCustomProductPageVersions_appCustomProductPagesAppCustomProductPageVersionsGetToManyRelated]? = nil, fieldsAppCustomProductPages: [FieldsAppCustomProductPages_appCustomProductPagesAppCustomProductPageVersionsGetToManyRelated]? = nil, limit: Int? = nil, limitAppCustomProductPageLocalizations: Int? = nil, include: [Include_appCustomProductPagesAppCustomProductPageVersionsGetToManyRelated]? = nil) async throws -> AppCustomProductPageVersionsResponse {
        return try await appCustomProductPagesAppCustomProductPageVersionsGetToManyRelatedWithRequestBuilder(id: id, filterState: filterState, fieldsAppCustomProductPageLocalizations: fieldsAppCustomProductPageLocalizations, fieldsAppCustomProductPageVersions: fieldsAppCustomProductPageVersions, fieldsAppCustomProductPages: fieldsAppCustomProductPages, limit: limit, limitAppCustomProductPageLocalizations: limitAppCustomProductPageLocalizations, include: include).execute().body
    }

    /**
     - parameter urlString: next or first url from App Store Connect API
     - returns: AppCustomProductPageVersionsResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func appCustomProductPagesAppCustomProductPageVersionsGetToManyRelated(urlString: String) async throws -> AppCustomProductPageVersionsResponse {
        return try await appCustomProductPagesAppCustomProductPageVersionsGetToManyRelatedWithRequestBuilder(urlString: urlString).execute().body
    }

    /**
     - GET /v1/appCustomProductPages/{id}/appCustomProductPageVersions
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter id: (path) the id of the requested resource 
     - parameter filterState: (query) filter by attribute &#39;state&#39; (optional)
     - parameter fieldsAppCustomProductPageLocalizations: (query) the fields to include for returned resources of type appCustomProductPageLocalizations (optional)
     - parameter fieldsAppCustomProductPageVersions: (query) the fields to include for returned resources of type appCustomProductPageVersions (optional)
     - parameter fieldsAppCustomProductPages: (query) the fields to include for returned resources of type appCustomProductPages (optional)
     - parameter limit: (query) maximum resources per page (optional)
     - parameter limitAppCustomProductPageLocalizations: (query) maximum number of related appCustomProductPageLocalizations returned (when they are included) (optional)
     - parameter include: (query) comma-separated list of relationships to include (optional)
     - returns: RequestBuilder<AppCustomProductPageVersionsResponse> 
     */
    open class func appCustomProductPagesAppCustomProductPageVersionsGetToManyRelatedWithRequestBuilder(id: String, filterState: [FilterState_appCustomProductPagesAppCustomProductPageVersionsGetToManyRelated]? = nil, fieldsAppCustomProductPageLocalizations: [FieldsAppCustomProductPageLocalizations_appCustomProductPagesAppCustomProductPageVersionsGetToManyRelated]? = nil, fieldsAppCustomProductPageVersions: [FieldsAppCustomProductPageVersions_appCustomProductPagesAppCustomProductPageVersionsGetToManyRelated]? = nil, fieldsAppCustomProductPages: [FieldsAppCustomProductPages_appCustomProductPagesAppCustomProductPageVersionsGetToManyRelated]? = nil, limit: Int? = nil, limitAppCustomProductPageLocalizations: Int? = nil, include: [Include_appCustomProductPagesAppCustomProductPageVersionsGetToManyRelated]? = nil) -> RequestBuilder<AppCustomProductPageVersionsResponse> {
        var localVariablePath = "/v1/appCustomProductPages/{id}/appCustomProductPageVersions"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = ASCAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "filter[state]": (wrappedValue: filterState?.encodeToJSON(), isExplode: false),
            "fields[appCustomProductPageLocalizations]": (wrappedValue: fieldsAppCustomProductPageLocalizations?.encodeToJSON(), isExplode: false),
            "fields[appCustomProductPageVersions]": (wrappedValue: fieldsAppCustomProductPageVersions?.encodeToJSON(), isExplode: false),
            "fields[appCustomProductPages]": (wrappedValue: fieldsAppCustomProductPages?.encodeToJSON(), isExplode: false),
            "limit": (wrappedValue: limit?.encodeToJSON(), isExplode: true),
            "limit[appCustomProductPageLocalizations]": (wrappedValue: limitAppCustomProductPageLocalizations?.encodeToJSON(), isExplode: true),
            "include": (wrappedValue: include?.encodeToJSON(), isExplode: false),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AppCustomProductPageVersionsResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     - GET /v1/appCustomProductPages/{id}/appCustomProductPageVersions
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter urlString: next or first url from App Store Connect API
     - returns: RequestBuilder<AppCustomProductPageVersionsResponse> 
     */
    open class func appCustomProductPagesAppCustomProductPageVersionsGetToManyRelatedWithRequestBuilder(urlString: String) -> RequestBuilder<AppCustomProductPageVersionsResponse> {
        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AppCustomProductPageVersionsResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: urlString, parameters: nil, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**

     - parameter appCustomProductPageCreateRequest: (body) AppCustomProductPage representation 
     - returns: AppCustomProductPageResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func appCustomProductPagesCreateInstance(appCustomProductPageCreateRequest: AppCustomProductPageCreateRequest) async throws -> AppCustomProductPageResponse {
        return try await appCustomProductPagesCreateInstanceWithRequestBuilder(appCustomProductPageCreateRequest: appCustomProductPageCreateRequest).execute().body
    }

    /**
     - parameter urlString: next or first url from App Store Connect API
     - returns: AppCustomProductPageResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func appCustomProductPagesCreateInstance(urlString: String) async throws -> AppCustomProductPageResponse {
        return try await appCustomProductPagesCreateInstanceWithRequestBuilder(urlString: urlString).execute().body
    }

    /**
     - POST /v1/appCustomProductPages
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter appCustomProductPageCreateRequest: (body) AppCustomProductPage representation 
     - returns: RequestBuilder<AppCustomProductPageResponse> 
     */
    open class func appCustomProductPagesCreateInstanceWithRequestBuilder(appCustomProductPageCreateRequest: AppCustomProductPageCreateRequest) -> RequestBuilder<AppCustomProductPageResponse> {
        let localVariablePath = "/v1/appCustomProductPages"
        let localVariableURLString = ASCAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: appCustomProductPageCreateRequest)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            "Content-Type": "application/json",
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AppCustomProductPageResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     - POST /v1/appCustomProductPages
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter urlString: next or first url from App Store Connect API
     - returns: RequestBuilder<AppCustomProductPageResponse> 
     */
    open class func appCustomProductPagesCreateInstanceWithRequestBuilder(urlString: String) -> RequestBuilder<AppCustomProductPageResponse> {
        let localVariableNillableHeaders: [String: Any?] = [
            "Content-Type": "application/json",
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AppCustomProductPageResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: urlString, parameters: nil, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**

     - parameter id: (path) the id of the requested resource 
     - returns: Void
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func appCustomProductPagesDeleteInstance(id: String) async throws {
        return try await appCustomProductPagesDeleteInstanceWithRequestBuilder(id: id).execute().body
    }

    /**
     - parameter urlString: next or first url from App Store Connect API
     - returns: Void
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func appCustomProductPagesDeleteInstance(urlString: String) async throws {
        return try await appCustomProductPagesDeleteInstanceWithRequestBuilder(urlString: urlString).execute().body
    }

    /**
     - DELETE /v1/appCustomProductPages/{id}
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter id: (path) the id of the requested resource 
     - returns: RequestBuilder<Void> 
     */
    open class func appCustomProductPagesDeleteInstanceWithRequestBuilder(id: String) -> RequestBuilder<Void> {
        var localVariablePath = "/v1/appCustomProductPages/{id}"
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
     - DELETE /v1/appCustomProductPages/{id}
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter urlString: next or first url from App Store Connect API
     - returns: RequestBuilder<Void> 
     */
    open class func appCustomProductPagesDeleteInstanceWithRequestBuilder(urlString: String) -> RequestBuilder<Void> {
        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Void>.Type = ASCAPI.requestBuilderFactory.getNonDecodableBuilder()

        return localVariableRequestBuilder.init(method: "DELETE", URLString: urlString, parameters: nil, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     * enum for parameter fieldsAppCustomProductPages
     */
    public enum FieldsAppCustomProductPages_appCustomProductPagesGetInstance: String, CaseIterable {
        case app = "app"
        case appcustomproductpageversions = "appCustomProductPageVersions"
        case appstoreversiontemplate = "appStoreVersionTemplate"
        case customproductpagetemplate = "customProductPageTemplate"
        case name = "name"
        case url = "url"
        case visible = "visible"
    }

    /**
     * enum for parameter include
     */
    public enum Include_appCustomProductPagesGetInstance: String, CaseIterable {
        case app = "app"
        case appcustomproductpageversions = "appCustomProductPageVersions"
    }

    /**
     * enum for parameter fieldsAppCustomProductPageVersions
     */
    public enum FieldsAppCustomProductPageVersions_appCustomProductPagesGetInstance: String, CaseIterable {
        case appcustomproductpage = "appCustomProductPage"
        case appcustomproductpagelocalizations = "appCustomProductPageLocalizations"
        case state = "state"
        case version = "version"
    }

    /**

     - parameter id: (path) the id of the requested resource 
     - parameter fieldsAppCustomProductPages: (query) the fields to include for returned resources of type appCustomProductPages (optional)
     - parameter include: (query) comma-separated list of relationships to include (optional)
     - parameter fieldsAppCustomProductPageVersions: (query) the fields to include for returned resources of type appCustomProductPageVersions (optional)
     - parameter limitAppCustomProductPageVersions: (query) maximum number of related appCustomProductPageVersions returned (when they are included) (optional)
     - returns: AppCustomProductPageResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func appCustomProductPagesGetInstance(id: String, fieldsAppCustomProductPages: [FieldsAppCustomProductPages_appCustomProductPagesGetInstance]? = nil, include: [Include_appCustomProductPagesGetInstance]? = nil, fieldsAppCustomProductPageVersions: [FieldsAppCustomProductPageVersions_appCustomProductPagesGetInstance]? = nil, limitAppCustomProductPageVersions: Int? = nil) async throws -> AppCustomProductPageResponse {
        return try await appCustomProductPagesGetInstanceWithRequestBuilder(id: id, fieldsAppCustomProductPages: fieldsAppCustomProductPages, include: include, fieldsAppCustomProductPageVersions: fieldsAppCustomProductPageVersions, limitAppCustomProductPageVersions: limitAppCustomProductPageVersions).execute().body
    }

    /**
     - parameter urlString: next or first url from App Store Connect API
     - returns: AppCustomProductPageResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func appCustomProductPagesGetInstance(urlString: String) async throws -> AppCustomProductPageResponse {
        return try await appCustomProductPagesGetInstanceWithRequestBuilder(urlString: urlString).execute().body
    }

    /**
     - GET /v1/appCustomProductPages/{id}
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter id: (path) the id of the requested resource 
     - parameter fieldsAppCustomProductPages: (query) the fields to include for returned resources of type appCustomProductPages (optional)
     - parameter include: (query) comma-separated list of relationships to include (optional)
     - parameter fieldsAppCustomProductPageVersions: (query) the fields to include for returned resources of type appCustomProductPageVersions (optional)
     - parameter limitAppCustomProductPageVersions: (query) maximum number of related appCustomProductPageVersions returned (when they are included) (optional)
     - returns: RequestBuilder<AppCustomProductPageResponse> 
     */
    open class func appCustomProductPagesGetInstanceWithRequestBuilder(id: String, fieldsAppCustomProductPages: [FieldsAppCustomProductPages_appCustomProductPagesGetInstance]? = nil, include: [Include_appCustomProductPagesGetInstance]? = nil, fieldsAppCustomProductPageVersions: [FieldsAppCustomProductPageVersions_appCustomProductPagesGetInstance]? = nil, limitAppCustomProductPageVersions: Int? = nil) -> RequestBuilder<AppCustomProductPageResponse> {
        var localVariablePath = "/v1/appCustomProductPages/{id}"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = ASCAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "fields[appCustomProductPages]": (wrappedValue: fieldsAppCustomProductPages?.encodeToJSON(), isExplode: false),
            "include": (wrappedValue: include?.encodeToJSON(), isExplode: false),
            "fields[appCustomProductPageVersions]": (wrappedValue: fieldsAppCustomProductPageVersions?.encodeToJSON(), isExplode: false),
            "limit[appCustomProductPageVersions]": (wrappedValue: limitAppCustomProductPageVersions?.encodeToJSON(), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AppCustomProductPageResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     - GET /v1/appCustomProductPages/{id}
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter urlString: next or first url from App Store Connect API
     - returns: RequestBuilder<AppCustomProductPageResponse> 
     */
    open class func appCustomProductPagesGetInstanceWithRequestBuilder(urlString: String) -> RequestBuilder<AppCustomProductPageResponse> {
        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AppCustomProductPageResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: urlString, parameters: nil, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**

     - parameter id: (path) the id of the requested resource 
     - parameter appCustomProductPageUpdateRequest: (body) AppCustomProductPage representation 
     - returns: AppCustomProductPageResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func appCustomProductPagesUpdateInstance(id: String, appCustomProductPageUpdateRequest: AppCustomProductPageUpdateRequest) async throws -> AppCustomProductPageResponse {
        return try await appCustomProductPagesUpdateInstanceWithRequestBuilder(id: id, appCustomProductPageUpdateRequest: appCustomProductPageUpdateRequest).execute().body
    }

    /**
     - parameter urlString: next or first url from App Store Connect API
     - returns: AppCustomProductPageResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func appCustomProductPagesUpdateInstance(urlString: String) async throws -> AppCustomProductPageResponse {
        return try await appCustomProductPagesUpdateInstanceWithRequestBuilder(urlString: urlString).execute().body
    }

    /**
     - PATCH /v1/appCustomProductPages/{id}
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter id: (path) the id of the requested resource 
     - parameter appCustomProductPageUpdateRequest: (body) AppCustomProductPage representation 
     - returns: RequestBuilder<AppCustomProductPageResponse> 
     */
    open class func appCustomProductPagesUpdateInstanceWithRequestBuilder(id: String, appCustomProductPageUpdateRequest: AppCustomProductPageUpdateRequest) -> RequestBuilder<AppCustomProductPageResponse> {
        var localVariablePath = "/v1/appCustomProductPages/{id}"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = ASCAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: appCustomProductPageUpdateRequest)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            "Content-Type": "application/json",
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AppCustomProductPageResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PATCH", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     - PATCH /v1/appCustomProductPages/{id}
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter urlString: next or first url from App Store Connect API
     - returns: RequestBuilder<AppCustomProductPageResponse> 
     */
    open class func appCustomProductPagesUpdateInstanceWithRequestBuilder(urlString: String) -> RequestBuilder<AppCustomProductPageResponse> {
        let localVariableNillableHeaders: [String: Any?] = [
            "Content-Type": "application/json",
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AppCustomProductPageResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PATCH", URLString: urlString, parameters: nil, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }
}
