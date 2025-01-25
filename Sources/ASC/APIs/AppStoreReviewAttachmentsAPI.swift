//
// AppStoreReviewAttachmentsAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

open class AppStoreReviewAttachmentsAPI {

    /**

     - parameter appStoreReviewAttachmentCreateRequest: (body) AppStoreReviewAttachment representation 
     - returns: AppStoreReviewAttachmentResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func appStoreReviewAttachmentsCreateInstance(appStoreReviewAttachmentCreateRequest: AppStoreReviewAttachmentCreateRequest) async throws -> AppStoreReviewAttachmentResponse {
        return try await appStoreReviewAttachmentsCreateInstanceWithRequestBuilder(appStoreReviewAttachmentCreateRequest: appStoreReviewAttachmentCreateRequest).execute().body
    }

    /**
     - parameter urlString: next or first url from App Store Connect API
     - returns: AppStoreReviewAttachmentResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func appStoreReviewAttachmentsCreateInstance(urlString: String) async throws -> AppStoreReviewAttachmentResponse {
        return try await appStoreReviewAttachmentsCreateInstanceWithRequestBuilder(urlString: urlString).execute().body
    }

    /**
     - POST /v1/appStoreReviewAttachments
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter appStoreReviewAttachmentCreateRequest: (body) AppStoreReviewAttachment representation 
     - returns: RequestBuilder<AppStoreReviewAttachmentResponse> 
     */
    open class func appStoreReviewAttachmentsCreateInstanceWithRequestBuilder(appStoreReviewAttachmentCreateRequest: AppStoreReviewAttachmentCreateRequest) -> RequestBuilder<AppStoreReviewAttachmentResponse> {
        let localVariablePath = "/v1/appStoreReviewAttachments"
        let localVariableURLString = ASCAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: appStoreReviewAttachmentCreateRequest)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            "Content-Type": "application/json",
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AppStoreReviewAttachmentResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     - POST /v1/appStoreReviewAttachments
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter urlString: next or first url from App Store Connect API
     - returns: RequestBuilder<AppStoreReviewAttachmentResponse> 
     */
    open class func appStoreReviewAttachmentsCreateInstanceWithRequestBuilder(urlString: String) -> RequestBuilder<AppStoreReviewAttachmentResponse> {
        let localVariableNillableHeaders: [String: Any?] = [
            "Content-Type": "application/json",
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AppStoreReviewAttachmentResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: urlString, parameters: nil, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**

     - parameter id: (path) the id of the requested resource 
     - returns: Void
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func appStoreReviewAttachmentsDeleteInstance(id: String) async throws {
        return try await appStoreReviewAttachmentsDeleteInstanceWithRequestBuilder(id: id).execute().body
    }

    /**
     - parameter urlString: next or first url from App Store Connect API
     - returns: Void
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func appStoreReviewAttachmentsDeleteInstance(urlString: String) async throws {
        return try await appStoreReviewAttachmentsDeleteInstanceWithRequestBuilder(urlString: urlString).execute().body
    }

    /**
     - DELETE /v1/appStoreReviewAttachments/{id}
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter id: (path) the id of the requested resource 
     - returns: RequestBuilder<Void> 
     */
    open class func appStoreReviewAttachmentsDeleteInstanceWithRequestBuilder(id: String) -> RequestBuilder<Void> {
        var localVariablePath = "/v1/appStoreReviewAttachments/{id}"
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
     - DELETE /v1/appStoreReviewAttachments/{id}
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter urlString: next or first url from App Store Connect API
     - returns: RequestBuilder<Void> 
     */
    open class func appStoreReviewAttachmentsDeleteInstanceWithRequestBuilder(urlString: String) -> RequestBuilder<Void> {
        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Void>.Type = ASCAPI.requestBuilderFactory.getNonDecodableBuilder()

        return localVariableRequestBuilder.init(method: "DELETE", URLString: urlString, parameters: nil, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     * enum for parameter fieldsAppStoreReviewAttachments
     */
    public enum FieldsAppStoreReviewAttachments_appStoreReviewAttachmentsGetInstance: String, CaseIterable {
        case filesize = "fileSize"
        case filename = "fileName"
        case sourcefilechecksum = "sourceFileChecksum"
        case uploadoperations = "uploadOperations"
        case assetdeliverystate = "assetDeliveryState"
        case appstorereviewdetail = "appStoreReviewDetail"
    }

    /**
     * enum for parameter include
     */
    public enum Include_appStoreReviewAttachmentsGetInstance: String, CaseIterable {
        case appstorereviewdetail = "appStoreReviewDetail"
    }

    /**

     - parameter id: (path) the id of the requested resource 
     - parameter fieldsAppStoreReviewAttachments: (query) the fields to include for returned resources of type appStoreReviewAttachments (optional)
     - parameter include: (query) comma-separated list of relationships to include (optional)
     - returns: AppStoreReviewAttachmentResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func appStoreReviewAttachmentsGetInstance(id: String, fieldsAppStoreReviewAttachments: [FieldsAppStoreReviewAttachments_appStoreReviewAttachmentsGetInstance]? = nil, include: [Include_appStoreReviewAttachmentsGetInstance]? = nil) async throws -> AppStoreReviewAttachmentResponse {
        return try await appStoreReviewAttachmentsGetInstanceWithRequestBuilder(id: id, fieldsAppStoreReviewAttachments: fieldsAppStoreReviewAttachments, include: include).execute().body
    }

    /**
     - parameter urlString: next or first url from App Store Connect API
     - returns: AppStoreReviewAttachmentResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func appStoreReviewAttachmentsGetInstance(urlString: String) async throws -> AppStoreReviewAttachmentResponse {
        return try await appStoreReviewAttachmentsGetInstanceWithRequestBuilder(urlString: urlString).execute().body
    }

    /**
     - GET /v1/appStoreReviewAttachments/{id}
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter id: (path) the id of the requested resource 
     - parameter fieldsAppStoreReviewAttachments: (query) the fields to include for returned resources of type appStoreReviewAttachments (optional)
     - parameter include: (query) comma-separated list of relationships to include (optional)
     - returns: RequestBuilder<AppStoreReviewAttachmentResponse> 
     */
    open class func appStoreReviewAttachmentsGetInstanceWithRequestBuilder(id: String, fieldsAppStoreReviewAttachments: [FieldsAppStoreReviewAttachments_appStoreReviewAttachmentsGetInstance]? = nil, include: [Include_appStoreReviewAttachmentsGetInstance]? = nil) -> RequestBuilder<AppStoreReviewAttachmentResponse> {
        var localVariablePath = "/v1/appStoreReviewAttachments/{id}"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = ASCAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "fields[appStoreReviewAttachments]": (wrappedValue: fieldsAppStoreReviewAttachments?.encodeToJSON(), isExplode: false),
            "include": (wrappedValue: include?.encodeToJSON(), isExplode: false),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AppStoreReviewAttachmentResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     - GET /v1/appStoreReviewAttachments/{id}
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter urlString: next or first url from App Store Connect API
     - returns: RequestBuilder<AppStoreReviewAttachmentResponse> 
     */
    open class func appStoreReviewAttachmentsGetInstanceWithRequestBuilder(urlString: String) -> RequestBuilder<AppStoreReviewAttachmentResponse> {
        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AppStoreReviewAttachmentResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: urlString, parameters: nil, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**

     - parameter id: (path) the id of the requested resource 
     - parameter appStoreReviewAttachmentUpdateRequest: (body) AppStoreReviewAttachment representation 
     - returns: AppStoreReviewAttachmentResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func appStoreReviewAttachmentsUpdateInstance(id: String, appStoreReviewAttachmentUpdateRequest: AppStoreReviewAttachmentUpdateRequest) async throws -> AppStoreReviewAttachmentResponse {
        return try await appStoreReviewAttachmentsUpdateInstanceWithRequestBuilder(id: id, appStoreReviewAttachmentUpdateRequest: appStoreReviewAttachmentUpdateRequest).execute().body
    }

    /**
     - parameter urlString: next or first url from App Store Connect API
     - returns: AppStoreReviewAttachmentResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func appStoreReviewAttachmentsUpdateInstance(urlString: String) async throws -> AppStoreReviewAttachmentResponse {
        return try await appStoreReviewAttachmentsUpdateInstanceWithRequestBuilder(urlString: urlString).execute().body
    }

    /**
     - PATCH /v1/appStoreReviewAttachments/{id}
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter id: (path) the id of the requested resource 
     - parameter appStoreReviewAttachmentUpdateRequest: (body) AppStoreReviewAttachment representation 
     - returns: RequestBuilder<AppStoreReviewAttachmentResponse> 
     */
    open class func appStoreReviewAttachmentsUpdateInstanceWithRequestBuilder(id: String, appStoreReviewAttachmentUpdateRequest: AppStoreReviewAttachmentUpdateRequest) -> RequestBuilder<AppStoreReviewAttachmentResponse> {
        var localVariablePath = "/v1/appStoreReviewAttachments/{id}"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = ASCAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: appStoreReviewAttachmentUpdateRequest)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            "Content-Type": "application/json",
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AppStoreReviewAttachmentResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PATCH", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     - PATCH /v1/appStoreReviewAttachments/{id}
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter urlString: next or first url from App Store Connect API
     - returns: RequestBuilder<AppStoreReviewAttachmentResponse> 
     */
    open class func appStoreReviewAttachmentsUpdateInstanceWithRequestBuilder(urlString: String) -> RequestBuilder<AppStoreReviewAttachmentResponse> {
        let localVariableNillableHeaders: [String: Any?] = [
            "Content-Type": "application/json",
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AppStoreReviewAttachmentResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PATCH", URLString: urlString, parameters: nil, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }
}
