//
// AppClipHeaderImagesAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

open class AppClipHeaderImagesAPI {

    /**

     - parameter appClipHeaderImageCreateRequest: (body) AppClipHeaderImage representation 
     - returns: AppClipHeaderImageResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func appClipHeaderImagesCreateInstance(appClipHeaderImageCreateRequest: AppClipHeaderImageCreateRequest) async throws -> AppClipHeaderImageResponse {
        return try await appClipHeaderImagesCreateInstanceWithRequestBuilder(appClipHeaderImageCreateRequest: appClipHeaderImageCreateRequest).execute().body
    }

    /**
     - parameter urlString: next or first url from App Store Connect API
     - returns: AppClipHeaderImageResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func appClipHeaderImagesCreateInstance(urlString: String) async throws -> AppClipHeaderImageResponse {
        return try await appClipHeaderImagesCreateInstanceWithRequestBuilder(urlString: urlString).execute().body
    }

    /**
     - POST /v1/appClipHeaderImages
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter appClipHeaderImageCreateRequest: (body) AppClipHeaderImage representation 
     - returns: RequestBuilder<AppClipHeaderImageResponse> 
     */
    open class func appClipHeaderImagesCreateInstanceWithRequestBuilder(appClipHeaderImageCreateRequest: AppClipHeaderImageCreateRequest) -> RequestBuilder<AppClipHeaderImageResponse> {
        let localVariablePath = "/v1/appClipHeaderImages"
        let localVariableURLString = ASCAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: appClipHeaderImageCreateRequest)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            "Content-Type": "application/json",
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AppClipHeaderImageResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     - POST /v1/appClipHeaderImages
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter urlString: next or first url from App Store Connect API
     - returns: RequestBuilder<AppClipHeaderImageResponse> 
     */
    open class func appClipHeaderImagesCreateInstanceWithRequestBuilder(urlString: String) -> RequestBuilder<AppClipHeaderImageResponse> {
        let localVariableNillableHeaders: [String: Any?] = [
            "Content-Type": "application/json",
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AppClipHeaderImageResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: urlString, parameters: nil, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**

     - parameter id: (path) the id of the requested resource 
     - returns: Void
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func appClipHeaderImagesDeleteInstance(id: String) async throws {
        return try await appClipHeaderImagesDeleteInstanceWithRequestBuilder(id: id).execute().body
    }

    /**
     - parameter urlString: next or first url from App Store Connect API
     - returns: Void
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func appClipHeaderImagesDeleteInstance(urlString: String) async throws {
        return try await appClipHeaderImagesDeleteInstanceWithRequestBuilder(urlString: urlString).execute().body
    }

    /**
     - DELETE /v1/appClipHeaderImages/{id}
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter id: (path) the id of the requested resource 
     - returns: RequestBuilder<Void> 
     */
    open class func appClipHeaderImagesDeleteInstanceWithRequestBuilder(id: String) -> RequestBuilder<Void> {
        var localVariablePath = "/v1/appClipHeaderImages/{id}"
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
     - DELETE /v1/appClipHeaderImages/{id}
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter urlString: next or first url from App Store Connect API
     - returns: RequestBuilder<Void> 
     */
    open class func appClipHeaderImagesDeleteInstanceWithRequestBuilder(urlString: String) -> RequestBuilder<Void> {
        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Void>.Type = ASCAPI.requestBuilderFactory.getNonDecodableBuilder()

        return localVariableRequestBuilder.init(method: "DELETE", URLString: urlString, parameters: nil, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     * enum for parameter fieldsAppClipHeaderImages
     */
    public enum FieldsAppClipHeaderImages_appClipHeaderImagesGetInstance: String, CaseIterable {
        case filesize = "fileSize"
        case filename = "fileName"
        case sourcefilechecksum = "sourceFileChecksum"
        case imageasset = "imageAsset"
        case uploadoperations = "uploadOperations"
        case assetdeliverystate = "assetDeliveryState"
        case appclipdefaultexperiencelocalization = "appClipDefaultExperienceLocalization"
    }

    /**
     * enum for parameter include
     */
    public enum Include_appClipHeaderImagesGetInstance: String, CaseIterable {
        case appclipdefaultexperiencelocalization = "appClipDefaultExperienceLocalization"
    }

    /**

     - parameter id: (path) the id of the requested resource 
     - parameter fieldsAppClipHeaderImages: (query) the fields to include for returned resources of type appClipHeaderImages (optional)
     - parameter include: (query) comma-separated list of relationships to include (optional)
     - returns: AppClipHeaderImageResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func appClipHeaderImagesGetInstance(id: String, fieldsAppClipHeaderImages: [FieldsAppClipHeaderImages_appClipHeaderImagesGetInstance]? = nil, include: [Include_appClipHeaderImagesGetInstance]? = nil) async throws -> AppClipHeaderImageResponse {
        return try await appClipHeaderImagesGetInstanceWithRequestBuilder(id: id, fieldsAppClipHeaderImages: fieldsAppClipHeaderImages, include: include).execute().body
    }

    /**
     - parameter urlString: next or first url from App Store Connect API
     - returns: AppClipHeaderImageResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func appClipHeaderImagesGetInstance(urlString: String) async throws -> AppClipHeaderImageResponse {
        return try await appClipHeaderImagesGetInstanceWithRequestBuilder(urlString: urlString).execute().body
    }

    /**
     - GET /v1/appClipHeaderImages/{id}
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter id: (path) the id of the requested resource 
     - parameter fieldsAppClipHeaderImages: (query) the fields to include for returned resources of type appClipHeaderImages (optional)
     - parameter include: (query) comma-separated list of relationships to include (optional)
     - returns: RequestBuilder<AppClipHeaderImageResponse> 
     */
    open class func appClipHeaderImagesGetInstanceWithRequestBuilder(id: String, fieldsAppClipHeaderImages: [FieldsAppClipHeaderImages_appClipHeaderImagesGetInstance]? = nil, include: [Include_appClipHeaderImagesGetInstance]? = nil) -> RequestBuilder<AppClipHeaderImageResponse> {
        var localVariablePath = "/v1/appClipHeaderImages/{id}"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = ASCAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "fields[appClipHeaderImages]": (wrappedValue: fieldsAppClipHeaderImages?.encodeToJSON(), isExplode: false),
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
     - GET /v1/appClipHeaderImages/{id}
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter urlString: next or first url from App Store Connect API
     - returns: RequestBuilder<AppClipHeaderImageResponse> 
     */
    open class func appClipHeaderImagesGetInstanceWithRequestBuilder(urlString: String) -> RequestBuilder<AppClipHeaderImageResponse> {
        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AppClipHeaderImageResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: urlString, parameters: nil, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**

     - parameter id: (path) the id of the requested resource 
     - parameter appClipHeaderImageUpdateRequest: (body) AppClipHeaderImage representation 
     - returns: AppClipHeaderImageResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func appClipHeaderImagesUpdateInstance(id: String, appClipHeaderImageUpdateRequest: AppClipHeaderImageUpdateRequest) async throws -> AppClipHeaderImageResponse {
        return try await appClipHeaderImagesUpdateInstanceWithRequestBuilder(id: id, appClipHeaderImageUpdateRequest: appClipHeaderImageUpdateRequest).execute().body
    }

    /**
     - parameter urlString: next or first url from App Store Connect API
     - returns: AppClipHeaderImageResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func appClipHeaderImagesUpdateInstance(urlString: String) async throws -> AppClipHeaderImageResponse {
        return try await appClipHeaderImagesUpdateInstanceWithRequestBuilder(urlString: urlString).execute().body
    }

    /**
     - PATCH /v1/appClipHeaderImages/{id}
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter id: (path) the id of the requested resource 
     - parameter appClipHeaderImageUpdateRequest: (body) AppClipHeaderImage representation 
     - returns: RequestBuilder<AppClipHeaderImageResponse> 
     */
    open class func appClipHeaderImagesUpdateInstanceWithRequestBuilder(id: String, appClipHeaderImageUpdateRequest: AppClipHeaderImageUpdateRequest) -> RequestBuilder<AppClipHeaderImageResponse> {
        var localVariablePath = "/v1/appClipHeaderImages/{id}"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = ASCAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: appClipHeaderImageUpdateRequest)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            "Content-Type": "application/json",
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AppClipHeaderImageResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PATCH", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     - PATCH /v1/appClipHeaderImages/{id}
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter urlString: next or first url from App Store Connect API
     - returns: RequestBuilder<AppClipHeaderImageResponse> 
     */
    open class func appClipHeaderImagesUpdateInstanceWithRequestBuilder(urlString: String) -> RequestBuilder<AppClipHeaderImageResponse> {
        let localVariableNillableHeaders: [String: Any?] = [
            "Content-Type": "application/json",
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AppClipHeaderImageResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PATCH", URLString: urlString, parameters: nil, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }
}
