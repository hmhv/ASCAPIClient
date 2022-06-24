//
// AppCustomProductPageVersionsAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

open class AppCustomProductPageVersionsAPI {

    /**
     * enum for parameter fieldsAppScreenshotSets
     */
    public enum FieldsAppScreenshotSets_appCustomProductPageVersionsAppCustomProductPageLocalizationsGetToManyRelated: String, CaseIterable, JSONEncodable {
        case appcustomproductpagelocalization = "appCustomProductPageLocalization"
        case appscreenshots = "appScreenshots"
        case appstoreversionexperimenttreatmentlocalization = "appStoreVersionExperimentTreatmentLocalization"
        case appstoreversionlocalization = "appStoreVersionLocalization"
        case screenshotdisplaytype = "screenshotDisplayType"
    }

    /**
     * enum for parameter fieldsAppCustomProductPageLocalizations
     */
    public enum FieldsAppCustomProductPageLocalizations_appCustomProductPageVersionsAppCustomProductPageLocalizationsGetToManyRelated: String, CaseIterable, JSONEncodable {
        case appcustomproductpageversion = "appCustomProductPageVersion"
        case apppreviewsets = "appPreviewSets"
        case appscreenshotsets = "appScreenshotSets"
        case locale = "locale"
        case promotionaltext = "promotionalText"
    }

    /**
     * enum for parameter fieldsAppCustomProductPageVersions
     */
    public enum FieldsAppCustomProductPageVersions_appCustomProductPageVersionsAppCustomProductPageLocalizationsGetToManyRelated: String, CaseIterable, JSONEncodable {
        case appcustomproductpage = "appCustomProductPage"
        case appcustomproductpagelocalizations = "appCustomProductPageLocalizations"
        case state = "state"
        case version = "version"
    }

    /**
     * enum for parameter fieldsAppPreviewSets
     */
    public enum FieldsAppPreviewSets_appCustomProductPageVersionsAppCustomProductPageLocalizationsGetToManyRelated: String, CaseIterable, JSONEncodable {
        case appcustomproductpagelocalization = "appCustomProductPageLocalization"
        case apppreviews = "appPreviews"
        case appstoreversionexperimenttreatmentlocalization = "appStoreVersionExperimentTreatmentLocalization"
        case appstoreversionlocalization = "appStoreVersionLocalization"
        case previewtype = "previewType"
    }

    /**
     * enum for parameter include
     */
    public enum Include_appCustomProductPageVersionsAppCustomProductPageLocalizationsGetToManyRelated: String, CaseIterable, JSONEncodable {
        case appcustomproductpageversion = "appCustomProductPageVersion"
        case apppreviewsets = "appPreviewSets"
        case appscreenshotsets = "appScreenshotSets"
    }

