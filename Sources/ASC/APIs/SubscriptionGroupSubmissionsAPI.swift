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
        var requestTask: RequestTask?
        return try await withTaskCancellationHandler {
            try Task.checkCancellation()
            return try await withCheckedThrowingContinuation { continuation in
                guard !Task.isCancelled else {
                  continuation.resume(throwing: CancellationError())
                  return
                }

                requestTask = subscriptionGroupSubmissionsCreateInstanceWithRequestBuilder(subscriptionGroupSubmissionCreateRequest: subscriptionGroupSubmissionCreateRequest).execute { result in
                    switch result {
                    case let .success(response):
                        continuation.resume(returning: response.body)
                    case let .failure(error):
                        continuation.resume(throwing: error)
                    }
                }
            }
        } onCancel: { [requestTask] in
            requestTask?.cancel()
        }
    }

    /**
     - parameter urlString: next or first url from App Store Connect API
     - returns: SubscriptionGroupSubmissionResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func subscriptionGroupSubmissionsCreateInstance(urlString: String) async throws -> SubscriptionGroupSubmissionResponse {
        var requestTask: RequestTask?
        return try await withTaskCancellationHandler {
            try Task.checkCancellation()
            return try await withCheckedThrowingContinuation { continuation in
                guard !Task.isCancelled else {
                  continuation.resume(throwing: CancellationError())
                  return
                }

                requestTask = subscriptionGroupSubmissionsCreateInstanceWithRequestBuilder(urlString: urlString).execute { result in
                    switch result {
                    case let .success(response):
                        continuation.resume(returning: response.body)
                    case let .failure(error):
                        continuation.resume(throwing: error)
                    }
                }
            }
        } onCancel: { [requestTask] in
            requestTask?.cancel()
        }
    }

    /**
     - POST /v1/subscriptionGroupSubmissions
     - BASIC:
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
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<SubscriptionGroupSubmissionResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     - POST /v1/subscriptionGroupSubmissions
     - BASIC:
       - type: http
       - name: itc-bearer-token
     - parameter urlString: next or first url from App Store Connect API
     - returns: RequestBuilder<SubscriptionGroupSubmissionResponse> 
     */
    open class func subscriptionGroupSubmissionsCreateInstanceWithRequestBuilder(urlString: String) -> RequestBuilder<SubscriptionGroupSubmissionResponse> {
        let localVariableRequestBuilder: RequestBuilder<SubscriptionGroupSubmissionResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()
        return localVariableRequestBuilder.init(method: "POST", URLString: urlString, parameters: nil)
    }
}
