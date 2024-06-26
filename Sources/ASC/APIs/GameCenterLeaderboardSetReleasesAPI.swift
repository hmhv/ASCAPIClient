//
// GameCenterLeaderboardSetReleasesAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

open class GameCenterLeaderboardSetReleasesAPI {

    /**

     - parameter gameCenterLeaderboardSetReleaseCreateRequest: (body) GameCenterLeaderboardSetRelease representation 
     - returns: GameCenterLeaderboardSetReleaseResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func gameCenterLeaderboardSetReleasesCreateInstance(gameCenterLeaderboardSetReleaseCreateRequest: GameCenterLeaderboardSetReleaseCreateRequest) async throws -> GameCenterLeaderboardSetReleaseResponse {
        return try await gameCenterLeaderboardSetReleasesCreateInstanceWithRequestBuilder(gameCenterLeaderboardSetReleaseCreateRequest: gameCenterLeaderboardSetReleaseCreateRequest).execute().body
    }

    /**
     - parameter urlString: next or first url from App Store Connect API
     - returns: GameCenterLeaderboardSetReleaseResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func gameCenterLeaderboardSetReleasesCreateInstance(urlString: String) async throws -> GameCenterLeaderboardSetReleaseResponse {
        return try await gameCenterLeaderboardSetReleasesCreateInstanceWithRequestBuilder(urlString: urlString).execute().body
    }

    /**
     - POST /v1/gameCenterLeaderboardSetReleases
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter gameCenterLeaderboardSetReleaseCreateRequest: (body) GameCenterLeaderboardSetRelease representation 
     - returns: RequestBuilder<GameCenterLeaderboardSetReleaseResponse> 
     */
    open class func gameCenterLeaderboardSetReleasesCreateInstanceWithRequestBuilder(gameCenterLeaderboardSetReleaseCreateRequest: GameCenterLeaderboardSetReleaseCreateRequest) -> RequestBuilder<GameCenterLeaderboardSetReleaseResponse> {
        let localVariablePath = "/v1/gameCenterLeaderboardSetReleases"
        let localVariableURLString = ASCAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: gameCenterLeaderboardSetReleaseCreateRequest)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            "Content-Type": "application/json",
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<GameCenterLeaderboardSetReleaseResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     - POST /v1/gameCenterLeaderboardSetReleases
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter urlString: next or first url from App Store Connect API
     - returns: RequestBuilder<GameCenterLeaderboardSetReleaseResponse> 
     */
    open class func gameCenterLeaderboardSetReleasesCreateInstanceWithRequestBuilder(urlString: String) -> RequestBuilder<GameCenterLeaderboardSetReleaseResponse> {
        let localVariableNillableHeaders: [String: Any?] = [
            "Content-Type": "application/json",
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<GameCenterLeaderboardSetReleaseResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: urlString, parameters: nil, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**

     - parameter id: (path) the id of the requested resource 
     - returns: Void
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func gameCenterLeaderboardSetReleasesDeleteInstance(id: String) async throws {
        return try await gameCenterLeaderboardSetReleasesDeleteInstanceWithRequestBuilder(id: id).execute().body
    }

    /**
     - parameter urlString: next or first url from App Store Connect API
     - returns: Void
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func gameCenterLeaderboardSetReleasesDeleteInstance(urlString: String) async throws {
        return try await gameCenterLeaderboardSetReleasesDeleteInstanceWithRequestBuilder(urlString: urlString).execute().body
    }

    /**
     - DELETE /v1/gameCenterLeaderboardSetReleases/{id}
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter id: (path) the id of the requested resource 
     - returns: RequestBuilder<Void> 
     */
    open class func gameCenterLeaderboardSetReleasesDeleteInstanceWithRequestBuilder(id: String) -> RequestBuilder<Void> {
        var localVariablePath = "/v1/gameCenterLeaderboardSetReleases/{id}"
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
     - DELETE /v1/gameCenterLeaderboardSetReleases/{id}
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter urlString: next or first url from App Store Connect API
     - returns: RequestBuilder<Void> 
     */
    open class func gameCenterLeaderboardSetReleasesDeleteInstanceWithRequestBuilder(urlString: String) -> RequestBuilder<Void> {
        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Void>.Type = ASCAPI.requestBuilderFactory.getNonDecodableBuilder()

        return localVariableRequestBuilder.init(method: "DELETE", URLString: urlString, parameters: nil, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     * enum for parameter fieldsGameCenterLeaderboardSetReleases
     */
    public enum FieldsGameCenterLeaderboardSetReleases_gameCenterLeaderboardSetReleasesGetInstance: String, CaseIterable {
        case gamecenterdetail = "gameCenterDetail"
        case gamecenterleaderboardset = "gameCenterLeaderboardSet"
        case live = "live"
    }

    /**
     * enum for parameter include
     */
    public enum Include_gameCenterLeaderboardSetReleasesGetInstance: String, CaseIterable {
        case gamecenterdetail = "gameCenterDetail"
        case gamecenterleaderboardset = "gameCenterLeaderboardSet"
    }

    /**

     - parameter id: (path) the id of the requested resource 
     - parameter fieldsGameCenterLeaderboardSetReleases: (query) the fields to include for returned resources of type gameCenterLeaderboardSetReleases (optional)
     - parameter include: (query) comma-separated list of relationships to include (optional)
     - returns: GameCenterLeaderboardSetReleaseResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func gameCenterLeaderboardSetReleasesGetInstance(id: String, fieldsGameCenterLeaderboardSetReleases: [FieldsGameCenterLeaderboardSetReleases_gameCenterLeaderboardSetReleasesGetInstance]? = nil, include: [Include_gameCenterLeaderboardSetReleasesGetInstance]? = nil) async throws -> GameCenterLeaderboardSetReleaseResponse {
        return try await gameCenterLeaderboardSetReleasesGetInstanceWithRequestBuilder(id: id, fieldsGameCenterLeaderboardSetReleases: fieldsGameCenterLeaderboardSetReleases, include: include).execute().body
    }

    /**
     - parameter urlString: next or first url from App Store Connect API
     - returns: GameCenterLeaderboardSetReleaseResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func gameCenterLeaderboardSetReleasesGetInstance(urlString: String) async throws -> GameCenterLeaderboardSetReleaseResponse {
        return try await gameCenterLeaderboardSetReleasesGetInstanceWithRequestBuilder(urlString: urlString).execute().body
    }

    /**
     - GET /v1/gameCenterLeaderboardSetReleases/{id}
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter id: (path) the id of the requested resource 
     - parameter fieldsGameCenterLeaderboardSetReleases: (query) the fields to include for returned resources of type gameCenterLeaderboardSetReleases (optional)
     - parameter include: (query) comma-separated list of relationships to include (optional)
     - returns: RequestBuilder<GameCenterLeaderboardSetReleaseResponse> 
     */
    open class func gameCenterLeaderboardSetReleasesGetInstanceWithRequestBuilder(id: String, fieldsGameCenterLeaderboardSetReleases: [FieldsGameCenterLeaderboardSetReleases_gameCenterLeaderboardSetReleasesGetInstance]? = nil, include: [Include_gameCenterLeaderboardSetReleasesGetInstance]? = nil) -> RequestBuilder<GameCenterLeaderboardSetReleaseResponse> {
        var localVariablePath = "/v1/gameCenterLeaderboardSetReleases/{id}"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = ASCAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "fields[gameCenterLeaderboardSetReleases]": (wrappedValue: fieldsGameCenterLeaderboardSetReleases?.encodeToJSON(), isExplode: false),
            "include": (wrappedValue: include?.encodeToJSON(), isExplode: false),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<GameCenterLeaderboardSetReleaseResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     - GET /v1/gameCenterLeaderboardSetReleases/{id}
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter urlString: next or first url from App Store Connect API
     - returns: RequestBuilder<GameCenterLeaderboardSetReleaseResponse> 
     */
    open class func gameCenterLeaderboardSetReleasesGetInstanceWithRequestBuilder(urlString: String) -> RequestBuilder<GameCenterLeaderboardSetReleaseResponse> {
        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<GameCenterLeaderboardSetReleaseResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: urlString, parameters: nil, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }
}
