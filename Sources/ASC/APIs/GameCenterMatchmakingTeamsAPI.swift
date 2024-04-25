//
// GameCenterMatchmakingTeamsAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

open class GameCenterMatchmakingTeamsAPI {

    /**

     - parameter gameCenterMatchmakingTeamCreateRequest: (body) GameCenterMatchmakingTeam representation 
     - returns: GameCenterMatchmakingTeamResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func gameCenterMatchmakingTeamsCreateInstance(gameCenterMatchmakingTeamCreateRequest: GameCenterMatchmakingTeamCreateRequest) async throws -> GameCenterMatchmakingTeamResponse {
        return try await gameCenterMatchmakingTeamsCreateInstanceWithRequestBuilder(gameCenterMatchmakingTeamCreateRequest: gameCenterMatchmakingTeamCreateRequest).execute().body
    }

    /**
     - parameter urlString: next or first url from App Store Connect API
     - returns: GameCenterMatchmakingTeamResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func gameCenterMatchmakingTeamsCreateInstance(urlString: String) async throws -> GameCenterMatchmakingTeamResponse {
        return try await gameCenterMatchmakingTeamsCreateInstanceWithRequestBuilder(urlString: urlString).execute().body
    }

    /**
     - POST /v1/gameCenterMatchmakingTeams
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter gameCenterMatchmakingTeamCreateRequest: (body) GameCenterMatchmakingTeam representation 
     - returns: RequestBuilder<GameCenterMatchmakingTeamResponse> 
     */
    open class func gameCenterMatchmakingTeamsCreateInstanceWithRequestBuilder(gameCenterMatchmakingTeamCreateRequest: GameCenterMatchmakingTeamCreateRequest) -> RequestBuilder<GameCenterMatchmakingTeamResponse> {
        let localVariablePath = "/v1/gameCenterMatchmakingTeams"
        let localVariableURLString = ASCAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: gameCenterMatchmakingTeamCreateRequest)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            "Content-Type": "application/json",
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<GameCenterMatchmakingTeamResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     - POST /v1/gameCenterMatchmakingTeams
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter urlString: next or first url from App Store Connect API
     - returns: RequestBuilder<GameCenterMatchmakingTeamResponse> 
     */
    open class func gameCenterMatchmakingTeamsCreateInstanceWithRequestBuilder(urlString: String) -> RequestBuilder<GameCenterMatchmakingTeamResponse> {
        let localVariableNillableHeaders: [String: Any?] = [
            "Content-Type": "application/json",
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<GameCenterMatchmakingTeamResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: urlString, parameters: nil, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**

     - parameter id: (path) the id of the requested resource 
     - returns: Void
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func gameCenterMatchmakingTeamsDeleteInstance(id: String) async throws {
        return try await gameCenterMatchmakingTeamsDeleteInstanceWithRequestBuilder(id: id).execute().body
    }

    /**
     - parameter urlString: next or first url from App Store Connect API
     - returns: Void
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func gameCenterMatchmakingTeamsDeleteInstance(urlString: String) async throws {
        return try await gameCenterMatchmakingTeamsDeleteInstanceWithRequestBuilder(urlString: urlString).execute().body
    }

    /**
     - DELETE /v1/gameCenterMatchmakingTeams/{id}
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter id: (path) the id of the requested resource 
     - returns: RequestBuilder<Void> 
     */
    open class func gameCenterMatchmakingTeamsDeleteInstanceWithRequestBuilder(id: String) -> RequestBuilder<Void> {
        var localVariablePath = "/v1/gameCenterMatchmakingTeams/{id}"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = ASCAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Void>.Type = ASCAPI.requestBuilderFactory.getNonDecodableBuilder()

        return localVariableRequestBuilder.init(method: "DELETE", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     - DELETE /v1/gameCenterMatchmakingTeams/{id}
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter urlString: next or first url from App Store Connect API
     - returns: RequestBuilder<Void> 
     */
    open class func gameCenterMatchmakingTeamsDeleteInstanceWithRequestBuilder(urlString: String) -> RequestBuilder<Void> {
        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Void>.Type = ASCAPI.requestBuilderFactory.getNonDecodableBuilder()

        return localVariableRequestBuilder.init(method: "DELETE", URLString: urlString, parameters: nil, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**

     - parameter id: (path) the id of the requested resource 
     - parameter gameCenterMatchmakingTeamUpdateRequest: (body) GameCenterMatchmakingTeam representation 
     - returns: GameCenterMatchmakingTeamResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func gameCenterMatchmakingTeamsUpdateInstance(id: String, gameCenterMatchmakingTeamUpdateRequest: GameCenterMatchmakingTeamUpdateRequest) async throws -> GameCenterMatchmakingTeamResponse {
        return try await gameCenterMatchmakingTeamsUpdateInstanceWithRequestBuilder(id: id, gameCenterMatchmakingTeamUpdateRequest: gameCenterMatchmakingTeamUpdateRequest).execute().body
    }

    /**
     - parameter urlString: next or first url from App Store Connect API
     - returns: GameCenterMatchmakingTeamResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func gameCenterMatchmakingTeamsUpdateInstance(urlString: String) async throws -> GameCenterMatchmakingTeamResponse {
        return try await gameCenterMatchmakingTeamsUpdateInstanceWithRequestBuilder(urlString: urlString).execute().body
    }

    /**
     - PATCH /v1/gameCenterMatchmakingTeams/{id}
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter id: (path) the id of the requested resource 
     - parameter gameCenterMatchmakingTeamUpdateRequest: (body) GameCenterMatchmakingTeam representation 
     - returns: RequestBuilder<GameCenterMatchmakingTeamResponse> 
     */
    open class func gameCenterMatchmakingTeamsUpdateInstanceWithRequestBuilder(id: String, gameCenterMatchmakingTeamUpdateRequest: GameCenterMatchmakingTeamUpdateRequest) -> RequestBuilder<GameCenterMatchmakingTeamResponse> {
        var localVariablePath = "/v1/gameCenterMatchmakingTeams/{id}"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = ASCAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: gameCenterMatchmakingTeamUpdateRequest)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            "Content-Type": "application/json",
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<GameCenterMatchmakingTeamResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PATCH", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     - PATCH /v1/gameCenterMatchmakingTeams/{id}
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter urlString: next or first url from App Store Connect API
     - returns: RequestBuilder<GameCenterMatchmakingTeamResponse> 
     */
    open class func gameCenterMatchmakingTeamsUpdateInstanceWithRequestBuilder(urlString: String) -> RequestBuilder<GameCenterMatchmakingTeamResponse> {
        let localVariableNillableHeaders: [String: Any?] = [
            "Content-Type": "application/json",
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<GameCenterMatchmakingTeamResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PATCH", URLString: urlString, parameters: nil, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }
}