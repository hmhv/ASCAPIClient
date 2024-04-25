//
// SandboxTestersClearPurchaseHistoryRequestAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

open class SandboxTestersClearPurchaseHistoryRequestAPI {

    /**

     - parameter sandboxTestersClearPurchaseHistoryRequestV2CreateRequest: (body) SandboxTestersClearPurchaseHistoryRequest representation 
     - returns: SandboxTestersClearPurchaseHistoryRequestV2Response
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func sandboxTestersClearPurchaseHistoryRequestV2CreateInstance(sandboxTestersClearPurchaseHistoryRequestV2CreateRequest: SandboxTestersClearPurchaseHistoryRequestV2CreateRequest) async throws -> SandboxTestersClearPurchaseHistoryRequestV2Response {
        return try await sandboxTestersClearPurchaseHistoryRequestV2CreateInstanceWithRequestBuilder(sandboxTestersClearPurchaseHistoryRequestV2CreateRequest: sandboxTestersClearPurchaseHistoryRequestV2CreateRequest).execute().body
    }

    /**
     - parameter urlString: next or first url from App Store Connect API
     - returns: SandboxTestersClearPurchaseHistoryRequestV2Response
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func sandboxTestersClearPurchaseHistoryRequestV2CreateInstance(urlString: String) async throws -> SandboxTestersClearPurchaseHistoryRequestV2Response {
        return try await sandboxTestersClearPurchaseHistoryRequestV2CreateInstanceWithRequestBuilder(urlString: urlString).execute().body
    }

    /**
     - POST /v2/sandboxTestersClearPurchaseHistoryRequest
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter sandboxTestersClearPurchaseHistoryRequestV2CreateRequest: (body) SandboxTestersClearPurchaseHistoryRequest representation 
     - returns: RequestBuilder<SandboxTestersClearPurchaseHistoryRequestV2Response> 
     */
    open class func sandboxTestersClearPurchaseHistoryRequestV2CreateInstanceWithRequestBuilder(sandboxTestersClearPurchaseHistoryRequestV2CreateRequest: SandboxTestersClearPurchaseHistoryRequestV2CreateRequest) -> RequestBuilder<SandboxTestersClearPurchaseHistoryRequestV2Response> {
        let localVariablePath = "/v2/sandboxTestersClearPurchaseHistoryRequest"
        let localVariableURLString = ASCAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: sandboxTestersClearPurchaseHistoryRequestV2CreateRequest)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            "Content-Type": "application/json",
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<SandboxTestersClearPurchaseHistoryRequestV2Response>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     - POST /v2/sandboxTestersClearPurchaseHistoryRequest
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter urlString: next or first url from App Store Connect API
     - returns: RequestBuilder<SandboxTestersClearPurchaseHistoryRequestV2Response> 
     */
    open class func sandboxTestersClearPurchaseHistoryRequestV2CreateInstanceWithRequestBuilder(urlString: String) -> RequestBuilder<SandboxTestersClearPurchaseHistoryRequestV2Response> {
        let localVariableNillableHeaders: [String: Any?] = [
            "Content-Type": "application/json",
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<SandboxTestersClearPurchaseHistoryRequestV2Response>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: urlString, parameters: nil, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }
}