//
// AppStoreVersionReleaseRequestsAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

open class AppStoreVersionReleaseRequestsAPI {

    /**

     - parameter appStoreVersionReleaseRequestCreateRequest: (body) AppStoreVersionReleaseRequest representation 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: AppStoreVersionReleaseRequestResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func appStoreVersionReleaseRequestsCreateInstance(appStoreVersionReleaseRequestCreateRequest: AppStoreVersionReleaseRequestCreateRequest, apiConfiguration: ASCAPIConfiguration = ASCAPIConfiguration.shared) async throws(ErrorResponse) -> AppStoreVersionReleaseRequestResponse {
        return try await appStoreVersionReleaseRequestsCreateInstanceWithRequestBuilder(appStoreVersionReleaseRequestCreateRequest: appStoreVersionReleaseRequestCreateRequest, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     - parameter urlString: next or first url from App Store Connect API
     - parameter apiConfiguration: The configuration for the http request.
     - returns: AppStoreVersionReleaseRequestResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func appStoreVersionReleaseRequestsCreateInstance(urlString: String, apiConfiguration: ASCAPIConfiguration = ASCAPIConfiguration.shared) async throws(ErrorResponse) -> AppStoreVersionReleaseRequestResponse {
        return try await appStoreVersionReleaseRequestsCreateInstanceWithRequestBuilder(urlString: urlString, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     - POST /v1/appStoreVersionReleaseRequests
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter appStoreVersionReleaseRequestCreateRequest: (body) AppStoreVersionReleaseRequest representation 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<AppStoreVersionReleaseRequestResponse> 
     */
    open class func appStoreVersionReleaseRequestsCreateInstanceWithRequestBuilder(appStoreVersionReleaseRequestCreateRequest: AppStoreVersionReleaseRequestCreateRequest, apiConfiguration: ASCAPIConfiguration = ASCAPIConfiguration.shared) -> RequestBuilder<AppStoreVersionReleaseRequestResponse> {
        let localVariablePath = "/v1/appStoreVersionReleaseRequests"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: appStoreVersionReleaseRequestCreateRequest, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            "Content-Type": "application/json",
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AppStoreVersionReleaseRequestResponse>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     - POST /v1/appStoreVersionReleaseRequests
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter urlString: next or first url from App Store Connect API
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<AppStoreVersionReleaseRequestResponse> 
     */
    open class func appStoreVersionReleaseRequestsCreateInstanceWithRequestBuilder(urlString: String, apiConfiguration: ASCAPIConfiguration = ASCAPIConfiguration.shared) -> RequestBuilder<AppStoreVersionReleaseRequestResponse> {
        let localVariableNillableHeaders: [String: Any?] = [
            "Content-Type": "application/json",
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AppStoreVersionReleaseRequestResponse>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: urlString, parameters: nil, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }
}
