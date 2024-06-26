//
// SubscriptionGroupSubmissionsAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

open class SubscriptionGroupSubmissionsAPI {

    /**

     - parameter subscriptionGroupSubmissionCreateRequest: (body) SubscriptionGroupSubmission representation 
     - returns: SubscriptionGroupSubmissionResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func subscriptionGroupSubmissionsCreateInstance(subscriptionGroupSubmissionCreateRequest: SubscriptionGroupSubmissionCreateRequest) async throws -> SubscriptionGroupSubmissionResponse {
        return try await subscriptionGroupSubmissionsCreateInstanceWithRequestBuilder(subscriptionGroupSubmissionCreateRequest: subscriptionGroupSubmissionCreateRequest).execute().body
    }

    /**
     - parameter urlString: next or first url from App Store Connect API
     - returns: SubscriptionGroupSubmissionResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func subscriptionGroupSubmissionsCreateInstance(urlString: String) async throws -> SubscriptionGroupSubmissionResponse {
        return try await subscriptionGroupSubmissionsCreateInstanceWithRequestBuilder(urlString: urlString).execute().body
    }

    /**
     - POST /v1/subscriptionGroupSubmissions
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter subscriptionGroupSubmissionCreateRequest: (body) SubscriptionGroupSubmission representation 
     - returns: RequestBuilder<SubscriptionGroupSubmissionResponse> 
     */
    open class func subscriptionGroupSubmissionsCreateInstanceWithRequestBuilder(subscriptionGroupSubmissionCreateRequest: SubscriptionGroupSubmissionCreateRequest) -> RequestBuilder<SubscriptionGroupSubmissionResponse> {
        let localVariablePath = "/v1/subscriptionGroupSubmissions"
        let localVariableURLString = ASCAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: subscriptionGroupSubmissionCreateRequest)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            "Content-Type": "application/json",
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<SubscriptionGroupSubmissionResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     - POST /v1/subscriptionGroupSubmissions
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter urlString: next or first url from App Store Connect API
     - returns: RequestBuilder<SubscriptionGroupSubmissionResponse> 
     */
    open class func subscriptionGroupSubmissionsCreateInstanceWithRequestBuilder(urlString: String) -> RequestBuilder<SubscriptionGroupSubmissionResponse> {
        let localVariableNillableHeaders: [String: Any?] = [
            "Content-Type": "application/json",
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<SubscriptionGroupSubmissionResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: urlString, parameters: nil, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }
}
