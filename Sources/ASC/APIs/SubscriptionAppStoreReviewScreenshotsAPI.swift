//
// SubscriptionAppStoreReviewScreenshotsAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

open class SubscriptionAppStoreReviewScreenshotsAPI {

    /**

     - parameter subscriptionAppStoreReviewScreenshotCreateRequest: (body) SubscriptionAppStoreReviewScreenshot representation 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: SubscriptionAppStoreReviewScreenshotResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func subscriptionAppStoreReviewScreenshotsCreateInstance(subscriptionAppStoreReviewScreenshotCreateRequest: SubscriptionAppStoreReviewScreenshotCreateRequest, apiConfiguration: ASCAPIConfiguration = ASCAPIConfiguration.shared) async throws(ErrorResponse) -> SubscriptionAppStoreReviewScreenshotResponse {
        return try await subscriptionAppStoreReviewScreenshotsCreateInstanceWithRequestBuilder(subscriptionAppStoreReviewScreenshotCreateRequest: subscriptionAppStoreReviewScreenshotCreateRequest, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     - parameter urlString: next or first url from App Store Connect API
     - parameter apiConfiguration: The configuration for the http request.
     - returns: SubscriptionAppStoreReviewScreenshotResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func subscriptionAppStoreReviewScreenshotsCreateInstance(urlString: String, apiConfiguration: ASCAPIConfiguration = ASCAPIConfiguration.shared) async throws(ErrorResponse) -> SubscriptionAppStoreReviewScreenshotResponse {
        return try await subscriptionAppStoreReviewScreenshotsCreateInstanceWithRequestBuilder(urlString: urlString, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     - POST /v1/subscriptionAppStoreReviewScreenshots
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter subscriptionAppStoreReviewScreenshotCreateRequest: (body) SubscriptionAppStoreReviewScreenshot representation 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<SubscriptionAppStoreReviewScreenshotResponse> 
     */
    open class func subscriptionAppStoreReviewScreenshotsCreateInstanceWithRequestBuilder(subscriptionAppStoreReviewScreenshotCreateRequest: SubscriptionAppStoreReviewScreenshotCreateRequest, apiConfiguration: ASCAPIConfiguration = ASCAPIConfiguration.shared) -> RequestBuilder<SubscriptionAppStoreReviewScreenshotResponse> {
        let localVariablePath = "/v1/subscriptionAppStoreReviewScreenshots"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: subscriptionAppStoreReviewScreenshotCreateRequest, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            "Content-Type": "application/json",
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<SubscriptionAppStoreReviewScreenshotResponse>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     - POST /v1/subscriptionAppStoreReviewScreenshots
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter urlString: next or first url from App Store Connect API
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<SubscriptionAppStoreReviewScreenshotResponse> 
     */
    open class func subscriptionAppStoreReviewScreenshotsCreateInstanceWithRequestBuilder(urlString: String, apiConfiguration: ASCAPIConfiguration = ASCAPIConfiguration.shared) -> RequestBuilder<SubscriptionAppStoreReviewScreenshotResponse> {
        let localVariableNillableHeaders: [String: Any?] = [
            "Content-Type": "application/json",
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<SubscriptionAppStoreReviewScreenshotResponse>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: urlString, parameters: nil, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**

     - parameter id: (path) the id of the requested resource 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: Void
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func subscriptionAppStoreReviewScreenshotsDeleteInstance(id: String, apiConfiguration: ASCAPIConfiguration = ASCAPIConfiguration.shared) async throws(ErrorResponse) {
        return try await subscriptionAppStoreReviewScreenshotsDeleteInstanceWithRequestBuilder(id: id, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     - parameter urlString: next or first url from App Store Connect API
     - parameter apiConfiguration: The configuration for the http request.
     - returns: Void
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func subscriptionAppStoreReviewScreenshotsDeleteInstance(urlString: String, apiConfiguration: ASCAPIConfiguration = ASCAPIConfiguration.shared) async throws(ErrorResponse) {
        return try await subscriptionAppStoreReviewScreenshotsDeleteInstanceWithRequestBuilder(urlString: urlString, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     - DELETE /v1/subscriptionAppStoreReviewScreenshots/{id}
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter id: (path) the id of the requested resource 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<Void> 
     */
    open class func subscriptionAppStoreReviewScreenshotsDeleteInstanceWithRequestBuilder(id: String, apiConfiguration: ASCAPIConfiguration = ASCAPIConfiguration.shared) -> RequestBuilder<Void> {
        var localVariablePath = "/v1/subscriptionAppStoreReviewScreenshots/{id}"
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
     - DELETE /v1/subscriptionAppStoreReviewScreenshots/{id}
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter urlString: next or first url from App Store Connect API
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<Void> 
     */
    open class func subscriptionAppStoreReviewScreenshotsDeleteInstanceWithRequestBuilder(urlString: String, apiConfiguration: ASCAPIConfiguration = ASCAPIConfiguration.shared) -> RequestBuilder<Void> {
        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Void>.Type = apiConfiguration.requestBuilderFactory.getNonDecodableBuilder()

        return localVariableRequestBuilder.init(method: "DELETE", URLString: urlString, parameters: nil, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     * enum for parameter fieldsSubscriptionAppStoreReviewScreenshots
     */
    public enum FieldsSubscriptionAppStoreReviewScreenshots_subscriptionAppStoreReviewScreenshotsGetInstance: String, Sendable, CaseIterable {
        case filesize = "fileSize"
        case filename = "fileName"
        case sourcefilechecksum = "sourceFileChecksum"
        case imageasset = "imageAsset"
        case assettoken = "assetToken"
        case assettype = "assetType"
        case uploadoperations = "uploadOperations"
        case assetdeliverystate = "assetDeliveryState"
        case subscription = "subscription"
    }

    /**
     * enum for parameter include
     */
    public enum Include_subscriptionAppStoreReviewScreenshotsGetInstance: String, Sendable, CaseIterable {
        case subscription = "subscription"
    }

    /**

     - parameter id: (path) the id of the requested resource 
     - parameter fieldsSubscriptionAppStoreReviewScreenshots: (query) the fields to include for returned resources of type subscriptionAppStoreReviewScreenshots (optional)
     - parameter include: (query) comma-separated list of relationships to include (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: SubscriptionAppStoreReviewScreenshotResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func subscriptionAppStoreReviewScreenshotsGetInstance(id: String, fieldsSubscriptionAppStoreReviewScreenshots: [FieldsSubscriptionAppStoreReviewScreenshots_subscriptionAppStoreReviewScreenshotsGetInstance]? = nil, include: [Include_subscriptionAppStoreReviewScreenshotsGetInstance]? = nil, apiConfiguration: ASCAPIConfiguration = ASCAPIConfiguration.shared) async throws(ErrorResponse) -> SubscriptionAppStoreReviewScreenshotResponse {
        return try await subscriptionAppStoreReviewScreenshotsGetInstanceWithRequestBuilder(id: id, fieldsSubscriptionAppStoreReviewScreenshots: fieldsSubscriptionAppStoreReviewScreenshots, include: include, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     - parameter urlString: next or first url from App Store Connect API
     - parameter apiConfiguration: The configuration for the http request.
     - returns: SubscriptionAppStoreReviewScreenshotResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func subscriptionAppStoreReviewScreenshotsGetInstance(urlString: String, apiConfiguration: ASCAPIConfiguration = ASCAPIConfiguration.shared) async throws(ErrorResponse) -> SubscriptionAppStoreReviewScreenshotResponse {
        return try await subscriptionAppStoreReviewScreenshotsGetInstanceWithRequestBuilder(urlString: urlString, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     - GET /v1/subscriptionAppStoreReviewScreenshots/{id}
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter id: (path) the id of the requested resource 
     - parameter fieldsSubscriptionAppStoreReviewScreenshots: (query) the fields to include for returned resources of type subscriptionAppStoreReviewScreenshots (optional)
     - parameter include: (query) comma-separated list of relationships to include (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<SubscriptionAppStoreReviewScreenshotResponse> 
     */
    open class func subscriptionAppStoreReviewScreenshotsGetInstanceWithRequestBuilder(id: String, fieldsSubscriptionAppStoreReviewScreenshots: [FieldsSubscriptionAppStoreReviewScreenshots_subscriptionAppStoreReviewScreenshotsGetInstance]? = nil, include: [Include_subscriptionAppStoreReviewScreenshotsGetInstance]? = nil, apiConfiguration: ASCAPIConfiguration = ASCAPIConfiguration.shared) -> RequestBuilder<SubscriptionAppStoreReviewScreenshotResponse> {
        var localVariablePath = "/v1/subscriptionAppStoreReviewScreenshots/{id}"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "fields[subscriptionAppStoreReviewScreenshots]": (wrappedValue: fieldsSubscriptionAppStoreReviewScreenshots?.encodeToJSON(codableHelper: apiConfiguration.codableHelper), isExplode: false),
            "include": (wrappedValue: include?.encodeToJSON(codableHelper: apiConfiguration.codableHelper), isExplode: false),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<SubscriptionAppStoreReviewScreenshotResponse>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     - GET /v1/subscriptionAppStoreReviewScreenshots/{id}
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter urlString: next or first url from App Store Connect API
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<SubscriptionAppStoreReviewScreenshotResponse> 
     */
    open class func subscriptionAppStoreReviewScreenshotsGetInstanceWithRequestBuilder(urlString: String, apiConfiguration: ASCAPIConfiguration = ASCAPIConfiguration.shared) -> RequestBuilder<SubscriptionAppStoreReviewScreenshotResponse> {
        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<SubscriptionAppStoreReviewScreenshotResponse>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: urlString, parameters: nil, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**

     - parameter id: (path) the id of the requested resource 
     - parameter subscriptionAppStoreReviewScreenshotUpdateRequest: (body) SubscriptionAppStoreReviewScreenshot representation 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: SubscriptionAppStoreReviewScreenshotResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func subscriptionAppStoreReviewScreenshotsUpdateInstance(id: String, subscriptionAppStoreReviewScreenshotUpdateRequest: SubscriptionAppStoreReviewScreenshotUpdateRequest, apiConfiguration: ASCAPIConfiguration = ASCAPIConfiguration.shared) async throws(ErrorResponse) -> SubscriptionAppStoreReviewScreenshotResponse {
        return try await subscriptionAppStoreReviewScreenshotsUpdateInstanceWithRequestBuilder(id: id, subscriptionAppStoreReviewScreenshotUpdateRequest: subscriptionAppStoreReviewScreenshotUpdateRequest, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     - parameter urlString: next or first url from App Store Connect API
     - parameter apiConfiguration: The configuration for the http request.
     - returns: SubscriptionAppStoreReviewScreenshotResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func subscriptionAppStoreReviewScreenshotsUpdateInstance(urlString: String, apiConfiguration: ASCAPIConfiguration = ASCAPIConfiguration.shared) async throws(ErrorResponse) -> SubscriptionAppStoreReviewScreenshotResponse {
        return try await subscriptionAppStoreReviewScreenshotsUpdateInstanceWithRequestBuilder(urlString: urlString, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     - PATCH /v1/subscriptionAppStoreReviewScreenshots/{id}
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter id: (path) the id of the requested resource 
     - parameter subscriptionAppStoreReviewScreenshotUpdateRequest: (body) SubscriptionAppStoreReviewScreenshot representation 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<SubscriptionAppStoreReviewScreenshotResponse> 
     */
    open class func subscriptionAppStoreReviewScreenshotsUpdateInstanceWithRequestBuilder(id: String, subscriptionAppStoreReviewScreenshotUpdateRequest: SubscriptionAppStoreReviewScreenshotUpdateRequest, apiConfiguration: ASCAPIConfiguration = ASCAPIConfiguration.shared) -> RequestBuilder<SubscriptionAppStoreReviewScreenshotResponse> {
        var localVariablePath = "/v1/subscriptionAppStoreReviewScreenshots/{id}"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: subscriptionAppStoreReviewScreenshotUpdateRequest, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            "Content-Type": "application/json",
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<SubscriptionAppStoreReviewScreenshotResponse>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PATCH", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     - PATCH /v1/subscriptionAppStoreReviewScreenshots/{id}
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter urlString: next or first url from App Store Connect API
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<SubscriptionAppStoreReviewScreenshotResponse> 
     */
    open class func subscriptionAppStoreReviewScreenshotsUpdateInstanceWithRequestBuilder(urlString: String, apiConfiguration: ASCAPIConfiguration = ASCAPIConfiguration.shared) -> RequestBuilder<SubscriptionAppStoreReviewScreenshotResponse> {
        let localVariableNillableHeaders: [String: Any?] = [
            "Content-Type": "application/json",
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<SubscriptionAppStoreReviewScreenshotResponse>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PATCH", URLString: urlString, parameters: nil, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }
}
