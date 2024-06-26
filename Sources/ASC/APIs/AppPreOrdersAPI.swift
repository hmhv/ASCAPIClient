//
// AppPreOrdersAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

open class AppPreOrdersAPI {

    /**

     - parameter appPreOrderCreateRequest: (body) AppPreOrder representation 
     - returns: AppPreOrderResponse
     */
    @available(*, deprecated, message: "This operation is deprecated.")
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func appPreOrdersCreateInstance(appPreOrderCreateRequest: AppPreOrderCreateRequest) async throws -> AppPreOrderResponse {
        return try await appPreOrdersCreateInstanceWithRequestBuilder(appPreOrderCreateRequest: appPreOrderCreateRequest).execute().body
    }

    /**
     - parameter urlString: next or first url from App Store Connect API
     - returns: AppPreOrderResponse
     */
    @available(*, deprecated, message: "This operation is deprecated.")
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func appPreOrdersCreateInstance(urlString: String) async throws -> AppPreOrderResponse {
        return try await appPreOrdersCreateInstanceWithRequestBuilder(urlString: urlString).execute().body
    }

    /**
     - POST /v1/appPreOrders
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter appPreOrderCreateRequest: (body) AppPreOrder representation 
     - returns: RequestBuilder<AppPreOrderResponse> 
     */
    @available(*, deprecated, message: "This operation is deprecated.")
    open class func appPreOrdersCreateInstanceWithRequestBuilder(appPreOrderCreateRequest: AppPreOrderCreateRequest) -> RequestBuilder<AppPreOrderResponse> {
        let localVariablePath = "/v1/appPreOrders"
        let localVariableURLString = ASCAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: appPreOrderCreateRequest)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            "Content-Type": "application/json",
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AppPreOrderResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     - POST /v1/appPreOrders
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter urlString: next or first url from App Store Connect API
     - returns: RequestBuilder<AppPreOrderResponse> 
     */
    @available(*, deprecated, message: "This operation is deprecated.")
    open class func appPreOrdersCreateInstanceWithRequestBuilder(urlString: String) -> RequestBuilder<AppPreOrderResponse> {
        let localVariableNillableHeaders: [String: Any?] = [
            "Content-Type": "application/json",
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AppPreOrderResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: urlString, parameters: nil, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**

     - parameter id: (path) the id of the requested resource 
     - returns: Void
     */
    @available(*, deprecated, message: "This operation is deprecated.")
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func appPreOrdersDeleteInstance(id: String) async throws {
        return try await appPreOrdersDeleteInstanceWithRequestBuilder(id: id).execute().body
    }

    /**
     - parameter urlString: next or first url from App Store Connect API
     - returns: Void
     */
    @available(*, deprecated, message: "This operation is deprecated.")
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func appPreOrdersDeleteInstance(urlString: String) async throws {
        return try await appPreOrdersDeleteInstanceWithRequestBuilder(urlString: urlString).execute().body
    }

    /**
     - DELETE /v1/appPreOrders/{id}
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter id: (path) the id of the requested resource 
     - returns: RequestBuilder<Void> 
     */
    @available(*, deprecated, message: "This operation is deprecated.")
    open class func appPreOrdersDeleteInstanceWithRequestBuilder(id: String) -> RequestBuilder<Void> {
        var localVariablePath = "/v1/appPreOrders/{id}"
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
     - DELETE /v1/appPreOrders/{id}
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter urlString: next or first url from App Store Connect API
     - returns: RequestBuilder<Void> 
     */
    @available(*, deprecated, message: "This operation is deprecated.")
    open class func appPreOrdersDeleteInstanceWithRequestBuilder(urlString: String) -> RequestBuilder<Void> {
        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Void>.Type = ASCAPI.requestBuilderFactory.getNonDecodableBuilder()

        return localVariableRequestBuilder.init(method: "DELETE", URLString: urlString, parameters: nil, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     * enum for parameter fieldsAppPreOrders
     */
    public enum FieldsAppPreOrders_appPreOrdersGetInstance: String, CaseIterable {
        case app = "app"
        case appreleasedate = "appReleaseDate"
        case preorderavailabledate = "preOrderAvailableDate"
    }

    /**
     * enum for parameter include
     */
    public enum Include_appPreOrdersGetInstance: String, CaseIterable {
        case app = "app"
    }

    /**

     - parameter id: (path) the id of the requested resource 
     - parameter fieldsAppPreOrders: (query) the fields to include for returned resources of type appPreOrders (optional)
     - parameter include: (query) comma-separated list of relationships to include (optional)
     - returns: AppPreOrderResponse
     */
    @available(*, deprecated, message: "This operation is deprecated.")
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func appPreOrdersGetInstance(id: String, fieldsAppPreOrders: [FieldsAppPreOrders_appPreOrdersGetInstance]? = nil, include: [Include_appPreOrdersGetInstance]? = nil) async throws -> AppPreOrderResponse {
        return try await appPreOrdersGetInstanceWithRequestBuilder(id: id, fieldsAppPreOrders: fieldsAppPreOrders, include: include).execute().body
    }

    /**
     - parameter urlString: next or first url from App Store Connect API
     - returns: AppPreOrderResponse
     */
    @available(*, deprecated, message: "This operation is deprecated.")
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func appPreOrdersGetInstance(urlString: String) async throws -> AppPreOrderResponse {
        return try await appPreOrdersGetInstanceWithRequestBuilder(urlString: urlString).execute().body
    }

    /**
     - GET /v1/appPreOrders/{id}
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter id: (path) the id of the requested resource 
     - parameter fieldsAppPreOrders: (query) the fields to include for returned resources of type appPreOrders (optional)
     - parameter include: (query) comma-separated list of relationships to include (optional)
     - returns: RequestBuilder<AppPreOrderResponse> 
     */
    @available(*, deprecated, message: "This operation is deprecated.")
    open class func appPreOrdersGetInstanceWithRequestBuilder(id: String, fieldsAppPreOrders: [FieldsAppPreOrders_appPreOrdersGetInstance]? = nil, include: [Include_appPreOrdersGetInstance]? = nil) -> RequestBuilder<AppPreOrderResponse> {
        var localVariablePath = "/v1/appPreOrders/{id}"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = ASCAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "fields[appPreOrders]": (wrappedValue: fieldsAppPreOrders?.encodeToJSON(), isExplode: false),
            "include": (wrappedValue: include?.encodeToJSON(), isExplode: false),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AppPreOrderResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     - GET /v1/appPreOrders/{id}
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter urlString: next or first url from App Store Connect API
     - returns: RequestBuilder<AppPreOrderResponse> 
     */
    @available(*, deprecated, message: "This operation is deprecated.")
    open class func appPreOrdersGetInstanceWithRequestBuilder(urlString: String) -> RequestBuilder<AppPreOrderResponse> {
        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AppPreOrderResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: urlString, parameters: nil, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**

     - parameter id: (path) the id of the requested resource 
     - parameter appPreOrderUpdateRequest: (body) AppPreOrder representation 
     - returns: AppPreOrderResponse
     */
    @available(*, deprecated, message: "This operation is deprecated.")
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func appPreOrdersUpdateInstance(id: String, appPreOrderUpdateRequest: AppPreOrderUpdateRequest) async throws -> AppPreOrderResponse {
        return try await appPreOrdersUpdateInstanceWithRequestBuilder(id: id, appPreOrderUpdateRequest: appPreOrderUpdateRequest).execute().body
    }

    /**
     - parameter urlString: next or first url from App Store Connect API
     - returns: AppPreOrderResponse
     */
    @available(*, deprecated, message: "This operation is deprecated.")
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func appPreOrdersUpdateInstance(urlString: String) async throws -> AppPreOrderResponse {
        return try await appPreOrdersUpdateInstanceWithRequestBuilder(urlString: urlString).execute().body
    }

    /**
     - PATCH /v1/appPreOrders/{id}
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter id: (path) the id of the requested resource 
     - parameter appPreOrderUpdateRequest: (body) AppPreOrder representation 
     - returns: RequestBuilder<AppPreOrderResponse> 
     */
    @available(*, deprecated, message: "This operation is deprecated.")
    open class func appPreOrdersUpdateInstanceWithRequestBuilder(id: String, appPreOrderUpdateRequest: AppPreOrderUpdateRequest) -> RequestBuilder<AppPreOrderResponse> {
        var localVariablePath = "/v1/appPreOrders/{id}"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = ASCAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: appPreOrderUpdateRequest)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            "Content-Type": "application/json",
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AppPreOrderResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PATCH", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     - PATCH /v1/appPreOrders/{id}
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter urlString: next or first url from App Store Connect API
     - returns: RequestBuilder<AppPreOrderResponse> 
     */
    @available(*, deprecated, message: "This operation is deprecated.")
    open class func appPreOrdersUpdateInstanceWithRequestBuilder(urlString: String) -> RequestBuilder<AppPreOrderResponse> {
        let localVariableNillableHeaders: [String: Any?] = [
            "Content-Type": "application/json",
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AppPreOrderResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PATCH", URLString: urlString, parameters: nil, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }
}
