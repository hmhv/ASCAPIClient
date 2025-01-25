//
// InAppPurchaseAppStoreReviewScreenshotsAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

open class InAppPurchaseAppStoreReviewScreenshotsAPI {

    /**

     - parameter inAppPurchaseAppStoreReviewScreenshotCreateRequest: (body) InAppPurchaseAppStoreReviewScreenshot representation 
     - returns: InAppPurchaseAppStoreReviewScreenshotResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func inAppPurchaseAppStoreReviewScreenshotsCreateInstance(inAppPurchaseAppStoreReviewScreenshotCreateRequest: InAppPurchaseAppStoreReviewScreenshotCreateRequest) async throws -> InAppPurchaseAppStoreReviewScreenshotResponse {
        return try await inAppPurchaseAppStoreReviewScreenshotsCreateInstanceWithRequestBuilder(inAppPurchaseAppStoreReviewScreenshotCreateRequest: inAppPurchaseAppStoreReviewScreenshotCreateRequest).execute().body
    }

    /**
     - parameter urlString: next or first url from App Store Connect API
     - returns: InAppPurchaseAppStoreReviewScreenshotResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func inAppPurchaseAppStoreReviewScreenshotsCreateInstance(urlString: String) async throws -> InAppPurchaseAppStoreReviewScreenshotResponse {
        return try await inAppPurchaseAppStoreReviewScreenshotsCreateInstanceWithRequestBuilder(urlString: urlString).execute().body
    }

    /**
     - POST /v1/inAppPurchaseAppStoreReviewScreenshots
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter inAppPurchaseAppStoreReviewScreenshotCreateRequest: (body) InAppPurchaseAppStoreReviewScreenshot representation 
     - returns: RequestBuilder<InAppPurchaseAppStoreReviewScreenshotResponse> 
     */
    open class func inAppPurchaseAppStoreReviewScreenshotsCreateInstanceWithRequestBuilder(inAppPurchaseAppStoreReviewScreenshotCreateRequest: InAppPurchaseAppStoreReviewScreenshotCreateRequest) -> RequestBuilder<InAppPurchaseAppStoreReviewScreenshotResponse> {
        let localVariablePath = "/v1/inAppPurchaseAppStoreReviewScreenshots"
        let localVariableURLString = ASCAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: inAppPurchaseAppStoreReviewScreenshotCreateRequest)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            "Content-Type": "application/json",
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<InAppPurchaseAppStoreReviewScreenshotResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     - POST /v1/inAppPurchaseAppStoreReviewScreenshots
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter urlString: next or first url from App Store Connect API
     - returns: RequestBuilder<InAppPurchaseAppStoreReviewScreenshotResponse> 
     */
    open class func inAppPurchaseAppStoreReviewScreenshotsCreateInstanceWithRequestBuilder(urlString: String) -> RequestBuilder<InAppPurchaseAppStoreReviewScreenshotResponse> {
        let localVariableNillableHeaders: [String: Any?] = [
            "Content-Type": "application/json",
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<InAppPurchaseAppStoreReviewScreenshotResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: urlString, parameters: nil, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**

     - parameter id: (path) the id of the requested resource 
     - returns: Void
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func inAppPurchaseAppStoreReviewScreenshotsDeleteInstance(id: String) async throws {
        return try await inAppPurchaseAppStoreReviewScreenshotsDeleteInstanceWithRequestBuilder(id: id).execute().body
    }

    /**
     - parameter urlString: next or first url from App Store Connect API
     - returns: Void
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func inAppPurchaseAppStoreReviewScreenshotsDeleteInstance(urlString: String) async throws {
        return try await inAppPurchaseAppStoreReviewScreenshotsDeleteInstanceWithRequestBuilder(urlString: urlString).execute().body
    }

    /**
     - DELETE /v1/inAppPurchaseAppStoreReviewScreenshots/{id}
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter id: (path) the id of the requested resource 
     - returns: RequestBuilder<Void> 
     */
    open class func inAppPurchaseAppStoreReviewScreenshotsDeleteInstanceWithRequestBuilder(id: String) -> RequestBuilder<Void> {
        var localVariablePath = "/v1/inAppPurchaseAppStoreReviewScreenshots/{id}"
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
     - DELETE /v1/inAppPurchaseAppStoreReviewScreenshots/{id}
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter urlString: next or first url from App Store Connect API
     - returns: RequestBuilder<Void> 
     */
    open class func inAppPurchaseAppStoreReviewScreenshotsDeleteInstanceWithRequestBuilder(urlString: String) -> RequestBuilder<Void> {
        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Void>.Type = ASCAPI.requestBuilderFactory.getNonDecodableBuilder()

        return localVariableRequestBuilder.init(method: "DELETE", URLString: urlString, parameters: nil, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     * enum for parameter fieldsInAppPurchaseAppStoreReviewScreenshots
     */
    public enum FieldsInAppPurchaseAppStoreReviewScreenshots_inAppPurchaseAppStoreReviewScreenshotsGetInstance: String, CaseIterable {
        case filesize = "fileSize"
        case filename = "fileName"
        case sourcefilechecksum = "sourceFileChecksum"
        case imageasset = "imageAsset"
        case assettoken = "assetToken"
        case assettype = "assetType"
        case uploadoperations = "uploadOperations"
        case assetdeliverystate = "assetDeliveryState"
        case inapppurchasev2 = "inAppPurchaseV2"
    }

    /**
     * enum for parameter include
     */
    public enum Include_inAppPurchaseAppStoreReviewScreenshotsGetInstance: String, CaseIterable {
        case inapppurchasev2 = "inAppPurchaseV2"
    }

    /**

     - parameter id: (path) the id of the requested resource 
     - parameter fieldsInAppPurchaseAppStoreReviewScreenshots: (query) the fields to include for returned resources of type inAppPurchaseAppStoreReviewScreenshots (optional)
     - parameter include: (query) comma-separated list of relationships to include (optional)
     - returns: InAppPurchaseAppStoreReviewScreenshotResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func inAppPurchaseAppStoreReviewScreenshotsGetInstance(id: String, fieldsInAppPurchaseAppStoreReviewScreenshots: [FieldsInAppPurchaseAppStoreReviewScreenshots_inAppPurchaseAppStoreReviewScreenshotsGetInstance]? = nil, include: [Include_inAppPurchaseAppStoreReviewScreenshotsGetInstance]? = nil) async throws -> InAppPurchaseAppStoreReviewScreenshotResponse {
        return try await inAppPurchaseAppStoreReviewScreenshotsGetInstanceWithRequestBuilder(id: id, fieldsInAppPurchaseAppStoreReviewScreenshots: fieldsInAppPurchaseAppStoreReviewScreenshots, include: include).execute().body
    }

    /**
     - parameter urlString: next or first url from App Store Connect API
     - returns: InAppPurchaseAppStoreReviewScreenshotResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func inAppPurchaseAppStoreReviewScreenshotsGetInstance(urlString: String) async throws -> InAppPurchaseAppStoreReviewScreenshotResponse {
        return try await inAppPurchaseAppStoreReviewScreenshotsGetInstanceWithRequestBuilder(urlString: urlString).execute().body
    }

    /**
     - GET /v1/inAppPurchaseAppStoreReviewScreenshots/{id}
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter id: (path) the id of the requested resource 
     - parameter fieldsInAppPurchaseAppStoreReviewScreenshots: (query) the fields to include for returned resources of type inAppPurchaseAppStoreReviewScreenshots (optional)
     - parameter include: (query) comma-separated list of relationships to include (optional)
     - returns: RequestBuilder<InAppPurchaseAppStoreReviewScreenshotResponse> 
     */
    open class func inAppPurchaseAppStoreReviewScreenshotsGetInstanceWithRequestBuilder(id: String, fieldsInAppPurchaseAppStoreReviewScreenshots: [FieldsInAppPurchaseAppStoreReviewScreenshots_inAppPurchaseAppStoreReviewScreenshotsGetInstance]? = nil, include: [Include_inAppPurchaseAppStoreReviewScreenshotsGetInstance]? = nil) -> RequestBuilder<InAppPurchaseAppStoreReviewScreenshotResponse> {
        var localVariablePath = "/v1/inAppPurchaseAppStoreReviewScreenshots/{id}"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = ASCAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "fields[inAppPurchaseAppStoreReviewScreenshots]": (wrappedValue: fieldsInAppPurchaseAppStoreReviewScreenshots?.encodeToJSON(), isExplode: false),
            "include": (wrappedValue: include?.encodeToJSON(), isExplode: false),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<InAppPurchaseAppStoreReviewScreenshotResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     - GET /v1/inAppPurchaseAppStoreReviewScreenshots/{id}
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter urlString: next or first url from App Store Connect API
     - returns: RequestBuilder<InAppPurchaseAppStoreReviewScreenshotResponse> 
     */
    open class func inAppPurchaseAppStoreReviewScreenshotsGetInstanceWithRequestBuilder(urlString: String) -> RequestBuilder<InAppPurchaseAppStoreReviewScreenshotResponse> {
        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<InAppPurchaseAppStoreReviewScreenshotResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: urlString, parameters: nil, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**

     - parameter id: (path) the id of the requested resource 
     - parameter inAppPurchaseAppStoreReviewScreenshotUpdateRequest: (body) InAppPurchaseAppStoreReviewScreenshot representation 
     - returns: InAppPurchaseAppStoreReviewScreenshotResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func inAppPurchaseAppStoreReviewScreenshotsUpdateInstance(id: String, inAppPurchaseAppStoreReviewScreenshotUpdateRequest: InAppPurchaseAppStoreReviewScreenshotUpdateRequest) async throws -> InAppPurchaseAppStoreReviewScreenshotResponse {
        return try await inAppPurchaseAppStoreReviewScreenshotsUpdateInstanceWithRequestBuilder(id: id, inAppPurchaseAppStoreReviewScreenshotUpdateRequest: inAppPurchaseAppStoreReviewScreenshotUpdateRequest).execute().body
    }

    /**
     - parameter urlString: next or first url from App Store Connect API
     - returns: InAppPurchaseAppStoreReviewScreenshotResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func inAppPurchaseAppStoreReviewScreenshotsUpdateInstance(urlString: String) async throws -> InAppPurchaseAppStoreReviewScreenshotResponse {
        return try await inAppPurchaseAppStoreReviewScreenshotsUpdateInstanceWithRequestBuilder(urlString: urlString).execute().body
    }

    /**
     - PATCH /v1/inAppPurchaseAppStoreReviewScreenshots/{id}
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter id: (path) the id of the requested resource 
     - parameter inAppPurchaseAppStoreReviewScreenshotUpdateRequest: (body) InAppPurchaseAppStoreReviewScreenshot representation 
     - returns: RequestBuilder<InAppPurchaseAppStoreReviewScreenshotResponse> 
     */
    open class func inAppPurchaseAppStoreReviewScreenshotsUpdateInstanceWithRequestBuilder(id: String, inAppPurchaseAppStoreReviewScreenshotUpdateRequest: InAppPurchaseAppStoreReviewScreenshotUpdateRequest) -> RequestBuilder<InAppPurchaseAppStoreReviewScreenshotResponse> {
        var localVariablePath = "/v1/inAppPurchaseAppStoreReviewScreenshots/{id}"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = ASCAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: inAppPurchaseAppStoreReviewScreenshotUpdateRequest)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            "Content-Type": "application/json",
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<InAppPurchaseAppStoreReviewScreenshotResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PATCH", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     - PATCH /v1/inAppPurchaseAppStoreReviewScreenshots/{id}
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter urlString: next or first url from App Store Connect API
     - returns: RequestBuilder<InAppPurchaseAppStoreReviewScreenshotResponse> 
     */
    open class func inAppPurchaseAppStoreReviewScreenshotsUpdateInstanceWithRequestBuilder(urlString: String) -> RequestBuilder<InAppPurchaseAppStoreReviewScreenshotResponse> {
        let localVariableNillableHeaders: [String: Any?] = [
            "Content-Type": "application/json",
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<InAppPurchaseAppStoreReviewScreenshotResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PATCH", URLString: urlString, parameters: nil, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }
}
