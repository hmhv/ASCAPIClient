//
// AppEventScreenshotsAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

open class AppEventScreenshotsAPI {

    /**

     - parameter appEventScreenshotCreateRequest: (body) AppEventScreenshot representation 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: AppEventScreenshotResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func appEventScreenshotsCreateInstance(appEventScreenshotCreateRequest: AppEventScreenshotCreateRequest, apiConfiguration: ASCAPIConfiguration = ASCAPIConfiguration.shared) async throws(ErrorResponse) -> AppEventScreenshotResponse {
        return try await appEventScreenshotsCreateInstanceWithRequestBuilder(appEventScreenshotCreateRequest: appEventScreenshotCreateRequest, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     - parameter urlString: next or first url from App Store Connect API
     - parameter apiConfiguration: The configuration for the http request.
     - returns: AppEventScreenshotResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func appEventScreenshotsCreateInstance(urlString: String, apiConfiguration: ASCAPIConfiguration = ASCAPIConfiguration.shared) async throws(ErrorResponse) -> AppEventScreenshotResponse {
        return try await appEventScreenshotsCreateInstanceWithRequestBuilder(urlString: urlString, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     - POST /v1/appEventScreenshots
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter appEventScreenshotCreateRequest: (body) AppEventScreenshot representation 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<AppEventScreenshotResponse> 
     */
    open class func appEventScreenshotsCreateInstanceWithRequestBuilder(appEventScreenshotCreateRequest: AppEventScreenshotCreateRequest, apiConfiguration: ASCAPIConfiguration = ASCAPIConfiguration.shared) -> RequestBuilder<AppEventScreenshotResponse> {
        let localVariablePath = "/v1/appEventScreenshots"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: appEventScreenshotCreateRequest, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            "Content-Type": "application/json",
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AppEventScreenshotResponse>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     - POST /v1/appEventScreenshots
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter urlString: next or first url from App Store Connect API
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<AppEventScreenshotResponse> 
     */
    open class func appEventScreenshotsCreateInstanceWithRequestBuilder(urlString: String, apiConfiguration: ASCAPIConfiguration = ASCAPIConfiguration.shared) -> RequestBuilder<AppEventScreenshotResponse> {
        let localVariableNillableHeaders: [String: Any?] = [
            "Content-Type": "application/json",
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AppEventScreenshotResponse>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: urlString, parameters: nil, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**

     - parameter id: (path) the id of the requested resource 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: Void
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func appEventScreenshotsDeleteInstance(id: String, apiConfiguration: ASCAPIConfiguration = ASCAPIConfiguration.shared) async throws(ErrorResponse) {
        return try await appEventScreenshotsDeleteInstanceWithRequestBuilder(id: id, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     - parameter urlString: next or first url from App Store Connect API
     - parameter apiConfiguration: The configuration for the http request.
     - returns: Void
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func appEventScreenshotsDeleteInstance(urlString: String, apiConfiguration: ASCAPIConfiguration = ASCAPIConfiguration.shared) async throws(ErrorResponse) {
        return try await appEventScreenshotsDeleteInstanceWithRequestBuilder(urlString: urlString, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     - DELETE /v1/appEventScreenshots/{id}
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter id: (path) the id of the requested resource 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<Void> 
     */
    open class func appEventScreenshotsDeleteInstanceWithRequestBuilder(id: String, apiConfiguration: ASCAPIConfiguration = ASCAPIConfiguration.shared) -> RequestBuilder<Void> {
        var localVariablePath = "/v1/appEventScreenshots/{id}"
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
     - DELETE /v1/appEventScreenshots/{id}
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter urlString: next or first url from App Store Connect API
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<Void> 
     */
    open class func appEventScreenshotsDeleteInstanceWithRequestBuilder(urlString: String, apiConfiguration: ASCAPIConfiguration = ASCAPIConfiguration.shared) -> RequestBuilder<Void> {
        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Void>.Type = apiConfiguration.requestBuilderFactory.getNonDecodableBuilder()

        return localVariableRequestBuilder.init(method: "DELETE", URLString: urlString, parameters: nil, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     * enum for parameter fieldsAppEventScreenshots
     */
    public enum FieldsAppEventScreenshots_appEventScreenshotsGetInstance: String, Sendable, CaseIterable {
        case filesize = "fileSize"
        case filename = "fileName"
        case imageasset = "imageAsset"
        case assettoken = "assetToken"
        case uploadoperations = "uploadOperations"
        case assetdeliverystate = "assetDeliveryState"
        case appeventassettype = "appEventAssetType"
        case appeventlocalization = "appEventLocalization"
    }

    /**
     * enum for parameter include
     */
    public enum Include_appEventScreenshotsGetInstance: String, Sendable, CaseIterable {
        case appeventlocalization = "appEventLocalization"
    }

    /**

     - parameter id: (path) the id of the requested resource 
     - parameter fieldsAppEventScreenshots: (query) the fields to include for returned resources of type appEventScreenshots (optional)
     - parameter include: (query) comma-separated list of relationships to include (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: AppEventScreenshotResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func appEventScreenshotsGetInstance(id: String, fieldsAppEventScreenshots: [FieldsAppEventScreenshots_appEventScreenshotsGetInstance]? = nil, include: [Include_appEventScreenshotsGetInstance]? = nil, apiConfiguration: ASCAPIConfiguration = ASCAPIConfiguration.shared) async throws(ErrorResponse) -> AppEventScreenshotResponse {
        return try await appEventScreenshotsGetInstanceWithRequestBuilder(id: id, fieldsAppEventScreenshots: fieldsAppEventScreenshots, include: include, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     - parameter urlString: next or first url from App Store Connect API
     - parameter apiConfiguration: The configuration for the http request.
     - returns: AppEventScreenshotResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func appEventScreenshotsGetInstance(urlString: String, apiConfiguration: ASCAPIConfiguration = ASCAPIConfiguration.shared) async throws(ErrorResponse) -> AppEventScreenshotResponse {
        return try await appEventScreenshotsGetInstanceWithRequestBuilder(urlString: urlString, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     - GET /v1/appEventScreenshots/{id}
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter id: (path) the id of the requested resource 
     - parameter fieldsAppEventScreenshots: (query) the fields to include for returned resources of type appEventScreenshots (optional)
     - parameter include: (query) comma-separated list of relationships to include (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<AppEventScreenshotResponse> 
     */
    open class func appEventScreenshotsGetInstanceWithRequestBuilder(id: String, fieldsAppEventScreenshots: [FieldsAppEventScreenshots_appEventScreenshotsGetInstance]? = nil, include: [Include_appEventScreenshotsGetInstance]? = nil, apiConfiguration: ASCAPIConfiguration = ASCAPIConfiguration.shared) -> RequestBuilder<AppEventScreenshotResponse> {
        var localVariablePath = "/v1/appEventScreenshots/{id}"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "fields[appEventScreenshots]": (wrappedValue: fieldsAppEventScreenshots?.encodeToJSON(codableHelper: apiConfiguration.codableHelper), isExplode: false),
            "include": (wrappedValue: include?.encodeToJSON(codableHelper: apiConfiguration.codableHelper), isExplode: false),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AppEventScreenshotResponse>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     - GET /v1/appEventScreenshots/{id}
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter urlString: next or first url from App Store Connect API
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<AppEventScreenshotResponse> 
     */
    open class func appEventScreenshotsGetInstanceWithRequestBuilder(urlString: String, apiConfiguration: ASCAPIConfiguration = ASCAPIConfiguration.shared) -> RequestBuilder<AppEventScreenshotResponse> {
        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AppEventScreenshotResponse>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: urlString, parameters: nil, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**

     - parameter id: (path) the id of the requested resource 
     - parameter appEventScreenshotUpdateRequest: (body) AppEventScreenshot representation 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: AppEventScreenshotResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func appEventScreenshotsUpdateInstance(id: String, appEventScreenshotUpdateRequest: AppEventScreenshotUpdateRequest, apiConfiguration: ASCAPIConfiguration = ASCAPIConfiguration.shared) async throws(ErrorResponse) -> AppEventScreenshotResponse {
        return try await appEventScreenshotsUpdateInstanceWithRequestBuilder(id: id, appEventScreenshotUpdateRequest: appEventScreenshotUpdateRequest, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     - parameter urlString: next or first url from App Store Connect API
     - parameter apiConfiguration: The configuration for the http request.
     - returns: AppEventScreenshotResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func appEventScreenshotsUpdateInstance(urlString: String, apiConfiguration: ASCAPIConfiguration = ASCAPIConfiguration.shared) async throws(ErrorResponse) -> AppEventScreenshotResponse {
        return try await appEventScreenshotsUpdateInstanceWithRequestBuilder(urlString: urlString, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     - PATCH /v1/appEventScreenshots/{id}
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter id: (path) the id of the requested resource 
     - parameter appEventScreenshotUpdateRequest: (body) AppEventScreenshot representation 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<AppEventScreenshotResponse> 
     */
    open class func appEventScreenshotsUpdateInstanceWithRequestBuilder(id: String, appEventScreenshotUpdateRequest: AppEventScreenshotUpdateRequest, apiConfiguration: ASCAPIConfiguration = ASCAPIConfiguration.shared) -> RequestBuilder<AppEventScreenshotResponse> {
        var localVariablePath = "/v1/appEventScreenshots/{id}"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: appEventScreenshotUpdateRequest, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            "Content-Type": "application/json",
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AppEventScreenshotResponse>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PATCH", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     - PATCH /v1/appEventScreenshots/{id}
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter urlString: next or first url from App Store Connect API
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<AppEventScreenshotResponse> 
     */
    open class func appEventScreenshotsUpdateInstanceWithRequestBuilder(urlString: String, apiConfiguration: ASCAPIConfiguration = ASCAPIConfiguration.shared) -> RequestBuilder<AppEventScreenshotResponse> {
        let localVariableNillableHeaders: [String: Any?] = [
            "Content-Type": "application/json",
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AppEventScreenshotResponse>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PATCH", URLString: urlString, parameters: nil, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }
}
