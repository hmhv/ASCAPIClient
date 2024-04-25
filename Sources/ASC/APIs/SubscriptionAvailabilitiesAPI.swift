//
// SubscriptionAvailabilitiesAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

open class SubscriptionAvailabilitiesAPI {

    /**
     * enum for parameter fieldsTerritories
     */
    public enum FieldsTerritories_subscriptionAvailabilitiesAvailableTerritoriesGetToManyRelated: String, CaseIterable {
        case currency = "currency"
    }

    /**

     - parameter id: (path) the id of the requested resource 
     - parameter fieldsTerritories: (query) the fields to include for returned resources of type territories (optional)
     - parameter limit: (query) maximum resources per page (optional)
     - returns: TerritoriesResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func subscriptionAvailabilitiesAvailableTerritoriesGetToManyRelated(id: String, fieldsTerritories: [FieldsTerritories_subscriptionAvailabilitiesAvailableTerritoriesGetToManyRelated]? = nil, limit: Int? = nil) async throws -> TerritoriesResponse {
        return try await subscriptionAvailabilitiesAvailableTerritoriesGetToManyRelatedWithRequestBuilder(id: id, fieldsTerritories: fieldsTerritories, limit: limit).execute().body
    }

    /**
     - parameter urlString: next or first url from App Store Connect API
     - returns: TerritoriesResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func subscriptionAvailabilitiesAvailableTerritoriesGetToManyRelated(urlString: String) async throws -> TerritoriesResponse {
        return try await subscriptionAvailabilitiesAvailableTerritoriesGetToManyRelatedWithRequestBuilder(urlString: urlString).execute().body
    }

    /**
     - GET /v1/subscriptionAvailabilities/{id}/availableTerritories
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter id: (path) the id of the requested resource 
     - parameter fieldsTerritories: (query) the fields to include for returned resources of type territories (optional)
     - parameter limit: (query) maximum resources per page (optional)
     - returns: RequestBuilder<TerritoriesResponse> 
     */
    open class func subscriptionAvailabilitiesAvailableTerritoriesGetToManyRelatedWithRequestBuilder(id: String, fieldsTerritories: [FieldsTerritories_subscriptionAvailabilitiesAvailableTerritoriesGetToManyRelated]? = nil, limit: Int? = nil) -> RequestBuilder<TerritoriesResponse> {
        var localVariablePath = "/v1/subscriptionAvailabilities/{id}/availableTerritories"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = ASCAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "fields[territories]": (wrappedValue: fieldsTerritories?.encodeToJSON(), isExplode: false),
            "limit": (wrappedValue: limit?.encodeToJSON(), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<TerritoriesResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     - GET /v1/subscriptionAvailabilities/{id}/availableTerritories
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter urlString: next or first url from App Store Connect API
     - returns: RequestBuilder<TerritoriesResponse> 
     */
    open class func subscriptionAvailabilitiesAvailableTerritoriesGetToManyRelatedWithRequestBuilder(urlString: String) -> RequestBuilder<TerritoriesResponse> {
        let localVariableRequestBuilder: RequestBuilder<TerritoriesResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()
        return localVariableRequestBuilder.init(method: "GET", URLString: urlString, parameters: [:], headers: nil, requiresAuthentication: true)
    }

    /**

     - parameter subscriptionAvailabilityCreateRequest: (body) SubscriptionAvailability representation 
     - returns: SubscriptionAvailabilityResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func subscriptionAvailabilitiesCreateInstance(subscriptionAvailabilityCreateRequest: SubscriptionAvailabilityCreateRequest) async throws -> SubscriptionAvailabilityResponse {
        return try await subscriptionAvailabilitiesCreateInstanceWithRequestBuilder(subscriptionAvailabilityCreateRequest: subscriptionAvailabilityCreateRequest).execute().body
    }

    /**
     - parameter urlString: next or first url from App Store Connect API
     - returns: SubscriptionAvailabilityResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func subscriptionAvailabilitiesCreateInstance(urlString: String) async throws -> SubscriptionAvailabilityResponse {
        return try await subscriptionAvailabilitiesCreateInstanceWithRequestBuilder(urlString: urlString).execute().body
    }

    /**
     - POST /v1/subscriptionAvailabilities
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter subscriptionAvailabilityCreateRequest: (body) SubscriptionAvailability representation 
     - returns: RequestBuilder<SubscriptionAvailabilityResponse> 
     */
    open class func subscriptionAvailabilitiesCreateInstanceWithRequestBuilder(subscriptionAvailabilityCreateRequest: SubscriptionAvailabilityCreateRequest) -> RequestBuilder<SubscriptionAvailabilityResponse> {
        let localVariablePath = "/v1/subscriptionAvailabilities"
        let localVariableURLString = ASCAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: subscriptionAvailabilityCreateRequest)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            "Content-Type": "application/json",
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<SubscriptionAvailabilityResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     - POST /v1/subscriptionAvailabilities
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter urlString: next or first url from App Store Connect API
     - returns: RequestBuilder<SubscriptionAvailabilityResponse> 
     */
    open class func subscriptionAvailabilitiesCreateInstanceWithRequestBuilder(urlString: String) -> RequestBuilder<SubscriptionAvailabilityResponse> {
        let localVariableRequestBuilder: RequestBuilder<SubscriptionAvailabilityResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()
        return localVariableRequestBuilder.init(method: "POST", URLString: urlString, parameters: [:], headers: nil, requiresAuthentication: true)
    }

    /**
     * enum for parameter fieldsSubscriptionAvailabilities
     */
    public enum FieldsSubscriptionAvailabilities_subscriptionAvailabilitiesGetInstance: String, CaseIterable {
        case availableinnewterritories = "availableInNewTerritories"
        case availableterritories = "availableTerritories"
        case subscription = "subscription"
    }

    /**
     * enum for parameter include
     */
    public enum Include_subscriptionAvailabilitiesGetInstance: String, CaseIterable {
        case availableterritories = "availableTerritories"
        case subscription = "subscription"
    }

    /**
     * enum for parameter fieldsTerritories
     */
    public enum FieldsTerritories_subscriptionAvailabilitiesGetInstance: String, CaseIterable {
        case currency = "currency"
    }

    /**

     - parameter id: (path) the id of the requested resource 
     - parameter fieldsSubscriptionAvailabilities: (query) the fields to include for returned resources of type subscriptionAvailabilities (optional)
     - parameter include: (query) comma-separated list of relationships to include (optional)
     - parameter fieldsTerritories: (query) the fields to include for returned resources of type territories (optional)
     - parameter limitAvailableTerritories: (query) maximum number of related availableTerritories returned (when they are included) (optional)
     - returns: SubscriptionAvailabilityResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func subscriptionAvailabilitiesGetInstance(id: String, fieldsSubscriptionAvailabilities: [FieldsSubscriptionAvailabilities_subscriptionAvailabilitiesGetInstance]? = nil, include: [Include_subscriptionAvailabilitiesGetInstance]? = nil, fieldsTerritories: [FieldsTerritories_subscriptionAvailabilitiesGetInstance]? = nil, limitAvailableTerritories: Int? = nil) async throws -> SubscriptionAvailabilityResponse {
        return try await subscriptionAvailabilitiesGetInstanceWithRequestBuilder(id: id, fieldsSubscriptionAvailabilities: fieldsSubscriptionAvailabilities, include: include, fieldsTerritories: fieldsTerritories, limitAvailableTerritories: limitAvailableTerritories).execute().body
    }

    /**
     - parameter urlString: next or first url from App Store Connect API
     - returns: SubscriptionAvailabilityResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func subscriptionAvailabilitiesGetInstance(urlString: String) async throws -> SubscriptionAvailabilityResponse {
        return try await subscriptionAvailabilitiesGetInstanceWithRequestBuilder(urlString: urlString).execute().body
    }

    /**
     - GET /v1/subscriptionAvailabilities/{id}
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter id: (path) the id of the requested resource 
     - parameter fieldsSubscriptionAvailabilities: (query) the fields to include for returned resources of type subscriptionAvailabilities (optional)
     - parameter include: (query) comma-separated list of relationships to include (optional)
     - parameter fieldsTerritories: (query) the fields to include for returned resources of type territories (optional)
     - parameter limitAvailableTerritories: (query) maximum number of related availableTerritories returned (when they are included) (optional)
     - returns: RequestBuilder<SubscriptionAvailabilityResponse> 
     */
    open class func subscriptionAvailabilitiesGetInstanceWithRequestBuilder(id: String, fieldsSubscriptionAvailabilities: [FieldsSubscriptionAvailabilities_subscriptionAvailabilitiesGetInstance]? = nil, include: [Include_subscriptionAvailabilitiesGetInstance]? = nil, fieldsTerritories: [FieldsTerritories_subscriptionAvailabilitiesGetInstance]? = nil, limitAvailableTerritories: Int? = nil) -> RequestBuilder<SubscriptionAvailabilityResponse> {
        var localVariablePath = "/v1/subscriptionAvailabilities/{id}"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = ASCAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "fields[subscriptionAvailabilities]": (wrappedValue: fieldsSubscriptionAvailabilities?.encodeToJSON(), isExplode: false),
            "include": (wrappedValue: include?.encodeToJSON(), isExplode: false),
            "fields[territories]": (wrappedValue: fieldsTerritories?.encodeToJSON(), isExplode: false),
            "limit[availableTerritories]": (wrappedValue: limitAvailableTerritories?.encodeToJSON(), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<SubscriptionAvailabilityResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     - GET /v1/subscriptionAvailabilities/{id}
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter urlString: next or first url from App Store Connect API
     - returns: RequestBuilder<SubscriptionAvailabilityResponse> 
     */
    open class func subscriptionAvailabilitiesGetInstanceWithRequestBuilder(urlString: String) -> RequestBuilder<SubscriptionAvailabilityResponse> {
        let localVariableRequestBuilder: RequestBuilder<SubscriptionAvailabilityResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()
        return localVariableRequestBuilder.init(method: "GET", URLString: urlString, parameters: [:], headers: nil, requiresAuthentication: true)
    }
}
