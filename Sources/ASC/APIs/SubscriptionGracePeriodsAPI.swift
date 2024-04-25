//
// SubscriptionGracePeriodsAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

open class SubscriptionGracePeriodsAPI {

    /**
     * enum for parameter fieldsSubscriptionGracePeriods
     */
    public enum FieldsSubscriptionGracePeriods_subscriptionGracePeriodsGetInstance: String, CaseIterable {
        case duration = "duration"
        case optin = "optIn"
        case renewaltype = "renewalType"
        case sandboxoptin = "sandboxOptIn"
    }

    /**

     - parameter id: (path) the id of the requested resource 
     - parameter fieldsSubscriptionGracePeriods: (query) the fields to include for returned resources of type subscriptionGracePeriods (optional)
     - returns: SubscriptionGracePeriodResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func subscriptionGracePeriodsGetInstance(id: String, fieldsSubscriptionGracePeriods: [FieldsSubscriptionGracePeriods_subscriptionGracePeriodsGetInstance]? = nil) async throws -> SubscriptionGracePeriodResponse {
        return try await subscriptionGracePeriodsGetInstanceWithRequestBuilder(id: id, fieldsSubscriptionGracePeriods: fieldsSubscriptionGracePeriods).execute().body
    }

    /**
     - parameter urlString: next or first url from App Store Connect API
     - returns: SubscriptionGracePeriodResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func subscriptionGracePeriodsGetInstance(urlString: String) async throws -> SubscriptionGracePeriodResponse {
        return try await subscriptionGracePeriodsGetInstanceWithRequestBuilder(urlString: urlString).execute().body
    }

    /**
     - GET /v1/subscriptionGracePeriods/{id}
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter id: (path) the id of the requested resource 
     - parameter fieldsSubscriptionGracePeriods: (query) the fields to include for returned resources of type subscriptionGracePeriods (optional)
     - returns: RequestBuilder<SubscriptionGracePeriodResponse> 
     */
    open class func subscriptionGracePeriodsGetInstanceWithRequestBuilder(id: String, fieldsSubscriptionGracePeriods: [FieldsSubscriptionGracePeriods_subscriptionGracePeriodsGetInstance]? = nil) -> RequestBuilder<SubscriptionGracePeriodResponse> {
        var localVariablePath = "/v1/subscriptionGracePeriods/{id}"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = ASCAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "fields[subscriptionGracePeriods]": (wrappedValue: fieldsSubscriptionGracePeriods?.encodeToJSON(), isExplode: false),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<SubscriptionGracePeriodResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     - GET /v1/subscriptionGracePeriods/{id}
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter urlString: next or first url from App Store Connect API
     - returns: RequestBuilder<SubscriptionGracePeriodResponse> 
     */
    open class func subscriptionGracePeriodsGetInstanceWithRequestBuilder(urlString: String) -> RequestBuilder<SubscriptionGracePeriodResponse> {
        let localVariableRequestBuilder: RequestBuilder<SubscriptionGracePeriodResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: urlString, parameters: nil, headers: nil, requiresAuthentication: true)
    }

    /**

     - parameter id: (path) the id of the requested resource 
     - parameter subscriptionGracePeriodUpdateRequest: (body) SubscriptionGracePeriod representation 
     - returns: SubscriptionGracePeriodResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func subscriptionGracePeriodsUpdateInstance(id: String, subscriptionGracePeriodUpdateRequest: SubscriptionGracePeriodUpdateRequest) async throws -> SubscriptionGracePeriodResponse {
        return try await subscriptionGracePeriodsUpdateInstanceWithRequestBuilder(id: id, subscriptionGracePeriodUpdateRequest: subscriptionGracePeriodUpdateRequest).execute().body
    }

    /**
     - parameter urlString: next or first url from App Store Connect API
     - returns: SubscriptionGracePeriodResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func subscriptionGracePeriodsUpdateInstance(urlString: String) async throws -> SubscriptionGracePeriodResponse {
        return try await subscriptionGracePeriodsUpdateInstanceWithRequestBuilder(urlString: urlString).execute().body
    }

    /**
     - PATCH /v1/subscriptionGracePeriods/{id}
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter id: (path) the id of the requested resource 
     - parameter subscriptionGracePeriodUpdateRequest: (body) SubscriptionGracePeriod representation 
     - returns: RequestBuilder<SubscriptionGracePeriodResponse> 
     */
    open class func subscriptionGracePeriodsUpdateInstanceWithRequestBuilder(id: String, subscriptionGracePeriodUpdateRequest: SubscriptionGracePeriodUpdateRequest) -> RequestBuilder<SubscriptionGracePeriodResponse> {
        var localVariablePath = "/v1/subscriptionGracePeriods/{id}"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = ASCAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: subscriptionGracePeriodUpdateRequest)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            "Content-Type": "application/json",
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<SubscriptionGracePeriodResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PATCH", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     - PATCH /v1/subscriptionGracePeriods/{id}
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter urlString: next or first url from App Store Connect API
     - returns: RequestBuilder<SubscriptionGracePeriodResponse> 
     */
    open class func subscriptionGracePeriodsUpdateInstanceWithRequestBuilder(urlString: String) -> RequestBuilder<SubscriptionGracePeriodResponse> {
        let localVariableRequestBuilder: RequestBuilder<SubscriptionGracePeriodResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PATCH", URLString: urlString, parameters: nil, headers: nil, requiresAuthentication: true)
    }
}