    /**

     - parameter id: (path) the id of the requested resource 
     - parameter filterLocale: (query) filter by attribute &#39;locale&#39; (optional)
     - parameter fieldsAppScreenshotSets: (query) the fields to include for returned resources of type appScreenshotSets (optional)
     - parameter fieldsAppCustomProductPageLocalizations: (query) the fields to include for returned resources of type appCustomProductPageLocalizations (optional)
     - parameter fieldsAppCustomProductPageVersions: (query) the fields to include for returned resources of type appCustomProductPageVersions (optional)
     - parameter fieldsAppPreviewSets: (query) the fields to include for returned resources of type appPreviewSets (optional)
     - parameter limit: (query) maximum resources per page (optional)
     - parameter limitAppScreenshotSets: (query) maximum number of related appScreenshotSets returned (when they are included) (optional)
     - parameter limitAppPreviewSets: (query) maximum number of related appPreviewSets returned (when they are included) (optional)
     - parameter include: (query) comma-separated list of relationships to include (optional)
     - returns: AppCustomProductPageLocalizationsResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func appCustomProductPageVersionsAppCustomProductPageLocalizationsGetToManyRelated(id: String, filterLocale: [String]? = nil, fieldsAppScreenshotSets: [FieldsAppScreenshotSets_appCustomProductPageVersionsAppCustomProductPageLocalizationsGetToManyRelated]? = nil, fieldsAppCustomProductPageLocalizations: [FieldsAppCustomProductPageLocalizations_appCustomProductPageVersionsAppCustomProductPageLocalizationsGetToManyRelated]? = nil, fieldsAppCustomProductPageVersions: [FieldsAppCustomProductPageVersions_appCustomProductPageVersionsAppCustomProductPageLocalizationsGetToManyRelated]? = nil, fieldsAppPreviewSets: [FieldsAppPreviewSets_appCustomProductPageVersionsAppCustomProductPageLocalizationsGetToManyRelated]? = nil, limit: Int? = nil, limitAppScreenshotSets: Int? = nil, limitAppPreviewSets: Int? = nil, include: [Include_appCustomProductPageVersionsAppCustomProductPageLocalizationsGetToManyRelated]? = nil) async throws -> AppCustomProductPageLocalizationsResponse {
        var requestTask: RequestTask?
        return try await withTaskCancellationHandler {
            try Task.checkCancellation()
            return try await withCheckedThrowingContinuation { continuation in
                guard !Task.isCancelled else {
                  continuation.resume(throwing: CancellationError())
                  return
                }

                requestTask = appCustomProductPageVersionsAppCustomProductPageLocalizationsGetToManyRelatedWithRequestBuilder(id: id, filterLocale: filterLocale, fieldsAppScreenshotSets: fieldsAppScreenshotSets, fieldsAppCustomProductPageLocalizations: fieldsAppCustomProductPageLocalizations, fieldsAppCustomProductPageVersions: fieldsAppCustomProductPageVersions, fieldsAppPreviewSets: fieldsAppPreviewSets, limit: limit, limitAppScreenshotSets: limitAppScreenshotSets, limitAppPreviewSets: limitAppPreviewSets, include: include).execute { result in
                    switch result {
                    case let .success(response):
                        continuation.resume(returning: response.body)
                    case let .failure(error):
                        continuation.resume(throwing: error)
                    }
                }
            }
        } onCancel: { [requestTask] in
            requestTask?.cancel()
        }
    }

    /**
     - parameter urlString: next or first url from App Store Connect API
     - returns: AppCustomProductPageLocalizationsResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func appCustomProductPageVersionsAppCustomProductPageLocalizationsGetToManyRelated(urlString: String) async throws -> AppCustomProductPageLocalizationsResponse {
        var requestTask: RequestTask?
        return try await withTaskCancellationHandler {
            try Task.checkCancellation()
            return try await withCheckedThrowingContinuation { continuation in
                guard !Task.isCancelled else {
                  continuation.resume(throwing: CancellationError())
                  return
                }

                requestTask = appCustomProductPageVersionsAppCustomProductPageLocalizationsGetToManyRelatedWithRequestBuilder(urlString: urlString).execute { result in
                    switch result {
                    case let .success(response):
                        continuation.resume(returning: response.body)
                    case let .failure(error):
                        continuation.resume(throwing: error)
                    }
                }
            }
        } onCancel: { [requestTask] in
            requestTask?.cancel()
        }
    }

    /**
     - GET /v1/appCustomProductPageVersions/{id}/appCustomProductPageLocalizations
     - BASIC:
       - type: http
       - name: itc-bearer-token
     - parameter id: (path) the id of the requested resource 
     - parameter filterLocale: (query) filter by attribute &#39;locale&#39; (optional)
     - parameter fieldsAppScreenshotSets: (query) the fields to include for returned resources of type appScreenshotSets (optional)
     - parameter fieldsAppCustomProductPageLocalizations: (query) the fields to include for returned resources of type appCustomProductPageLocalizations (optional)
     - parameter fieldsAppCustomProductPageVersions: (query) the fields to include for returned resources of type appCustomProductPageVersions (optional)
     - parameter fieldsAppPreviewSets: (query) the fields to include for returned resources of type appPreviewSets (optional)
     - parameter limit: (query) maximum resources per page (optional)
     - parameter limitAppScreenshotSets: (query) maximum number of related appScreenshotSets returned (when they are included) (optional)
     - parameter limitAppPreviewSets: (query) maximum number of related appPreviewSets returned (when they are included) (optional)
     - parameter include: (query) comma-separated list of relationships to include (optional)
     - returns: RequestBuilder<AppCustomProductPageLocalizationsResponse> 
     */
    open class func appCustomProductPageVersionsAppCustomProductPageLocalizationsGetToManyRelatedWithRequestBuilder(id: String, filterLocale: [String]? = nil, fieldsAppScreenshotSets: [FieldsAppScreenshotSets_appCustomProductPageVersionsAppCustomProductPageLocalizationsGetToManyRelated]? = nil, fieldsAppCustomProductPageLocalizations: [FieldsAppCustomProductPageLocalizations_appCustomProductPageVersionsAppCustomProductPageLocalizationsGetToManyRelated]? = nil, fieldsAppCustomProductPageVersions: [FieldsAppCustomProductPageVersions_appCustomProductPageVersionsAppCustomProductPageLocalizationsGetToManyRelated]? = nil, fieldsAppPreviewSets: [FieldsAppPreviewSets_appCustomProductPageVersionsAppCustomProductPageLocalizationsGetToManyRelated]? = nil, limit: Int? = nil, limitAppScreenshotSets: Int? = nil, limitAppPreviewSets: Int? = nil, include: [Include_appCustomProductPageVersionsAppCustomProductPageLocalizationsGetToManyRelated]? = nil) -> RequestBuilder<AppCustomProductPageLocalizationsResponse> {
        var localVariablePath = "/v1/appCustomProductPageVersions/{id}/appCustomProductPageLocalizations"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = ASCAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "filter[locale]": filterLocale?.encodeToJSON(),
            "fields[appScreenshotSets]": fieldsAppScreenshotSets?.encodeToJSON(),
            "fields[appCustomProductPageLocalizations]": fieldsAppCustomProductPageLocalizations?.encodeToJSON(),
            "fields[appCustomProductPageVersions]": fieldsAppCustomProductPageVersions?.encodeToJSON(),
            "fields[appPreviewSets]": fieldsAppPreviewSets?.encodeToJSON(),
            "limit": limit?.encodeToJSON(),
            "limit[appScreenshotSets]": limitAppScreenshotSets?.encodeToJSON(),
            "limit[appPreviewSets]": limitAppPreviewSets?.encodeToJSON(),
            "include": include?.encodeToJSON(),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AppCustomProductPageLocalizationsResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     - GET /v1/appCustomProductPageVersions/{id}/appCustomProductPageLocalizations
     - BASIC:
       - type: http
       - name: itc-bearer-token
     - parameter urlString: next or first url from App Store Connect API
     - returns: RequestBuilder<AppCustomProductPageLocalizationsResponse> 
     */
    open class func appCustomProductPageVersionsAppCustomProductPageLocalizationsGetToManyRelatedWithRequestBuilder(urlString: String) -> RequestBuilder<AppCustomProductPageLocalizationsResponse> {
        let localVariableRequestBuilder: RequestBuilder<AppCustomProductPageLocalizationsResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()
        return localVariableRequestBuilder.init(method: "GET", URLString: urlString, parameters: nil)
    }

