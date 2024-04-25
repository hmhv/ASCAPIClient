//
// GameCenterLeaderboardSetLocalizationsAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

open class GameCenterLeaderboardSetLocalizationsAPI {

    /**

     - parameter gameCenterLeaderboardSetLocalizationCreateRequest: (body) GameCenterLeaderboardSetLocalization representation 
     - returns: GameCenterLeaderboardSetLocalizationResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func gameCenterLeaderboardSetLocalizationsCreateInstance(gameCenterLeaderboardSetLocalizationCreateRequest: GameCenterLeaderboardSetLocalizationCreateRequest) async throws -> GameCenterLeaderboardSetLocalizationResponse {
        return try await gameCenterLeaderboardSetLocalizationsCreateInstanceWithRequestBuilder(gameCenterLeaderboardSetLocalizationCreateRequest: gameCenterLeaderboardSetLocalizationCreateRequest).execute().body
    }

    /**
     - parameter urlString: next or first url from App Store Connect API
     - returns: GameCenterLeaderboardSetLocalizationResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func gameCenterLeaderboardSetLocalizationsCreateInstance(urlString: String) async throws -> GameCenterLeaderboardSetLocalizationResponse {
        return try await gameCenterLeaderboardSetLocalizationsCreateInstanceWithRequestBuilder(urlString: urlString).execute().body
    }

    /**
     - POST /v1/gameCenterLeaderboardSetLocalizations
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter gameCenterLeaderboardSetLocalizationCreateRequest: (body) GameCenterLeaderboardSetLocalization representation 
     - returns: RequestBuilder<GameCenterLeaderboardSetLocalizationResponse> 
     */
    open class func gameCenterLeaderboardSetLocalizationsCreateInstanceWithRequestBuilder(gameCenterLeaderboardSetLocalizationCreateRequest: GameCenterLeaderboardSetLocalizationCreateRequest) -> RequestBuilder<GameCenterLeaderboardSetLocalizationResponse> {
        let localVariablePath = "/v1/gameCenterLeaderboardSetLocalizations"
        let localVariableURLString = ASCAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: gameCenterLeaderboardSetLocalizationCreateRequest)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            "Content-Type": "application/json",
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<GameCenterLeaderboardSetLocalizationResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     - POST /v1/gameCenterLeaderboardSetLocalizations
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter urlString: next or first url from App Store Connect API
     - returns: RequestBuilder<GameCenterLeaderboardSetLocalizationResponse> 
     */
    open class func gameCenterLeaderboardSetLocalizationsCreateInstanceWithRequestBuilder(urlString: String) -> RequestBuilder<GameCenterLeaderboardSetLocalizationResponse> {
        let localVariableNillableHeaders: [String: Any?] = [
            "Content-Type": "application/json",
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<GameCenterLeaderboardSetLocalizationResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: urlString, parameters: nil, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**

     - parameter id: (path) the id of the requested resource 
     - returns: Void
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func gameCenterLeaderboardSetLocalizationsDeleteInstance(id: String) async throws {
        return try await gameCenterLeaderboardSetLocalizationsDeleteInstanceWithRequestBuilder(id: id).execute().body
    }

    /**
     - parameter urlString: next or first url from App Store Connect API
     - returns: Void
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func gameCenterLeaderboardSetLocalizationsDeleteInstance(urlString: String) async throws {
        return try await gameCenterLeaderboardSetLocalizationsDeleteInstanceWithRequestBuilder(urlString: urlString).execute().body
    }

    /**
     - DELETE /v1/gameCenterLeaderboardSetLocalizations/{id}
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter id: (path) the id of the requested resource 
     - returns: RequestBuilder<Void> 
     */
    open class func gameCenterLeaderboardSetLocalizationsDeleteInstanceWithRequestBuilder(id: String) -> RequestBuilder<Void> {
        var localVariablePath = "/v1/gameCenterLeaderboardSetLocalizations/{id}"
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
     - DELETE /v1/gameCenterLeaderboardSetLocalizations/{id}
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter urlString: next or first url from App Store Connect API
     - returns: RequestBuilder<Void> 
     */
    open class func gameCenterLeaderboardSetLocalizationsDeleteInstanceWithRequestBuilder(urlString: String) -> RequestBuilder<Void> {
        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Void>.Type = ASCAPI.requestBuilderFactory.getNonDecodableBuilder()

        return localVariableRequestBuilder.init(method: "DELETE", URLString: urlString, parameters: nil, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     * enum for parameter fieldsGameCenterLeaderboardSetLocalizations
     */
    public enum FieldsGameCenterLeaderboardSetLocalizations_gameCenterLeaderboardSetLocalizationsGameCenterLeaderboardSetImageGetToOneRelated: String, CaseIterable {
        case gamecenterleaderboardset = "gameCenterLeaderboardSet"
        case gamecenterleaderboardsetimage = "gameCenterLeaderboardSetImage"
        case locale = "locale"
        case name = "name"
    }

    /**
     * enum for parameter fieldsGameCenterLeaderboardSetImages
     */
    public enum FieldsGameCenterLeaderboardSetImages_gameCenterLeaderboardSetLocalizationsGameCenterLeaderboardSetImageGetToOneRelated: String, CaseIterable {
        case assetdeliverystate = "assetDeliveryState"
        case filename = "fileName"
        case filesize = "fileSize"
        case gamecenterleaderboardsetlocalization = "gameCenterLeaderboardSetLocalization"
        case imageasset = "imageAsset"
        case uploadoperations = "uploadOperations"
        case uploaded = "uploaded"
    }

    /**
     * enum for parameter include
     */
    public enum Include_gameCenterLeaderboardSetLocalizationsGameCenterLeaderboardSetImageGetToOneRelated: String, CaseIterable {
        case gamecenterleaderboardsetlocalization = "gameCenterLeaderboardSetLocalization"
    }

    /**

     - parameter id: (path) the id of the requested resource 
     - parameter fieldsGameCenterLeaderboardSetLocalizations: (query) the fields to include for returned resources of type gameCenterLeaderboardSetLocalizations (optional)
     - parameter fieldsGameCenterLeaderboardSetImages: (query) the fields to include for returned resources of type gameCenterLeaderboardSetImages (optional)
     - parameter include: (query) comma-separated list of relationships to include (optional)
     - returns: GameCenterLeaderboardSetImageResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func gameCenterLeaderboardSetLocalizationsGameCenterLeaderboardSetImageGetToOneRelated(id: String, fieldsGameCenterLeaderboardSetLocalizations: [FieldsGameCenterLeaderboardSetLocalizations_gameCenterLeaderboardSetLocalizationsGameCenterLeaderboardSetImageGetToOneRelated]? = nil, fieldsGameCenterLeaderboardSetImages: [FieldsGameCenterLeaderboardSetImages_gameCenterLeaderboardSetLocalizationsGameCenterLeaderboardSetImageGetToOneRelated]? = nil, include: [Include_gameCenterLeaderboardSetLocalizationsGameCenterLeaderboardSetImageGetToOneRelated]? = nil) async throws -> GameCenterLeaderboardSetImageResponse {
        return try await gameCenterLeaderboardSetLocalizationsGameCenterLeaderboardSetImageGetToOneRelatedWithRequestBuilder(id: id, fieldsGameCenterLeaderboardSetLocalizations: fieldsGameCenterLeaderboardSetLocalizations, fieldsGameCenterLeaderboardSetImages: fieldsGameCenterLeaderboardSetImages, include: include).execute().body
    }

    /**
     - parameter urlString: next or first url from App Store Connect API
     - returns: GameCenterLeaderboardSetImageResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func gameCenterLeaderboardSetLocalizationsGameCenterLeaderboardSetImageGetToOneRelated(urlString: String) async throws -> GameCenterLeaderboardSetImageResponse {
        return try await gameCenterLeaderboardSetLocalizationsGameCenterLeaderboardSetImageGetToOneRelatedWithRequestBuilder(urlString: urlString).execute().body
    }

    /**
     - GET /v1/gameCenterLeaderboardSetLocalizations/{id}/gameCenterLeaderboardSetImage
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter id: (path) the id of the requested resource 
     - parameter fieldsGameCenterLeaderboardSetLocalizations: (query) the fields to include for returned resources of type gameCenterLeaderboardSetLocalizations (optional)
     - parameter fieldsGameCenterLeaderboardSetImages: (query) the fields to include for returned resources of type gameCenterLeaderboardSetImages (optional)
     - parameter include: (query) comma-separated list of relationships to include (optional)
     - returns: RequestBuilder<GameCenterLeaderboardSetImageResponse> 
     */
    open class func gameCenterLeaderboardSetLocalizationsGameCenterLeaderboardSetImageGetToOneRelatedWithRequestBuilder(id: String, fieldsGameCenterLeaderboardSetLocalizations: [FieldsGameCenterLeaderboardSetLocalizations_gameCenterLeaderboardSetLocalizationsGameCenterLeaderboardSetImageGetToOneRelated]? = nil, fieldsGameCenterLeaderboardSetImages: [FieldsGameCenterLeaderboardSetImages_gameCenterLeaderboardSetLocalizationsGameCenterLeaderboardSetImageGetToOneRelated]? = nil, include: [Include_gameCenterLeaderboardSetLocalizationsGameCenterLeaderboardSetImageGetToOneRelated]? = nil) -> RequestBuilder<GameCenterLeaderboardSetImageResponse> {
        var localVariablePath = "/v1/gameCenterLeaderboardSetLocalizations/{id}/gameCenterLeaderboardSetImage"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = ASCAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "fields[gameCenterLeaderboardSetLocalizations]": (wrappedValue: fieldsGameCenterLeaderboardSetLocalizations?.encodeToJSON(), isExplode: false),
            "fields[gameCenterLeaderboardSetImages]": (wrappedValue: fieldsGameCenterLeaderboardSetImages?.encodeToJSON(), isExplode: false),
            "include": (wrappedValue: include?.encodeToJSON(), isExplode: false),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<GameCenterLeaderboardSetImageResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     - GET /v1/gameCenterLeaderboardSetLocalizations/{id}/gameCenterLeaderboardSetImage
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter urlString: next or first url from App Store Connect API
     - returns: RequestBuilder<GameCenterLeaderboardSetImageResponse> 
     */
    open class func gameCenterLeaderboardSetLocalizationsGameCenterLeaderboardSetImageGetToOneRelatedWithRequestBuilder(urlString: String) -> RequestBuilder<GameCenterLeaderboardSetImageResponse> {
        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<GameCenterLeaderboardSetImageResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: urlString, parameters: nil, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     * enum for parameter fieldsGameCenterLeaderboardSetLocalizations
     */
    public enum FieldsGameCenterLeaderboardSetLocalizations_gameCenterLeaderboardSetLocalizationsGetInstance: String, CaseIterable {
        case gamecenterleaderboardset = "gameCenterLeaderboardSet"
        case gamecenterleaderboardsetimage = "gameCenterLeaderboardSetImage"
        case locale = "locale"
        case name = "name"
    }

    /**
     * enum for parameter include
     */
    public enum Include_gameCenterLeaderboardSetLocalizationsGetInstance: String, CaseIterable {
        case gamecenterleaderboardset = "gameCenterLeaderboardSet"
        case gamecenterleaderboardsetimage = "gameCenterLeaderboardSetImage"
    }

    /**
     * enum for parameter fieldsGameCenterLeaderboardSetImages
     */
    public enum FieldsGameCenterLeaderboardSetImages_gameCenterLeaderboardSetLocalizationsGetInstance: String, CaseIterable {
        case assetdeliverystate = "assetDeliveryState"
        case filename = "fileName"
        case filesize = "fileSize"
        case gamecenterleaderboardsetlocalization = "gameCenterLeaderboardSetLocalization"
        case imageasset = "imageAsset"
        case uploadoperations = "uploadOperations"
        case uploaded = "uploaded"
    }

    /**

     - parameter id: (path) the id of the requested resource 
     - parameter fieldsGameCenterLeaderboardSetLocalizations: (query) the fields to include for returned resources of type gameCenterLeaderboardSetLocalizations (optional)
     - parameter include: (query) comma-separated list of relationships to include (optional)
     - parameter fieldsGameCenterLeaderboardSetImages: (query) the fields to include for returned resources of type gameCenterLeaderboardSetImages (optional)
     - returns: GameCenterLeaderboardSetLocalizationResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func gameCenterLeaderboardSetLocalizationsGetInstance(id: String, fieldsGameCenterLeaderboardSetLocalizations: [FieldsGameCenterLeaderboardSetLocalizations_gameCenterLeaderboardSetLocalizationsGetInstance]? = nil, include: [Include_gameCenterLeaderboardSetLocalizationsGetInstance]? = nil, fieldsGameCenterLeaderboardSetImages: [FieldsGameCenterLeaderboardSetImages_gameCenterLeaderboardSetLocalizationsGetInstance]? = nil) async throws -> GameCenterLeaderboardSetLocalizationResponse {
        return try await gameCenterLeaderboardSetLocalizationsGetInstanceWithRequestBuilder(id: id, fieldsGameCenterLeaderboardSetLocalizations: fieldsGameCenterLeaderboardSetLocalizations, include: include, fieldsGameCenterLeaderboardSetImages: fieldsGameCenterLeaderboardSetImages).execute().body
    }

    /**
     - parameter urlString: next or first url from App Store Connect API
     - returns: GameCenterLeaderboardSetLocalizationResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func gameCenterLeaderboardSetLocalizationsGetInstance(urlString: String) async throws -> GameCenterLeaderboardSetLocalizationResponse {
        return try await gameCenterLeaderboardSetLocalizationsGetInstanceWithRequestBuilder(urlString: urlString).execute().body
    }

    /**
     - GET /v1/gameCenterLeaderboardSetLocalizations/{id}
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter id: (path) the id of the requested resource 
     - parameter fieldsGameCenterLeaderboardSetLocalizations: (query) the fields to include for returned resources of type gameCenterLeaderboardSetLocalizations (optional)
     - parameter include: (query) comma-separated list of relationships to include (optional)
     - parameter fieldsGameCenterLeaderboardSetImages: (query) the fields to include for returned resources of type gameCenterLeaderboardSetImages (optional)
     - returns: RequestBuilder<GameCenterLeaderboardSetLocalizationResponse> 
     */
    open class func gameCenterLeaderboardSetLocalizationsGetInstanceWithRequestBuilder(id: String, fieldsGameCenterLeaderboardSetLocalizations: [FieldsGameCenterLeaderboardSetLocalizations_gameCenterLeaderboardSetLocalizationsGetInstance]? = nil, include: [Include_gameCenterLeaderboardSetLocalizationsGetInstance]? = nil, fieldsGameCenterLeaderboardSetImages: [FieldsGameCenterLeaderboardSetImages_gameCenterLeaderboardSetLocalizationsGetInstance]? = nil) -> RequestBuilder<GameCenterLeaderboardSetLocalizationResponse> {
        var localVariablePath = "/v1/gameCenterLeaderboardSetLocalizations/{id}"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = ASCAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "fields[gameCenterLeaderboardSetLocalizations]": (wrappedValue: fieldsGameCenterLeaderboardSetLocalizations?.encodeToJSON(), isExplode: false),
            "include": (wrappedValue: include?.encodeToJSON(), isExplode: false),
            "fields[gameCenterLeaderboardSetImages]": (wrappedValue: fieldsGameCenterLeaderboardSetImages?.encodeToJSON(), isExplode: false),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<GameCenterLeaderboardSetLocalizationResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     - GET /v1/gameCenterLeaderboardSetLocalizations/{id}
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter urlString: next or first url from App Store Connect API
     - returns: RequestBuilder<GameCenterLeaderboardSetLocalizationResponse> 
     */
    open class func gameCenterLeaderboardSetLocalizationsGetInstanceWithRequestBuilder(urlString: String) -> RequestBuilder<GameCenterLeaderboardSetLocalizationResponse> {
        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<GameCenterLeaderboardSetLocalizationResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: urlString, parameters: nil, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**

     - parameter id: (path) the id of the requested resource 
     - parameter gameCenterLeaderboardSetLocalizationUpdateRequest: (body) GameCenterLeaderboardSetLocalization representation 
     - returns: GameCenterLeaderboardSetLocalizationResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func gameCenterLeaderboardSetLocalizationsUpdateInstance(id: String, gameCenterLeaderboardSetLocalizationUpdateRequest: GameCenterLeaderboardSetLocalizationUpdateRequest) async throws -> GameCenterLeaderboardSetLocalizationResponse {
        return try await gameCenterLeaderboardSetLocalizationsUpdateInstanceWithRequestBuilder(id: id, gameCenterLeaderboardSetLocalizationUpdateRequest: gameCenterLeaderboardSetLocalizationUpdateRequest).execute().body
    }

    /**
     - parameter urlString: next or first url from App Store Connect API
     - returns: GameCenterLeaderboardSetLocalizationResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func gameCenterLeaderboardSetLocalizationsUpdateInstance(urlString: String) async throws -> GameCenterLeaderboardSetLocalizationResponse {
        return try await gameCenterLeaderboardSetLocalizationsUpdateInstanceWithRequestBuilder(urlString: urlString).execute().body
    }

    /**
     - PATCH /v1/gameCenterLeaderboardSetLocalizations/{id}
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter id: (path) the id of the requested resource 
     - parameter gameCenterLeaderboardSetLocalizationUpdateRequest: (body) GameCenterLeaderboardSetLocalization representation 
     - returns: RequestBuilder<GameCenterLeaderboardSetLocalizationResponse> 
     */
    open class func gameCenterLeaderboardSetLocalizationsUpdateInstanceWithRequestBuilder(id: String, gameCenterLeaderboardSetLocalizationUpdateRequest: GameCenterLeaderboardSetLocalizationUpdateRequest) -> RequestBuilder<GameCenterLeaderboardSetLocalizationResponse> {
        var localVariablePath = "/v1/gameCenterLeaderboardSetLocalizations/{id}"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = ASCAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: gameCenterLeaderboardSetLocalizationUpdateRequest)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            "Content-Type": "application/json",
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<GameCenterLeaderboardSetLocalizationResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PATCH", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     - PATCH /v1/gameCenterLeaderboardSetLocalizations/{id}
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter urlString: next or first url from App Store Connect API
     - returns: RequestBuilder<GameCenterLeaderboardSetLocalizationResponse> 
     */
    open class func gameCenterLeaderboardSetLocalizationsUpdateInstanceWithRequestBuilder(urlString: String) -> RequestBuilder<GameCenterLeaderboardSetLocalizationResponse> {
        let localVariableNillableHeaders: [String: Any?] = [
            "Content-Type": "application/json",
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<GameCenterLeaderboardSetLocalizationResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PATCH", URLString: urlString, parameters: nil, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }
}
