//
// SandboxTestersAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

open class SandboxTestersAPI {

    /**
     * enum for parameter fieldsSandboxTesters
     */
    public enum FieldsSandboxTesters_sandboxTestersV2GetCollection: String, Sendable, CaseIterable {
        case firstname = "firstName"
        case lastname = "lastName"
        case acaccountname = "acAccountName"
        case territory = "territory"
        case applepaycompatible = "applePayCompatible"
        case interruptpurchases = "interruptPurchases"
        case subscriptionrenewalrate = "subscriptionRenewalRate"
    }

    /**

     - parameter fieldsSandboxTesters: (query) the fields to include for returned resources of type sandboxTesters (optional)
     - parameter limit: (query) maximum resources per page (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: SandboxTestersV2Response
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func sandboxTestersV2GetCollection(fieldsSandboxTesters: [FieldsSandboxTesters_sandboxTestersV2GetCollection]? = nil, limit: Int? = nil, apiConfiguration: ASCAPIConfiguration = ASCAPIConfiguration.shared) async throws(ErrorResponse) -> SandboxTestersV2Response {
        return try await sandboxTestersV2GetCollectionWithRequestBuilder(fieldsSandboxTesters: fieldsSandboxTesters, limit: limit, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     - parameter urlString: next or first url from App Store Connect API
     - parameter apiConfiguration: The configuration for the http request.
     - returns: SandboxTestersV2Response
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func sandboxTestersV2GetCollection(urlString: String, apiConfiguration: ASCAPIConfiguration = ASCAPIConfiguration.shared) async throws(ErrorResponse) -> SandboxTestersV2Response {
        return try await sandboxTestersV2GetCollectionWithRequestBuilder(urlString: urlString, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     - GET /v2/sandboxTesters
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter fieldsSandboxTesters: (query) the fields to include for returned resources of type sandboxTesters (optional)
     - parameter limit: (query) maximum resources per page (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<SandboxTestersV2Response> 
     */
    open class func sandboxTestersV2GetCollectionWithRequestBuilder(fieldsSandboxTesters: [FieldsSandboxTesters_sandboxTestersV2GetCollection]? = nil, limit: Int? = nil, apiConfiguration: ASCAPIConfiguration = ASCAPIConfiguration.shared) -> RequestBuilder<SandboxTestersV2Response> {
        let localVariablePath = "/v2/sandboxTesters"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "fields[sandboxTesters]": (wrappedValue: fieldsSandboxTesters?.encodeToJSON(codableHelper: apiConfiguration.codableHelper), isExplode: false),
            "limit": (wrappedValue: limit?.encodeToJSON(codableHelper: apiConfiguration.codableHelper), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<SandboxTestersV2Response>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     - GET /v2/sandboxTesters
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter urlString: next or first url from App Store Connect API
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<SandboxTestersV2Response> 
     */
    open class func sandboxTestersV2GetCollectionWithRequestBuilder(urlString: String, apiConfiguration: ASCAPIConfiguration = ASCAPIConfiguration.shared) -> RequestBuilder<SandboxTestersV2Response> {
        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<SandboxTestersV2Response>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: urlString, parameters: nil, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**

     - parameter id: (path) the id of the requested resource 
     - parameter sandboxTesterV2UpdateRequest: (body) SandboxTester representation 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: SandboxTesterV2Response
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func sandboxTestersV2UpdateInstance(id: String, sandboxTesterV2UpdateRequest: SandboxTesterV2UpdateRequest, apiConfiguration: ASCAPIConfiguration = ASCAPIConfiguration.shared) async throws(ErrorResponse) -> SandboxTesterV2Response {
        return try await sandboxTestersV2UpdateInstanceWithRequestBuilder(id: id, sandboxTesterV2UpdateRequest: sandboxTesterV2UpdateRequest, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     - parameter urlString: next or first url from App Store Connect API
     - parameter apiConfiguration: The configuration for the http request.
     - returns: SandboxTesterV2Response
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func sandboxTestersV2UpdateInstance(urlString: String, apiConfiguration: ASCAPIConfiguration = ASCAPIConfiguration.shared) async throws(ErrorResponse) -> SandboxTesterV2Response {
        return try await sandboxTestersV2UpdateInstanceWithRequestBuilder(urlString: urlString, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     - PATCH /v2/sandboxTesters/{id}
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter id: (path) the id of the requested resource 
     - parameter sandboxTesterV2UpdateRequest: (body) SandboxTester representation 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<SandboxTesterV2Response> 
     */
    open class func sandboxTestersV2UpdateInstanceWithRequestBuilder(id: String, sandboxTesterV2UpdateRequest: SandboxTesterV2UpdateRequest, apiConfiguration: ASCAPIConfiguration = ASCAPIConfiguration.shared) -> RequestBuilder<SandboxTesterV2Response> {
        var localVariablePath = "/v2/sandboxTesters/{id}"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: sandboxTesterV2UpdateRequest, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            "Content-Type": "application/json",
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<SandboxTesterV2Response>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PATCH", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     - PATCH /v2/sandboxTesters/{id}
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter urlString: next or first url from App Store Connect API
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<SandboxTesterV2Response> 
     */
    open class func sandboxTestersV2UpdateInstanceWithRequestBuilder(urlString: String, apiConfiguration: ASCAPIConfiguration = ASCAPIConfiguration.shared) -> RequestBuilder<SandboxTesterV2Response> {
        let localVariableNillableHeaders: [String: Any?] = [
            "Content-Type": "application/json",
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<SandboxTesterV2Response>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PATCH", URLString: urlString, parameters: nil, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }
}
