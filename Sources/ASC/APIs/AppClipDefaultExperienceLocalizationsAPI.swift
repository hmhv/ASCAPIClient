//
// AppClipDefaultExperienceLocalizationsAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

open class AppClipDefaultExperienceLocalizationsAPI {

    /**
     * enum for parameter fieldsAppClipHeaderImages
     */
    public enum FieldsAppClipHeaderImages_appClipDefaultExperienceLocalizationsAppClipHeaderImageGetToOneRelated: String, CaseIterable {
        case appclipdefaultexperiencelocalization = "appClipDefaultExperienceLocalization"
        case assetdeliverystate = "assetDeliveryState"
        case filename = "fileName"
        case filesize = "fileSize"
        case imageasset = "imageAsset"
        case sourcefilechecksum = "sourceFileChecksum"
        case uploadoperations = "uploadOperations"
        case uploaded = "uploaded"
    }

    /**
     * enum for parameter fieldsAppClipDefaultExperienceLocalizations
     */
    public enum FieldsAppClipDefaultExperienceLocalizations_appClipDefaultExperienceLocalizationsAppClipHeaderImageGetToOneRelated: String, CaseIterable {
        case appclipdefaultexperience = "appClipDefaultExperience"
        case appclipheaderimage = "appClipHeaderImage"
        case locale = "locale"
        case subtitle = "subtitle"
    }

    /**
     * enum for parameter include
     */
    public enum Include_appClipDefaultExperienceLocalizationsAppClipHeaderImageGetToOneRelated: String, CaseIterable {
        case appclipdefaultexperiencelocalization = "appClipDefaultExperienceLocalization"
    }

    /**

     - parameter id: (path) the id of the requested resource 
     - parameter fieldsAppClipHeaderImages: (query) the fields to include for returned resources of type appClipHeaderImages (optional)
     - parameter fieldsAppClipDefaultExperienceLocalizations: (query) the fields to include for returned resources of type appClipDefaultExperienceLocalizations (optional)
     - parameter include: (query) comma-separated list of relationships to include (optional)
     - returns: AppClipHeaderImageResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func appClipDefaultExperienceLocalizationsAppClipHeaderImageGetToOneRelated(id: String, fieldsAppClipHeaderImages: [FieldsAppClipHeaderImages_appClipDefaultExperienceLocalizationsAppClipHeaderImageGetToOneRelated]? = nil, fieldsAppClipDefaultExperienceLocalizations: [FieldsAppClipDefaultExperienceLocalizations_appClipDefaultExperienceLocalizationsAppClipHeaderImageGetToOneRelated]? = nil, include: [Include_appClipDefaultExperienceLocalizationsAppClipHeaderImageGetToOneRelated]? = nil) async throws -> AppClipHeaderImageResponse {
        return try await appClipDefaultExperienceLocalizationsAppClipHeaderImageGetToOneRelatedWithRequestBuilder(id: id, fieldsAppClipHeaderImages: fieldsAppClipHeaderImages, fieldsAppClipDefaultExperienceLocalizations: fieldsAppClipDefaultExperienceLocalizations, include: include).execute().body
    }

    /**
     - parameter urlString: next or first url from App Store Connect API
     - returns: AppClipHeaderImageResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func appClipDefaultExperienceLocalizationsAppClipHeaderImageGetToOneRelated(urlString: String) async throws -> AppClipHeaderImageResponse {
        return try await appClipDefaultExperienceLocalizationsAppClipHeaderImageGetToOneRelatedWithRequestBuilder(urlString: urlString).execute().body
    }

    /**
     - GET /v1/appClipDefaultExperienceLocalizations/{id}/appClipHeaderImage
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter id: (path) the id of the requested resource 
     - parameter fieldsAppClipHeaderImages: (query) the fields to include for returned resources of type appClipHeaderImages (optional)
     - parameter fieldsAppClipDefaultExperienceLocalizations: (query) the fields to include for returned resources of type appClipDefaultExperienceLocalizations (optional)
     - parameter include: (query) comma-separated list of relationships to include (optional)
     - returns: RequestBuilder<AppClipHeaderImageResponse> 
     */
    open class func appClipDefaultExperienceLocalizationsAppClipHeaderImageGetToOneRelatedWithRequestBuilder(id: String, fieldsAppClipHeaderImages: [FieldsAppClipHeaderImages_appClipDefaultExperienceLocalizationsAppClipHeaderImageGetToOneRelated]? = nil, fieldsAppClipDefaultExperienceLocalizations: [FieldsAppClipDefaultExperienceLocalizations_appClipDefaultExperienceLocalizationsAppClipHeaderImageGetToOneRelated]? = nil, include: [Include_appClipDefaultExperienceLocalizationsAppClipHeaderImageGetToOneRelated]? = nil) -> RequestBuilder<AppClipHeaderImageResponse> {
        var localVariablePath = "/v1/appClipDefaultExperienceLocalizations/{id}/appClipHeaderImage"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = ASCAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "fields[appClipHeaderImages]": (wrappedValue: fieldsAppClipHeaderImages?.encodeToJSON(), isExplode: false),
            "fields[appClipDefaultExperienceLocalizations]": (wrappedValue: fieldsAppClipDefaultExperienceLocalizations?.encodeToJSON(), isExplode: false),
            "include": (wrappedValue: include?.encodeToJSON(), isExplode: false),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AppClipHeaderImageResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     - GET /v1/appClipDefaultExperienceLocalizations/{id}/appClipHeaderImage
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter urlString: next or first url from App Store Connect API
     - returns: RequestBuilder<AppClipHeaderImageResponse> 
     */
    open class func appClipDefaultExperienceLocalizationsAppClipHeaderImageGetToOneRelatedWithRequestBuilder(urlString: String) -> RequestBuilder<AppClipHeaderImageResponse> {
        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AppClipHeaderImageResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: urlString, parameters: nil, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**

