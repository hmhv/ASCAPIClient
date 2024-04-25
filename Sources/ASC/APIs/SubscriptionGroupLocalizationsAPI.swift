//
// SubscriptionGroupLocalizationsAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

open class SubscriptionGroupLocalizationsAPI {

    /**

     - parameter subscriptionGroupLocalizationCreateRequest: (body) SubscriptionGroupLocalization representation 
     - returns: SubscriptionGroupLocalizationResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func subscriptionGroupLocalizationsCreateInstance(subscriptionGroupLocalizationCreateRequest: SubscriptionGroupLocalizationCreateRequest) async throws -> SubscriptionGroupLocalizationResponse {
        return try await subscriptionGroupLocalizationsCreateInstanceWithRequestBuilder(subscriptionGroupLocalizationCreateRequest: subscriptionGroupLocalizationCreateRequest).execute().body
    }

    /**
     - parameter urlString: next or first url from App Store Connect API
     - returns: SubscriptionGroupLocalizationResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func subscriptionGroupLocalizationsCreateInstance(urlString: String) async throws -> SubscriptionGroupLocalizationResponse {
        return try await subscriptionGroupLocalizationsCreateInstanceWithRequestBuilder(urlString: urlString).execute().body
    }

    /**
     - POST /v1/subscriptionGroupLocalizations
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter subscriptionGroupLocalizationCreateRequest: (body) SubscriptionGroupLocalization representation 
     - returns: RequestBuilder<SubscriptionGroupLocalizationResponse> 
     */
    open class func subscriptionGroupLocalizationsCreateInstanceWithRequestBuilder(subscriptionGroupLocalizationCreateRequest: SubscriptionGroupLocalizationCreateRequest) -> RequestBuilder<SubscriptionGroupLocalizationResponse> {
        let localVariablePath = "/v1/subscriptionGroupLocalizations"
        let localVariableURLString = ASCAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: subscriptionGroupLocalizationCreateRequest)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            "Content-Type": "application/json",
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<SubscriptionGroupLocalizationResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     - POST /v1/subscriptionGroupLocalizations
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter urlString: next or first url from App Store Connect API
     - returns: RequestBuilder<SubscriptionGroupLocalizationResponse> 
     */
    open class func subscriptionGroupLocalizationsCreateInstanceWithRequestBuilder(urlString: String) -> RequestBuilder<SubscriptionGroupLocalizationResponse> {
        let localVariableRequestBuilder: RequestBuilder<SubscriptionGroupLocalizationResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()
        return localVariableRequestBuilder.init(method: "POST", URLString: urlString, parameters: [:], headers: nil, requiresAuthentication: true)
    }

    /**

     - parameter id: (path) the id of the requested resource 
     - returns: Void
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func subscriptionGroupLocalizationsDeleteInstance(id: String) async throws {
        return try await subscriptionGroupLocalizationsDeleteInstanceWithRequestBuilder(id: id).execute().body
    }

    /**
     - parameter urlString: next or first url from App Store Connect API
     - returns: Void
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func subscriptionGroupLocalizationsDeleteInstance(urlString: String) async throws {
        return try await subscriptionGroupLocalizationsDeleteInstanceWithRequestBuilder(urlString: urlString).execute().body
    }

    /**
     - DELETE /v1/subscriptionGroupLocalizations/{id}
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter id: (path) the id of the requested resource 
     - returns: RequestBuilder<Void> 
     */
    open class func subscriptionGroupLocalizationsDeleteInstanceWithRequestBuilder(id: String) -> RequestBuilder<Void> {
        var localVariablePath = "/v1/subscriptionGroupLocalizations/{id}"
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
     - DELETE /v1/subscriptionGroupLocalizations/{id}
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter urlString: next or first url from App Store Connect API
     - returns: RequestBuilder<Void> 
     */
    open class func subscriptionGroupLocalizationsDeleteInstanceWithRequestBuilder(urlString: String) -> RequestBuilder<Void> {
        let localVariableRequestBuilder: RequestBuilder<Void>.Type = ASCAPI.requestBuilderFactory.getNonDecodableBuilder()
        return localVariableRequestBuilder.init(method: "DELETE", URLString: urlString, parameters: [:], headers: nil, requiresAuthentication: true)
    }

    /**
     * enum for parameter fieldsSubscriptionGroupLocalizations
     */
    public enum FieldsSubscriptionGroupLocalizations_subscriptionGroupLocalizationsGetInstance: String, CaseIterable {
        case customappname = "customAppName"
        case locale = "locale"
        case name = "name"
        case state = "state"
        case subscriptiongroup = "subscriptionGroup"
    }

    /**
     * enum for parameter include
     */
    public enum Include_subscriptionGroupLocalizationsGetInstance: String, CaseIterable {
        case subscriptiongroup = "subscriptionGroup"
    }

