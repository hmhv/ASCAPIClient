//
// AppCustomProductPagesAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

open class AppCustomProductPagesAPI {

    /**
     * enum for parameter filterState
     */
    public enum FilterState_appCustomProductPagesAppCustomProductPageVersionsGetToManyRelated: String, Sendable, CaseIterable {
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
     * enum for parameter fieldsAppCustomProductPageVersions
     */
    public enum FieldsAppCustomProductPageVersions_appCustomProductPagesAppCustomProductPageVersionsGetToManyRelated: String, Sendable, CaseIterable {
        case version = "version"
        case state = "state"
        case deeplink = "deepLink"
        case appcustomproductpage = "appCustomProductPage"
        case appcustomproductpagelocalizations = "appCustomProductPageLocalizations"
    }

    /**
     * enum for parameter fieldsAppCustomProductPages
     */
    public enum FieldsAppCustomProductPages_appCustomProductPagesAppCustomProductPageVersionsGetToManyRelated: String, Sendable, CaseIterable {
        case name = "name"
        case url = "url"
        case visible = "visible"
        case app = "app"
        case appcustomproductpageversions = "appCustomProductPageVersions"
    }

    /**
     * enum for parameter fieldsAppCustomProductPageLocalizations
     */
    public enum FieldsAppCustomProductPageLocalizations_appCustomProductPagesAppCustomProductPageVersionsGetToManyRelated: String, Sendable, CaseIterable {
        case locale = "locale"
        case promotionaltext = "promotionalText"
        case appcustomproductpageversion = "appCustomProductPageVersion"
        case appscreenshotsets = "appScreenshotSets"
        case apppreviewsets = "appPreviewSets"
    }

    /**
     * enum for parameter include
     */
    public enum Include_appCustomProductPagesAppCustomProductPageVersionsGetToManyRelated: String, Sendable, CaseIterable {
        case appcustomproductpage = "appCustomProductPage"
        case appcustomproductpagelocalizations = "appCustomProductPageLocalizations"
    }

