//
// SubscriptionAppStoreReviewScreenshotsAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

open class SubscriptionAppStoreReviewScreenshotsAPI {

    /**

     - parameter subscriptionAppStoreReviewScreenshotCreateRequest: (body) SubscriptionAppStoreReviewScreenshot representation 
     - returns: SubscriptionAppStoreReviewScreenshotResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func subscriptionAppStoreReviewScreenshotsCreateInstance(subscriptionAppStoreReviewScreenshotCreateRequest: SubscriptionAppStoreReviewScreenshotCreateRequest) async throws -> SubscriptionAppStoreReviewScreenshotResponse {
        return try await subscriptionAppStoreReviewScreenshotsCreateInstanceWithRequestBuilder(subscriptionAppStoreReviewScreenshotCreateRequest: subscriptionAppStoreReviewScreenshotCreateRequest).execute().body
    }

    /**
     - parameter urlString: next or first url from App Store Connect API
     - returns: SubscriptionAppStoreReviewScreenshotResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func subscriptionAppStoreReviewScreenshotsCreateInstance(urlString: String) async throws -> SubscriptionAppStoreReviewScreenshotResponse {
        return try await subscriptionAppStoreReviewScreenshotsCreateInstanceWithRequestBuilder(urlString: urlString).execute().body
    }

    /**
     - POST /v1/subscriptionAppStoreReviewScreenshots
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter subscriptionAppStoreReviewScreenshotCreateRequest: (body) SubscriptionAppStoreReviewScreenshot representation 
     - returns: RequestBuilder<SubscriptionAppStoreReviewScreenshotResponse> 
     */
    open class func subscriptionAppStoreReviewScreenshotsCreateInstanceWithRequestBuilder(subscriptionAppStoreReviewScreenshotCreateRequest: SubscriptionAppStoreReviewScreenshotCreateRequest) -> RequestBuilder<SubscriptionAppStoreReviewScreenshotResponse> {
        let localVariablePath = "/v1/subscriptionAppStoreReviewScreenshots"
        let localVariableURLString = ASCAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: subscriptionAppStoreReviewScreenshotCreateRequest)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            "Content-Type": "application/json",
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<SubscriptionAppStoreReviewScreenshotResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     - POST /v1/subscriptionAppStoreReviewScreenshots
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter urlString: next or first url from App Store Connect API
     - returns: RequestBuilder<SubscriptionAppStoreReviewScreenshotResponse> 
     */
    open class func subscriptionAppStoreReviewScreenshotsCreateInstanceWithRequestBuilder(urlString: String) -> RequestBuilder<SubscriptionAppStoreReviewScreenshotResponse> {
        let localVariableRequestBuilder: RequestBuilder<SubscriptionAppStoreReviewScreenshotResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: urlString, parameters: nil, headers: nil, requiresAuthentication: true)
    }

    /**

     - parameter id: (path) the id of the requested resource 
     - returns: Void
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func subscriptionAppStoreReviewScreenshotsDeleteInstance(id: String) async throws {
        return try await subscriptionAppStoreReviewScreenshotsDeleteInstanceWithRequestBuilder(id: id).execute().body
    }

    /**
     - parameter urlString: next or first url from App Store Connect API
     - returns: Void
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func subscriptionAppStoreReviewScreenshotsDeleteInstance(urlString: String) async throws {
        return try await subscriptionAppStoreReviewScreenshotsDeleteInstanceWithRequestBuilder(urlString: urlString).execute().body
    }

    /**
     - DELETE /v1/subscriptionAppStoreReviewScreenshots/{id}
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter id: (path) the id of the requested resource 
     - returns: RequestBuilder<Void> 
     */
    open class func subscriptionAppStoreReviewScreenshotsDeleteInstanceWithRequestBuilder(id: String) -> RequestBuilder<Void> {
        var localVariablePath = "/v1/subscriptionAppStoreReviewScreenshots/{id}"
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
     - DELETE /v1/subscriptionAppStoreReviewScreenshots/{id}
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter urlString: next or first url from App Store Connect API
     - returns: RequestBuilder<Void> 
     */
    open class func subscriptionAppStoreReviewScreenshotsDeleteInstanceWithRequestBuilder(urlString: String) -> RequestBuilder<Void> {
        let localVariableRequestBuilder: RequestBuilder<Void>.Type = ASCAPI.requestBuilderFactory.getNonDecodableBuilder()

        return localVariableRequestBuilder.init(method: "DELETE", URLString: urlString, parameters: nil, headers: nil, requiresAuthentication: true)
    }

    /**
     * enum for parameter fieldsSubscriptionAppStoreReviewScreenshots
     */
    public enum FieldsSubscriptionAppStoreReviewScreenshots_subscriptionAppStoreReviewScreenshotsGetInstance: String, CaseIterable {
        case assetdeliverystate = "assetDeliveryState"
        case assettoken = "assetToken"
        case assettype = "assetType"
        case filename = "fileName"
        case filesize = "fileSize"
        case imageasset = "imageAsset"
        case sourcefilechecksum = "sourceFileChecksum"
        case subscription = "subscription"
        case uploadoperations = "uploadOperations"
        case uploaded = "uploaded"
    }

    /**
     * enum for parameter include
     */
    public enum Include_subscriptionAppStoreReviewScreenshotsGetInstance: String, CaseIterable {
        case subscription = "subscription"
    }

    /**

     - parameter id: (path) the id of the requested resource 
     - parameter fieldsSubscriptionAppStoreReviewScreenshots: (query) the fields to include for returned resources of type subscriptionAppStoreReviewScreenshots (optional)
     - parameter include: (query) comma-separated list of relationships to include (optional)
     - returns: SubscriptionAppStoreReviewScreenshotResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func subscriptionAppStoreReviewScreenshotsGetInstance(id: String, fieldsSubscriptionAppStoreReviewScreenshots: [FieldsSubscriptionAppStoreReviewScreenshots_subscriptionAppStoreReviewScreenshotsGetInstance]? = nil, include: [Include_subscriptionAppStoreReviewScreenshotsGetInstance]? = nil) async throws -> SubscriptionAppStoreReviewScreenshotResponse {
        return try await subscriptionAppStoreReviewScreenshotsGetInstanceWithRequestBuilder(id: id, fieldsSubscriptionAppStoreReviewScreenshots: fieldsSubscriptionAppStoreReviewScreenshots, include: include).execute().body
    }

    /**
     - parameter urlString: next or first url from App Store Connect API
     - returns: SubscriptionAppStoreReviewScreenshotResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func subscriptionAppStoreReviewScreenshotsGetInstance(urlString: String) async throws -> SubscriptionAppStoreReviewScreenshotResponse {
        return try await subscriptionAppStoreReviewScreenshotsGetInstanceWithRequestBuilder(urlString: urlString).execute().body
    }

    /**
     - GET /v1/subscriptionAppStoreReviewScreenshots/{id}
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter id: (path) the id of the requested resource 
     - parameter fieldsSubscriptionAppStoreReviewScreenshots: (query) the fields to include for returned resources of type subscriptionAppStoreReviewScreenshots (optional)
     - parameter include: (query) comma-separated list of relationships to include (optional)
     - returns: RequestBuilder<SubscriptionAppStoreReviewScreenshotResponse> 
     */
    open class func subscriptionAppStoreReviewScreenshotsGetInstanceWithRequestBuilder(id: String, fieldsSubscriptionAppStoreReviewScreenshots: [FieldsSubscriptionAppStoreReviewScreenshots_subscriptionAppStoreReviewScreenshotsGetInstance]? = nil, include: [Include_subscriptionAppStoreReviewScreenshotsGetInstance]? = nil) -> RequestBuilder<SubscriptionAppStoreReviewScreenshotResponse> {
        var localVariablePath = "/v1/subscriptionAppStoreReviewScreenshots/{id}"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = ASCAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "fields[subscriptionAppStoreReviewScreenshots]": (wrappedValue: fieldsSubscriptionAppStoreReviewScreenshots?.encodeToJSON(), isExplode: false),
            "include": (wrappedValue: include?.encodeToJSON(), isExplode: false),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<SubscriptionAppStoreReviewScreenshotResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     - GET /v1/subscriptionAppStoreReviewScreenshots/{id}
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter urlString: next or first url from App Store Connect API
     - returns: RequestBuilder<SubscriptionAppStoreReviewScreenshotResponse> 
     */
    open class func subscriptionAppStoreReviewScreenshotsGetInstanceWithRequestBuilder(urlString: String) -> RequestBuilder<SubscriptionAppStoreReviewScreenshotResponse> {
        let localVariableRequestBuilder: RequestBuilder<SubscriptionAppStoreReviewScreenshotResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: urlString, parameters: nil, headers: nil, requiresAuthentication: true)
    }

    /**

     - parameter id: (path) the id of the requested resource 
     - parameter subscriptionAppStoreReviewScreenshotUpdateRequest: (body) SubscriptionAppStoreReviewScreenshot representation 
     - returns: SubscriptionAppStoreReviewScreenshotResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func subscriptionAppStoreReviewScreenshotsUpdateInstance(id: String, subscriptionAppStoreReviewScreenshotUpdateRequest: SubscriptionAppStoreReviewScreenshotUpdateRequest) async throws -> SubscriptionAppStoreReviewScreenshotResponse {
        return try await subscriptionAppStoreReviewScreenshotsUpdateInstanceWithRequestBuilder(id: id, subscriptionAppStoreReviewScreenshotUpdateRequest: subscriptionAppStoreReviewScreenshotUpdateRequest).execute().body
    }

    /**
     - parameter urlString: next or first url from App Store Connect API
     - returns: SubscriptionAppStoreReviewScreenshotResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func subscriptionAppStoreReviewScreenshotsUpdateInstance(urlString: String) async throws -> SubscriptionAppStoreReviewScreenshotResponse {
        return try await subscriptionAppStoreReviewScreenshotsUpdateInstanceWithRequestBuilder(urlString: urlString).execute().body
    }

    /**
     - PATCH /v1/subscriptionAppStoreReviewScreenshots/{id}
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter id: (path) the id of the requested resource 
     - parameter subscriptionAppStoreReviewScreenshotUpdateRequest: (body) SubscriptionAppStoreReviewScreenshot representation 
     - returns: RequestBuilder<SubscriptionAppStoreReviewScreenshotResponse> 
     */
    open class func subscriptionAppStoreReviewScreenshotsUpdateInstanceWithRequestBuilder(id: String, subscriptionAppStoreReviewScreenshotUpdateRequest: SubscriptionAppStoreReviewScreenshotUpdateRequest) -> RequestBuilder<SubscriptionAppStoreReviewScreenshotResponse> {
        var localVariablePath = "/v1/subscriptionAppStoreReviewScreenshots/{id}"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = ASCAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: subscriptionAppStoreReviewScreenshotUpdateRequest)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            "Content-Type": "application/json",
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<SubscriptionAppStoreReviewScreenshotResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PATCH", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     - PATCH /v1/subscriptionAppStoreReviewScreenshots/{id}
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter urlString: next or first url from App Store Connect API
     - returns: RequestBuilder<SubscriptionAppStoreReviewScreenshotResponse> 
     */
    open class func subscriptionAppStoreReviewScreenshotsUpdateInstanceWithRequestBuilder(urlString: String) -> RequestBuilder<SubscriptionAppStoreReviewScreenshotResponse> {
        let localVariableRequestBuilder: RequestBuilder<SubscriptionAppStoreReviewScreenshotResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PATCH", URLString: urlString, parameters: nil, headers: nil, requiresAuthentication: true)
    }
}
