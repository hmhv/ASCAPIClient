//
// SandboxTestersClearPurchaseHistoryRequestAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

open class SandboxTestersClearPurchaseHistoryRequestAPI {

    /**

     - parameter sandboxTestersClearPurchaseHistoryRequestV2CreateRequest: (body) SandboxTestersClearPurchaseHistoryRequest representation 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: SandboxTestersClearPurchaseHistoryRequestV2Response
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func sandboxTestersClearPurchaseHistoryRequestV2CreateInstance(sandboxTestersClearPurchaseHistoryRequestV2CreateRequest: SandboxTestersClearPurchaseHistoryRequestV2CreateRequest, apiConfiguration: ASCAPIConfiguration = ASCAPIConfiguration.shared) async throws(ErrorResponse) -> SandboxTestersClearPurchaseHistoryRequestV2Response {
        return try await sandboxTestersClearPurchaseHistoryRequestV2CreateInstanceWithRequestBuilder(sandboxTestersClearPurchaseHistoryRequestV2CreateRequest: sandboxTestersClearPurchaseHistoryRequestV2CreateRequest, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     - parameter urlString: next or first url from App Store Connect API
     - parameter apiConfiguration: The configuration for the http request.
     - returns: SandboxTestersClearPurchaseHistoryRequestV2Response
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func sandboxTestersClearPurchaseHistoryRequestV2CreateInstance(urlString: String, apiConfiguration: ASCAPIConfiguration = ASCAPIConfiguration.shared) async throws(ErrorResponse) -> SandboxTestersClearPurchaseHistoryRequestV2Response {
        return try await sandboxTestersClearPurchaseHistoryRequestV2CreateInstanceWithRequestBuilder(urlString: urlString, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     - POST /v2/sandboxTestersClearPurchaseHistoryRequest
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter sandboxTestersClearPurchaseHistoryRequestV2CreateRequest: (body) SandboxTestersClearPurchaseHistoryRequest representation 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<SandboxTestersClearPurchaseHistoryRequestV2Response> 
     */
    open class func sandboxTestersClearPurchaseHistoryRequestV2CreateInstanceWithRequestBuilder(sandboxTestersClearPurchaseHistoryRequestV2CreateRequest: SandboxTestersClearPurchaseHistoryRequestV2CreateRequest, apiConfiguration: ASCAPIConfiguration = ASCAPIConfiguration.shared) -> RequestBuilder<SandboxTestersClearPurchaseHistoryRequestV2Response> {
        let localVariablePath = "/v2/sandboxTestersClearPurchaseHistoryRequest"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: sandboxTestersClearPurchaseHistoryRequestV2CreateRequest, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            "Content-Type": "application/json",
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<SandboxTestersClearPurchaseHistoryRequestV2Response>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     - POST /v2/sandboxTestersClearPurchaseHistoryRequest
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter urlString: next or first url from App Store Connect API
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<SandboxTestersClearPurchaseHistoryRequestV2Response> 
     */
    open class func sandboxTestersClearPurchaseHistoryRequestV2CreateInstanceWithRequestBuilder(urlString: String, apiConfiguration: ASCAPIConfiguration = ASCAPIConfiguration.shared) -> RequestBuilder<SandboxTestersClearPurchaseHistoryRequestV2Response> {
        let localVariableNillableHeaders: [String: Any?] = [
            "Content-Type": "application/json",
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<SandboxTestersClearPurchaseHistoryRequestV2Response>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: urlString, parameters: nil, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }
}
