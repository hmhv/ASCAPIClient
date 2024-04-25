//
// GameCenterMatchmakingRuleSetTestsAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

open class GameCenterMatchmakingRuleSetTestsAPI {

    /**

     - parameter gameCenterMatchmakingRuleSetTestCreateRequest: (body) GameCenterMatchmakingRuleSetTest representation 
     - returns: GameCenterMatchmakingRuleSetTestResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func gameCenterMatchmakingRuleSetTestsCreateInstance(gameCenterMatchmakingRuleSetTestCreateRequest: GameCenterMatchmakingRuleSetTestCreateRequest) async throws -> GameCenterMatchmakingRuleSetTestResponse {
        return try await gameCenterMatchmakingRuleSetTestsCreateInstanceWithRequestBuilder(gameCenterMatchmakingRuleSetTestCreateRequest: gameCenterMatchmakingRuleSetTestCreateRequest).execute().body
    }

    /**
     - parameter urlString: next or first url from App Store Connect API
     - returns: GameCenterMatchmakingRuleSetTestResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func gameCenterMatchmakingRuleSetTestsCreateInstance(urlString: String) async throws -> GameCenterMatchmakingRuleSetTestResponse {
        return try await gameCenterMatchmakingRuleSetTestsCreateInstanceWithRequestBuilder(urlString: urlString).execute().body
    }

    /**
     - POST /v1/gameCenterMatchmakingRuleSetTests
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter gameCenterMatchmakingRuleSetTestCreateRequest: (body) GameCenterMatchmakingRuleSetTest representation 
     - returns: RequestBuilder<GameCenterMatchmakingRuleSetTestResponse> 
     */
    open class func gameCenterMatchmakingRuleSetTestsCreateInstanceWithRequestBuilder(gameCenterMatchmakingRuleSetTestCreateRequest: GameCenterMatchmakingRuleSetTestCreateRequest) -> RequestBuilder<GameCenterMatchmakingRuleSetTestResponse> {
        let localVariablePath = "/v1/gameCenterMatchmakingRuleSetTests"
        let localVariableURLString = ASCAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: gameCenterMatchmakingRuleSetTestCreateRequest)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            "Content-Type": "application/json",
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<GameCenterMatchmakingRuleSetTestResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     - POST /v1/gameCenterMatchmakingRuleSetTests
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter urlString: next or first url from App Store Connect API
     - returns: RequestBuilder<GameCenterMatchmakingRuleSetTestResponse> 
     */
    open class func gameCenterMatchmakingRuleSetTestsCreateInstanceWithRequestBuilder(urlString: String) -> RequestBuilder<GameCenterMatchmakingRuleSetTestResponse> {
        let localVariableRequestBuilder: RequestBuilder<GameCenterMatchmakingRuleSetTestResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: urlString, parameters: nil, headers: nil, requiresAuthentication: true)
    }
}
