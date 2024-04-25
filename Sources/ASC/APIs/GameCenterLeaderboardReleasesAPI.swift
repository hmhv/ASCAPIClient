//
// GameCenterLeaderboardReleasesAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

open class GameCenterLeaderboardReleasesAPI {

    /**

     - parameter gameCenterLeaderboardReleaseCreateRequest: (body) GameCenterLeaderboardRelease representation 
     - returns: GameCenterLeaderboardReleaseResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func gameCenterLeaderboardReleasesCreateInstance(gameCenterLeaderboardReleaseCreateRequest: GameCenterLeaderboardReleaseCreateRequest) async throws -> GameCenterLeaderboardReleaseResponse {
        return try await gameCenterLeaderboardReleasesCreateInstanceWithRequestBuilder(gameCenterLeaderboardReleaseCreateRequest: gameCenterLeaderboardReleaseCreateRequest).execute().body
    }

    /**
     - parameter urlString: next or first url from App Store Connect API
     - returns: GameCenterLeaderboardReleaseResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func gameCenterLeaderboardReleasesCreateInstance(urlString: String) async throws -> GameCenterLeaderboardReleaseResponse {
        return try await gameCenterLeaderboardReleasesCreateInstanceWithRequestBuilder(urlString: urlString).execute().body
    }

    /**
     - POST /v1/gameCenterLeaderboardReleases
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter gameCenterLeaderboardReleaseCreateRequest: (body) GameCenterLeaderboardRelease representation 
     - returns: RequestBuilder<GameCenterLeaderboardReleaseResponse> 
     */
    open class func gameCenterLeaderboardReleasesCreateInstanceWithRequestBuilder(gameCenterLeaderboardReleaseCreateRequest: GameCenterLeaderboardReleaseCreateRequest) -> RequestBuilder<GameCenterLeaderboardReleaseResponse> {
        let localVariablePath = "/v1/gameCenterLeaderboardReleases"
        let localVariableURLString = ASCAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: gameCenterLeaderboardReleaseCreateRequest)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            "Content-Type": "application/json",
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<GameCenterLeaderboardReleaseResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     - POST /v1/gameCenterLeaderboardReleases
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter urlString: next or first url from App Store Connect API
     - returns: RequestBuilder<GameCenterLeaderboardReleaseResponse> 
     */
    open class func gameCenterLeaderboardReleasesCreateInstanceWithRequestBuilder(urlString: String) -> RequestBuilder<GameCenterLeaderboardReleaseResponse> {
        let localVariableRequestBuilder: RequestBuilder<GameCenterLeaderboardReleaseResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: urlString, parameters: nil, headers: nil, requiresAuthentication: true)
    }

    /**

     - parameter id: (path) the id of the requested resource 
     - returns: Void
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func gameCenterLeaderboardReleasesDeleteInstance(id: String) async throws {
        return try await gameCenterLeaderboardReleasesDeleteInstanceWithRequestBuilder(id: id).execute().body
    }

    /**
     - parameter urlString: next or first url from App Store Connect API
     - returns: Void
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func gameCenterLeaderboardReleasesDeleteInstance(urlString: String) async throws {
        return try await gameCenterLeaderboardReleasesDeleteInstanceWithRequestBuilder(urlString: urlString).execute().body
    }

    /**
     - DELETE /v1/gameCenterLeaderboardReleases/{id}
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter id: (path) the id of the requested resource 
     - returns: RequestBuilder<Void> 
     */
    open class func gameCenterLeaderboardReleasesDeleteInstanceWithRequestBuilder(id: String) -> RequestBuilder<Void> {
        var localVariablePath = "/v1/gameCenterLeaderboardReleases/{id}"
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
     - DELETE /v1/gameCenterLeaderboardReleases/{id}
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter urlString: next or first url from App Store Connect API
     - returns: RequestBuilder<Void> 
     */
    open class func gameCenterLeaderboardReleasesDeleteInstanceWithRequestBuilder(urlString: String) -> RequestBuilder<Void> {
        let localVariableRequestBuilder: RequestBuilder<Void>.Type = ASCAPI.requestBuilderFactory.getNonDecodableBuilder()

        return localVariableRequestBuilder.init(method: "DELETE", URLString: urlString, parameters: nil, headers: nil, requiresAuthentication: true)
    }

    /**
     * enum for parameter fieldsGameCenterLeaderboardReleases
     */
    public enum FieldsGameCenterLeaderboardReleases_gameCenterLeaderboardReleasesGetInstance: String, CaseIterable {
        case gamecenterdetail = "gameCenterDetail"
        case gamecenterleaderboard = "gameCenterLeaderboard"
        case live = "live"
    }

    /**
     * enum for parameter include
     */
    public enum Include_gameCenterLeaderboardReleasesGetInstance: String, CaseIterable {
        case gamecenterdetail = "gameCenterDetail"
        case gamecenterleaderboard = "gameCenterLeaderboard"
    }

    /**

     - parameter id: (path) the id of the requested resource 
     - parameter fieldsGameCenterLeaderboardReleases: (query) the fields to include for returned resources of type gameCenterLeaderboardReleases (optional)
     - parameter include: (query) comma-separated list of relationships to include (optional)
     - returns: GameCenterLeaderboardReleaseResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func gameCenterLeaderboardReleasesGetInstance(id: String, fieldsGameCenterLeaderboardReleases: [FieldsGameCenterLeaderboardReleases_gameCenterLeaderboardReleasesGetInstance]? = nil, include: [Include_gameCenterLeaderboardReleasesGetInstance]? = nil) async throws -> GameCenterLeaderboardReleaseResponse {
        return try await gameCenterLeaderboardReleasesGetInstanceWithRequestBuilder(id: id, fieldsGameCenterLeaderboardReleases: fieldsGameCenterLeaderboardReleases, include: include).execute().body
    }

    /**
     - parameter urlString: next or first url from App Store Connect API
     - returns: GameCenterLeaderboardReleaseResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func gameCenterLeaderboardReleasesGetInstance(urlString: String) async throws -> GameCenterLeaderboardReleaseResponse {
        return try await gameCenterLeaderboardReleasesGetInstanceWithRequestBuilder(urlString: urlString).execute().body
    }

    /**
     - GET /v1/gameCenterLeaderboardReleases/{id}
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter id: (path) the id of the requested resource 
     - parameter fieldsGameCenterLeaderboardReleases: (query) the fields to include for returned resources of type gameCenterLeaderboardReleases (optional)
     - parameter include: (query) comma-separated list of relationships to include (optional)
     - returns: RequestBuilder<GameCenterLeaderboardReleaseResponse> 
     */
    open class func gameCenterLeaderboardReleasesGetInstanceWithRequestBuilder(id: String, fieldsGameCenterLeaderboardReleases: [FieldsGameCenterLeaderboardReleases_gameCenterLeaderboardReleasesGetInstance]? = nil, include: [Include_gameCenterLeaderboardReleasesGetInstance]? = nil) -> RequestBuilder<GameCenterLeaderboardReleaseResponse> {
        var localVariablePath = "/v1/gameCenterLeaderboardReleases/{id}"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = ASCAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "fields[gameCenterLeaderboardReleases]": (wrappedValue: fieldsGameCenterLeaderboardReleases?.encodeToJSON(), isExplode: false),
            "include": (wrappedValue: include?.encodeToJSON(), isExplode: false),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<GameCenterLeaderboardReleaseResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     - GET /v1/gameCenterLeaderboardReleases/{id}
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter urlString: next or first url from App Store Connect API
     - returns: RequestBuilder<GameCenterLeaderboardReleaseResponse> 
     */
    open class func gameCenterLeaderboardReleasesGetInstanceWithRequestBuilder(urlString: String) -> RequestBuilder<GameCenterLeaderboardReleaseResponse> {
        let localVariableRequestBuilder: RequestBuilder<GameCenterLeaderboardReleaseResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: urlString, parameters: nil, headers: nil, requiresAuthentication: true)
    }
}
