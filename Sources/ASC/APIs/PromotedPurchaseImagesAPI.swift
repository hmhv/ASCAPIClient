//
// PromotedPurchaseImagesAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

open class PromotedPurchaseImagesAPI {

    /**

     - parameter promotedPurchaseImageCreateRequest: (body) PromotedPurchaseImage representation 
     - returns: PromotedPurchaseImageResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func promotedPurchaseImagesCreateInstance(promotedPurchaseImageCreateRequest: PromotedPurchaseImageCreateRequest) async throws -> PromotedPurchaseImageResponse {
        return try await promotedPurchaseImagesCreateInstanceWithRequestBuilder(promotedPurchaseImageCreateRequest: promotedPurchaseImageCreateRequest).execute().body
    }

    /**
     - parameter urlString: next or first url from App Store Connect API
     - returns: PromotedPurchaseImageResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func promotedPurchaseImagesCreateInstance(urlString: String) async throws -> PromotedPurchaseImageResponse {
        return try await promotedPurchaseImagesCreateInstanceWithRequestBuilder(urlString: urlString).execute().body
    }

    /**
     - POST /v1/promotedPurchaseImages
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter promotedPurchaseImageCreateRequest: (body) PromotedPurchaseImage representation 
     - returns: RequestBuilder<PromotedPurchaseImageResponse> 
     */
    open class func promotedPurchaseImagesCreateInstanceWithRequestBuilder(promotedPurchaseImageCreateRequest: PromotedPurchaseImageCreateRequest) -> RequestBuilder<PromotedPurchaseImageResponse> {
        let localVariablePath = "/v1/promotedPurchaseImages"
        let localVariableURLString = ASCAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: promotedPurchaseImageCreateRequest)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            "Content-Type": "application/json",
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<PromotedPurchaseImageResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     - POST /v1/promotedPurchaseImages
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter urlString: next or first url from App Store Connect API
     - returns: RequestBuilder<PromotedPurchaseImageResponse> 
     */
    open class func promotedPurchaseImagesCreateInstanceWithRequestBuilder(urlString: String) -> RequestBuilder<PromotedPurchaseImageResponse> {
        let localVariableNillableHeaders: [String: Any?] = [
            "Content-Type": "application/json",
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<PromotedPurchaseImageResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: urlString, parameters: nil, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**

     - parameter id: (path) the id of the requested resource 
     - returns: Void
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func promotedPurchaseImagesDeleteInstance(id: String) async throws {
        return try await promotedPurchaseImagesDeleteInstanceWithRequestBuilder(id: id).execute().body
    }

    /**
     - parameter urlString: next or first url from App Store Connect API
     - returns: Void
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func promotedPurchaseImagesDeleteInstance(urlString: String) async throws {
        return try await promotedPurchaseImagesDeleteInstanceWithRequestBuilder(urlString: urlString).execute().body
    }

    /**
     - DELETE /v1/promotedPurchaseImages/{id}
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter id: (path) the id of the requested resource 
     - returns: RequestBuilder<Void> 
     */
    open class func promotedPurchaseImagesDeleteInstanceWithRequestBuilder(id: String) -> RequestBuilder<Void> {
        var localVariablePath = "/v1/promotedPurchaseImages/{id}"
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
     - DELETE /v1/promotedPurchaseImages/{id}
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter urlString: next or first url from App Store Connect API
     - returns: RequestBuilder<Void> 
     */
    open class func promotedPurchaseImagesDeleteInstanceWithRequestBuilder(urlString: String) -> RequestBuilder<Void> {
        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Void>.Type = ASCAPI.requestBuilderFactory.getNonDecodableBuilder()

        return localVariableRequestBuilder.init(method: "DELETE", URLString: urlString, parameters: nil, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     * enum for parameter fieldsPromotedPurchaseImages
     */
    public enum FieldsPromotedPurchaseImages_promotedPurchaseImagesGetInstance: String, CaseIterable {
        case assettoken = "assetToken"
        case assettype = "assetType"
        case filename = "fileName"
        case filesize = "fileSize"
        case imageasset = "imageAsset"
        case promotedpurchase = "promotedPurchase"
        case sourcefilechecksum = "sourceFileChecksum"
        case state = "state"
        case uploadoperations = "uploadOperations"
        case uploaded = "uploaded"
    }

    /**
     * enum for parameter include
     */
    public enum Include_promotedPurchaseImagesGetInstance: String, CaseIterable {
        case promotedpurchase = "promotedPurchase"
    }

    /**

     - parameter id: (path) the id of the requested resource 
     - parameter fieldsPromotedPurchaseImages: (query) the fields to include for returned resources of type promotedPurchaseImages (optional)
     - parameter include: (query) comma-separated list of relationships to include (optional)
     - returns: PromotedPurchaseImageResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func promotedPurchaseImagesGetInstance(id: String, fieldsPromotedPurchaseImages: [FieldsPromotedPurchaseImages_promotedPurchaseImagesGetInstance]? = nil, include: [Include_promotedPurchaseImagesGetInstance]? = nil) async throws -> PromotedPurchaseImageResponse {
        return try await promotedPurchaseImagesGetInstanceWithRequestBuilder(id: id, fieldsPromotedPurchaseImages: fieldsPromotedPurchaseImages, include: include).execute().body
    }

    /**
     - parameter urlString: next or first url from App Store Connect API
     - returns: PromotedPurchaseImageResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func promotedPurchaseImagesGetInstance(urlString: String) async throws -> PromotedPurchaseImageResponse {
        return try await promotedPurchaseImagesGetInstanceWithRequestBuilder(urlString: urlString).execute().body
    }

    /**
     - GET /v1/promotedPurchaseImages/{id}
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter id: (path) the id of the requested resource 
     - parameter fieldsPromotedPurchaseImages: (query) the fields to include for returned resources of type promotedPurchaseImages (optional)
     - parameter include: (query) comma-separated list of relationships to include (optional)
     - returns: RequestBuilder<PromotedPurchaseImageResponse> 
     */
    open class func promotedPurchaseImagesGetInstanceWithRequestBuilder(id: String, fieldsPromotedPurchaseImages: [FieldsPromotedPurchaseImages_promotedPurchaseImagesGetInstance]? = nil, include: [Include_promotedPurchaseImagesGetInstance]? = nil) -> RequestBuilder<PromotedPurchaseImageResponse> {
        var localVariablePath = "/v1/promotedPurchaseImages/{id}"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = ASCAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "fields[promotedPurchaseImages]": (wrappedValue: fieldsPromotedPurchaseImages?.encodeToJSON(), isExplode: false),
            "include": (wrappedValue: include?.encodeToJSON(), isExplode: false),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<PromotedPurchaseImageResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     - GET /v1/promotedPurchaseImages/{id}
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter urlString: next or first url from App Store Connect API
     - returns: RequestBuilder<PromotedPurchaseImageResponse> 
     */
    open class func promotedPurchaseImagesGetInstanceWithRequestBuilder(urlString: String) -> RequestBuilder<PromotedPurchaseImageResponse> {
        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<PromotedPurchaseImageResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: urlString, parameters: nil, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**

     - parameter id: (path) the id of the requested resource 
     - parameter promotedPurchaseImageUpdateRequest: (body) PromotedPurchaseImage representation 
     - returns: PromotedPurchaseImageResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func promotedPurchaseImagesUpdateInstance(id: String, promotedPurchaseImageUpdateRequest: PromotedPurchaseImageUpdateRequest) async throws -> PromotedPurchaseImageResponse {
        return try await promotedPurchaseImagesUpdateInstanceWithRequestBuilder(id: id, promotedPurchaseImageUpdateRequest: promotedPurchaseImageUpdateRequest).execute().body
    }

    /**
     - parameter urlString: next or first url from App Store Connect API
     - returns: PromotedPurchaseImageResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func promotedPurchaseImagesUpdateInstance(urlString: String) async throws -> PromotedPurchaseImageResponse {
        return try await promotedPurchaseImagesUpdateInstanceWithRequestBuilder(urlString: urlString).execute().body
    }

    /**
     - PATCH /v1/promotedPurchaseImages/{id}
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter id: (path) the id of the requested resource 
     - parameter promotedPurchaseImageUpdateRequest: (body) PromotedPurchaseImage representation 
     - returns: RequestBuilder<PromotedPurchaseImageResponse> 
     */
    open class func promotedPurchaseImagesUpdateInstanceWithRequestBuilder(id: String, promotedPurchaseImageUpdateRequest: PromotedPurchaseImageUpdateRequest) -> RequestBuilder<PromotedPurchaseImageResponse> {
        var localVariablePath = "/v1/promotedPurchaseImages/{id}"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = ASCAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: promotedPurchaseImageUpdateRequest)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            "Content-Type": "application/json",
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<PromotedPurchaseImageResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PATCH", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     - PATCH /v1/promotedPurchaseImages/{id}
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter urlString: next or first url from App Store Connect API
     - returns: RequestBuilder<PromotedPurchaseImageResponse> 
     */
    open class func promotedPurchaseImagesUpdateInstanceWithRequestBuilder(urlString: String) -> RequestBuilder<PromotedPurchaseImageResponse> {
        let localVariableNillableHeaders: [String: Any?] = [
            "Content-Type": "application/json",
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<PromotedPurchaseImageResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PATCH", URLString: urlString, parameters: nil, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }
}