    /**

     - parameter id: (path) the id of the requested resource 
     - parameter filterState: (query) filter by attribute &#39;state&#39; (optional)
     - parameter fieldsAppCustomProductPageVersions: (query) the fields to include for returned resources of type appCustomProductPageVersions (optional)
     - parameter fieldsAppCustomProductPages: (query) the fields to include for returned resources of type appCustomProductPages (optional)
     - parameter fieldsAppCustomProductPageLocalizations: (query) the fields to include for returned resources of type appCustomProductPageLocalizations (optional)
     - parameter limit: (query) maximum resources per page (optional)
     - parameter include: (query) comma-separated list of relationships to include (optional)
     - parameter limitAppCustomProductPageLocalizations: (query) maximum number of related appCustomProductPageLocalizations returned (when they are included) (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: AppCustomProductPageVersionsResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func appCustomProductPagesAppCustomProductPageVersionsGetToManyRelated(id: String, filterState: [FilterState_appCustomProductPagesAppCustomProductPageVersionsGetToManyRelated]? = nil, fieldsAppCustomProductPageVersions: [FieldsAppCustomProductPageVersions_appCustomProductPagesAppCustomProductPageVersionsGetToManyRelated]? = nil, fieldsAppCustomProductPages: [FieldsAppCustomProductPages_appCustomProductPagesAppCustomProductPageVersionsGetToManyRelated]? = nil, fieldsAppCustomProductPageLocalizations: [FieldsAppCustomProductPageLocalizations_appCustomProductPagesAppCustomProductPageVersionsGetToManyRelated]? = nil, limit: Int? = nil, include: [Include_appCustomProductPagesAppCustomProductPageVersionsGetToManyRelated]? = nil, limitAppCustomProductPageLocalizations: Int? = nil, apiConfiguration: ASCAPIConfiguration = ASCAPIConfiguration.shared) async throws(ErrorResponse) -> AppCustomProductPageVersionsResponse {
        return try await appCustomProductPagesAppCustomProductPageVersionsGetToManyRelatedWithRequestBuilder(id: id, filterState: filterState, fieldsAppCustomProductPageVersions: fieldsAppCustomProductPageVersions, fieldsAppCustomProductPages: fieldsAppCustomProductPages, fieldsAppCustomProductPageLocalizations: fieldsAppCustomProductPageLocalizations, limit: limit, include: include, limitAppCustomProductPageLocalizations: limitAppCustomProductPageLocalizations, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     - parameter urlString: next or first url from App Store Connect API
     - parameter apiConfiguration: The configuration for the http request.
     - returns: AppCustomProductPageVersionsResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func appCustomProductPagesAppCustomProductPageVersionsGetToManyRelated(urlString: String, apiConfiguration: ASCAPIConfiguration = ASCAPIConfiguration.shared) async throws(ErrorResponse) -> AppCustomProductPageVersionsResponse {
        return try await appCustomProductPagesAppCustomProductPageVersionsGetToManyRelatedWithRequestBuilder(urlString: urlString, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     - GET /v1/appCustomProductPages/{id}/appCustomProductPageVersions
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter id: (path) the id of the requested resource 
     - parameter filterState: (query) filter by attribute &#39;state&#39; (optional)
     - parameter fieldsAppCustomProductPageVersions: (query) the fields to include for returned resources of type appCustomProductPageVersions (optional)
     - parameter fieldsAppCustomProductPages: (query) the fields to include for returned resources of type appCustomProductPages (optional)
     - parameter fieldsAppCustomProductPageLocalizations: (query) the fields to include for returned resources of type appCustomProductPageLocalizations (optional)
     - parameter limit: (query) maximum resources per page (optional)
     - parameter include: (query) comma-separated list of relationships to include (optional)
     - parameter limitAppCustomProductPageLocalizations: (query) maximum number of related appCustomProductPageLocalizations returned (when they are included) (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<AppCustomProductPageVersionsResponse> 
     */
    open class func appCustomProductPagesAppCustomProductPageVersionsGetToManyRelatedWithRequestBuilder(id: String, filterState: [FilterState_appCustomProductPagesAppCustomProductPageVersionsGetToManyRelated]? = nil, fieldsAppCustomProductPageVersions: [FieldsAppCustomProductPageVersions_appCustomProductPagesAppCustomProductPageVersionsGetToManyRelated]? = nil, fieldsAppCustomProductPages: [FieldsAppCustomProductPages_appCustomProductPagesAppCustomProductPageVersionsGetToManyRelated]? = nil, fieldsAppCustomProductPageLocalizations: [FieldsAppCustomProductPageLocalizations_appCustomProductPagesAppCustomProductPageVersionsGetToManyRelated]? = nil, limit: Int? = nil, include: [Include_appCustomProductPagesAppCustomProductPageVersionsGetToManyRelated]? = nil, limitAppCustomProductPageLocalizations: Int? = nil, apiConfiguration: ASCAPIConfiguration = ASCAPIConfiguration.shared) -> RequestBuilder<AppCustomProductPageVersionsResponse> {
        var localVariablePath = "/v1/appCustomProductPages/{id}/appCustomProductPageVersions"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "filter[state]": (wrappedValue: filterState?.encodeToJSON(codableHelper: apiConfiguration.codableHelper), isExplode: false),
            "fields[appCustomProductPageVersions]": (wrappedValue: fieldsAppCustomProductPageVersions?.encodeToJSON(codableHelper: apiConfiguration.codableHelper), isExplode: false),
            "fields[appCustomProductPages]": (wrappedValue: fieldsAppCustomProductPages?.encodeToJSON(codableHelper: apiConfiguration.codableHelper), isExplode: false),
            "fields[appCustomProductPageLocalizations]": (wrappedValue: fieldsAppCustomProductPageLocalizations?.encodeToJSON(codableHelper: apiConfiguration.codableHelper), isExplode: false),
            "limit": (wrappedValue: limit?.encodeToJSON(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "include": (wrappedValue: include?.encodeToJSON(codableHelper: apiConfiguration.codableHelper), isExplode: false),
            "limit[appCustomProductPageLocalizations]": (wrappedValue: limitAppCustomProductPageLocalizations?.encodeToJSON(codableHelper: apiConfiguration.codableHelper), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AppCustomProductPageVersionsResponse>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     - GET /v1/appCustomProductPages/{id}/appCustomProductPageVersions
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter urlString: next or first url from App Store Connect API
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<AppCustomProductPageVersionsResponse> 
     */
    open class func appCustomProductPagesAppCustomProductPageVersionsGetToManyRelatedWithRequestBuilder(urlString: String, apiConfiguration: ASCAPIConfiguration = ASCAPIConfiguration.shared) -> RequestBuilder<AppCustomProductPageVersionsResponse> {
        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AppCustomProductPageVersionsResponse>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: urlString, parameters: nil, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**

     - parameter appCustomProductPageCreateRequest: (body) AppCustomProductPage representation 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: AppCustomProductPageResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func appCustomProductPagesCreateInstance(appCustomProductPageCreateRequest: AppCustomProductPageCreateRequest, apiConfiguration: ASCAPIConfiguration = ASCAPIConfiguration.shared) async throws(ErrorResponse) -> AppCustomProductPageResponse {
        return try await appCustomProductPagesCreateInstanceWithRequestBuilder(appCustomProductPageCreateRequest: appCustomProductPageCreateRequest, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     - parameter urlString: next or first url from App Store Connect API
     - parameter apiConfiguration: The configuration for the http request.
     - returns: AppCustomProductPageResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func appCustomProductPagesCreateInstance(urlString: String, apiConfiguration: ASCAPIConfiguration = ASCAPIConfiguration.shared) async throws(ErrorResponse) -> AppCustomProductPageResponse {
        return try await appCustomProductPagesCreateInstanceWithRequestBuilder(urlString: urlString, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     - POST /v1/appCustomProductPages
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter appCustomProductPageCreateRequest: (body) AppCustomProductPage representation 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<AppCustomProductPageResponse> 
     */
    open class func appCustomProductPagesCreateInstanceWithRequestBuilder(appCustomProductPageCreateRequest: AppCustomProductPageCreateRequest, apiConfiguration: ASCAPIConfiguration = ASCAPIConfiguration.shared) -> RequestBuilder<AppCustomProductPageResponse> {
        let localVariablePath = "/v1/appCustomProductPages"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: appCustomProductPageCreateRequest, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            "Content-Type": "application/json",
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AppCustomProductPageResponse>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     - POST /v1/appCustomProductPages
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter urlString: next or first url from App Store Connect API
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<AppCustomProductPageResponse> 
     */
    open class func appCustomProductPagesCreateInstanceWithRequestBuilder(urlString: String, apiConfiguration: ASCAPIConfiguration = ASCAPIConfiguration.shared) -> RequestBuilder<AppCustomProductPageResponse> {
        let localVariableNillableHeaders: [String: Any?] = [
            "Content-Type": "application/json",
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AppCustomProductPageResponse>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: urlString, parameters: nil, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**

     - parameter id: (path) the id of the requested resource 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: Void
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func appCustomProductPagesDeleteInstance(id: String, apiConfiguration: ASCAPIConfiguration = ASCAPIConfiguration.shared) async throws(ErrorResponse) {
        return try await appCustomProductPagesDeleteInstanceWithRequestBuilder(id: id, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     - parameter urlString: next or first url from App Store Connect API
     - parameter apiConfiguration: The configuration for the http request.
     - returns: Void
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func appCustomProductPagesDeleteInstance(urlString: String, apiConfiguration: ASCAPIConfiguration = ASCAPIConfiguration.shared) async throws(ErrorResponse) {
        return try await appCustomProductPagesDeleteInstanceWithRequestBuilder(urlString: urlString, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     - DELETE /v1/appCustomProductPages/{id}
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter id: (path) the id of the requested resource 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<Void> 
     */
    open class func appCustomProductPagesDeleteInstanceWithRequestBuilder(id: String, apiConfiguration: ASCAPIConfiguration = ASCAPIConfiguration.shared) -> RequestBuilder<Void> {
        var localVariablePath = "/v1/appCustomProductPages/{id}"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Void>.Type = apiConfiguration.requestBuilderFactory.getNonDecodableBuilder()

        return localVariableRequestBuilder.init(method: "DELETE", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     - DELETE /v1/appCustomProductPages/{id}
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter urlString: next or first url from App Store Connect API
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<Void> 
     */
    open class func appCustomProductPagesDeleteInstanceWithRequestBuilder(urlString: String, apiConfiguration: ASCAPIConfiguration = ASCAPIConfiguration.shared) -> RequestBuilder<Void> {
        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Void>.Type = apiConfiguration.requestBuilderFactory.getNonDecodableBuilder()

        return localVariableRequestBuilder.init(method: "DELETE", URLString: urlString, parameters: nil, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     * enum for parameter fieldsAppCustomProductPages
     */
    public enum FieldsAppCustomProductPages_appCustomProductPagesGetInstance: String, Sendable, CaseIterable {
        case name = "name"
        case url = "url"
        case visible = "visible"
        case app = "app"
        case appcustomproductpageversions = "appCustomProductPageVersions"
    }

    /**
     * enum for parameter fieldsAppCustomProductPageVersions
     */
    public enum FieldsAppCustomProductPageVersions_appCustomProductPagesGetInstance: String, Sendable, CaseIterable {
        case version = "version"
        case state = "state"
        case deeplink = "deepLink"
        case appcustomproductpage = "appCustomProductPage"
        case appcustomproductpagelocalizations = "appCustomProductPageLocalizations"
    }

    /**
     * enum for parameter include
     */
    public enum Include_appCustomProductPagesGetInstance: String, Sendable, CaseIterable {
        case app = "app"
        case appcustomproductpageversions = "appCustomProductPageVersions"
    }

    /**

     - parameter id: (path) the id of the requested resource 
     - parameter fieldsAppCustomProductPages: (query) the fields to include for returned resources of type appCustomProductPages (optional)
     - parameter fieldsAppCustomProductPageVersions: (query) the fields to include for returned resources of type appCustomProductPageVersions (optional)
     - parameter include: (query) comma-separated list of relationships to include (optional)
     - parameter limitAppCustomProductPageVersions: (query) maximum number of related appCustomProductPageVersions returned (when they are included) (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: AppCustomProductPageResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func appCustomProductPagesGetInstance(id: String, fieldsAppCustomProductPages: [FieldsAppCustomProductPages_appCustomProductPagesGetInstance]? = nil, fieldsAppCustomProductPageVersions: [FieldsAppCustomProductPageVersions_appCustomProductPagesGetInstance]? = nil, include: [Include_appCustomProductPagesGetInstance]? = nil, limitAppCustomProductPageVersions: Int? = nil, apiConfiguration: ASCAPIConfiguration = ASCAPIConfiguration.shared) async throws(ErrorResponse) -> AppCustomProductPageResponse {
        return try await appCustomProductPagesGetInstanceWithRequestBuilder(id: id, fieldsAppCustomProductPages: fieldsAppCustomProductPages, fieldsAppCustomProductPageVersions: fieldsAppCustomProductPageVersions, include: include, limitAppCustomProductPageVersions: limitAppCustomProductPageVersions, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     - parameter urlString: next or first url from App Store Connect API
     - parameter apiConfiguration: The configuration for the http request.
     - returns: AppCustomProductPageResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func appCustomProductPagesGetInstance(urlString: String, apiConfiguration: ASCAPIConfiguration = ASCAPIConfiguration.shared) async throws(ErrorResponse) -> AppCustomProductPageResponse {
        return try await appCustomProductPagesGetInstanceWithRequestBuilder(urlString: urlString, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     - GET /v1/appCustomProductPages/{id}
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter id: (path) the id of the requested resource 
     - parameter fieldsAppCustomProductPages: (query) the fields to include for returned resources of type appCustomProductPages (optional)
     - parameter fieldsAppCustomProductPageVersions: (query) the fields to include for returned resources of type appCustomProductPageVersions (optional)
     - parameter include: (query) comma-separated list of relationships to include (optional)
     - parameter limitAppCustomProductPageVersions: (query) maximum number of related appCustomProductPageVersions returned (when they are included) (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<AppCustomProductPageResponse> 
     */
    open class func appCustomProductPagesGetInstanceWithRequestBuilder(id: String, fieldsAppCustomProductPages: [FieldsAppCustomProductPages_appCustomProductPagesGetInstance]? = nil, fieldsAppCustomProductPageVersions: [FieldsAppCustomProductPageVersions_appCustomProductPagesGetInstance]? = nil, include: [Include_appCustomProductPagesGetInstance]? = nil, limitAppCustomProductPageVersions: Int? = nil, apiConfiguration: ASCAPIConfiguration = ASCAPIConfiguration.shared) -> RequestBuilder<AppCustomProductPageResponse> {
        var localVariablePath = "/v1/appCustomProductPages/{id}"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "fields[appCustomProductPages]": (wrappedValue: fieldsAppCustomProductPages?.encodeToJSON(codableHelper: apiConfiguration.codableHelper), isExplode: false),
            "fields[appCustomProductPageVersions]": (wrappedValue: fieldsAppCustomProductPageVersions?.encodeToJSON(codableHelper: apiConfiguration.codableHelper), isExplode: false),
            "include": (wrappedValue: include?.encodeToJSON(codableHelper: apiConfiguration.codableHelper), isExplode: false),
            "limit[appCustomProductPageVersions]": (wrappedValue: limitAppCustomProductPageVersions?.encodeToJSON(codableHelper: apiConfiguration.codableHelper), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AppCustomProductPageResponse>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     - GET /v1/appCustomProductPages/{id}
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter urlString: next or first url from App Store Connect API
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<AppCustomProductPageResponse> 
     */
    open class func appCustomProductPagesGetInstanceWithRequestBuilder(urlString: String, apiConfiguration: ASCAPIConfiguration = ASCAPIConfiguration.shared) -> RequestBuilder<AppCustomProductPageResponse> {
        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AppCustomProductPageResponse>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: urlString, parameters: nil, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**

     - parameter id: (path) the id of the requested resource 
     - parameter appCustomProductPageUpdateRequest: (body) AppCustomProductPage representation 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: AppCustomProductPageResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func appCustomProductPagesUpdateInstance(id: String, appCustomProductPageUpdateRequest: AppCustomProductPageUpdateRequest, apiConfiguration: ASCAPIConfiguration = ASCAPIConfiguration.shared) async throws(ErrorResponse) -> AppCustomProductPageResponse {
        return try await appCustomProductPagesUpdateInstanceWithRequestBuilder(id: id, appCustomProductPageUpdateRequest: appCustomProductPageUpdateRequest, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     - parameter urlString: next or first url from App Store Connect API
     - parameter apiConfiguration: The configuration for the http request.
     - returns: AppCustomProductPageResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func appCustomProductPagesUpdateInstance(urlString: String, apiConfiguration: ASCAPIConfiguration = ASCAPIConfiguration.shared) async throws(ErrorResponse) -> AppCustomProductPageResponse {
        return try await appCustomProductPagesUpdateInstanceWithRequestBuilder(urlString: urlString, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     - PATCH /v1/appCustomProductPages/{id}
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter id: (path) the id of the requested resource 
     - parameter appCustomProductPageUpdateRequest: (body) AppCustomProductPage representation 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<AppCustomProductPageResponse> 
     */
    open class func appCustomProductPagesUpdateInstanceWithRequestBuilder(id: String, appCustomProductPageUpdateRequest: AppCustomProductPageUpdateRequest, apiConfiguration: ASCAPIConfiguration = ASCAPIConfiguration.shared) -> RequestBuilder<AppCustomProductPageResponse> {
        var localVariablePath = "/v1/appCustomProductPages/{id}"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: appCustomProductPageUpdateRequest, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            "Content-Type": "application/json",
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AppCustomProductPageResponse>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PATCH", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     - PATCH /v1/appCustomProductPages/{id}
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter urlString: next or first url from App Store Connect API
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<AppCustomProductPageResponse> 
     */
    open class func appCustomProductPagesUpdateInstanceWithRequestBuilder(urlString: String, apiConfiguration: ASCAPIConfiguration = ASCAPIConfiguration.shared) -> RequestBuilder<AppCustomProductPageResponse> {
        let localVariableNillableHeaders: [String: Any?] = [
            "Content-Type": "application/json",
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AppCustomProductPageResponse>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PATCH", URLString: urlString, parameters: nil, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }
}
