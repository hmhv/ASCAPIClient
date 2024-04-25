//
// AppStoreVersionReleaseRequestsAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

open class AppStoreVersionReleaseRequestsAPI {

    /**

     - parameter appStoreVersionReleaseRequestCreateRequest: (body) AppStoreVersionReleaseRequest representation 
     - returns: AppStoreVersionReleaseRequestResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func appStoreVersionReleaseRequestsCreateInstance(appStoreVersionReleaseRequestCreateRequest: AppStoreVersionReleaseRequestCreateRequest) async throws -> AppStoreVersionReleaseRequestResponse {
        return try await appStoreVersionReleaseRequestsCreateInstanceWithRequestBuilder(appStoreVersionReleaseRequestCreateRequest: appStoreVersionReleaseRequestCreateRequest).execute().body
    }

    /**
     - parameter urlString: next or first url from App Store Connect API
     - returns: AppStoreVersionReleaseRequestResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func appStoreVersionReleaseRequestsCreateInstance(urlString: String) async throws -> AppStoreVersionReleaseRequestResponse {
        return try await appStoreVersionReleaseRequestsCreateInstanceWithRequestBuilder(urlString: urlString).execute().body
    }

    /**
     - POST /v1/appStoreVersionReleaseRequests
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter appStoreVersionReleaseRequestCreateRequest: (body) AppStoreVersionReleaseRequest representation 
     - returns: RequestBuilder<AppStoreVersionReleaseRequestResponse> 
     */
    open class func appStoreVersionReleaseRequestsCreateInstanceWithRequestBuilder(appStoreVersionReleaseRequestCreateRequest: AppStoreVersionReleaseRequestCreateRequest) -> RequestBuilder<AppStoreVersionReleaseRequestResponse> {
        let localVariablePath = "/v1/appStoreVersionReleaseRequests"
        let localVariableURLString = ASCAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: appStoreVersionReleaseRequestCreateRequest)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            "Content-Type": "application/json",
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AppStoreVersionReleaseRequestResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     - POST /v1/appStoreVersionReleaseRequests
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter urlString: next or first url from App Store Connect API
     - returns: RequestBuilder<AppStoreVersionReleaseRequestResponse> 
     */
    open class func appStoreVersionReleaseRequestsCreateInstanceWithRequestBuilder(urlString: String) -> RequestBuilder<AppStoreVersionReleaseRequestResponse> {
        let localVariableRequestBuilder: RequestBuilder<AppStoreVersionReleaseRequestResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()
        return localVariableRequestBuilder.init(method: "POST", URLString: urlString, parameters: [:], headers: nil, requiresAuthentication: true)
    }
}
