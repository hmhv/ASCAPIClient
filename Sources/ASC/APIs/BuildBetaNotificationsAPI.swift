//
// BuildBetaNotificationsAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

open class BuildBetaNotificationsAPI {

    /**

     - parameter buildBetaNotificationCreateRequest: (body) BuildBetaNotification representation 
     - returns: BuildBetaNotificationResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func buildBetaNotificationsCreateInstance(buildBetaNotificationCreateRequest: BuildBetaNotificationCreateRequest) async throws -> BuildBetaNotificationResponse {
        return try await buildBetaNotificationsCreateInstanceWithRequestBuilder(buildBetaNotificationCreateRequest: buildBetaNotificationCreateRequest).execute().body
    }

    /**
     - parameter urlString: next or first url from App Store Connect API
     - returns: BuildBetaNotificationResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func buildBetaNotificationsCreateInstance(urlString: String) async throws -> BuildBetaNotificationResponse {
        return try await buildBetaNotificationsCreateInstanceWithRequestBuilder(urlString: urlString).execute().body
    }

    /**
     - POST /v1/buildBetaNotifications
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter buildBetaNotificationCreateRequest: (body) BuildBetaNotification representation 
     - returns: RequestBuilder<BuildBetaNotificationResponse> 
     */
    open class func buildBetaNotificationsCreateInstanceWithRequestBuilder(buildBetaNotificationCreateRequest: BuildBetaNotificationCreateRequest) -> RequestBuilder<BuildBetaNotificationResponse> {
        let localVariablePath = "/v1/buildBetaNotifications"
        let localVariableURLString = ASCAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: buildBetaNotificationCreateRequest)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            "Content-Type": "application/json",
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<BuildBetaNotificationResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     - POST /v1/buildBetaNotifications
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter urlString: next or first url from App Store Connect API
     - returns: RequestBuilder<BuildBetaNotificationResponse> 
     */
    open class func buildBetaNotificationsCreateInstanceWithRequestBuilder(urlString: String) -> RequestBuilder<BuildBetaNotificationResponse> {
        let localVariableNillableHeaders: [String: Any?] = [
            "Content-Type": "application/json",
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<BuildBetaNotificationResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: urlString, parameters: nil, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }
}