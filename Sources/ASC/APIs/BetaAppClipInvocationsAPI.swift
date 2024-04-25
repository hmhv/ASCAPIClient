//
// BetaAppClipInvocationsAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

open class BetaAppClipInvocationsAPI {

    /**

     - parameter betaAppClipInvocationCreateRequest: (body) BetaAppClipInvocation representation 
     - returns: BetaAppClipInvocationResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func betaAppClipInvocationsCreateInstance(betaAppClipInvocationCreateRequest: BetaAppClipInvocationCreateRequest) async throws -> BetaAppClipInvocationResponse {
        return try await betaAppClipInvocationsCreateInstanceWithRequestBuilder(betaAppClipInvocationCreateRequest: betaAppClipInvocationCreateRequest).execute().body
    }

    /**
     - parameter urlString: next or first url from App Store Connect API
     - returns: BetaAppClipInvocationResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func betaAppClipInvocationsCreateInstance(urlString: String) async throws -> BetaAppClipInvocationResponse {
        return try await betaAppClipInvocationsCreateInstanceWithRequestBuilder(urlString: urlString).execute().body
    }

    /**
     - POST /v1/betaAppClipInvocations
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter betaAppClipInvocationCreateRequest: (body) BetaAppClipInvocation representation 
     - returns: RequestBuilder<BetaAppClipInvocationResponse> 
     */
    open class func betaAppClipInvocationsCreateInstanceWithRequestBuilder(betaAppClipInvocationCreateRequest: BetaAppClipInvocationCreateRequest) -> RequestBuilder<BetaAppClipInvocationResponse> {
        let localVariablePath = "/v1/betaAppClipInvocations"
        let localVariableURLString = ASCAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: betaAppClipInvocationCreateRequest)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            "Content-Type": "application/json",
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<BetaAppClipInvocationResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     - POST /v1/betaAppClipInvocations
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter urlString: next or first url from App Store Connect API
     - returns: RequestBuilder<BetaAppClipInvocationResponse> 
     */
    open class func betaAppClipInvocationsCreateInstanceWithRequestBuilder(urlString: String) -> RequestBuilder<BetaAppClipInvocationResponse> {
        let localVariableNillableHeaders: [String: Any?] = [
            "Content-Type": "application/json",
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<BetaAppClipInvocationResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: urlString, parameters: nil, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**

     - parameter id: (path) the id of the requested resource 
     - returns: Void
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func betaAppClipInvocationsDeleteInstance(id: String) async throws {
        return try await betaAppClipInvocationsDeleteInstanceWithRequestBuilder(id: id).execute().body
    }

    /**
     - parameter urlString: next or first url from App Store Connect API
     - returns: Void
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func betaAppClipInvocationsDeleteInstance(urlString: String) async throws {
        return try await betaAppClipInvocationsDeleteInstanceWithRequestBuilder(urlString: urlString).execute().body
    }

    /**
     - DELETE /v1/betaAppClipInvocations/{id}
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter id: (path) the id of the requested resource 
     - returns: RequestBuilder<Void> 
     */
    open class func betaAppClipInvocationsDeleteInstanceWithRequestBuilder(id: String) -> RequestBuilder<Void> {
        var localVariablePath = "/v1/betaAppClipInvocations/{id}"
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
     - DELETE /v1/betaAppClipInvocations/{id}
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter urlString: next or first url from App Store Connect API
     - returns: RequestBuilder<Void> 
     */
    open class func betaAppClipInvocationsDeleteInstanceWithRequestBuilder(urlString: String) -> RequestBuilder<Void> {
        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Void>.Type = ASCAPI.requestBuilderFactory.getNonDecodableBuilder()

        return localVariableRequestBuilder.init(method: "DELETE", URLString: urlString, parameters: nil, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     * enum for parameter fieldsBetaAppClipInvocations
     */
    public enum FieldsBetaAppClipInvocations_betaAppClipInvocationsGetInstance: String, CaseIterable {
        case betaappclipinvocationlocalizations = "betaAppClipInvocationLocalizations"
        case buildbundle = "buildBundle"
        case url = "url"
    }

    /**
     * enum for parameter include
     */
    public enum Include_betaAppClipInvocationsGetInstance: String, CaseIterable {
        case betaappclipinvocationlocalizations = "betaAppClipInvocationLocalizations"
    }

    /**

     - parameter id: (path) the id of the requested resource 
     - parameter fieldsBetaAppClipInvocations: (query) the fields to include for returned resources of type betaAppClipInvocations (optional)
     - parameter include: (query) comma-separated list of relationships to include (optional)
     - parameter limitBetaAppClipInvocationLocalizations: (query) maximum number of related betaAppClipInvocationLocalizations returned (when they are included) (optional)
     - returns: BetaAppClipInvocationResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func betaAppClipInvocationsGetInstance(id: String, fieldsBetaAppClipInvocations: [FieldsBetaAppClipInvocations_betaAppClipInvocationsGetInstance]? = nil, include: [Include_betaAppClipInvocationsGetInstance]? = nil, limitBetaAppClipInvocationLocalizations: Int? = nil) async throws -> BetaAppClipInvocationResponse {
        return try await betaAppClipInvocationsGetInstanceWithRequestBuilder(id: id, fieldsBetaAppClipInvocations: fieldsBetaAppClipInvocations, include: include, limitBetaAppClipInvocationLocalizations: limitBetaAppClipInvocationLocalizations).execute().body
    }

    /**
     - parameter urlString: next or first url from App Store Connect API
     - returns: BetaAppClipInvocationResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func betaAppClipInvocationsGetInstance(urlString: String) async throws -> BetaAppClipInvocationResponse {
        return try await betaAppClipInvocationsGetInstanceWithRequestBuilder(urlString: urlString).execute().body
    }

    /**
     - GET /v1/betaAppClipInvocations/{id}
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter id: (path) the id of the requested resource 
     - parameter fieldsBetaAppClipInvocations: (query) the fields to include for returned resources of type betaAppClipInvocations (optional)
     - parameter include: (query) comma-separated list of relationships to include (optional)
     - parameter limitBetaAppClipInvocationLocalizations: (query) maximum number of related betaAppClipInvocationLocalizations returned (when they are included) (optional)
     - returns: RequestBuilder<BetaAppClipInvocationResponse> 
     */
    open class func betaAppClipInvocationsGetInstanceWithRequestBuilder(id: String, fieldsBetaAppClipInvocations: [FieldsBetaAppClipInvocations_betaAppClipInvocationsGetInstance]? = nil, include: [Include_betaAppClipInvocationsGetInstance]? = nil, limitBetaAppClipInvocationLocalizations: Int? = nil) -> RequestBuilder<BetaAppClipInvocationResponse> {
        var localVariablePath = "/v1/betaAppClipInvocations/{id}"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = ASCAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "fields[betaAppClipInvocations]": (wrappedValue: fieldsBetaAppClipInvocations?.encodeToJSON(), isExplode: false),
            "include": (wrappedValue: include?.encodeToJSON(), isExplode: false),
            "limit[betaAppClipInvocationLocalizations]": (wrappedValue: limitBetaAppClipInvocationLocalizations?.encodeToJSON(), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<BetaAppClipInvocationResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     - GET /v1/betaAppClipInvocations/{id}
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter urlString: next or first url from App Store Connect API
     - returns: RequestBuilder<BetaAppClipInvocationResponse> 
     */
    open class func betaAppClipInvocationsGetInstanceWithRequestBuilder(urlString: String) -> RequestBuilder<BetaAppClipInvocationResponse> {
        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<BetaAppClipInvocationResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: urlString, parameters: nil, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**

     - parameter id: (path) the id of the requested resource 
     - parameter betaAppClipInvocationUpdateRequest: (body) BetaAppClipInvocation representation 
     - returns: BetaAppClipInvocationResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func betaAppClipInvocationsUpdateInstance(id: String, betaAppClipInvocationUpdateRequest: BetaAppClipInvocationUpdateRequest) async throws -> BetaAppClipInvocationResponse {
        return try await betaAppClipInvocationsUpdateInstanceWithRequestBuilder(id: id, betaAppClipInvocationUpdateRequest: betaAppClipInvocationUpdateRequest).execute().body
    }

    /**
     - parameter urlString: next or first url from App Store Connect API
     - returns: BetaAppClipInvocationResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func betaAppClipInvocationsUpdateInstance(urlString: String) async throws -> BetaAppClipInvocationResponse {
        return try await betaAppClipInvocationsUpdateInstanceWithRequestBuilder(urlString: urlString).execute().body
    }

    /**
     - PATCH /v1/betaAppClipInvocations/{id}
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter id: (path) the id of the requested resource 
     - parameter betaAppClipInvocationUpdateRequest: (body) BetaAppClipInvocation representation 
     - returns: RequestBuilder<BetaAppClipInvocationResponse> 
     */
    open class func betaAppClipInvocationsUpdateInstanceWithRequestBuilder(id: String, betaAppClipInvocationUpdateRequest: BetaAppClipInvocationUpdateRequest) -> RequestBuilder<BetaAppClipInvocationResponse> {
        var localVariablePath = "/v1/betaAppClipInvocations/{id}"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = ASCAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: betaAppClipInvocationUpdateRequest)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            "Content-Type": "application/json",
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<BetaAppClipInvocationResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PATCH", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     - PATCH /v1/betaAppClipInvocations/{id}
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter urlString: next or first url from App Store Connect API
     - returns: RequestBuilder<BetaAppClipInvocationResponse> 
     */
    open class func betaAppClipInvocationsUpdateInstanceWithRequestBuilder(urlString: String) -> RequestBuilder<BetaAppClipInvocationResponse> {
        let localVariableNillableHeaders: [String: Any?] = [
            "Content-Type": "application/json",
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<BetaAppClipInvocationResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PATCH", URLString: urlString, parameters: nil, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }
}
