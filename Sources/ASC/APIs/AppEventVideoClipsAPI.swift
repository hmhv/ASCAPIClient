//
// AppEventVideoClipsAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

open class AppEventVideoClipsAPI {

    /**

     - parameter appEventVideoClipCreateRequest: (body) AppEventVideoClip representation 
     - returns: AppEventVideoClipResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func appEventVideoClipsCreateInstance(appEventVideoClipCreateRequest: AppEventVideoClipCreateRequest) async throws -> AppEventVideoClipResponse {
        return try await appEventVideoClipsCreateInstanceWithRequestBuilder(appEventVideoClipCreateRequest: appEventVideoClipCreateRequest).execute().body
    }

    /**
     - parameter urlString: next or first url from App Store Connect API
     - returns: AppEventVideoClipResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func appEventVideoClipsCreateInstance(urlString: String) async throws -> AppEventVideoClipResponse {
        return try await appEventVideoClipsCreateInstanceWithRequestBuilder(urlString: urlString).execute().body
    }

    /**
     - POST /v1/appEventVideoClips
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter appEventVideoClipCreateRequest: (body) AppEventVideoClip representation 
     - returns: RequestBuilder<AppEventVideoClipResponse> 
     */
    open class func appEventVideoClipsCreateInstanceWithRequestBuilder(appEventVideoClipCreateRequest: AppEventVideoClipCreateRequest) -> RequestBuilder<AppEventVideoClipResponse> {
        let localVariablePath = "/v1/appEventVideoClips"
        let localVariableURLString = ASCAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: appEventVideoClipCreateRequest)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            "Content-Type": "application/json",
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AppEventVideoClipResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     - POST /v1/appEventVideoClips
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter urlString: next or first url from App Store Connect API
     - returns: RequestBuilder<AppEventVideoClipResponse> 
     */
    open class func appEventVideoClipsCreateInstanceWithRequestBuilder(urlString: String) -> RequestBuilder<AppEventVideoClipResponse> {
        let localVariableNillableHeaders: [String: Any?] = [
            "Content-Type": "application/json",
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AppEventVideoClipResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: urlString, parameters: nil, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**

     - parameter id: (path) the id of the requested resource 
     - returns: Void
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func appEventVideoClipsDeleteInstance(id: String) async throws {
        return try await appEventVideoClipsDeleteInstanceWithRequestBuilder(id: id).execute().body
    }

    /**
     - parameter urlString: next or first url from App Store Connect API
     - returns: Void
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func appEventVideoClipsDeleteInstance(urlString: String) async throws {
        return try await appEventVideoClipsDeleteInstanceWithRequestBuilder(urlString: urlString).execute().body
    }

    /**
     - DELETE /v1/appEventVideoClips/{id}
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter id: (path) the id of the requested resource 
     - returns: RequestBuilder<Void> 
     */
    open class func appEventVideoClipsDeleteInstanceWithRequestBuilder(id: String) -> RequestBuilder<Void> {
        var localVariablePath = "/v1/appEventVideoClips/{id}"
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
     - DELETE /v1/appEventVideoClips/{id}
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter urlString: next or first url from App Store Connect API
     - returns: RequestBuilder<Void> 
     */
    open class func appEventVideoClipsDeleteInstanceWithRequestBuilder(urlString: String) -> RequestBuilder<Void> {
        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Void>.Type = ASCAPI.requestBuilderFactory.getNonDecodableBuilder()

        return localVariableRequestBuilder.init(method: "DELETE", URLString: urlString, parameters: nil, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     * enum for parameter fieldsAppEventVideoClips
     */
    public enum FieldsAppEventVideoClips_appEventVideoClipsGetInstance: String, CaseIterable {
        case appeventassettype = "appEventAssetType"
        case appeventlocalization = "appEventLocalization"
        case assetdeliverystate = "assetDeliveryState"
        case filename = "fileName"
        case filesize = "fileSize"
        case previewframetimecode = "previewFrameTimeCode"
        case previewimage = "previewImage"
        case uploadoperations = "uploadOperations"
        case uploaded = "uploaded"
        case videourl = "videoUrl"
    }

    /**
     * enum for parameter include
     */
    public enum Include_appEventVideoClipsGetInstance: String, CaseIterable {
        case appeventlocalization = "appEventLocalization"
    }

    /**

     - parameter id: (path) the id of the requested resource 
     - parameter fieldsAppEventVideoClips: (query) the fields to include for returned resources of type appEventVideoClips (optional)
     - parameter include: (query) comma-separated list of relationships to include (optional)
     - returns: AppEventVideoClipResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func appEventVideoClipsGetInstance(id: String, fieldsAppEventVideoClips: [FieldsAppEventVideoClips_appEventVideoClipsGetInstance]? = nil, include: [Include_appEventVideoClipsGetInstance]? = nil) async throws -> AppEventVideoClipResponse {
        return try await appEventVideoClipsGetInstanceWithRequestBuilder(id: id, fieldsAppEventVideoClips: fieldsAppEventVideoClips, include: include).execute().body
    }

    /**
     - parameter urlString: next or first url from App Store Connect API
     - returns: AppEventVideoClipResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func appEventVideoClipsGetInstance(urlString: String) async throws -> AppEventVideoClipResponse {
        return try await appEventVideoClipsGetInstanceWithRequestBuilder(urlString: urlString).execute().body
    }

    /**
     - GET /v1/appEventVideoClips/{id}
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter id: (path) the id of the requested resource 
     - parameter fieldsAppEventVideoClips: (query) the fields to include for returned resources of type appEventVideoClips (optional)
     - parameter include: (query) comma-separated list of relationships to include (optional)
     - returns: RequestBuilder<AppEventVideoClipResponse> 
     */
    open class func appEventVideoClipsGetInstanceWithRequestBuilder(id: String, fieldsAppEventVideoClips: [FieldsAppEventVideoClips_appEventVideoClipsGetInstance]? = nil, include: [Include_appEventVideoClipsGetInstance]? = nil) -> RequestBuilder<AppEventVideoClipResponse> {
        var localVariablePath = "/v1/appEventVideoClips/{id}"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = ASCAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "fields[appEventVideoClips]": (wrappedValue: fieldsAppEventVideoClips?.encodeToJSON(), isExplode: false),
            "include": (wrappedValue: include?.encodeToJSON(), isExplode: false),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AppEventVideoClipResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     - GET /v1/appEventVideoClips/{id}
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter urlString: next or first url from App Store Connect API
     - returns: RequestBuilder<AppEventVideoClipResponse> 
     */
    open class func appEventVideoClipsGetInstanceWithRequestBuilder(urlString: String) -> RequestBuilder<AppEventVideoClipResponse> {
        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AppEventVideoClipResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: urlString, parameters: nil, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**

     - parameter id: (path) the id of the requested resource 
     - parameter appEventVideoClipUpdateRequest: (body) AppEventVideoClip representation 
     - returns: AppEventVideoClipResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func appEventVideoClipsUpdateInstance(id: String, appEventVideoClipUpdateRequest: AppEventVideoClipUpdateRequest) async throws -> AppEventVideoClipResponse {
        return try await appEventVideoClipsUpdateInstanceWithRequestBuilder(id: id, appEventVideoClipUpdateRequest: appEventVideoClipUpdateRequest).execute().body
    }

    /**
     - parameter urlString: next or first url from App Store Connect API
     - returns: AppEventVideoClipResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func appEventVideoClipsUpdateInstance(urlString: String) async throws -> AppEventVideoClipResponse {
        return try await appEventVideoClipsUpdateInstanceWithRequestBuilder(urlString: urlString).execute().body
    }

    /**
     - PATCH /v1/appEventVideoClips/{id}
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter id: (path) the id of the requested resource 
     - parameter appEventVideoClipUpdateRequest: (body) AppEventVideoClip representation 
     - returns: RequestBuilder<AppEventVideoClipResponse> 
     */
    open class func appEventVideoClipsUpdateInstanceWithRequestBuilder(id: String, appEventVideoClipUpdateRequest: AppEventVideoClipUpdateRequest) -> RequestBuilder<AppEventVideoClipResponse> {
        var localVariablePath = "/v1/appEventVideoClips/{id}"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = ASCAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: appEventVideoClipUpdateRequest)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            "Content-Type": "application/json",
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AppEventVideoClipResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PATCH", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     - PATCH /v1/appEventVideoClips/{id}
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter urlString: next or first url from App Store Connect API
     - returns: RequestBuilder<AppEventVideoClipResponse> 
     */
    open class func appEventVideoClipsUpdateInstanceWithRequestBuilder(urlString: String) -> RequestBuilder<AppEventVideoClipResponse> {
        let localVariableNillableHeaders: [String: Any?] = [
            "Content-Type": "application/json",
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AppEventVideoClipResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PATCH", URLString: urlString, parameters: nil, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }
}
