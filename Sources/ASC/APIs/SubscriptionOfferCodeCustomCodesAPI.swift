//
// SubscriptionOfferCodeCustomCodesAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

open class SubscriptionOfferCodeCustomCodesAPI {

    /**

     - parameter subscriptionOfferCodeCustomCodeCreateRequest: (body) SubscriptionOfferCodeCustomCode representation 
     - returns: SubscriptionOfferCodeCustomCodeResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func subscriptionOfferCodeCustomCodesCreateInstance(subscriptionOfferCodeCustomCodeCreateRequest: SubscriptionOfferCodeCustomCodeCreateRequest) async throws -> SubscriptionOfferCodeCustomCodeResponse {
        return try await subscriptionOfferCodeCustomCodesCreateInstanceWithRequestBuilder(subscriptionOfferCodeCustomCodeCreateRequest: subscriptionOfferCodeCustomCodeCreateRequest).execute().body
    }

    /**
     - parameter urlString: next or first url from App Store Connect API
     - returns: SubscriptionOfferCodeCustomCodeResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func subscriptionOfferCodeCustomCodesCreateInstance(urlString: String) async throws -> SubscriptionOfferCodeCustomCodeResponse {
        return try await subscriptionOfferCodeCustomCodesCreateInstanceWithRequestBuilder(urlString: urlString).execute().body
    }

    /**
     - POST /v1/subscriptionOfferCodeCustomCodes
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter subscriptionOfferCodeCustomCodeCreateRequest: (body) SubscriptionOfferCodeCustomCode representation 
     - returns: RequestBuilder<SubscriptionOfferCodeCustomCodeResponse> 
     */
    open class func subscriptionOfferCodeCustomCodesCreateInstanceWithRequestBuilder(subscriptionOfferCodeCustomCodeCreateRequest: SubscriptionOfferCodeCustomCodeCreateRequest) -> RequestBuilder<SubscriptionOfferCodeCustomCodeResponse> {
        let localVariablePath = "/v1/subscriptionOfferCodeCustomCodes"
        let localVariableURLString = ASCAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: subscriptionOfferCodeCustomCodeCreateRequest)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            "Content-Type": "application/json",
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<SubscriptionOfferCodeCustomCodeResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     - POST /v1/subscriptionOfferCodeCustomCodes
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter urlString: next or first url from App Store Connect API
     - returns: RequestBuilder<SubscriptionOfferCodeCustomCodeResponse> 
     */
    open class func subscriptionOfferCodeCustomCodesCreateInstanceWithRequestBuilder(urlString: String) -> RequestBuilder<SubscriptionOfferCodeCustomCodeResponse> {
        let localVariableRequestBuilder: RequestBuilder<SubscriptionOfferCodeCustomCodeResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: urlString, parameters: nil, headers: nil, requiresAuthentication: true)
    }

    /**
     * enum for parameter fieldsSubscriptionOfferCodeCustomCodes
     */
    public enum FieldsSubscriptionOfferCodeCustomCodes_subscriptionOfferCodeCustomCodesGetInstance: String, CaseIterable {
        case active = "active"
        case createddate = "createdDate"
        case customcode = "customCode"
        case expirationdate = "expirationDate"
        case numberofcodes = "numberOfCodes"
        case offercode = "offerCode"
    }

    /**
     * enum for parameter include
     */
    public enum Include_subscriptionOfferCodeCustomCodesGetInstance: String, CaseIterable {
        case offercode = "offerCode"
    }

    /**

     - parameter id: (path) the id of the requested resource 
     - parameter fieldsSubscriptionOfferCodeCustomCodes: (query) the fields to include for returned resources of type subscriptionOfferCodeCustomCodes (optional)
     - parameter include: (query) comma-separated list of relationships to include (optional)
     - returns: SubscriptionOfferCodeCustomCodeResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func subscriptionOfferCodeCustomCodesGetInstance(id: String, fieldsSubscriptionOfferCodeCustomCodes: [FieldsSubscriptionOfferCodeCustomCodes_subscriptionOfferCodeCustomCodesGetInstance]? = nil, include: [Include_subscriptionOfferCodeCustomCodesGetInstance]? = nil) async throws -> SubscriptionOfferCodeCustomCodeResponse {
        return try await subscriptionOfferCodeCustomCodesGetInstanceWithRequestBuilder(id: id, fieldsSubscriptionOfferCodeCustomCodes: fieldsSubscriptionOfferCodeCustomCodes, include: include).execute().body
    }

    /**
     - parameter urlString: next or first url from App Store Connect API
     - returns: SubscriptionOfferCodeCustomCodeResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func subscriptionOfferCodeCustomCodesGetInstance(urlString: String) async throws -> SubscriptionOfferCodeCustomCodeResponse {
        return try await subscriptionOfferCodeCustomCodesGetInstanceWithRequestBuilder(urlString: urlString).execute().body
    }

    /**
     - GET /v1/subscriptionOfferCodeCustomCodes/{id}
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter id: (path) the id of the requested resource 
     - parameter fieldsSubscriptionOfferCodeCustomCodes: (query) the fields to include for returned resources of type subscriptionOfferCodeCustomCodes (optional)
     - parameter include: (query) comma-separated list of relationships to include (optional)
     - returns: RequestBuilder<SubscriptionOfferCodeCustomCodeResponse> 
     */
    open class func subscriptionOfferCodeCustomCodesGetInstanceWithRequestBuilder(id: String, fieldsSubscriptionOfferCodeCustomCodes: [FieldsSubscriptionOfferCodeCustomCodes_subscriptionOfferCodeCustomCodesGetInstance]? = nil, include: [Include_subscriptionOfferCodeCustomCodesGetInstance]? = nil) -> RequestBuilder<SubscriptionOfferCodeCustomCodeResponse> {
        var localVariablePath = "/v1/subscriptionOfferCodeCustomCodes/{id}"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = ASCAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "fields[subscriptionOfferCodeCustomCodes]": (wrappedValue: fieldsSubscriptionOfferCodeCustomCodes?.encodeToJSON(), isExplode: false),
            "include": (wrappedValue: include?.encodeToJSON(), isExplode: false),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<SubscriptionOfferCodeCustomCodeResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     - GET /v1/subscriptionOfferCodeCustomCodes/{id}
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter urlString: next or first url from App Store Connect API
     - returns: RequestBuilder<SubscriptionOfferCodeCustomCodeResponse> 
     */
    open class func subscriptionOfferCodeCustomCodesGetInstanceWithRequestBuilder(urlString: String) -> RequestBuilder<SubscriptionOfferCodeCustomCodeResponse> {
        let localVariableRequestBuilder: RequestBuilder<SubscriptionOfferCodeCustomCodeResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: urlString, parameters: nil, headers: nil, requiresAuthentication: true)
    }

    /**

     - parameter id: (path) the id of the requested resource 
     - parameter subscriptionOfferCodeCustomCodeUpdateRequest: (body) SubscriptionOfferCodeCustomCode representation 
     - returns: SubscriptionOfferCodeCustomCodeResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func subscriptionOfferCodeCustomCodesUpdateInstance(id: String, subscriptionOfferCodeCustomCodeUpdateRequest: SubscriptionOfferCodeCustomCodeUpdateRequest) async throws -> SubscriptionOfferCodeCustomCodeResponse {
        return try await subscriptionOfferCodeCustomCodesUpdateInstanceWithRequestBuilder(id: id, subscriptionOfferCodeCustomCodeUpdateRequest: subscriptionOfferCodeCustomCodeUpdateRequest).execute().body
    }

    /**
     - parameter urlString: next or first url from App Store Connect API
     - returns: SubscriptionOfferCodeCustomCodeResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func subscriptionOfferCodeCustomCodesUpdateInstance(urlString: String) async throws -> SubscriptionOfferCodeCustomCodeResponse {
        return try await subscriptionOfferCodeCustomCodesUpdateInstanceWithRequestBuilder(urlString: urlString).execute().body
    }

    /**
     - PATCH /v1/subscriptionOfferCodeCustomCodes/{id}
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter id: (path) the id of the requested resource 
     - parameter subscriptionOfferCodeCustomCodeUpdateRequest: (body) SubscriptionOfferCodeCustomCode representation 
     - returns: RequestBuilder<SubscriptionOfferCodeCustomCodeResponse> 
     */
    open class func subscriptionOfferCodeCustomCodesUpdateInstanceWithRequestBuilder(id: String, subscriptionOfferCodeCustomCodeUpdateRequest: SubscriptionOfferCodeCustomCodeUpdateRequest) -> RequestBuilder<SubscriptionOfferCodeCustomCodeResponse> {
        var localVariablePath = "/v1/subscriptionOfferCodeCustomCodes/{id}"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = ASCAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: subscriptionOfferCodeCustomCodeUpdateRequest)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            "Content-Type": "application/json",
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<SubscriptionOfferCodeCustomCodeResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PATCH", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     - PATCH /v1/subscriptionOfferCodeCustomCodes/{id}
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter urlString: next or first url from App Store Connect API
     - returns: RequestBuilder<SubscriptionOfferCodeCustomCodeResponse> 
     */
    open class func subscriptionOfferCodeCustomCodesUpdateInstanceWithRequestBuilder(urlString: String) -> RequestBuilder<SubscriptionOfferCodeCustomCodeResponse> {
        let localVariableRequestBuilder: RequestBuilder<SubscriptionOfferCodeCustomCodeResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PATCH", URLString: urlString, parameters: nil, headers: nil, requiresAuthentication: true)
    }
}
