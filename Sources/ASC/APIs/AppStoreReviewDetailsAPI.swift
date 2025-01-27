//
// AppStoreReviewDetailsAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

open class AppStoreReviewDetailsAPI {

    /**
     * enum for parameter fieldsAppStoreReviewAttachments
     */
    public enum FieldsAppStoreReviewAttachments_appStoreReviewDetailsAppStoreReviewAttachmentsGetToManyRelated: String, Sendable, CaseIterable {
        case filesize = "fileSize"
        case filename = "fileName"
        case sourcefilechecksum = "sourceFileChecksum"
        case uploadoperations = "uploadOperations"
        case assetdeliverystate = "assetDeliveryState"
        case appstorereviewdetail = "appStoreReviewDetail"
    }

    /**
     * enum for parameter fieldsAppStoreReviewDetails
     */
    public enum FieldsAppStoreReviewDetails_appStoreReviewDetailsAppStoreReviewAttachmentsGetToManyRelated: String, Sendable, CaseIterable {
        case contactfirstname = "contactFirstName"
        case contactlastname = "contactLastName"
        case contactphone = "contactPhone"
        case contactemail = "contactEmail"
        case demoaccountname = "demoAccountName"
        case demoaccountpassword = "demoAccountPassword"
        case demoaccountrequired = "demoAccountRequired"
        case notes = "notes"
        case appstoreversion = "appStoreVersion"
        case appstorereviewattachments = "appStoreReviewAttachments"
    }

    /**
     * enum for parameter include
     */
    public enum Include_appStoreReviewDetailsAppStoreReviewAttachmentsGetToManyRelated: String, Sendable, CaseIterable {
        case appstorereviewdetail = "appStoreReviewDetail"
    }

