//
// GameCenterAchievementImagesAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

open class GameCenterAchievementImagesAPI {

    /**

     - parameter gameCenterAchievementImageCreateRequest: (body) GameCenterAchievementImage representation 
     - returns: GameCenterAchievementImageResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func gameCenterAchievementImagesCreateInstance(gameCenterAchievementImageCreateRequest: GameCenterAchievementImageCreateRequest) async throws -> GameCenterAchievementImageResponse {
        return try await gameCenterAchievementImagesCreateInstanceWithRequestBuilder(gameCenterAchievementImageCreateRequest: gameCenterAchievementImageCreateRequest).execute().body
    }

    /**
     - parameter urlString: next or first url from App Store Connect API
     - returns: GameCenterAchievementImageResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func gameCenterAchievementImagesCreateInstance(urlString: String) async throws -> GameCenterAchievementImageResponse {
        return try await gameCenterAchievementImagesCreateInstanceWithRequestBuilder(urlString: urlString).execute().body
    }

    /**
     - POST /v1/gameCenterAchievementImages
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter gameCenterAchievementImageCreateRequest: (body) GameCenterAchievementImage representation 
     - returns: RequestBuilder<GameCenterAchievementImageResponse> 
     */
    open class func gameCenterAchievementImagesCreateInstanceWithRequestBuilder(gameCenterAchievementImageCreateRequest: GameCenterAchievementImageCreateRequest) -> RequestBuilder<GameCenterAchievementImageResponse> {
        let localVariablePath = "/v1/gameCenterAchievementImages"
        let localVariableURLString = ASCAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: gameCenterAchievementImageCreateRequest)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            "Content-Type": "application/json",
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<GameCenterAchievementImageResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     - POST /v1/gameCenterAchievementImages
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter urlString: next or first url from App Store Connect API
     - returns: RequestBuilder<GameCenterAchievementImageResponse> 
     */
    open class func gameCenterAchievementImagesCreateInstanceWithRequestBuilder(urlString: String) -> RequestBuilder<GameCenterAchievementImageResponse> {
        let localVariableRequestBuilder: RequestBuilder<GameCenterAchievementImageResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: urlString, parameters: nil, headers: nil, requiresAuthentication: true)
    }

    /**

     - parameter id: (path) the id of the requested resource 
     - returns: Void
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func gameCenterAchievementImagesDeleteInstance(id: String) async throws {
        return try await gameCenterAchievementImagesDeleteInstanceWithRequestBuilder(id: id).execute().body
    }

    /**
     - parameter urlString: next or first url from App Store Connect API
     - returns: Void
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func gameCenterAchievementImagesDeleteInstance(urlString: String) async throws {
        return try await gameCenterAchievementImagesDeleteInstanceWithRequestBuilder(urlString: urlString).execute().body
    }

    /**
     - DELETE /v1/gameCenterAchievementImages/{id}
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter id: (path) the id of the requested resource 
     - returns: RequestBuilder<Void> 
     */
    open class func gameCenterAchievementImagesDeleteInstanceWithRequestBuilder(id: String) -> RequestBuilder<Void> {
        var localVariablePath = "/v1/gameCenterAchievementImages/{id}"
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
     - DELETE /v1/gameCenterAchievementImages/{id}
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter urlString: next or first url from App Store Connect API
     - returns: RequestBuilder<Void> 
     */
    open class func gameCenterAchievementImagesDeleteInstanceWithRequestBuilder(urlString: String) -> RequestBuilder<Void> {
        let localVariableRequestBuilder: RequestBuilder<Void>.Type = ASCAPI.requestBuilderFactory.getNonDecodableBuilder()

        return localVariableRequestBuilder.init(method: "DELETE", URLString: urlString, parameters: nil, headers: nil, requiresAuthentication: true)
    }

    /**
     * enum for parameter fieldsGameCenterAchievementImages
     */
    public enum FieldsGameCenterAchievementImages_gameCenterAchievementImagesGetInstance: String, CaseIterable {
        case assetdeliverystate = "assetDeliveryState"
        case filename = "fileName"
        case filesize = "fileSize"
        case gamecenterachievementlocalization = "gameCenterAchievementLocalization"
        case imageasset = "imageAsset"
        case uploadoperations = "uploadOperations"
        case uploaded = "uploaded"
    }

    /**
     * enum for parameter include
     */
    public enum Include_gameCenterAchievementImagesGetInstance: String, CaseIterable {
        case gamecenterachievementlocalization = "gameCenterAchievementLocalization"
    }

    /**

     - parameter id: (path) the id of the requested resource 
     - parameter fieldsGameCenterAchievementImages: (query) the fields to include for returned resources of type gameCenterAchievementImages (optional)
     - parameter include: (query) comma-separated list of relationships to include (optional)
     - returns: GameCenterAchievementImageResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func gameCenterAchievementImagesGetInstance(id: String, fieldsGameCenterAchievementImages: [FieldsGameCenterAchievementImages_gameCenterAchievementImagesGetInstance]? = nil, include: [Include_gameCenterAchievementImagesGetInstance]? = nil) async throws -> GameCenterAchievementImageResponse {
        return try await gameCenterAchievementImagesGetInstanceWithRequestBuilder(id: id, fieldsGameCenterAchievementImages: fieldsGameCenterAchievementImages, include: include).execute().body
    }

    /**
     - parameter urlString: next or first url from App Store Connect API
     - returns: GameCenterAchievementImageResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func gameCenterAchievementImagesGetInstance(urlString: String) async throws -> GameCenterAchievementImageResponse {
        return try await gameCenterAchievementImagesGetInstanceWithRequestBuilder(urlString: urlString).execute().body
    }

    /**
     - GET /v1/gameCenterAchievementImages/{id}
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter id: (path) the id of the requested resource 
     - parameter fieldsGameCenterAchievementImages: (query) the fields to include for returned resources of type gameCenterAchievementImages (optional)
     - parameter include: (query) comma-separated list of relationships to include (optional)
     - returns: RequestBuilder<GameCenterAchievementImageResponse> 
     */
    open class func gameCenterAchievementImagesGetInstanceWithRequestBuilder(id: String, fieldsGameCenterAchievementImages: [FieldsGameCenterAchievementImages_gameCenterAchievementImagesGetInstance]? = nil, include: [Include_gameCenterAchievementImagesGetInstance]? = nil) -> RequestBuilder<GameCenterAchievementImageResponse> {
        var localVariablePath = "/v1/gameCenterAchievementImages/{id}"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = ASCAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "fields[gameCenterAchievementImages]": (wrappedValue: fieldsGameCenterAchievementImages?.encodeToJSON(), isExplode: false),
            "include": (wrappedValue: include?.encodeToJSON(), isExplode: false),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<GameCenterAchievementImageResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     - GET /v1/gameCenterAchievementImages/{id}
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter urlString: next or first url from App Store Connect API
     - returns: RequestBuilder<GameCenterAchievementImageResponse> 
     */
    open class func gameCenterAchievementImagesGetInstanceWithRequestBuilder(urlString: String) -> RequestBuilder<GameCenterAchievementImageResponse> {
        let localVariableRequestBuilder: RequestBuilder<GameCenterAchievementImageResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: urlString, parameters: nil, headers: nil, requiresAuthentication: true)
    }

    /**

     - parameter id: (path) the id of the requested resource 
     - parameter gameCenterAchievementImageUpdateRequest: (body) GameCenterAchievementImage representation 
     - returns: GameCenterAchievementImageResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func gameCenterAchievementImagesUpdateInstance(id: String, gameCenterAchievementImageUpdateRequest: GameCenterAchievementImageUpdateRequest) async throws -> GameCenterAchievementImageResponse {
        return try await gameCenterAchievementImagesUpdateInstanceWithRequestBuilder(id: id, gameCenterAchievementImageUpdateRequest: gameCenterAchievementImageUpdateRequest).execute().body
    }

    /**
     - parameter urlString: next or first url from App Store Connect API
     - returns: GameCenterAchievementImageResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func gameCenterAchievementImagesUpdateInstance(urlString: String) async throws -> GameCenterAchievementImageResponse {
        return try await gameCenterAchievementImagesUpdateInstanceWithRequestBuilder(urlString: urlString).execute().body
    }

    /**
     - PATCH /v1/gameCenterAchievementImages/{id}
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter id: (path) the id of the requested resource 
     - parameter gameCenterAchievementImageUpdateRequest: (body) GameCenterAchievementImage representation 
     - returns: RequestBuilder<GameCenterAchievementImageResponse> 
     */
    open class func gameCenterAchievementImagesUpdateInstanceWithRequestBuilder(id: String, gameCenterAchievementImageUpdateRequest: GameCenterAchievementImageUpdateRequest) -> RequestBuilder<GameCenterAchievementImageResponse> {
        var localVariablePath = "/v1/gameCenterAchievementImages/{id}"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = ASCAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: gameCenterAchievementImageUpdateRequest)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            "Content-Type": "application/json",
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<GameCenterAchievementImageResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PATCH", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     - PATCH /v1/gameCenterAchievementImages/{id}
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter urlString: next or first url from App Store Connect API
     - returns: RequestBuilder<GameCenterAchievementImageResponse> 
     */
    open class func gameCenterAchievementImagesUpdateInstanceWithRequestBuilder(urlString: String) -> RequestBuilder<GameCenterAchievementImageResponse> {
        let localVariableRequestBuilder: RequestBuilder<GameCenterAchievementImageResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PATCH", URLString: urlString, parameters: nil, headers: nil, requiresAuthentication: true)
    }
}
