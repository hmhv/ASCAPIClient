//
// PromotedPurchasesAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

open class PromotedPurchasesAPI {

    /**

     - parameter promotedPurchaseCreateRequest: (body) PromotedPurchase representation 
     - returns: PromotedPurchaseResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func promotedPurchasesCreateInstance(promotedPurchaseCreateRequest: PromotedPurchaseCreateRequest) async throws -> PromotedPurchaseResponse {
        return try await promotedPurchasesCreateInstanceWithRequestBuilder(promotedPurchaseCreateRequest: promotedPurchaseCreateRequest).execute().body
    }

    /**
     - parameter urlString: next or first url from App Store Connect API
     - returns: PromotedPurchaseResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func promotedPurchasesCreateInstance(urlString: String) async throws -> PromotedPurchaseResponse {
        return try await promotedPurchasesCreateInstanceWithRequestBuilder(urlString: urlString).execute().body
    }

    /**
     - POST /v1/promotedPurchases
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter promotedPurchaseCreateRequest: (body) PromotedPurchase representation 
     - returns: RequestBuilder<PromotedPurchaseResponse> 
     */
    open class func promotedPurchasesCreateInstanceWithRequestBuilder(promotedPurchaseCreateRequest: PromotedPurchaseCreateRequest) -> RequestBuilder<PromotedPurchaseResponse> {
        let localVariablePath = "/v1/promotedPurchases"
        let localVariableURLString = ASCAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: promotedPurchaseCreateRequest)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            "Content-Type": "application/json",
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<PromotedPurchaseResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     - POST /v1/promotedPurchases
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter urlString: next or first url from App Store Connect API
     - returns: RequestBuilder<PromotedPurchaseResponse> 
     */
    open class func promotedPurchasesCreateInstanceWithRequestBuilder(urlString: String) -> RequestBuilder<PromotedPurchaseResponse> {
        let localVariableRequestBuilder: RequestBuilder<PromotedPurchaseResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: urlString, parameters: nil, headers: nil, requiresAuthentication: true)
    }

    /**

     - parameter id: (path) the id of the requested resource 
     - returns: Void
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func promotedPurchasesDeleteInstance(id: String) async throws {
        return try await promotedPurchasesDeleteInstanceWithRequestBuilder(id: id).execute().body
    }

    /**
     - parameter urlString: next or first url from App Store Connect API
     - returns: Void
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func promotedPurchasesDeleteInstance(urlString: String) async throws {
        return try await promotedPurchasesDeleteInstanceWithRequestBuilder(urlString: urlString).execute().body
    }

    /**
     - DELETE /v1/promotedPurchases/{id}
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter id: (path) the id of the requested resource 
     - returns: RequestBuilder<Void> 
     */
    open class func promotedPurchasesDeleteInstanceWithRequestBuilder(id: String) -> RequestBuilder<Void> {
        var localVariablePath = "/v1/promotedPurchases/{id}"
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
     - DELETE /v1/promotedPurchases/{id}
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter urlString: next or first url from App Store Connect API
     - returns: RequestBuilder<Void> 
     */
    open class func promotedPurchasesDeleteInstanceWithRequestBuilder(urlString: String) -> RequestBuilder<Void> {
        let localVariableRequestBuilder: RequestBuilder<Void>.Type = ASCAPI.requestBuilderFactory.getNonDecodableBuilder()

        return localVariableRequestBuilder.init(method: "DELETE", URLString: urlString, parameters: nil, headers: nil, requiresAuthentication: true)
    }

    /**
     * enum for parameter fieldsPromotedPurchases
     */
    public enum FieldsPromotedPurchases_promotedPurchasesGetInstance: String, CaseIterable {
        case app = "app"
        case enabled = "enabled"
        case inapppurchasev2 = "inAppPurchaseV2"
        case promotionimages = "promotionImages"
        case state = "state"
        case subscription = "subscription"
        case visibleforallusers = "visibleForAllUsers"
    }

    /**
     * enum for parameter include
     */
    public enum Include_promotedPurchasesGetInstance: String, CaseIterable {
        case inapppurchasev2 = "inAppPurchaseV2"
        case promotionimages = "promotionImages"
        case subscription = "subscription"
    }

    /**
     * enum for parameter fieldsPromotedPurchaseImages
     */
    public enum FieldsPromotedPurchaseImages_promotedPurchasesGetInstance: String, CaseIterable {
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

     - parameter id: (path) the id of the requested resource 
     - parameter fieldsPromotedPurchases: (query) the fields to include for returned resources of type promotedPurchases (optional)
     - parameter include: (query) comma-separated list of relationships to include (optional)
     - parameter fieldsPromotedPurchaseImages: (query) the fields to include for returned resources of type promotedPurchaseImages (optional)
     - parameter limitPromotionImages: (query) maximum number of related promotionImages returned (when they are included) (optional)
     - returns: PromotedPurchaseResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func promotedPurchasesGetInstance(id: String, fieldsPromotedPurchases: [FieldsPromotedPurchases_promotedPurchasesGetInstance]? = nil, include: [Include_promotedPurchasesGetInstance]? = nil, fieldsPromotedPurchaseImages: [FieldsPromotedPurchaseImages_promotedPurchasesGetInstance]? = nil, limitPromotionImages: Int? = nil) async throws -> PromotedPurchaseResponse {
        return try await promotedPurchasesGetInstanceWithRequestBuilder(id: id, fieldsPromotedPurchases: fieldsPromotedPurchases, include: include, fieldsPromotedPurchaseImages: fieldsPromotedPurchaseImages, limitPromotionImages: limitPromotionImages).execute().body
    }

    /**
     - parameter urlString: next or first url from App Store Connect API
     - returns: PromotedPurchaseResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func promotedPurchasesGetInstance(urlString: String) async throws -> PromotedPurchaseResponse {
        return try await promotedPurchasesGetInstanceWithRequestBuilder(urlString: urlString).execute().body
    }

    /**
     - GET /v1/promotedPurchases/{id}
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter id: (path) the id of the requested resource 
     - parameter fieldsPromotedPurchases: (query) the fields to include for returned resources of type promotedPurchases (optional)
     - parameter include: (query) comma-separated list of relationships to include (optional)
     - parameter fieldsPromotedPurchaseImages: (query) the fields to include for returned resources of type promotedPurchaseImages (optional)
     - parameter limitPromotionImages: (query) maximum number of related promotionImages returned (when they are included) (optional)
     - returns: RequestBuilder<PromotedPurchaseResponse> 
     */
    open class func promotedPurchasesGetInstanceWithRequestBuilder(id: String, fieldsPromotedPurchases: [FieldsPromotedPurchases_promotedPurchasesGetInstance]? = nil, include: [Include_promotedPurchasesGetInstance]? = nil, fieldsPromotedPurchaseImages: [FieldsPromotedPurchaseImages_promotedPurchasesGetInstance]? = nil, limitPromotionImages: Int? = nil) -> RequestBuilder<PromotedPurchaseResponse> {
        var localVariablePath = "/v1/promotedPurchases/{id}"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = ASCAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "fields[promotedPurchases]": (wrappedValue: fieldsPromotedPurchases?.encodeToJSON(), isExplode: false),
            "include": (wrappedValue: include?.encodeToJSON(), isExplode: false),
            "fields[promotedPurchaseImages]": (wrappedValue: fieldsPromotedPurchaseImages?.encodeToJSON(), isExplode: false),
            "limit[promotionImages]": (wrappedValue: limitPromotionImages?.encodeToJSON(), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<PromotedPurchaseResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     - GET /v1/promotedPurchases/{id}
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter urlString: next or first url from App Store Connect API
     - returns: RequestBuilder<PromotedPurchaseResponse> 
     */
    open class func promotedPurchasesGetInstanceWithRequestBuilder(urlString: String) -> RequestBuilder<PromotedPurchaseResponse> {
        let localVariableRequestBuilder: RequestBuilder<PromotedPurchaseResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: urlString, parameters: nil, headers: nil, requiresAuthentication: true)
    }

    /**
     * enum for parameter fieldsPromotedPurchases
     */
    public enum FieldsPromotedPurchases_promotedPurchasesPromotionImagesGetToManyRelated: String, CaseIterable {
        case app = "app"
        case enabled = "enabled"
        case inapppurchasev2 = "inAppPurchaseV2"
        case promotionimages = "promotionImages"
        case state = "state"
        case subscription = "subscription"
        case visibleforallusers = "visibleForAllUsers"
    }

    /**
     * enum for parameter fieldsPromotedPurchaseImages
     */
    public enum FieldsPromotedPurchaseImages_promotedPurchasesPromotionImagesGetToManyRelated: String, CaseIterable {
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
    public enum Include_promotedPurchasesPromotionImagesGetToManyRelated: String, CaseIterable {
        case promotedpurchase = "promotedPurchase"
    }

    /**

     - parameter id: (path) the id of the requested resource 
     - parameter fieldsPromotedPurchases: (query) the fields to include for returned resources of type promotedPurchases (optional)
     - parameter fieldsPromotedPurchaseImages: (query) the fields to include for returned resources of type promotedPurchaseImages (optional)
     - parameter limit: (query) maximum resources per page (optional)
     - parameter include: (query) comma-separated list of relationships to include (optional)
     - returns: PromotedPurchaseImagesResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func promotedPurchasesPromotionImagesGetToManyRelated(id: String, fieldsPromotedPurchases: [FieldsPromotedPurchases_promotedPurchasesPromotionImagesGetToManyRelated]? = nil, fieldsPromotedPurchaseImages: [FieldsPromotedPurchaseImages_promotedPurchasesPromotionImagesGetToManyRelated]? = nil, limit: Int? = nil, include: [Include_promotedPurchasesPromotionImagesGetToManyRelated]? = nil) async throws -> PromotedPurchaseImagesResponse {
        return try await promotedPurchasesPromotionImagesGetToManyRelatedWithRequestBuilder(id: id, fieldsPromotedPurchases: fieldsPromotedPurchases, fieldsPromotedPurchaseImages: fieldsPromotedPurchaseImages, limit: limit, include: include).execute().body
    }

    /**
     - parameter urlString: next or first url from App Store Connect API
     - returns: PromotedPurchaseImagesResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func promotedPurchasesPromotionImagesGetToManyRelated(urlString: String) async throws -> PromotedPurchaseImagesResponse {
        return try await promotedPurchasesPromotionImagesGetToManyRelatedWithRequestBuilder(urlString: urlString).execute().body
    }

    /**
     - GET /v1/promotedPurchases/{id}/promotionImages
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter id: (path) the id of the requested resource 
     - parameter fieldsPromotedPurchases: (query) the fields to include for returned resources of type promotedPurchases (optional)
     - parameter fieldsPromotedPurchaseImages: (query) the fields to include for returned resources of type promotedPurchaseImages (optional)
     - parameter limit: (query) maximum resources per page (optional)
     - parameter include: (query) comma-separated list of relationships to include (optional)
     - returns: RequestBuilder<PromotedPurchaseImagesResponse> 
     */
    open class func promotedPurchasesPromotionImagesGetToManyRelatedWithRequestBuilder(id: String, fieldsPromotedPurchases: [FieldsPromotedPurchases_promotedPurchasesPromotionImagesGetToManyRelated]? = nil, fieldsPromotedPurchaseImages: [FieldsPromotedPurchaseImages_promotedPurchasesPromotionImagesGetToManyRelated]? = nil, limit: Int? = nil, include: [Include_promotedPurchasesPromotionImagesGetToManyRelated]? = nil) -> RequestBuilder<PromotedPurchaseImagesResponse> {
        var localVariablePath = "/v1/promotedPurchases/{id}/promotionImages"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = ASCAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "fields[promotedPurchases]": (wrappedValue: fieldsPromotedPurchases?.encodeToJSON(), isExplode: false),
            "fields[promotedPurchaseImages]": (wrappedValue: fieldsPromotedPurchaseImages?.encodeToJSON(), isExplode: false),
            "limit": (wrappedValue: limit?.encodeToJSON(), isExplode: true),
            "include": (wrappedValue: include?.encodeToJSON(), isExplode: false),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<PromotedPurchaseImagesResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     - GET /v1/promotedPurchases/{id}/promotionImages
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter urlString: next or first url from App Store Connect API
     - returns: RequestBuilder<PromotedPurchaseImagesResponse> 
     */
    open class func promotedPurchasesPromotionImagesGetToManyRelatedWithRequestBuilder(urlString: String) -> RequestBuilder<PromotedPurchaseImagesResponse> {
        let localVariableRequestBuilder: RequestBuilder<PromotedPurchaseImagesResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: urlString, parameters: nil, headers: nil, requiresAuthentication: true)
    }

    /**

     - parameter id: (path) the id of the requested resource 
     - parameter promotedPurchaseUpdateRequest: (body) PromotedPurchase representation 
     - returns: PromotedPurchaseResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func promotedPurchasesUpdateInstance(id: String, promotedPurchaseUpdateRequest: PromotedPurchaseUpdateRequest) async throws -> PromotedPurchaseResponse {
        return try await promotedPurchasesUpdateInstanceWithRequestBuilder(id: id, promotedPurchaseUpdateRequest: promotedPurchaseUpdateRequest).execute().body
    }

    /**
     - parameter urlString: next or first url from App Store Connect API
     - returns: PromotedPurchaseResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func promotedPurchasesUpdateInstance(urlString: String) async throws -> PromotedPurchaseResponse {
        return try await promotedPurchasesUpdateInstanceWithRequestBuilder(urlString: urlString).execute().body
    }

    /**
     - PATCH /v1/promotedPurchases/{id}
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter id: (path) the id of the requested resource 
     - parameter promotedPurchaseUpdateRequest: (body) PromotedPurchase representation 
     - returns: RequestBuilder<PromotedPurchaseResponse> 
     */
    open class func promotedPurchasesUpdateInstanceWithRequestBuilder(id: String, promotedPurchaseUpdateRequest: PromotedPurchaseUpdateRequest) -> RequestBuilder<PromotedPurchaseResponse> {
        var localVariablePath = "/v1/promotedPurchases/{id}"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = ASCAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: promotedPurchaseUpdateRequest)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            "Content-Type": "application/json",
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<PromotedPurchaseResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PATCH", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     - PATCH /v1/promotedPurchases/{id}
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter urlString: next or first url from App Store Connect API
     - returns: RequestBuilder<PromotedPurchaseResponse> 
     */
    open class func promotedPurchasesUpdateInstanceWithRequestBuilder(urlString: String) -> RequestBuilder<PromotedPurchaseResponse> {
        let localVariableRequestBuilder: RequestBuilder<PromotedPurchaseResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PATCH", URLString: urlString, parameters: nil, headers: nil, requiresAuthentication: true)
    }
}
