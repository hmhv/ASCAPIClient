//
// AppClipAppStoreReviewDetailsAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

open class AppClipAppStoreReviewDetailsAPI {

    /**

     - parameter appClipAppStoreReviewDetailCreateRequest: (body) AppClipAppStoreReviewDetail representation 
     - returns: AppClipAppStoreReviewDetailResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func appClipAppStoreReviewDetailsCreateInstance(appClipAppStoreReviewDetailCreateRequest: AppClipAppStoreReviewDetailCreateRequest) async throws -> AppClipAppStoreReviewDetailResponse {
        return try await appClipAppStoreReviewDetailsCreateInstanceWithRequestBuilder(appClipAppStoreReviewDetailCreateRequest: appClipAppStoreReviewDetailCreateRequest).execute().body
    }

    /**
     - parameter urlString: next or first url from App Store Connect API
     - returns: AppClipAppStoreReviewDetailResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func appClipAppStoreReviewDetailsCreateInstance(urlString: String) async throws -> AppClipAppStoreReviewDetailResponse {
        return try await appClipAppStoreReviewDetailsCreateInstanceWithRequestBuilder(urlString: urlString).execute().body
    }

    /**
     - POST /v1/appClipAppStoreReviewDetails
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter appClipAppStoreReviewDetailCreateRequest: (body) AppClipAppStoreReviewDetail representation 
     - returns: RequestBuilder<AppClipAppStoreReviewDetailResponse> 
     */
    open class func appClipAppStoreReviewDetailsCreateInstanceWithRequestBuilder(appClipAppStoreReviewDetailCreateRequest: AppClipAppStoreReviewDetailCreateRequest) -> RequestBuilder<AppClipAppStoreReviewDetailResponse> {
        let localVariablePath = "/v1/appClipAppStoreReviewDetails"
        let localVariableURLString = ASCAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: appClipAppStoreReviewDetailCreateRequest)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            "Content-Type": "application/json",
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AppClipAppStoreReviewDetailResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     - POST /v1/appClipAppStoreReviewDetails
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter urlString: next or first url from App Store Connect API
     - returns: RequestBuilder<AppClipAppStoreReviewDetailResponse> 
     */
    open class func appClipAppStoreReviewDetailsCreateInstanceWithRequestBuilder(urlString: String) -> RequestBuilder<AppClipAppStoreReviewDetailResponse> {
        let localVariableNillableHeaders: [String: Any?] = [
            "Content-Type": "application/json",
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AppClipAppStoreReviewDetailResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: urlString, parameters: nil, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     * enum for parameter fieldsAppClipAppStoreReviewDetails
     */
    public enum FieldsAppClipAppStoreReviewDetails_appClipAppStoreReviewDetailsGetInstance: String, CaseIterable {
        case appclipdefaultexperience = "appClipDefaultExperience"
        case invocationurls = "invocationUrls"
    }

    /**
     * enum for parameter include
     */
    public enum Include_appClipAppStoreReviewDetailsGetInstance: String, CaseIterable {
        case appclipdefaultexperience = "appClipDefaultExperience"
    }

    /**

     - parameter id: (path) the id of the requested resource 
     - parameter fieldsAppClipAppStoreReviewDetails: (query) the fields to include for returned resources of type appClipAppStoreReviewDetails (optional)
     - parameter include: (query) comma-separated list of relationships to include (optional)
     - returns: AppClipAppStoreReviewDetailResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func appClipAppStoreReviewDetailsGetInstance(id: String, fieldsAppClipAppStoreReviewDetails: [FieldsAppClipAppStoreReviewDetails_appClipAppStoreReviewDetailsGetInstance]? = nil, include: [Include_appClipAppStoreReviewDetailsGetInstance]? = nil) async throws -> AppClipAppStoreReviewDetailResponse {
        return try await appClipAppStoreReviewDetailsGetInstanceWithRequestBuilder(id: id, fieldsAppClipAppStoreReviewDetails: fieldsAppClipAppStoreReviewDetails, include: include).execute().body
    }

    /**
     - parameter urlString: next or first url from App Store Connect API
     - returns: AppClipAppStoreReviewDetailResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func appClipAppStoreReviewDetailsGetInstance(urlString: String) async throws -> AppClipAppStoreReviewDetailResponse {
        return try await appClipAppStoreReviewDetailsGetInstanceWithRequestBuilder(urlString: urlString).execute().body
    }

    /**
     - GET /v1/appClipAppStoreReviewDetails/{id}
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter id: (path) the id of the requested resource 
     - parameter fieldsAppClipAppStoreReviewDetails: (query) the fields to include for returned resources of type appClipAppStoreReviewDetails (optional)
     - parameter include: (query) comma-separated list of relationships to include (optional)
     - returns: RequestBuilder<AppClipAppStoreReviewDetailResponse> 
     */
    open class func appClipAppStoreReviewDetailsGetInstanceWithRequestBuilder(id: String, fieldsAppClipAppStoreReviewDetails: [FieldsAppClipAppStoreReviewDetails_appClipAppStoreReviewDetailsGetInstance]? = nil, include: [Include_appClipAppStoreReviewDetailsGetInstance]? = nil) -> RequestBuilder<AppClipAppStoreReviewDetailResponse> {
        var localVariablePath = "/v1/appClipAppStoreReviewDetails/{id}"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = ASCAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "fields[appClipAppStoreReviewDetails]": (wrappedValue: fieldsAppClipAppStoreReviewDetails?.encodeToJSON(), isExplode: false),
            "include": (wrappedValue: include?.encodeToJSON(), isExplode: false),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AppClipAppStoreReviewDetailResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     - GET /v1/appClipAppStoreReviewDetails/{id}
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter urlString: next or first url from App Store Connect API
     - returns: RequestBuilder<AppClipAppStoreReviewDetailResponse> 
     */
    open class func appClipAppStoreReviewDetailsGetInstanceWithRequestBuilder(urlString: String) -> RequestBuilder<AppClipAppStoreReviewDetailResponse> {
        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AppClipAppStoreReviewDetailResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: urlString, parameters: nil, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**

     - parameter id: (path) the id of the requested resource 
     - parameter appClipAppStoreReviewDetailUpdateRequest: (body) AppClipAppStoreReviewDetail representation 
     - returns: AppClipAppStoreReviewDetailResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func appClipAppStoreReviewDetailsUpdateInstance(id: String, appClipAppStoreReviewDetailUpdateRequest: AppClipAppStoreReviewDetailUpdateRequest) async throws -> AppClipAppStoreReviewDetailResponse {
        return try await appClipAppStoreReviewDetailsUpdateInstanceWithRequestBuilder(id: id, appClipAppStoreReviewDetailUpdateRequest: appClipAppStoreReviewDetailUpdateRequest).execute().body
    }

    /**
     - parameter urlString: next or first url from App Store Connect API
     - returns: AppClipAppStoreReviewDetailResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func appClipAppStoreReviewDetailsUpdateInstance(urlString: String) async throws -> AppClipAppStoreReviewDetailResponse {
        return try await appClipAppStoreReviewDetailsUpdateInstanceWithRequestBuilder(urlString: urlString).execute().body
    }

    /**
     - PATCH /v1/appClipAppStoreReviewDetails/{id}
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter id: (path) the id of the requested resource 
     - parameter appClipAppStoreReviewDetailUpdateRequest: (body) AppClipAppStoreReviewDetail representation 
     - returns: RequestBuilder<AppClipAppStoreReviewDetailResponse> 
     */
    open class func appClipAppStoreReviewDetailsUpdateInstanceWithRequestBuilder(id: String, appClipAppStoreReviewDetailUpdateRequest: AppClipAppStoreReviewDetailUpdateRequest) -> RequestBuilder<AppClipAppStoreReviewDetailResponse> {
        var localVariablePath = "/v1/appClipAppStoreReviewDetails/{id}"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = ASCAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: appClipAppStoreReviewDetailUpdateRequest)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            "Content-Type": "application/json",
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AppClipAppStoreReviewDetailResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PATCH", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     - PATCH /v1/appClipAppStoreReviewDetails/{id}
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter urlString: next or first url from App Store Connect API
     - returns: RequestBuilder<AppClipAppStoreReviewDetailResponse> 
     */
    open class func appClipAppStoreReviewDetailsUpdateInstanceWithRequestBuilder(urlString: String) -> RequestBuilder<AppClipAppStoreReviewDetailResponse> {
        let localVariableNillableHeaders: [String: Any?] = [
            "Content-Type": "application/json",
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AppClipAppStoreReviewDetailResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PATCH", URLString: urlString, parameters: nil, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }
}
