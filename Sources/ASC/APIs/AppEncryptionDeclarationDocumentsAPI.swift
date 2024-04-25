//
// AppEncryptionDeclarationDocumentsAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

open class AppEncryptionDeclarationDocumentsAPI {

    /**

     - parameter appEncryptionDeclarationDocumentCreateRequest: (body) AppEncryptionDeclarationDocument representation 
     - returns: AppEncryptionDeclarationDocumentResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func appEncryptionDeclarationDocumentsCreateInstance(appEncryptionDeclarationDocumentCreateRequest: AppEncryptionDeclarationDocumentCreateRequest) async throws -> AppEncryptionDeclarationDocumentResponse {
        return try await appEncryptionDeclarationDocumentsCreateInstanceWithRequestBuilder(appEncryptionDeclarationDocumentCreateRequest: appEncryptionDeclarationDocumentCreateRequest).execute().body
    }

    /**
     - parameter urlString: next or first url from App Store Connect API
     - returns: AppEncryptionDeclarationDocumentResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func appEncryptionDeclarationDocumentsCreateInstance(urlString: String) async throws -> AppEncryptionDeclarationDocumentResponse {
        return try await appEncryptionDeclarationDocumentsCreateInstanceWithRequestBuilder(urlString: urlString).execute().body
    }

    /**
     - POST /v1/appEncryptionDeclarationDocuments
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter appEncryptionDeclarationDocumentCreateRequest: (body) AppEncryptionDeclarationDocument representation 
     - returns: RequestBuilder<AppEncryptionDeclarationDocumentResponse> 
     */
    open class func appEncryptionDeclarationDocumentsCreateInstanceWithRequestBuilder(appEncryptionDeclarationDocumentCreateRequest: AppEncryptionDeclarationDocumentCreateRequest) -> RequestBuilder<AppEncryptionDeclarationDocumentResponse> {
        let localVariablePath = "/v1/appEncryptionDeclarationDocuments"
        let localVariableURLString = ASCAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: appEncryptionDeclarationDocumentCreateRequest)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            "Content-Type": "application/json",
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AppEncryptionDeclarationDocumentResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     - POST /v1/appEncryptionDeclarationDocuments
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter urlString: next or first url from App Store Connect API
     - returns: RequestBuilder<AppEncryptionDeclarationDocumentResponse> 
     */
    open class func appEncryptionDeclarationDocumentsCreateInstanceWithRequestBuilder(urlString: String) -> RequestBuilder<AppEncryptionDeclarationDocumentResponse> {
        let localVariableRequestBuilder: RequestBuilder<AppEncryptionDeclarationDocumentResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()
        return localVariableRequestBuilder.init(method: "POST", URLString: urlString, parameters: [:], headers: nil, requiresAuthentication: true)
    }

    /**
     * enum for parameter fieldsAppEncryptionDeclarationDocuments
     */
    public enum FieldsAppEncryptionDeclarationDocuments_appEncryptionDeclarationDocumentsGetInstance: String, CaseIterable {
        case appencryptiondeclaration = "appEncryptionDeclaration"
        case assetdeliverystate = "assetDeliveryState"
        case assettoken = "assetToken"
        case downloadurl = "downloadUrl"
        case filename = "fileName"
        case filesize = "fileSize"
        case sourcefilechecksum = "sourceFileChecksum"
        case uploadoperations = "uploadOperations"
        case uploaded = "uploaded"
    }

