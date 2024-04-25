//
// SandboxTestersAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

open class SandboxTestersAPI {

    /**
     * enum for parameter fieldsSandboxTesters
     */
    public enum FieldsSandboxTesters_sandboxTestersV2GetCollection: String, CaseIterable {
        case acaccountname = "acAccountName"
        case applepaycompatible = "applePayCompatible"
        case firstname = "firstName"
        case interruptpurchases = "interruptPurchases"
        case lastname = "lastName"
        case subscriptionrenewalrate = "subscriptionRenewalRate"
        case territory = "territory"
    }

    /**

     - parameter fieldsSandboxTesters: (query) the fields to include for returned resources of type sandboxTesters (optional)
     - parameter limit: (query) maximum resources per page (optional)
     - returns: SandboxTestersV2Response
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func sandboxTestersV2GetCollection(fieldsSandboxTesters: [FieldsSandboxTesters_sandboxTestersV2GetCollection]? = nil, limit: Int? = nil) async throws -> SandboxTestersV2Response {
        return try await sandboxTestersV2GetCollectionWithRequestBuilder(fieldsSandboxTesters: fieldsSandboxTesters, limit: limit).execute().body
    }

    /**
     - parameter urlString: next or first url from App Store Connect API
     - returns: SandboxTestersV2Response
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func sandboxTestersV2GetCollection(urlString: String) async throws -> SandboxTestersV2Response {
        return try await sandboxTestersV2GetCollectionWithRequestBuilder(urlString: urlString).execute().body
    }

    /**
     - GET /v2/sandboxTesters
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter fieldsSandboxTesters: (query) the fields to include for returned resources of type sandboxTesters (optional)
     - parameter limit: (query) maximum resources per page (optional)
     - returns: RequestBuilder<SandboxTestersV2Response> 
     */
    open class func sandboxTestersV2GetCollectionWithRequestBuilder(fieldsSandboxTesters: [FieldsSandboxTesters_sandboxTestersV2GetCollection]? = nil, limit: Int? = nil) -> RequestBuilder<SandboxTestersV2Response> {
        let localVariablePath = "/v2/sandboxTesters"
        let localVariableURLString = ASCAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "fields[sandboxTesters]": (wrappedValue: fieldsSandboxTesters?.encodeToJSON(), isExplode: false),
            "limit": (wrappedValue: limit?.encodeToJSON(), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<SandboxTestersV2Response>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     - GET /v2/sandboxTesters
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter urlString: next or first url from App Store Connect API
     - returns: RequestBuilder<SandboxTestersV2Response> 
     */
    open class func sandboxTestersV2GetCollectionWithRequestBuilder(urlString: String) -> RequestBuilder<SandboxTestersV2Response> {
        let localVariableRequestBuilder: RequestBuilder<SandboxTestersV2Response>.Type = ASCAPI.requestBuilderFactory.getBuilder()
        return localVariableRequestBuilder.init(method: "GET", URLString: urlString, parameters: [:], headers: nil, requiresAuthentication: true)
    }

    /**

     - parameter id: (path) the id of the requested resource 
     - parameter sandboxTesterV2UpdateRequest: (body) SandboxTester representation 
     - returns: SandboxTesterV2Response
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func sandboxTestersV2UpdateInstance(id: String, sandboxTesterV2UpdateRequest: SandboxTesterV2UpdateRequest) async throws -> SandboxTesterV2Response {
        return try await sandboxTestersV2UpdateInstanceWithRequestBuilder(id: id, sandboxTesterV2UpdateRequest: sandboxTesterV2UpdateRequest).execute().body
    }

    /**
     - parameter urlString: next or first url from App Store Connect API
     - returns: SandboxTesterV2Response
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func sandboxTestersV2UpdateInstance(urlString: String) async throws -> SandboxTesterV2Response {
        return try await sandboxTestersV2UpdateInstanceWithRequestBuilder(urlString: urlString).execute().body
    }

    /**
     - PATCH /v2/sandboxTesters/{id}
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter id: (path) the id of the requested resource 
     - parameter sandboxTesterV2UpdateRequest: (body) SandboxTester representation 
     - returns: RequestBuilder<SandboxTesterV2Response> 
     */
    open class func sandboxTestersV2UpdateInstanceWithRequestBuilder(id: String, sandboxTesterV2UpdateRequest: SandboxTesterV2UpdateRequest) -> RequestBuilder<SandboxTesterV2Response> {
        var localVariablePath = "/v2/sandboxTesters/{id}"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = ASCAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: sandboxTesterV2UpdateRequest)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            "Content-Type": "application/json",
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<SandboxTesterV2Response>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PATCH", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     - PATCH /v2/sandboxTesters/{id}
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter urlString: next or first url from App Store Connect API
     - returns: RequestBuilder<SandboxTesterV2Response> 
     */
    open class func sandboxTestersV2UpdateInstanceWithRequestBuilder(urlString: String) -> RequestBuilder<SandboxTesterV2Response> {
        let localVariableRequestBuilder: RequestBuilder<SandboxTesterV2Response>.Type = ASCAPI.requestBuilderFactory.getBuilder()
        return localVariableRequestBuilder.init(method: "PATCH", URLString: urlString, parameters: [:], headers: nil, requiresAuthentication: true)
    }
}
