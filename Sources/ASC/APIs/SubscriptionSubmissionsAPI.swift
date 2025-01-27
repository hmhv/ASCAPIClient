//
// SubscriptionSubmissionsAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

open class SubscriptionSubmissionsAPI {

    /**

     - parameter subscriptionSubmissionCreateRequest: (body) SubscriptionSubmission representation 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: SubscriptionSubmissionResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func subscriptionSubmissionsCreateInstance(subscriptionSubmissionCreateRequest: SubscriptionSubmissionCreateRequest, apiConfiguration: ASCAPIConfiguration = ASCAPIConfiguration.shared) async throws(ErrorResponse) -> SubscriptionSubmissionResponse {
        return try await subscriptionSubmissionsCreateInstanceWithRequestBuilder(subscriptionSubmissionCreateRequest: subscriptionSubmissionCreateRequest, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     - parameter urlString: next or first url from App Store Connect API
     - parameter apiConfiguration: The configuration for the http request.
     - returns: SubscriptionSubmissionResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func subscriptionSubmissionsCreateInstance(urlString: String, apiConfiguration: ASCAPIConfiguration = ASCAPIConfiguration.shared) async throws(ErrorResponse) -> SubscriptionSubmissionResponse {
        return try await subscriptionSubmissionsCreateInstanceWithRequestBuilder(urlString: urlString, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     - POST /v1/subscriptionSubmissions
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter subscriptionSubmissionCreateRequest: (body) SubscriptionSubmission representation 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<SubscriptionSubmissionResponse> 
     */
    open class func subscriptionSubmissionsCreateInstanceWithRequestBuilder(subscriptionSubmissionCreateRequest: SubscriptionSubmissionCreateRequest, apiConfiguration: ASCAPIConfiguration = ASCAPIConfiguration.shared) -> RequestBuilder<SubscriptionSubmissionResponse> {
        let localVariablePath = "/v1/subscriptionSubmissions"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: subscriptionSubmissionCreateRequest, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            "Content-Type": "application/json",
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<SubscriptionSubmissionResponse>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     - POST /v1/subscriptionSubmissions
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter urlString: next or first url from App Store Connect API
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<SubscriptionSubmissionResponse> 
     */
    open class func subscriptionSubmissionsCreateInstanceWithRequestBuilder(urlString: String, apiConfiguration: ASCAPIConfiguration = ASCAPIConfiguration.shared) -> RequestBuilder<SubscriptionSubmissionResponse> {
        let localVariableNillableHeaders: [String: Any?] = [
            "Content-Type": "application/json",
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<SubscriptionSubmissionResponse>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: urlString, parameters: nil, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }
}