     - parameter appClipDefaultExperienceLocalizationCreateRequest: (body) AppClipDefaultExperienceLocalization representation 
     - returns: AppClipDefaultExperienceLocalizationResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func appClipDefaultExperienceLocalizationsCreateInstance(appClipDefaultExperienceLocalizationCreateRequest: AppClipDefaultExperienceLocalizationCreateRequest) async throws -> AppClipDefaultExperienceLocalizationResponse {
        return try await appClipDefaultExperienceLocalizationsCreateInstanceWithRequestBuilder(appClipDefaultExperienceLocalizationCreateRequest: appClipDefaultExperienceLocalizationCreateRequest).execute().body
    }

    /**
     - parameter urlString: next or first url from App Store Connect API
     - returns: AppClipDefaultExperienceLocalizationResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func appClipDefaultExperienceLocalizationsCreateInstance(urlString: String) async throws -> AppClipDefaultExperienceLocalizationResponse {
        return try await appClipDefaultExperienceLocalizationsCreateInstanceWithRequestBuilder(urlString: urlString).execute().body
    }

    /**
     - POST /v1/appClipDefaultExperienceLocalizations
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter appClipDefaultExperienceLocalizationCreateRequest: (body) AppClipDefaultExperienceLocalization representation 
     - returns: RequestBuilder<AppClipDefaultExperienceLocalizationResponse> 
     */
    open class func appClipDefaultExperienceLocalizationsCreateInstanceWithRequestBuilder(appClipDefaultExperienceLocalizationCreateRequest: AppClipDefaultExperienceLocalizationCreateRequest) -> RequestBuilder<AppClipDefaultExperienceLocalizationResponse> {
        let localVariablePath = "/v1/appClipDefaultExperienceLocalizations"
        let localVariableURLString = ASCAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: appClipDefaultExperienceLocalizationCreateRequest)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            "Content-Type": "application/json",
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AppClipDefaultExperienceLocalizationResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     - POST /v1/appClipDefaultExperienceLocalizations
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter urlString: next or first url from App Store Connect API
     - returns: RequestBuilder<AppClipDefaultExperienceLocalizationResponse> 
     */
    open class func appClipDefaultExperienceLocalizationsCreateInstanceWithRequestBuilder(urlString: String) -> RequestBuilder<AppClipDefaultExperienceLocalizationResponse> {
        let localVariableNillableHeaders: [String: Any?] = [
            "Content-Type": "application/json",
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AppClipDefaultExperienceLocalizationResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: urlString, parameters: nil, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**

     - parameter id: (path) the id of the requested resource 
     - returns: Void
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func appClipDefaultExperienceLocalizationsDeleteInstance(id: String) async throws {
        return try await appClipDefaultExperienceLocalizationsDeleteInstanceWithRequestBuilder(id: id).execute().body
    }

    /**
     - parameter urlString: next or first url from App Store Connect API
     - returns: Void
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func appClipDefaultExperienceLocalizationsDeleteInstance(urlString: String) async throws {
        return try await appClipDefaultExperienceLocalizationsDeleteInstanceWithRequestBuilder(urlString: urlString).execute().body
    }

    /**
     - DELETE /v1/appClipDefaultExperienceLocalizations/{id}
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter id: (path) the id of the requested resource 
     - returns: RequestBuilder<Void> 
     */
    open class func appClipDefaultExperienceLocalizationsDeleteInstanceWithRequestBuilder(id: String) -> RequestBuilder<Void> {
        var localVariablePath = "/v1/appClipDefaultExperienceLocalizations/{id}"
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
     - DELETE /v1/appClipDefaultExperienceLocalizations/{id}
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter urlString: next or first url from App Store Connect API
     - returns: RequestBuilder<Void> 
     */
    open class func appClipDefaultExperienceLocalizationsDeleteInstanceWithRequestBuilder(urlString: String) -> RequestBuilder<Void> {
        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Void>.Type = ASCAPI.requestBuilderFactory.getNonDecodableBuilder()

        return localVariableRequestBuilder.init(method: "DELETE", URLString: urlString, parameters: nil, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     * enum for parameter fieldsAppClipDefaultExperienceLocalizations
     */
    public enum FieldsAppClipDefaultExperienceLocalizations_appClipDefaultExperienceLocalizationsGetInstance: String, CaseIterable {
        case appclipdefaultexperience = "appClipDefaultExperience"
        case appclipheaderimage = "appClipHeaderImage"
        case locale = "locale"
        case subtitle = "subtitle"
    }

    /**
     * enum for parameter include
     */
    public enum Include_appClipDefaultExperienceLocalizationsGetInstance: String, CaseIterable {
        case appclipdefaultexperience = "appClipDefaultExperience"
        case appclipheaderimage = "appClipHeaderImage"
    }

    /**
     * enum for parameter fieldsAppClipHeaderImages
     */
    public enum FieldsAppClipHeaderImages_appClipDefaultExperienceLocalizationsGetInstance: String, CaseIterable {
        case appclipdefaultexperiencelocalization = "appClipDefaultExperienceLocalization"
        case assetdeliverystate = "assetDeliveryState"
        case filename = "fileName"
        case filesize = "fileSize"
        case imageasset = "imageAsset"
        case sourcefilechecksum = "sourceFileChecksum"
        case uploadoperations = "uploadOperations"
        case uploaded = "uploaded"
    }

    /**

     - parameter id: (path) the id of the requested resource 
     - parameter fieldsAppClipDefaultExperienceLocalizations: (query) the fields to include for returned resources of type appClipDefaultExperienceLocalizations (optional)
     - parameter include: (query) comma-separated list of relationships to include (optional)
     - parameter fieldsAppClipHeaderImages: (query) the fields to include for returned resources of type appClipHeaderImages (optional)
     - returns: AppClipDefaultExperienceLocalizationResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func appClipDefaultExperienceLocalizationsGetInstance(id: String, fieldsAppClipDefaultExperienceLocalizations: [FieldsAppClipDefaultExperienceLocalizations_appClipDefaultExperienceLocalizationsGetInstance]? = nil, include: [Include_appClipDefaultExperienceLocalizationsGetInstance]? = nil, fieldsAppClipHeaderImages: [FieldsAppClipHeaderImages_appClipDefaultExperienceLocalizationsGetInstance]? = nil) async throws -> AppClipDefaultExperienceLocalizationResponse {
        return try await appClipDefaultExperienceLocalizationsGetInstanceWithRequestBuilder(id: id, fieldsAppClipDefaultExperienceLocalizations: fieldsAppClipDefaultExperienceLocalizations, include: include, fieldsAppClipHeaderImages: fieldsAppClipHeaderImages).execute().body
    }

    /**
     - parameter urlString: next or first url from App Store Connect API
     - returns: AppClipDefaultExperienceLocalizationResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func appClipDefaultExperienceLocalizationsGetInstance(urlString: String) async throws -> AppClipDefaultExperienceLocalizationResponse {
        return try await appClipDefaultExperienceLocalizationsGetInstanceWithRequestBuilder(urlString: urlString).execute().body
    }

    /**
     - GET /v1/appClipDefaultExperienceLocalizations/{id}
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter id: (path) the id of the requested resource 
     - parameter fieldsAppClipDefaultExperienceLocalizations: (query) the fields to include for returned resources of type appClipDefaultExperienceLocalizations (optional)
     - parameter include: (query) comma-separated list of relationships to include (optional)
     - parameter fieldsAppClipHeaderImages: (query) the fields to include for returned resources of type appClipHeaderImages (optional)
     - returns: RequestBuilder<AppClipDefaultExperienceLocalizationResponse> 
     */
    open class func appClipDefaultExperienceLocalizationsGetInstanceWithRequestBuilder(id: String, fieldsAppClipDefaultExperienceLocalizations: [FieldsAppClipDefaultExperienceLocalizations_appClipDefaultExperienceLocalizationsGetInstance]? = nil, include: [Include_appClipDefaultExperienceLocalizationsGetInstance]? = nil, fieldsAppClipHeaderImages: [FieldsAppClipHeaderImages_appClipDefaultExperienceLocalizationsGetInstance]? = nil) -> RequestBuilder<AppClipDefaultExperienceLocalizationResponse> {
        var localVariablePath = "/v1/appClipDefaultExperienceLocalizations/{id}"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = ASCAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "fields[appClipDefaultExperienceLocalizations]": (wrappedValue: fieldsAppClipDefaultExperienceLocalizations?.encodeToJSON(), isExplode: false),
            "include": (wrappedValue: include?.encodeToJSON(), isExplode: false),
            "fields[appClipHeaderImages]": (wrappedValue: fieldsAppClipHeaderImages?.encodeToJSON(), isExplode: false),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AppClipDefaultExperienceLocalizationResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     - GET /v1/appClipDefaultExperienceLocalizations/{id}
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter urlString: next or first url from App Store Connect API
     - returns: RequestBuilder<AppClipDefaultExperienceLocalizationResponse> 
     */
    open class func appClipDefaultExperienceLocalizationsGetInstanceWithRequestBuilder(urlString: String) -> RequestBuilder<AppClipDefaultExperienceLocalizationResponse> {
        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AppClipDefaultExperienceLocalizationResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: urlString, parameters: nil, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**

     - parameter id: (path) the id of the requested resource 
     - parameter appClipDefaultExperienceLocalizationUpdateRequest: (body) AppClipDefaultExperienceLocalization representation 
     - returns: AppClipDefaultExperienceLocalizationResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func appClipDefaultExperienceLocalizationsUpdateInstance(id: String, appClipDefaultExperienceLocalizationUpdateRequest: AppClipDefaultExperienceLocalizationUpdateRequest) async throws -> AppClipDefaultExperienceLocalizationResponse {
        return try await appClipDefaultExperienceLocalizationsUpdateInstanceWithRequestBuilder(id: id, appClipDefaultExperienceLocalizationUpdateRequest: appClipDefaultExperienceLocalizationUpdateRequest).execute().body
    }

    /**
     - parameter urlString: next or first url from App Store Connect API
     - returns: AppClipDefaultExperienceLocalizationResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func appClipDefaultExperienceLocalizationsUpdateInstance(urlString: String) async throws -> AppClipDefaultExperienceLocalizationResponse {
        return try await appClipDefaultExperienceLocalizationsUpdateInstanceWithRequestBuilder(urlString: urlString).execute().body
    }

    /**
     - PATCH /v1/appClipDefaultExperienceLocalizations/{id}
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter id: (path) the id of the requested resource 
     - parameter appClipDefaultExperienceLocalizationUpdateRequest: (body) AppClipDefaultExperienceLocalization representation 
     - returns: RequestBuilder<AppClipDefaultExperienceLocalizationResponse> 
     */
    open class func appClipDefaultExperienceLocalizationsUpdateInstanceWithRequestBuilder(id: String, appClipDefaultExperienceLocalizationUpdateRequest: AppClipDefaultExperienceLocalizationUpdateRequest) -> RequestBuilder<AppClipDefaultExperienceLocalizationResponse> {
        var localVariablePath = "/v1/appClipDefaultExperienceLocalizations/{id}"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = ASCAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: appClipDefaultExperienceLocalizationUpdateRequest)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            "Content-Type": "application/json",
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AppClipDefaultExperienceLocalizationResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PATCH", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     - PATCH /v1/appClipDefaultExperienceLocalizations/{id}
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter urlString: next or first url from App Store Connect API
     - returns: RequestBuilder<AppClipDefaultExperienceLocalizationResponse> 
     */
    open class func appClipDefaultExperienceLocalizationsUpdateInstanceWithRequestBuilder(urlString: String) -> RequestBuilder<AppClipDefaultExperienceLocalizationResponse> {
        let localVariableNillableHeaders: [String: Any?] = [
            "Content-Type": "application/json",
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AppClipDefaultExperienceLocalizationResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PATCH", URLString: urlString, parameters: nil, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }
}