    /**

     - parameter id: (path) the id of the requested resource 
     - parameter fieldsAppEncryptionDeclarationDocuments: (query) the fields to include for returned resources of type appEncryptionDeclarationDocuments (optional)
     - returns: AppEncryptionDeclarationDocumentResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func appEncryptionDeclarationDocumentsGetInstance(id: String, fieldsAppEncryptionDeclarationDocuments: [FieldsAppEncryptionDeclarationDocuments_appEncryptionDeclarationDocumentsGetInstance]? = nil) async throws -> AppEncryptionDeclarationDocumentResponse {
        return try await appEncryptionDeclarationDocumentsGetInstanceWithRequestBuilder(id: id, fieldsAppEncryptionDeclarationDocuments: fieldsAppEncryptionDeclarationDocuments).execute().body
    }

    /**
     - parameter urlString: next or first url from App Store Connect API
     - returns: AppEncryptionDeclarationDocumentResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func appEncryptionDeclarationDocumentsGetInstance(urlString: String) async throws -> AppEncryptionDeclarationDocumentResponse {
        return try await appEncryptionDeclarationDocumentsGetInstanceWithRequestBuilder(urlString: urlString).execute().body
    }

    /**
     - GET /v1/appEncryptionDeclarationDocuments/{id}
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter id: (path) the id of the requested resource 
     - parameter fieldsAppEncryptionDeclarationDocuments: (query) the fields to include for returned resources of type appEncryptionDeclarationDocuments (optional)
     - returns: RequestBuilder<AppEncryptionDeclarationDocumentResponse> 
     */
    open class func appEncryptionDeclarationDocumentsGetInstanceWithRequestBuilder(id: String, fieldsAppEncryptionDeclarationDocuments: [FieldsAppEncryptionDeclarationDocuments_appEncryptionDeclarationDocumentsGetInstance]? = nil) -> RequestBuilder<AppEncryptionDeclarationDocumentResponse> {
        var localVariablePath = "/v1/appEncryptionDeclarationDocuments/{id}"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = ASCAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "fields[appEncryptionDeclarationDocuments]": (wrappedValue: fieldsAppEncryptionDeclarationDocuments?.encodeToJSON(), isExplode: false),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AppEncryptionDeclarationDocumentResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     - GET /v1/appEncryptionDeclarationDocuments/{id}
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter urlString: next or first url from App Store Connect API
     - returns: RequestBuilder<AppEncryptionDeclarationDocumentResponse> 
     */
    open class func appEncryptionDeclarationDocumentsGetInstanceWithRequestBuilder(urlString: String) -> RequestBuilder<AppEncryptionDeclarationDocumentResponse> {
        let localVariableRequestBuilder: RequestBuilder<AppEncryptionDeclarationDocumentResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()
        return localVariableRequestBuilder.init(method: "GET", URLString: urlString, parameters: [:], headers: nil, requiresAuthentication: true)
    }

    /**

     - parameter id: (path) the id of the requested resource 
     - parameter appEncryptionDeclarationDocumentUpdateRequest: (body) AppEncryptionDeclarationDocument representation 
     - returns: AppEncryptionDeclarationDocumentResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func appEncryptionDeclarationDocumentsUpdateInstance(id: String, appEncryptionDeclarationDocumentUpdateRequest: AppEncryptionDeclarationDocumentUpdateRequest) async throws -> AppEncryptionDeclarationDocumentResponse {
        return try await appEncryptionDeclarationDocumentsUpdateInstanceWithRequestBuilder(id: id, appEncryptionDeclarationDocumentUpdateRequest: appEncryptionDeclarationDocumentUpdateRequest).execute().body
    }

    /**
     - parameter urlString: next or first url from App Store Connect API
     - returns: AppEncryptionDeclarationDocumentResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func appEncryptionDeclarationDocumentsUpdateInstance(urlString: String) async throws -> AppEncryptionDeclarationDocumentResponse {
        return try await appEncryptionDeclarationDocumentsUpdateInstanceWithRequestBuilder(urlString: urlString).execute().body
    }

    /**
     - PATCH /v1/appEncryptionDeclarationDocuments/{id}
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter id: (path) the id of the requested resource 
     - parameter appEncryptionDeclarationDocumentUpdateRequest: (body) AppEncryptionDeclarationDocument representation 
     - returns: RequestBuilder<AppEncryptionDeclarationDocumentResponse> 
     */
    open class func appEncryptionDeclarationDocumentsUpdateInstanceWithRequestBuilder(id: String, appEncryptionDeclarationDocumentUpdateRequest: AppEncryptionDeclarationDocumentUpdateRequest) -> RequestBuilder<AppEncryptionDeclarationDocumentResponse> {
        var localVariablePath = "/v1/appEncryptionDeclarationDocuments/{id}"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = ASCAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: appEncryptionDeclarationDocumentUpdateRequest)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            "Content-Type": "application/json",
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AppEncryptionDeclarationDocumentResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PATCH", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     - PATCH /v1/appEncryptionDeclarationDocuments/{id}
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter urlString: next or first url from App Store Connect API
     - returns: RequestBuilder<AppEncryptionDeclarationDocumentResponse> 
     */
    open class func appEncryptionDeclarationDocumentsUpdateInstanceWithRequestBuilder(urlString: String) -> RequestBuilder<AppEncryptionDeclarationDocumentResponse> {
        let localVariableRequestBuilder: RequestBuilder<AppEncryptionDeclarationDocumentResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()
        return localVariableRequestBuilder.init(method: "PATCH", URLString: urlString, parameters: [:], headers: nil, requiresAuthentication: true)
    }
}