    /**

     - parameter appCustomProductPageVersionCreateRequest: (body) AppCustomProductPageVersion representation 
     - returns: AppCustomProductPageVersionResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func appCustomProductPageVersionsCreateInstance(appCustomProductPageVersionCreateRequest: AppCustomProductPageVersionCreateRequest) async throws -> AppCustomProductPageVersionResponse {
        var requestTask: RequestTask?
        return try await withTaskCancellationHandler {
            try Task.checkCancellation()
            return try await withCheckedThrowingContinuation { continuation in
                guard !Task.isCancelled else {
                  continuation.resume(throwing: CancellationError())
                  return
                }

                requestTask = appCustomProductPageVersionsCreateInstanceWithRequestBuilder(appCustomProductPageVersionCreateRequest: appCustomProductPageVersionCreateRequest).execute { result in
                    switch result {
                    case let .success(response):
                        continuation.resume(returning: response.body)
                    case let .failure(error):
                        continuation.resume(throwing: error)
                    }
                }
            }
        } onCancel: { [requestTask] in
            requestTask?.cancel()
        }
    }

    /**
     - parameter urlString: next or first url from App Store Connect API
     - returns: AppCustomProductPageVersionResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func appCustomProductPageVersionsCreateInstance(urlString: String) async throws -> AppCustomProductPageVersionResponse {
        var requestTask: RequestTask?
        return try await withTaskCancellationHandler {
            try Task.checkCancellation()
            return try await withCheckedThrowingContinuation { continuation in
                guard !Task.isCancelled else {
                  continuation.resume(throwing: CancellationError())
                  return
                }

                requestTask = appCustomProductPageVersionsCreateInstanceWithRequestBuilder(urlString: urlString).execute { result in
                    switch result {
                    case let .success(response):
                        continuation.resume(returning: response.body)
                    case let .failure(error):
                        continuation.resume(throwing: error)
                    }
                }
            }
        } onCancel: { [requestTask] in
            requestTask?.cancel()
        }
    }

    /**
     - POST /v1/appCustomProductPageVersions
     - BASIC:
       - type: http
       - name: itc-bearer-token
     - parameter appCustomProductPageVersionCreateRequest: (body) AppCustomProductPageVersion representation 
     - returns: RequestBuilder<AppCustomProductPageVersionResponse> 
     */
    open class func appCustomProductPageVersionsCreateInstanceWithRequestBuilder(appCustomProductPageVersionCreateRequest: AppCustomProductPageVersionCreateRequest) -> RequestBuilder<AppCustomProductPageVersionResponse> {
        let localVariablePath = "/v1/appCustomProductPageVersions"
        let localVariableURLString = ASCAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: appCustomProductPageVersionCreateRequest)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AppCustomProductPageVersionResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     - POST /v1/appCustomProductPageVersions
     - BASIC:
       - type: http
       - name: itc-bearer-token
     - parameter urlString: next or first url from App Store Connect API
     - returns: RequestBuilder<AppCustomProductPageVersionResponse> 
     */
    open class func appCustomProductPageVersionsCreateInstanceWithRequestBuilder(urlString: String) -> RequestBuilder<AppCustomProductPageVersionResponse> {
        let localVariableRequestBuilder: RequestBuilder<AppCustomProductPageVersionResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()
        return localVariableRequestBuilder.init(method: "POST", URLString: urlString, parameters: nil)
    }

