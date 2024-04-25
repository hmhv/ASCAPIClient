//
// SubscriptionOfferCodeOneTimeUseCodesAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

open class SubscriptionOfferCodeOneTimeUseCodesAPI {

    /**

     - parameter subscriptionOfferCodeOneTimeUseCodeCreateRequest: (body) SubscriptionOfferCodeOneTimeUseCode representation 
     - returns: SubscriptionOfferCodeOneTimeUseCodeResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func subscriptionOfferCodeOneTimeUseCodesCreateInstance(subscriptionOfferCodeOneTimeUseCodeCreateRequest: SubscriptionOfferCodeOneTimeUseCodeCreateRequest) async throws -> SubscriptionOfferCodeOneTimeUseCodeResponse {
        return try await subscriptionOfferCodeOneTimeUseCodesCreateInstanceWithRequestBuilder(subscriptionOfferCodeOneTimeUseCodeCreateRequest: subscriptionOfferCodeOneTimeUseCodeCreateRequest).execute().body
    }

    /**
     - parameter urlString: next or first url from App Store Connect API
     - returns: SubscriptionOfferCodeOneTimeUseCodeResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func subscriptionOfferCodeOneTimeUseCodesCreateInstance(urlString: String) async throws -> SubscriptionOfferCodeOneTimeUseCodeResponse {
        return try await subscriptionOfferCodeOneTimeUseCodesCreateInstanceWithRequestBuilder(urlString: urlString).execute().body
    }

    /**
     - POST /v1/subscriptionOfferCodeOneTimeUseCodes
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter subscriptionOfferCodeOneTimeUseCodeCreateRequest: (body) SubscriptionOfferCodeOneTimeUseCode representation 
     - returns: RequestBuilder<SubscriptionOfferCodeOneTimeUseCodeResponse> 
     */
    open class func subscriptionOfferCodeOneTimeUseCodesCreateInstanceWithRequestBuilder(subscriptionOfferCodeOneTimeUseCodeCreateRequest: SubscriptionOfferCodeOneTimeUseCodeCreateRequest) -> RequestBuilder<SubscriptionOfferCodeOneTimeUseCodeResponse> {
        let localVariablePath = "/v1/subscriptionOfferCodeOneTimeUseCodes"
        let localVariableURLString = ASCAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: subscriptionOfferCodeOneTimeUseCodeCreateRequest)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            "Content-Type": "application/json",
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<SubscriptionOfferCodeOneTimeUseCodeResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     - POST /v1/subscriptionOfferCodeOneTimeUseCodes
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter urlString: next or first url from App Store Connect API
     - returns: RequestBuilder<SubscriptionOfferCodeOneTimeUseCodeResponse> 
     */
    open class func subscriptionOfferCodeOneTimeUseCodesCreateInstanceWithRequestBuilder(urlString: String) -> RequestBuilder<SubscriptionOfferCodeOneTimeUseCodeResponse> {
        let localVariableNillableHeaders: [String: Any?] = [
            "Content-Type": "application/json",
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<SubscriptionOfferCodeOneTimeUseCodeResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: urlString, parameters: nil, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     * enum for parameter fieldsSubscriptionOfferCodeOneTimeUseCodes
     */
    public enum FieldsSubscriptionOfferCodeOneTimeUseCodes_subscriptionOfferCodeOneTimeUseCodesGetInstance: String, CaseIterable {
        case active = "active"
        case createddate = "createdDate"
        case expirationdate = "expirationDate"
        case numberofcodes = "numberOfCodes"
        case offercode = "offerCode"
        case values = "values"
    }

    /**
     * enum for parameter include
     */
    public enum Include_subscriptionOfferCodeOneTimeUseCodesGetInstance: String, CaseIterable {
        case offercode = "offerCode"
    }

    /**

     - parameter id: (path) the id of the requested resource 
     - parameter fieldsSubscriptionOfferCodeOneTimeUseCodes: (query) the fields to include for returned resources of type subscriptionOfferCodeOneTimeUseCodes (optional)
     - parameter include: (query) comma-separated list of relationships to include (optional)
     - returns: SubscriptionOfferCodeOneTimeUseCodeResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func subscriptionOfferCodeOneTimeUseCodesGetInstance(id: String, fieldsSubscriptionOfferCodeOneTimeUseCodes: [FieldsSubscriptionOfferCodeOneTimeUseCodes_subscriptionOfferCodeOneTimeUseCodesGetInstance]? = nil, include: [Include_subscriptionOfferCodeOneTimeUseCodesGetInstance]? = nil) async throws -> SubscriptionOfferCodeOneTimeUseCodeResponse {
        return try await subscriptionOfferCodeOneTimeUseCodesGetInstanceWithRequestBuilder(id: id, fieldsSubscriptionOfferCodeOneTimeUseCodes: fieldsSubscriptionOfferCodeOneTimeUseCodes, include: include).execute().body
    }

    /**
     - parameter urlString: next or first url from App Store Connect API
     - returns: SubscriptionOfferCodeOneTimeUseCodeResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func subscriptionOfferCodeOneTimeUseCodesGetInstance(urlString: String) async throws -> SubscriptionOfferCodeOneTimeUseCodeResponse {
        return try await subscriptionOfferCodeOneTimeUseCodesGetInstanceWithRequestBuilder(urlString: urlString).execute().body
    }

    /**
     - GET /v1/subscriptionOfferCodeOneTimeUseCodes/{id}
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter id: (path) the id of the requested resource 
     - parameter fieldsSubscriptionOfferCodeOneTimeUseCodes: (query) the fields to include for returned resources of type subscriptionOfferCodeOneTimeUseCodes (optional)
     - parameter include: (query) comma-separated list of relationships to include (optional)
     - returns: RequestBuilder<SubscriptionOfferCodeOneTimeUseCodeResponse> 
     */
    open class func subscriptionOfferCodeOneTimeUseCodesGetInstanceWithRequestBuilder(id: String, fieldsSubscriptionOfferCodeOneTimeUseCodes: [FieldsSubscriptionOfferCodeOneTimeUseCodes_subscriptionOfferCodeOneTimeUseCodesGetInstance]? = nil, include: [Include_subscriptionOfferCodeOneTimeUseCodesGetInstance]? = nil) -> RequestBuilder<SubscriptionOfferCodeOneTimeUseCodeResponse> {
        var localVariablePath = "/v1/subscriptionOfferCodeOneTimeUseCodes/{id}"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = ASCAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "fields[subscriptionOfferCodeOneTimeUseCodes]": (wrappedValue: fieldsSubscriptionOfferCodeOneTimeUseCodes?.encodeToJSON(), isExplode: false),
            "include": (wrappedValue: include?.encodeToJSON(), isExplode: false),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<SubscriptionOfferCodeOneTimeUseCodeResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     - GET /v1/subscriptionOfferCodeOneTimeUseCodes/{id}
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter urlString: next or first url from App Store Connect API
     - returns: RequestBuilder<SubscriptionOfferCodeOneTimeUseCodeResponse> 
     */
    open class func subscriptionOfferCodeOneTimeUseCodesGetInstanceWithRequestBuilder(urlString: String) -> RequestBuilder<SubscriptionOfferCodeOneTimeUseCodeResponse> {
        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<SubscriptionOfferCodeOneTimeUseCodeResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: urlString, parameters: nil, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**

     - parameter id: (path) the id of the requested resource 
     - parameter subscriptionOfferCodeOneTimeUseCodeUpdateRequest: (body) SubscriptionOfferCodeOneTimeUseCode representation 
     - returns: SubscriptionOfferCodeOneTimeUseCodeResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func subscriptionOfferCodeOneTimeUseCodesUpdateInstance(id: String, subscriptionOfferCodeOneTimeUseCodeUpdateRequest: SubscriptionOfferCodeOneTimeUseCodeUpdateRequest) async throws -> SubscriptionOfferCodeOneTimeUseCodeResponse {
        return try await subscriptionOfferCodeOneTimeUseCodesUpdateInstanceWithRequestBuilder(id: id, subscriptionOfferCodeOneTimeUseCodeUpdateRequest: subscriptionOfferCodeOneTimeUseCodeUpdateRequest).execute().body
    }

    /**
     - parameter urlString: next or first url from App Store Connect API
     - returns: SubscriptionOfferCodeOneTimeUseCodeResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func subscriptionOfferCodeOneTimeUseCodesUpdateInstance(urlString: String) async throws -> SubscriptionOfferCodeOneTimeUseCodeResponse {
        return try await subscriptionOfferCodeOneTimeUseCodesUpdateInstanceWithRequestBuilder(urlString: urlString).execute().body
    }

    /**
     - PATCH /v1/subscriptionOfferCodeOneTimeUseCodes/{id}
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter id: (path) the id of the requested resource 
     - parameter subscriptionOfferCodeOneTimeUseCodeUpdateRequest: (body) SubscriptionOfferCodeOneTimeUseCode representation 
     - returns: RequestBuilder<SubscriptionOfferCodeOneTimeUseCodeResponse> 
     */
    open class func subscriptionOfferCodeOneTimeUseCodesUpdateInstanceWithRequestBuilder(id: String, subscriptionOfferCodeOneTimeUseCodeUpdateRequest: SubscriptionOfferCodeOneTimeUseCodeUpdateRequest) -> RequestBuilder<SubscriptionOfferCodeOneTimeUseCodeResponse> {
        var localVariablePath = "/v1/subscriptionOfferCodeOneTimeUseCodes/{id}"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = ASCAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: subscriptionOfferCodeOneTimeUseCodeUpdateRequest)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            "Content-Type": "application/json",
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<SubscriptionOfferCodeOneTimeUseCodeResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PATCH", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     - PATCH /v1/subscriptionOfferCodeOneTimeUseCodes/{id}
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter urlString: next or first url from App Store Connect API
     - returns: RequestBuilder<SubscriptionOfferCodeOneTimeUseCodeResponse> 
     */
    open class func subscriptionOfferCodeOneTimeUseCodesUpdateInstanceWithRequestBuilder(urlString: String) -> RequestBuilder<SubscriptionOfferCodeOneTimeUseCodeResponse> {
        let localVariableNillableHeaders: [String: Any?] = [
            "Content-Type": "application/json",
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<SubscriptionOfferCodeOneTimeUseCodeResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PATCH", URLString: urlString, parameters: nil, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**

     - parameter id: (path) the id of the requested resource 
     - returns: String
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func subscriptionOfferCodeOneTimeUseCodesValuesGetToOneRelated(id: String) async throws -> String {
        return try await subscriptionOfferCodeOneTimeUseCodesValuesGetToOneRelatedWithRequestBuilder(id: id).execute().body
    }

    /**
     - parameter urlString: next or first url from App Store Connect API
     - returns: String
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func subscriptionOfferCodeOneTimeUseCodesValuesGetToOneRelated(urlString: String) async throws -> String {
        return try await subscriptionOfferCodeOneTimeUseCodesValuesGetToOneRelatedWithRequestBuilder(urlString: urlString).execute().body
    }

    /**
     - GET /v1/subscriptionOfferCodeOneTimeUseCodes/{id}/values
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter id: (path) the id of the requested resource 
     - returns: RequestBuilder<String> 
     */
    open class func subscriptionOfferCodeOneTimeUseCodesValuesGetToOneRelatedWithRequestBuilder(id: String) -> RequestBuilder<String> {
        var localVariablePath = "/v1/subscriptionOfferCodeOneTimeUseCodes/{id}/values"
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

        let localVariableRequestBuilder: RequestBuilder<String>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     - GET /v1/subscriptionOfferCodeOneTimeUseCodes/{id}/values
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter urlString: next or first url from App Store Connect API
     - returns: RequestBuilder<String> 
     */
    open class func subscriptionOfferCodeOneTimeUseCodesValuesGetToOneRelatedWithRequestBuilder(urlString: String) -> RequestBuilder<String> {
        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<String>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: urlString, parameters: nil, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }
}