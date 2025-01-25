//
// GameCenterLeaderboardSetLocalizationsAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

open class GameCenterLeaderboardSetLocalizationsAPI {

    /**

     - parameter gameCenterLeaderboardSetLocalizationCreateRequest: (body) GameCenterLeaderboardSetLocalization representation 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: GameCenterLeaderboardSetLocalizationResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func gameCenterLeaderboardSetLocalizationsCreateInstance(gameCenterLeaderboardSetLocalizationCreateRequest: GameCenterLeaderboardSetLocalizationCreateRequest, apiConfiguration: ASCAPIConfiguration = ASCAPIConfiguration.shared) async throws(ErrorResponse) -> GameCenterLeaderboardSetLocalizationResponse {
        return try await gameCenterLeaderboardSetLocalizationsCreateInstanceWithRequestBuilder(gameCenterLeaderboardSetLocalizationCreateRequest: gameCenterLeaderboardSetLocalizationCreateRequest, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     - parameter urlString: next or first url from App Store Connect API
     - parameter apiConfiguration: The configuration for the http request.
     - returns: GameCenterLeaderboardSetLocalizationResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func gameCenterLeaderboardSetLocalizationsCreateInstance(urlString: String, apiConfiguration: ASCAPIConfiguration = ASCAPIConfiguration.shared) async throws(ErrorResponse) -> GameCenterLeaderboardSetLocalizationResponse {
        return try await gameCenterLeaderboardSetLocalizationsCreateInstanceWithRequestBuilder(urlString: urlString, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     - POST /v1/gameCenterLeaderboardSetLocalizations
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter gameCenterLeaderboardSetLocalizationCreateRequest: (body) GameCenterLeaderboardSetLocalization representation 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<GameCenterLeaderboardSetLocalizationResponse> 
     */
    open class func gameCenterLeaderboardSetLocalizationsCreateInstanceWithRequestBuilder(gameCenterLeaderboardSetLocalizationCreateRequest: GameCenterLeaderboardSetLocalizationCreateRequest, apiConfiguration: ASCAPIConfiguration = ASCAPIConfiguration.shared) -> RequestBuilder<GameCenterLeaderboardSetLocalizationResponse> {
        let localVariablePath = "/v1/gameCenterLeaderboardSetLocalizations"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: gameCenterLeaderboardSetLocalizationCreateRequest, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            "Content-Type": "application/json",
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<GameCenterLeaderboardSetLocalizationResponse>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     - POST /v1/gameCenterLeaderboardSetLocalizations
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter urlString: next or first url from App Store Connect API
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<GameCenterLeaderboardSetLocalizationResponse> 
     */
    open class func gameCenterLeaderboardSetLocalizationsCreateInstanceWithRequestBuilder(urlString: String, apiConfiguration: ASCAPIConfiguration = ASCAPIConfiguration.shared) -> RequestBuilder<GameCenterLeaderboardSetLocalizationResponse> {
        let localVariableNillableHeaders: [String: Any?] = [
            "Content-Type": "application/json",
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<GameCenterLeaderboardSetLocalizationResponse>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: urlString, parameters: nil, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**

     - parameter id: (path) the id of the requested resource 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: Void
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func gameCenterLeaderboardSetLocalizationsDeleteInstance(id: String, apiConfiguration: ASCAPIConfiguration = ASCAPIConfiguration.shared) async throws(ErrorResponse) {
        return try await gameCenterLeaderboardSetLocalizationsDeleteInstanceWithRequestBuilder(id: id, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     - parameter urlString: next or first url from App Store Connect API
     - parameter apiConfiguration: The configuration for the http request.
     - returns: Void
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func gameCenterLeaderboardSetLocalizationsDeleteInstance(urlString: String, apiConfiguration: ASCAPIConfiguration = ASCAPIConfiguration.shared) async throws(ErrorResponse) {
        return try await gameCenterLeaderboardSetLocalizationsDeleteInstanceWithRequestBuilder(urlString: urlString, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     - DELETE /v1/gameCenterLeaderboardSetLocalizations/{id}
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter id: (path) the id of the requested resource 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<Void> 
     */
    open class func gameCenterLeaderboardSetLocalizationsDeleteInstanceWithRequestBuilder(id: String, apiConfiguration: ASCAPIConfiguration = ASCAPIConfiguration.shared) -> RequestBuilder<Void> {
        var localVariablePath = "/v1/gameCenterLeaderboardSetLocalizations/{id}"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Void>.Type = apiConfiguration.requestBuilderFactory.getNonDecodableBuilder()

        return localVariableRequestBuilder.init(method: "DELETE", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     - DELETE /v1/gameCenterLeaderboardSetLocalizations/{id}
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter urlString: next or first url from App Store Connect API
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<Void> 
     */
    open class func gameCenterLeaderboardSetLocalizationsDeleteInstanceWithRequestBuilder(urlString: String, apiConfiguration: ASCAPIConfiguration = ASCAPIConfiguration.shared) -> RequestBuilder<Void> {
        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Void>.Type = apiConfiguration.requestBuilderFactory.getNonDecodableBuilder()

        return localVariableRequestBuilder.init(method: "DELETE", URLString: urlString, parameters: nil, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     * enum for parameter fieldsGameCenterLeaderboardSetImages
     */
    public enum FieldsGameCenterLeaderboardSetImages_gameCenterLeaderboardSetLocalizationsGameCenterLeaderboardSetImageGetToOneRelated: String, Sendable, CaseIterable {
        case filesize = "fileSize"
        case filename = "fileName"
        case imageasset = "imageAsset"
        case uploadoperations = "uploadOperations"
        case assetdeliverystate = "assetDeliveryState"
        case gamecenterleaderboardsetlocalization = "gameCenterLeaderboardSetLocalization"
    }

    /**
     * enum for parameter fieldsGameCenterLeaderboardSetLocalizations
     */
    public enum FieldsGameCenterLeaderboardSetLocalizations_gameCenterLeaderboardSetLocalizationsGameCenterLeaderboardSetImageGetToOneRelated: String, Sendable, CaseIterable {
        case locale = "locale"
        case name = "name"
        case gamecenterleaderboardset = "gameCenterLeaderboardSet"
        case gamecenterleaderboardsetimage = "gameCenterLeaderboardSetImage"
    }

    /**
     * enum for parameter include
     */
    public enum Include_gameCenterLeaderboardSetLocalizationsGameCenterLeaderboardSetImageGetToOneRelated: String, Sendable, CaseIterable {
        case gamecenterleaderboardsetlocalization = "gameCenterLeaderboardSetLocalization"
    }

    /**

     - parameter id: (path) the id of the requested resource 
     - parameter fieldsGameCenterLeaderboardSetImages: (query) the fields to include for returned resources of type gameCenterLeaderboardSetImages (optional)
     - parameter fieldsGameCenterLeaderboardSetLocalizations: (query) the fields to include for returned resources of type gameCenterLeaderboardSetLocalizations (optional)
     - parameter include: (query) comma-separated list of relationships to include (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: GameCenterLeaderboardSetImageResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func gameCenterLeaderboardSetLocalizationsGameCenterLeaderboardSetImageGetToOneRelated(id: String, fieldsGameCenterLeaderboardSetImages: [FieldsGameCenterLeaderboardSetImages_gameCenterLeaderboardSetLocalizationsGameCenterLeaderboardSetImageGetToOneRelated]? = nil, fieldsGameCenterLeaderboardSetLocalizations: [FieldsGameCenterLeaderboardSetLocalizations_gameCenterLeaderboardSetLocalizationsGameCenterLeaderboardSetImageGetToOneRelated]? = nil, include: [Include_gameCenterLeaderboardSetLocalizationsGameCenterLeaderboardSetImageGetToOneRelated]? = nil, apiConfiguration: ASCAPIConfiguration = ASCAPIConfiguration.shared) async throws(ErrorResponse) -> GameCenterLeaderboardSetImageResponse {
        return try await gameCenterLeaderboardSetLocalizationsGameCenterLeaderboardSetImageGetToOneRelatedWithRequestBuilder(id: id, fieldsGameCenterLeaderboardSetImages: fieldsGameCenterLeaderboardSetImages, fieldsGameCenterLeaderboardSetLocalizations: fieldsGameCenterLeaderboardSetLocalizations, include: include, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     - parameter urlString: next or first url from App Store Connect API
     - parameter apiConfiguration: The configuration for the http request.
     - returns: GameCenterLeaderboardSetImageResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func gameCenterLeaderboardSetLocalizationsGameCenterLeaderboardSetImageGetToOneRelated(urlString: String, apiConfiguration: ASCAPIConfiguration = ASCAPIConfiguration.shared) async throws(ErrorResponse) -> GameCenterLeaderboardSetImageResponse {
        return try await gameCenterLeaderboardSetLocalizationsGameCenterLeaderboardSetImageGetToOneRelatedWithRequestBuilder(urlString: urlString, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     - GET /v1/gameCenterLeaderboardSetLocalizations/{id}/gameCenterLeaderboardSetImage
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter id: (path) the id of the requested resource 
     - parameter fieldsGameCenterLeaderboardSetImages: (query) the fields to include for returned resources of type gameCenterLeaderboardSetImages (optional)
     - parameter fieldsGameCenterLeaderboardSetLocalizations: (query) the fields to include for returned resources of type gameCenterLeaderboardSetLocalizations (optional)
     - parameter include: (query) comma-separated list of relationships to include (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<GameCenterLeaderboardSetImageResponse> 
     */
    open class func gameCenterLeaderboardSetLocalizationsGameCenterLeaderboardSetImageGetToOneRelatedWithRequestBuilder(id: String, fieldsGameCenterLeaderboardSetImages: [FieldsGameCenterLeaderboardSetImages_gameCenterLeaderboardSetLocalizationsGameCenterLeaderboardSetImageGetToOneRelated]? = nil, fieldsGameCenterLeaderboardSetLocalizations: [FieldsGameCenterLeaderboardSetLocalizations_gameCenterLeaderboardSetLocalizationsGameCenterLeaderboardSetImageGetToOneRelated]? = nil, include: [Include_gameCenterLeaderboardSetLocalizationsGameCenterLeaderboardSetImageGetToOneRelated]? = nil, apiConfiguration: ASCAPIConfiguration = ASCAPIConfiguration.shared) -> RequestBuilder<GameCenterLeaderboardSetImageResponse> {
        var localVariablePath = "/v1/gameCenterLeaderboardSetLocalizations/{id}/gameCenterLeaderboardSetImage"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "fields[gameCenterLeaderboardSetImages]": (wrappedValue: fieldsGameCenterLeaderboardSetImages?.encodeToJSON(codableHelper: apiConfiguration.codableHelper), isExplode: false),
            "fields[gameCenterLeaderboardSetLocalizations]": (wrappedValue: fieldsGameCenterLeaderboardSetLocalizations?.encodeToJSON(codableHelper: apiConfiguration.codableHelper), isExplode: false),
            "include": (wrappedValue: include?.encodeToJSON(codableHelper: apiConfiguration.codableHelper), isExplode: false),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<GameCenterLeaderboardSetImageResponse>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     - GET /v1/gameCenterLeaderboardSetLocalizations/{id}/gameCenterLeaderboardSetImage
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter urlString: next or first url from App Store Connect API
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<GameCenterLeaderboardSetImageResponse> 
     */
    open class func gameCenterLeaderboardSetLocalizationsGameCenterLeaderboardSetImageGetToOneRelatedWithRequestBuilder(urlString: String, apiConfiguration: ASCAPIConfiguration = ASCAPIConfiguration.shared) -> RequestBuilder<GameCenterLeaderboardSetImageResponse> {
        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<GameCenterLeaderboardSetImageResponse>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: urlString, parameters: nil, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     * enum for parameter fieldsGameCenterLeaderboardSetLocalizations
     */
    public enum FieldsGameCenterLeaderboardSetLocalizations_gameCenterLeaderboardSetLocalizationsGetInstance: String, Sendable, CaseIterable {
        case locale = "locale"
        case name = "name"
        case gamecenterleaderboardset = "gameCenterLeaderboardSet"
        case gamecenterleaderboardsetimage = "gameCenterLeaderboardSetImage"
    }

    /**
     * enum for parameter fieldsGameCenterLeaderboardSetImages
     */
    public enum FieldsGameCenterLeaderboardSetImages_gameCenterLeaderboardSetLocalizationsGetInstance: String, Sendable, CaseIterable {
        case filesize = "fileSize"
        case filename = "fileName"
        case imageasset = "imageAsset"
        case uploadoperations = "uploadOperations"
        case assetdeliverystate = "assetDeliveryState"
        case gamecenterleaderboardsetlocalization = "gameCenterLeaderboardSetLocalization"
    }

    /**
     * enum for parameter include
     */
    public enum Include_gameCenterLeaderboardSetLocalizationsGetInstance: String, Sendable, CaseIterable {
        case gamecenterleaderboardset = "gameCenterLeaderboardSet"
        case gamecenterleaderboardsetimage = "gameCenterLeaderboardSetImage"
    }

    /**

     - parameter id: (path) the id of the requested resource 
     - parameter fieldsGameCenterLeaderboardSetLocalizations: (query) the fields to include for returned resources of type gameCenterLeaderboardSetLocalizations (optional)
     - parameter fieldsGameCenterLeaderboardSetImages: (query) the fields to include for returned resources of type gameCenterLeaderboardSetImages (optional)
     - parameter include: (query) comma-separated list of relationships to include (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: GameCenterLeaderboardSetLocalizationResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func gameCenterLeaderboardSetLocalizationsGetInstance(id: String, fieldsGameCenterLeaderboardSetLocalizations: [FieldsGameCenterLeaderboardSetLocalizations_gameCenterLeaderboardSetLocalizationsGetInstance]? = nil, fieldsGameCenterLeaderboardSetImages: [FieldsGameCenterLeaderboardSetImages_gameCenterLeaderboardSetLocalizationsGetInstance]? = nil, include: [Include_gameCenterLeaderboardSetLocalizationsGetInstance]? = nil, apiConfiguration: ASCAPIConfiguration = ASCAPIConfiguration.shared) async throws(ErrorResponse) -> GameCenterLeaderboardSetLocalizationResponse {
        return try await gameCenterLeaderboardSetLocalizationsGetInstanceWithRequestBuilder(id: id, fieldsGameCenterLeaderboardSetLocalizations: fieldsGameCenterLeaderboardSetLocalizations, fieldsGameCenterLeaderboardSetImages: fieldsGameCenterLeaderboardSetImages, include: include, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     - parameter urlString: next or first url from App Store Connect API
     - parameter apiConfiguration: The configuration for the http request.
     - returns: GameCenterLeaderboardSetLocalizationResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func gameCenterLeaderboardSetLocalizationsGetInstance(urlString: String, apiConfiguration: ASCAPIConfiguration = ASCAPIConfiguration.shared) async throws(ErrorResponse) -> GameCenterLeaderboardSetLocalizationResponse {
        return try await gameCenterLeaderboardSetLocalizationsGetInstanceWithRequestBuilder(urlString: urlString, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     - GET /v1/gameCenterLeaderboardSetLocalizations/{id}
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter id: (path) the id of the requested resource 
     - parameter fieldsGameCenterLeaderboardSetLocalizations: (query) the fields to include for returned resources of type gameCenterLeaderboardSetLocalizations (optional)
     - parameter fieldsGameCenterLeaderboardSetImages: (query) the fields to include for returned resources of type gameCenterLeaderboardSetImages (optional)
     - parameter include: (query) comma-separated list of relationships to include (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<GameCenterLeaderboardSetLocalizationResponse> 
     */
    open class func gameCenterLeaderboardSetLocalizationsGetInstanceWithRequestBuilder(id: String, fieldsGameCenterLeaderboardSetLocalizations: [FieldsGameCenterLeaderboardSetLocalizations_gameCenterLeaderboardSetLocalizationsGetInstance]? = nil, fieldsGameCenterLeaderboardSetImages: [FieldsGameCenterLeaderboardSetImages_gameCenterLeaderboardSetLocalizationsGetInstance]? = nil, include: [Include_gameCenterLeaderboardSetLocalizationsGetInstance]? = nil, apiConfiguration: ASCAPIConfiguration = ASCAPIConfiguration.shared) -> RequestBuilder<GameCenterLeaderboardSetLocalizationResponse> {
        var localVariablePath = "/v1/gameCenterLeaderboardSetLocalizations/{id}"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "fields[gameCenterLeaderboardSetLocalizations]": (wrappedValue: fieldsGameCenterLeaderboardSetLocalizations?.encodeToJSON(codableHelper: apiConfiguration.codableHelper), isExplode: false),
            "fields[gameCenterLeaderboardSetImages]": (wrappedValue: fieldsGameCenterLeaderboardSetImages?.encodeToJSON(codableHelper: apiConfiguration.codableHelper), isExplode: false),
            "include": (wrappedValue: include?.encodeToJSON(codableHelper: apiConfiguration.codableHelper), isExplode: false),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<GameCenterLeaderboardSetLocalizationResponse>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     - GET /v1/gameCenterLeaderboardSetLocalizations/{id}
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter urlString: next or first url from App Store Connect API
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<GameCenterLeaderboardSetLocalizationResponse> 
     */
    open class func gameCenterLeaderboardSetLocalizationsGetInstanceWithRequestBuilder(urlString: String, apiConfiguration: ASCAPIConfiguration = ASCAPIConfiguration.shared) -> RequestBuilder<GameCenterLeaderboardSetLocalizationResponse> {
        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<GameCenterLeaderboardSetLocalizationResponse>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: urlString, parameters: nil, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**

     - parameter id: (path) the id of the requested resource 
     - parameter gameCenterLeaderboardSetLocalizationUpdateRequest: (body) GameCenterLeaderboardSetLocalization representation 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: GameCenterLeaderboardSetLocalizationResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func gameCenterLeaderboardSetLocalizationsUpdateInstance(id: String, gameCenterLeaderboardSetLocalizationUpdateRequest: GameCenterLeaderboardSetLocalizationUpdateRequest, apiConfiguration: ASCAPIConfiguration = ASCAPIConfiguration.shared) async throws(ErrorResponse) -> GameCenterLeaderboardSetLocalizationResponse {
        return try await gameCenterLeaderboardSetLocalizationsUpdateInstanceWithRequestBuilder(id: id, gameCenterLeaderboardSetLocalizationUpdateRequest: gameCenterLeaderboardSetLocalizationUpdateRequest, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     - parameter urlString: next or first url from App Store Connect API
     - parameter apiConfiguration: The configuration for the http request.
     - returns: GameCenterLeaderboardSetLocalizationResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func gameCenterLeaderboardSetLocalizationsUpdateInstance(urlString: String, apiConfiguration: ASCAPIConfiguration = ASCAPIConfiguration.shared) async throws(ErrorResponse) -> GameCenterLeaderboardSetLocalizationResponse {
        return try await gameCenterLeaderboardSetLocalizationsUpdateInstanceWithRequestBuilder(urlString: urlString, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     - PATCH /v1/gameCenterLeaderboardSetLocalizations/{id}
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter id: (path) the id of the requested resource 
     - parameter gameCenterLeaderboardSetLocalizationUpdateRequest: (body) GameCenterLeaderboardSetLocalization representation 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<GameCenterLeaderboardSetLocalizationResponse> 
     */
    open class func gameCenterLeaderboardSetLocalizationsUpdateInstanceWithRequestBuilder(id: String, gameCenterLeaderboardSetLocalizationUpdateRequest: GameCenterLeaderboardSetLocalizationUpdateRequest, apiConfiguration: ASCAPIConfiguration = ASCAPIConfiguration.shared) -> RequestBuilder<GameCenterLeaderboardSetLocalizationResponse> {
        var localVariablePath = "/v1/gameCenterLeaderboardSetLocalizations/{id}"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: gameCenterLeaderboardSetLocalizationUpdateRequest, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            "Content-Type": "application/json",
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<GameCenterLeaderboardSetLocalizationResponse>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PATCH", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     - PATCH /v1/gameCenterLeaderboardSetLocalizations/{id}
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter urlString: next or first url from App Store Connect API
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<GameCenterLeaderboardSetLocalizationResponse> 
     */
    open class func gameCenterLeaderboardSetLocalizationsUpdateInstanceWithRequestBuilder(urlString: String, apiConfiguration: ASCAPIConfiguration = ASCAPIConfiguration.shared) -> RequestBuilder<GameCenterLeaderboardSetLocalizationResponse> {
        let localVariableNillableHeaders: [String: Any?] = [
            "Content-Type": "application/json",
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<GameCenterLeaderboardSetLocalizationResponse>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PATCH", URLString: urlString, parameters: nil, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }
}