    /**
     * enum for parameter fieldsAppCustomProductPageVersions
     */
    public enum FieldsAppCustomProductPageVersions_appCustomProductPageVersionsGetInstance: String, CaseIterable, JSONEncodable {
        case appcustomproductpage = "appCustomProductPage"
        case appcustomproductpagelocalizations = "appCustomProductPageLocalizations"
        case state = "state"
        case version = "version"
    }

    /**
     * enum for parameter include
     */
    public enum Include_appCustomProductPageVersionsGetInstance: String, CaseIterable, JSONEncodable {
        case appcustomproductpage = "appCustomProductPage"
        case appcustomproductpagelocalizations = "appCustomProductPageLocalizations"
    }

    /**
     * enum for parameter fieldsAppCustomProductPageLocalizations
     */
    public enum FieldsAppCustomProductPageLocalizations_appCustomProductPageVersionsGetInstance: String, CaseIterable, JSONEncodable {
        case appcustomproductpageversion = "appCustomProductPageVersion"
        case apppreviewsets = "appPreviewSets"
        case appscreenshotsets = "appScreenshotSets"
        case locale = "locale"
        case promotionaltext = "promotionalText"
    }

    /**

     - parameter id: (path) the id of the requested resource 
     - parameter fieldsAppCustomProductPageVersions: (query) the fields to include for returned resources of type appCustomProductPageVersions (optional)
     - parameter include: (query) comma-separated list of relationships to include (optional)
     - parameter fieldsAppCustomProductPageLocalizations: (query) the fields to include for returned resources of type appCustomProductPageLocalizations (optional)
     - parameter limitAppCustomProductPageLocalizations: (query) maximum number of related appCustomProductPageLocalizations returned (when they are included) (optional)
     - returns: AppCustomProductPageVersionResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func appCustomProductPageVersionsGetInstance(id: String, fieldsAppCustomProductPageVersions: [FieldsAppCustomProductPageVersions_appCustomProductPageVersionsGetInstance]? = nil, include: [Include_appCustomProductPageVersionsGetInstance]? = nil, fieldsAppCustomProductPageLocalizations: [FieldsAppCustomProductPageLocalizations_appCustomProductPageVersionsGetInstance]? = nil, limitAppCustomProductPageLocalizations: Int? = nil) async throws -> AppCustomProductPageVersionResponse {
        var requestTask: RequestTask?
        return try await withTaskCancellationHandler {
            try Task.checkCancellation()
            return try await withCheckedThrowingContinuation { continuation in
                guard !Task.isCancelled else {
                  continuation.resume(throwing: CancellationError())
                  return
                }

                requestTask = appCustomProductPageVersionsGetInstanceWithRequestBuilder(id: id, fieldsAppCustomProductPageVersions: fieldsAppCustomProductPageVersions, include: include, fieldsAppCustomProductPageLocalizations: fieldsAppCustomProductPageLocalizations, limitAppCustomProductPageLocalizations: limitAppCustomProductPageLocalizations).execute { result in
                    switch result {
                    case let .success(response):
                        continuation.resume(returning: response.body)
                    case let .failure(error):
                        continuation.resume(throwing: error)
                    }
                }
            }
        } onCancel: { [requestTask] in
            requestTask?.cancel()
        }
    }

    /**
     - parameter urlString: next or first url from App Store Connect API
     - returns: AppCustomProductPageVersionResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func appCustomProductPageVersionsGetInstance(urlString: String) async throws -> AppCustomProductPageVersionResponse {
        var requestTask: RequestTask?
        return try await withTaskCancellationHandler {
            try Task.checkCancellation()
            return try await withCheckedThrowingContinuation { continuation in
                guard !Task.isCancelled else {
                  continuation.resume(throwing: CancellationError())
                  return
                }

                requestTask = appCustomProductPageVersionsGetInstanceWithRequestBuilder(urlString: urlString).execute { result in
                    switch result {
                    case let .success(response):
                        continuation.resume(returning: response.body)
                    case let .failure(error):
                        continuation.resume(throwing: error)
                    }
                }
            }
        } onCancel: { [requestTask] in
            requestTask?.cancel()
        }
    }

    /**
     - GET /v1/appCustomProductPageVersions/{id}
     - BASIC:
       - type: http
       - name: itc-bearer-token
     - parameter id: (path) the id of the requested resource 
     - parameter fieldsAppCustomProductPageVersions: (query) the fields to include for returned resources of type appCustomProductPageVersions (optional)
     - parameter include: (query) comma-separated list of relationships to include (optional)
     - parameter fieldsAppCustomProductPageLocalizations: (query) the fields to include for returned resources of type appCustomProductPageLocalizations (optional)
     - parameter limitAppCustomProductPageLocalizations: (query) maximum number of related appCustomProductPageLocalizations returned (when they are included) (optional)
     - returns: RequestBuilder<AppCustomProductPageVersionResponse> 
     */
    open class func appCustomProductPageVersionsGetInstanceWithRequestBuilder(id: String, fieldsAppCustomProductPageVersions: [FieldsAppCustomProductPageVersions_appCustomProductPageVersionsGetInstance]? = nil, include: [Include_appCustomProductPageVersionsGetInstance]? = nil, fieldsAppCustomProductPageLocalizations: [FieldsAppCustomProductPageLocalizations_appCustomProductPageVersionsGetInstance]? = nil, limitAppCustomProductPageLocalizations: Int? = nil) -> RequestBuilder<AppCustomProductPageVersionResponse> {
        var localVariablePath = "/v1/appCustomProductPageVersions/{id}"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = ASCAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "fields[appCustomProductPageVersions]": fieldsAppCustomProductPageVersions?.encodeToJSON(),
            "include": include?.encodeToJSON(),
            "fields[appCustomProductPageLocalizations]": fieldsAppCustomProductPageLocalizations?.encodeToJSON(),
            "limit[appCustomProductPageLocalizations]": limitAppCustomProductPageLocalizations?.encodeToJSON(),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AppCustomProductPageVersionResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     - GET /v1/appCustomProductPageVersions/{id}
     - BASIC:
       - type: http
       - name: itc-bearer-token
     - parameter urlString: next or first url from App Store Connect API
     - returns: RequestBuilder<AppCustomProductPageVersionResponse> 
     */
    open class func appCustomProductPageVersionsGetInstanceWithRequestBuilder(urlString: String) -> RequestBuilder<AppCustomProductPageVersionResponse> {
        let localVariableRequestBuilder: RequestBuilder<AppCustomProductPageVersionResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()
        return localVariableRequestBuilder.init(method: "GET", URLString: urlString, parameters: nil)
    }
}