    /**

     - parameter id: (path) the id of the requested resource 
     - parameter fieldsAppStoreReviewAttachments: (query) the fields to include for returned resources of type appStoreReviewAttachments (optional)
     - parameter fieldsAppStoreReviewDetails: (query) the fields to include for returned resources of type appStoreReviewDetails (optional)
     - parameter limit: (query) maximum resources per page (optional)
     - parameter include: (query) comma-separated list of relationships to include (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: AppStoreReviewAttachmentsResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func appStoreReviewDetailsAppStoreReviewAttachmentsGetToManyRelated(id: String, fieldsAppStoreReviewAttachments: [FieldsAppStoreReviewAttachments_appStoreReviewDetailsAppStoreReviewAttachmentsGetToManyRelated]? = nil, fieldsAppStoreReviewDetails: [FieldsAppStoreReviewDetails_appStoreReviewDetailsAppStoreReviewAttachmentsGetToManyRelated]? = nil, limit: Int? = nil, include: [Include_appStoreReviewDetailsAppStoreReviewAttachmentsGetToManyRelated]? = nil, apiConfiguration: ASCAPIConfiguration = ASCAPIConfiguration.shared) async throws(ErrorResponse) -> AppStoreReviewAttachmentsResponse {
        return try await appStoreReviewDetailsAppStoreReviewAttachmentsGetToManyRelatedWithRequestBuilder(id: id, fieldsAppStoreReviewAttachments: fieldsAppStoreReviewAttachments, fieldsAppStoreReviewDetails: fieldsAppStoreReviewDetails, limit: limit, include: include, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     - parameter urlString: next or first url from App Store Connect API
     - parameter apiConfiguration: The configuration for the http request.
     - returns: AppStoreReviewAttachmentsResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func appStoreReviewDetailsAppStoreReviewAttachmentsGetToManyRelated(urlString: String, apiConfiguration: ASCAPIConfiguration = ASCAPIConfiguration.shared) async throws(ErrorResponse) -> AppStoreReviewAttachmentsResponse {
        return try await appStoreReviewDetailsAppStoreReviewAttachmentsGetToManyRelatedWithRequestBuilder(urlString: urlString, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     - GET /v1/appStoreReviewDetails/{id}/appStoreReviewAttachments
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter id: (path) the id of the requested resource 
     - parameter fieldsAppStoreReviewAttachments: (query) the fields to include for returned resources of type appStoreReviewAttachments (optional)
     - parameter fieldsAppStoreReviewDetails: (query) the fields to include for returned resources of type appStoreReviewDetails (optional)
     - parameter limit: (query) maximum resources per page (optional)
     - parameter include: (query) comma-separated list of relationships to include (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<AppStoreReviewAttachmentsResponse> 
     */
    open class func appStoreReviewDetailsAppStoreReviewAttachmentsGetToManyRelatedWithRequestBuilder(id: String, fieldsAppStoreReviewAttachments: [FieldsAppStoreReviewAttachments_appStoreReviewDetailsAppStoreReviewAttachmentsGetToManyRelated]? = nil, fieldsAppStoreReviewDetails: [FieldsAppStoreReviewDetails_appStoreReviewDetailsAppStoreReviewAttachmentsGetToManyRelated]? = nil, limit: Int? = nil, include: [Include_appStoreReviewDetailsAppStoreReviewAttachmentsGetToManyRelated]? = nil, apiConfiguration: ASCAPIConfiguration = ASCAPIConfiguration.shared) -> RequestBuilder<AppStoreReviewAttachmentsResponse> {
        var localVariablePath = "/v1/appStoreReviewDetails/{id}/appStoreReviewAttachments"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "fields[appStoreReviewAttachments]": (wrappedValue: fieldsAppStoreReviewAttachments?.encodeToJSON(codableHelper: apiConfiguration.codableHelper), isExplode: false),
            "fields[appStoreReviewDetails]": (wrappedValue: fieldsAppStoreReviewDetails?.encodeToJSON(codableHelper: apiConfiguration.codableHelper), isExplode: false),
            "limit": (wrappedValue: limit?.encodeToJSON(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "include": (wrappedValue: include?.encodeToJSON(codableHelper: apiConfiguration.codableHelper), isExplode: false),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AppStoreReviewAttachmentsResponse>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     - GET /v1/appStoreReviewDetails/{id}/appStoreReviewAttachments
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter urlString: next or first url from App Store Connect API
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<AppStoreReviewAttachmentsResponse> 
     */
    open class func appStoreReviewDetailsAppStoreReviewAttachmentsGetToManyRelatedWithRequestBuilder(urlString: String, apiConfiguration: ASCAPIConfiguration = ASCAPIConfiguration.shared) -> RequestBuilder<AppStoreReviewAttachmentsResponse> {
        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AppStoreReviewAttachmentsResponse>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: urlString, parameters: nil, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**

     - parameter appStoreReviewDetailCreateRequest: (body) AppStoreReviewDetail representation 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: AppStoreReviewDetailResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func appStoreReviewDetailsCreateInstance(appStoreReviewDetailCreateRequest: AppStoreReviewDetailCreateRequest, apiConfiguration: ASCAPIConfiguration = ASCAPIConfiguration.shared) async throws(ErrorResponse) -> AppStoreReviewDetailResponse {
        return try await appStoreReviewDetailsCreateInstanceWithRequestBuilder(appStoreReviewDetailCreateRequest: appStoreReviewDetailCreateRequest, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     - parameter urlString: next or first url from App Store Connect API
     - parameter apiConfiguration: The configuration for the http request.
     - returns: AppStoreReviewDetailResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func appStoreReviewDetailsCreateInstance(urlString: String, apiConfiguration: ASCAPIConfiguration = ASCAPIConfiguration.shared) async throws(ErrorResponse) -> AppStoreReviewDetailResponse {
        return try await appStoreReviewDetailsCreateInstanceWithRequestBuilder(urlString: urlString, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     - POST /v1/appStoreReviewDetails
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter appStoreReviewDetailCreateRequest: (body) AppStoreReviewDetail representation 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<AppStoreReviewDetailResponse> 
     */
    open class func appStoreReviewDetailsCreateInstanceWithRequestBuilder(appStoreReviewDetailCreateRequest: AppStoreReviewDetailCreateRequest, apiConfiguration: ASCAPIConfiguration = ASCAPIConfiguration.shared) -> RequestBuilder<AppStoreReviewDetailResponse> {
        let localVariablePath = "/v1/appStoreReviewDetails"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: appStoreReviewDetailCreateRequest, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            "Content-Type": "application/json",
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AppStoreReviewDetailResponse>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     - POST /v1/appStoreReviewDetails
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter urlString: next or first url from App Store Connect API
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<AppStoreReviewDetailResponse> 
     */
    open class func appStoreReviewDetailsCreateInstanceWithRequestBuilder(urlString: String, apiConfiguration: ASCAPIConfiguration = ASCAPIConfiguration.shared) -> RequestBuilder<AppStoreReviewDetailResponse> {
        let localVariableNillableHeaders: [String: Any?] = [
            "Content-Type": "application/json",
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AppStoreReviewDetailResponse>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: urlString, parameters: nil, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     * enum for parameter fieldsAppStoreReviewDetails
     */
    public enum FieldsAppStoreReviewDetails_appStoreReviewDetailsGetInstance: String, Sendable, CaseIterable {
        case contactfirstname = "contactFirstName"
        case contactlastname = "contactLastName"
        case contactphone = "contactPhone"
        case contactemail = "contactEmail"
        case demoaccountname = "demoAccountName"
        case demoaccountpassword = "demoAccountPassword"
        case demoaccountrequired = "demoAccountRequired"
        case notes = "notes"
        case appstoreversion = "appStoreVersion"
        case appstorereviewattachments = "appStoreReviewAttachments"
    }

    /**
     * enum for parameter fieldsAppStoreReviewAttachments
     */
    public enum FieldsAppStoreReviewAttachments_appStoreReviewDetailsGetInstance: String, Sendable, CaseIterable {
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
    public enum Include_appStoreReviewDetailsGetInstance: String, Sendable, CaseIterable {
        case appstoreversion = "appStoreVersion"
        case appstorereviewattachments = "appStoreReviewAttachments"
    }

    /**

     - parameter id: (path) the id of the requested resource 
     - parameter fieldsAppStoreReviewDetails: (query) the fields to include for returned resources of type appStoreReviewDetails (optional)
     - parameter fieldsAppStoreReviewAttachments: (query) the fields to include for returned resources of type appStoreReviewAttachments (optional)
     - parameter include: (query) comma-separated list of relationships to include (optional)
     - parameter limitAppStoreReviewAttachments: (query) maximum number of related appStoreReviewAttachments returned (when they are included) (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: AppStoreReviewDetailResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func appStoreReviewDetailsGetInstance(id: String, fieldsAppStoreReviewDetails: [FieldsAppStoreReviewDetails_appStoreReviewDetailsGetInstance]? = nil, fieldsAppStoreReviewAttachments: [FieldsAppStoreReviewAttachments_appStoreReviewDetailsGetInstance]? = nil, include: [Include_appStoreReviewDetailsGetInstance]? = nil, limitAppStoreReviewAttachments: Int? = nil, apiConfiguration: ASCAPIConfiguration = ASCAPIConfiguration.shared) async throws(ErrorResponse) -> AppStoreReviewDetailResponse {
        return try await appStoreReviewDetailsGetInstanceWithRequestBuilder(id: id, fieldsAppStoreReviewDetails: fieldsAppStoreReviewDetails, fieldsAppStoreReviewAttachments: fieldsAppStoreReviewAttachments, include: include, limitAppStoreReviewAttachments: limitAppStoreReviewAttachments, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     - parameter urlString: next or first url from App Store Connect API
     - parameter apiConfiguration: The configuration for the http request.
     - returns: AppStoreReviewDetailResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func appStoreReviewDetailsGetInstance(urlString: String, apiConfiguration: ASCAPIConfiguration = ASCAPIConfiguration.shared) async throws(ErrorResponse) -> AppStoreReviewDetailResponse {
        return try await appStoreReviewDetailsGetInstanceWithRequestBuilder(urlString: urlString, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     - GET /v1/appStoreReviewDetails/{id}
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter id: (path) the id of the requested resource 
     - parameter fieldsAppStoreReviewDetails: (query) the fields to include for returned resources of type appStoreReviewDetails (optional)
     - parameter fieldsAppStoreReviewAttachments: (query) the fields to include for returned resources of type appStoreReviewAttachments (optional)
     - parameter include: (query) comma-separated list of relationships to include (optional)
     - parameter limitAppStoreReviewAttachments: (query) maximum number of related appStoreReviewAttachments returned (when they are included) (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<AppStoreReviewDetailResponse> 
     */
    open class func appStoreReviewDetailsGetInstanceWithRequestBuilder(id: String, fieldsAppStoreReviewDetails: [FieldsAppStoreReviewDetails_appStoreReviewDetailsGetInstance]? = nil, fieldsAppStoreReviewAttachments: [FieldsAppStoreReviewAttachments_appStoreReviewDetailsGetInstance]? = nil, include: [Include_appStoreReviewDetailsGetInstance]? = nil, limitAppStoreReviewAttachments: Int? = nil, apiConfiguration: ASCAPIConfiguration = ASCAPIConfiguration.shared) -> RequestBuilder<AppStoreReviewDetailResponse> {
        var localVariablePath = "/v1/appStoreReviewDetails/{id}"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "fields[appStoreReviewDetails]": (wrappedValue: fieldsAppStoreReviewDetails?.encodeToJSON(codableHelper: apiConfiguration.codableHelper), isExplode: false),
            "fields[appStoreReviewAttachments]": (wrappedValue: fieldsAppStoreReviewAttachments?.encodeToJSON(codableHelper: apiConfiguration.codableHelper), isExplode: false),
            "include": (wrappedValue: include?.encodeToJSON(codableHelper: apiConfiguration.codableHelper), isExplode: false),
            "limit[appStoreReviewAttachments]": (wrappedValue: limitAppStoreReviewAttachments?.encodeToJSON(codableHelper: apiConfiguration.codableHelper), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AppStoreReviewDetailResponse>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     - GET /v1/appStoreReviewDetails/{id}
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter urlString: next or first url from App Store Connect API
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<AppStoreReviewDetailResponse> 
     */
    open class func appStoreReviewDetailsGetInstanceWithRequestBuilder(urlString: String, apiConfiguration: ASCAPIConfiguration = ASCAPIConfiguration.shared) -> RequestBuilder<AppStoreReviewDetailResponse> {
        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AppStoreReviewDetailResponse>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: urlString, parameters: nil, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**

     - parameter id: (path) the id of the requested resource 
     - parameter appStoreReviewDetailUpdateRequest: (body) AppStoreReviewDetail representation 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: AppStoreReviewDetailResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func appStoreReviewDetailsUpdateInstance(id: String, appStoreReviewDetailUpdateRequest: AppStoreReviewDetailUpdateRequest, apiConfiguration: ASCAPIConfiguration = ASCAPIConfiguration.shared) async throws(ErrorResponse) -> AppStoreReviewDetailResponse {
        return try await appStoreReviewDetailsUpdateInstanceWithRequestBuilder(id: id, appStoreReviewDetailUpdateRequest: appStoreReviewDetailUpdateRequest, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     - parameter urlString: next or first url from App Store Connect API
     - parameter apiConfiguration: The configuration for the http request.
     - returns: AppStoreReviewDetailResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func appStoreReviewDetailsUpdateInstance(urlString: String, apiConfiguration: ASCAPIConfiguration = ASCAPIConfiguration.shared) async throws(ErrorResponse) -> AppStoreReviewDetailResponse {
        return try await appStoreReviewDetailsUpdateInstanceWithRequestBuilder(urlString: urlString, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     - PATCH /v1/appStoreReviewDetails/{id}
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter id: (path) the id of the requested resource 
     - parameter appStoreReviewDetailUpdateRequest: (body) AppStoreReviewDetail representation 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<AppStoreReviewDetailResponse> 
     */
    open class func appStoreReviewDetailsUpdateInstanceWithRequestBuilder(id: String, appStoreReviewDetailUpdateRequest: AppStoreReviewDetailUpdateRequest, apiConfiguration: ASCAPIConfiguration = ASCAPIConfiguration.shared) -> RequestBuilder<AppStoreReviewDetailResponse> {
        var localVariablePath = "/v1/appStoreReviewDetails/{id}"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: appStoreReviewDetailUpdateRequest, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            "Content-Type": "application/json",
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AppStoreReviewDetailResponse>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PATCH", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     - PATCH /v1/appStoreReviewDetails/{id}
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter urlString: next or first url from App Store Connect API
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<AppStoreReviewDetailResponse> 
     */
    open class func appStoreReviewDetailsUpdateInstanceWithRequestBuilder(urlString: String, apiConfiguration: ASCAPIConfiguration = ASCAPIConfiguration.shared) -> RequestBuilder<AppStoreReviewDetailResponse> {
        let localVariableNillableHeaders: [String: Any?] = [
            "Content-Type": "application/json",
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AppStoreReviewDetailResponse>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PATCH", URLString: urlString, parameters: nil, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }
}