    /**

     - parameter id: (path) the id of the requested resource 
     - parameter fieldsSubscriptionGroupLocalizations: (query) the fields to include for returned resources of type subscriptionGroupLocalizations (optional)
     - parameter include: (query) comma-separated list of relationships to include (optional)
     - returns: SubscriptionGroupLocalizationResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func subscriptionGroupLocalizationsGetInstance(id: String, fieldsSubscriptionGroupLocalizations: [FieldsSubscriptionGroupLocalizations_subscriptionGroupLocalizationsGetInstance]? = nil, include: [Include_subscriptionGroupLocalizationsGetInstance]? = nil) async throws -> SubscriptionGroupLocalizationResponse {
        return try await subscriptionGroupLocalizationsGetInstanceWithRequestBuilder(id: id, fieldsSubscriptionGroupLocalizations: fieldsSubscriptionGroupLocalizations, include: include).execute().body
    }

    /**
     - parameter urlString: next or first url from App Store Connect API
     - returns: SubscriptionGroupLocalizationResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func subscriptionGroupLocalizationsGetInstance(urlString: String) async throws -> SubscriptionGroupLocalizationResponse {
        return try await subscriptionGroupLocalizationsGetInstanceWithRequestBuilder(urlString: urlString).execute().body
    }

    /**
     - GET /v1/subscriptionGroupLocalizations/{id}
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter id: (path) the id of the requested resource 
     - parameter fieldsSubscriptionGroupLocalizations: (query) the fields to include for returned resources of type subscriptionGroupLocalizations (optional)
     - parameter include: (query) comma-separated list of relationships to include (optional)
     - returns: RequestBuilder<SubscriptionGroupLocalizationResponse> 
     */
    open class func subscriptionGroupLocalizationsGetInstanceWithRequestBuilder(id: String, fieldsSubscriptionGroupLocalizations: [FieldsSubscriptionGroupLocalizations_subscriptionGroupLocalizationsGetInstance]? = nil, include: [Include_subscriptionGroupLocalizationsGetInstance]? = nil) -> RequestBuilder<SubscriptionGroupLocalizationResponse> {
        var localVariablePath = "/v1/subscriptionGroupLocalizations/{id}"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = ASCAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "fields[subscriptionGroupLocalizations]": (wrappedValue: fieldsSubscriptionGroupLocalizations?.encodeToJSON(), isExplode: false),
            "include": (wrappedValue: include?.encodeToJSON(), isExplode: false),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<SubscriptionGroupLocalizationResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     - GET /v1/subscriptionGroupLocalizations/{id}
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter urlString: next or first url from App Store Connect API
     - returns: RequestBuilder<SubscriptionGroupLocalizationResponse> 
     */
    open class func subscriptionGroupLocalizationsGetInstanceWithRequestBuilder(urlString: String) -> RequestBuilder<SubscriptionGroupLocalizationResponse> {
        let localVariableRequestBuilder: RequestBuilder<SubscriptionGroupLocalizationResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()
        return localVariableRequestBuilder.init(method: "GET", URLString: urlString, parameters: [:], headers: nil, requiresAuthentication: true)
    }

    /**

     - parameter id: (path) the id of the requested resource 
     - parameter subscriptionGroupLocalizationUpdateRequest: (body) SubscriptionGroupLocalization representation 
     - returns: SubscriptionGroupLocalizationResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func subscriptionGroupLocalizationsUpdateInstance(id: String, subscriptionGroupLocalizationUpdateRequest: SubscriptionGroupLocalizationUpdateRequest) async throws -> SubscriptionGroupLocalizationResponse {
        return try await subscriptionGroupLocalizationsUpdateInstanceWithRequestBuilder(id: id, subscriptionGroupLocalizationUpdateRequest: subscriptionGroupLocalizationUpdateRequest).execute().body
    }

    /**
     - parameter urlString: next or first url from App Store Connect API
     - returns: SubscriptionGroupLocalizationResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func subscriptionGroupLocalizationsUpdateInstance(urlString: String) async throws -> SubscriptionGroupLocalizationResponse {
        return try await subscriptionGroupLocalizationsUpdateInstanceWithRequestBuilder(urlString: urlString).execute().body
    }

    /**
     - PATCH /v1/subscriptionGroupLocalizations/{id}
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter id: (path) the id of the requested resource 
     - parameter subscriptionGroupLocalizationUpdateRequest: (body) SubscriptionGroupLocalization representation 
     - returns: RequestBuilder<SubscriptionGroupLocalizationResponse> 
     */
    open class func subscriptionGroupLocalizationsUpdateInstanceWithRequestBuilder(id: String, subscriptionGroupLocalizationUpdateRequest: SubscriptionGroupLocalizationUpdateRequest) -> RequestBuilder<SubscriptionGroupLocalizationResponse> {
        var localVariablePath = "/v1/subscriptionGroupLocalizations/{id}"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = ASCAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: subscriptionGroupLocalizationUpdateRequest)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            "Content-Type": "application/json",
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<SubscriptionGroupLocalizationResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PATCH", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     - PATCH /v1/subscriptionGroupLocalizations/{id}
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter urlString: next or first url from App Store Connect API
     - returns: RequestBuilder<SubscriptionGroupLocalizationResponse> 
     */
    open class func subscriptionGroupLocalizationsUpdateInstanceWithRequestBuilder(urlString: String) -> RequestBuilder<SubscriptionGroupLocalizationResponse> {
        let localVariableRequestBuilder: RequestBuilder<SubscriptionGroupLocalizationResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()
        return localVariableRequestBuilder.init(method: "PATCH", URLString: urlString, parameters: [:], headers: nil, requiresAuthentication: true)
    }
}
