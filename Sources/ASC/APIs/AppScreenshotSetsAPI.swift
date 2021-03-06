//
// AppScreenshotSetsAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

open class AppScreenshotSetsAPI {

    /**
     * enum for parameter fieldsAppScreenshotSets
     */
    public enum FieldsAppScreenshotSets_appScreenshotSetsAppScreenshotsGetToManyRelated: String, CaseIterable, JSONEncodable {
        case appcustomproductpagelocalization = "appCustomProductPageLocalization"
        case appscreenshots = "appScreenshots"
        case appstoreversionexperimenttreatmentlocalization = "appStoreVersionExperimentTreatmentLocalization"
        case appstoreversionlocalization = "appStoreVersionLocalization"
        case screenshotdisplaytype = "screenshotDisplayType"
    }

    /**
     * enum for parameter fieldsAppScreenshots
     */
    public enum FieldsAppScreenshots_appScreenshotSetsAppScreenshotsGetToManyRelated: String, CaseIterable, JSONEncodable {
        case appscreenshotset = "appScreenshotSet"
        case assetdeliverystate = "assetDeliveryState"
        case assettoken = "assetToken"
        case assettype = "assetType"
        case filename = "fileName"
        case filesize = "fileSize"
        case imageasset = "imageAsset"
        case sourcefilechecksum = "sourceFileChecksum"
        case uploadoperations = "uploadOperations"
        case uploaded = "uploaded"
    }

    /**
     * enum for parameter include
     */
    public enum Include_appScreenshotSetsAppScreenshotsGetToManyRelated: String, CaseIterable, JSONEncodable {
        case appscreenshotset = "appScreenshotSet"
    }

    /**

     - parameter id: (path) the id of the requested resource 
     - parameter fieldsAppScreenshotSets: (query) the fields to include for returned resources of type appScreenshotSets (optional)
     - parameter fieldsAppScreenshots: (query) the fields to include for returned resources of type appScreenshots (optional)
     - parameter limit: (query) maximum resources per page (optional)
     - parameter include: (query) comma-separated list of relationships to include (optional)
     - returns: AppScreenshotsResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func appScreenshotSetsAppScreenshotsGetToManyRelated(id: String, fieldsAppScreenshotSets: [FieldsAppScreenshotSets_appScreenshotSetsAppScreenshotsGetToManyRelated]? = nil, fieldsAppScreenshots: [FieldsAppScreenshots_appScreenshotSetsAppScreenshotsGetToManyRelated]? = nil, limit: Int? = nil, include: [Include_appScreenshotSetsAppScreenshotsGetToManyRelated]? = nil) async throws -> AppScreenshotsResponse {
        var requestTask: RequestTask?
        return try await withTaskCancellationHandler {
            try Task.checkCancellation()
            return try await withCheckedThrowingContinuation { continuation in
                guard !Task.isCancelled else {
                  continuation.resume(throwing: CancellationError())
                  return
                }

                requestTask = appScreenshotSetsAppScreenshotsGetToManyRelatedWithRequestBuilder(id: id, fieldsAppScreenshotSets: fieldsAppScreenshotSets, fieldsAppScreenshots: fieldsAppScreenshots, limit: limit, include: include).execute { result in
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
     - returns: AppScreenshotsResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func appScreenshotSetsAppScreenshotsGetToManyRelated(urlString: String) async throws -> AppScreenshotsResponse {
        var requestTask: RequestTask?
        return try await withTaskCancellationHandler {
            try Task.checkCancellation()
            return try await withCheckedThrowingContinuation { continuation in
                guard !Task.isCancelled else {
                  continuation.resume(throwing: CancellationError())
                  return
                }

                requestTask = appScreenshotSetsAppScreenshotsGetToManyRelatedWithRequestBuilder(urlString: urlString).execute { result in
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
     - GET /v1/appScreenshotSets/{id}/appScreenshots
     - BASIC:
       - type: http
       - name: itc-bearer-token
     - parameter id: (path) the id of the requested resource 
     - parameter fieldsAppScreenshotSets: (query) the fields to include for returned resources of type appScreenshotSets (optional)
     - parameter fieldsAppScreenshots: (query) the fields to include for returned resources of type appScreenshots (optional)
     - parameter limit: (query) maximum resources per page (optional)
     - parameter include: (query) comma-separated list of relationships to include (optional)
     - returns: RequestBuilder<AppScreenshotsResponse> 
     */
    open class func appScreenshotSetsAppScreenshotsGetToManyRelatedWithRequestBuilder(id: String, fieldsAppScreenshotSets: [FieldsAppScreenshotSets_appScreenshotSetsAppScreenshotsGetToManyRelated]? = nil, fieldsAppScreenshots: [FieldsAppScreenshots_appScreenshotSetsAppScreenshotsGetToManyRelated]? = nil, limit: Int? = nil, include: [Include_appScreenshotSetsAppScreenshotsGetToManyRelated]? = nil) -> RequestBuilder<AppScreenshotsResponse> {
        var localVariablePath = "/v1/appScreenshotSets/{id}/appScreenshots"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = ASCAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "fields[appScreenshotSets]": fieldsAppScreenshotSets?.encodeToJSON(),
            "fields[appScreenshots]": fieldsAppScreenshots?.encodeToJSON(),
            "limit": limit?.encodeToJSON(),
            "include": include?.encodeToJSON(),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AppScreenshotsResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     - GET /v1/appScreenshotSets/{id}/appScreenshots
     - BASIC:
       - type: http
       - name: itc-bearer-token
     - parameter urlString: next or first url from App Store Connect API
     - returns: RequestBuilder<AppScreenshotsResponse> 
     */
    open class func appScreenshotSetsAppScreenshotsGetToManyRelatedWithRequestBuilder(urlString: String) -> RequestBuilder<AppScreenshotsResponse> {
        let localVariableRequestBuilder: RequestBuilder<AppScreenshotsResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()
        return localVariableRequestBuilder.init(method: "GET", URLString: urlString, parameters: nil)
    }

    /**

     - parameter id: (path) the id of the requested resource 
     - parameter limit: (query) maximum resources per page (optional)
     - returns: AppScreenshotSetAppScreenshotsLinkagesResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func appScreenshotSetsAppScreenshotsGetToManyRelationship(id: String, limit: Int? = nil) async throws -> AppScreenshotSetAppScreenshotsLinkagesResponse {
        var requestTask: RequestTask?
        return try await withTaskCancellationHandler {
            try Task.checkCancellation()
            return try await withCheckedThrowingContinuation { continuation in
                guard !Task.isCancelled else {
                  continuation.resume(throwing: CancellationError())
                  return
                }

                requestTask = appScreenshotSetsAppScreenshotsGetToManyRelationshipWithRequestBuilder(id: id, limit: limit).execute { result in
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
     - returns: AppScreenshotSetAppScreenshotsLinkagesResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func appScreenshotSetsAppScreenshotsGetToManyRelationship(urlString: String) async throws -> AppScreenshotSetAppScreenshotsLinkagesResponse {
        var requestTask: RequestTask?
        return try await withTaskCancellationHandler {
            try Task.checkCancellation()
            return try await withCheckedThrowingContinuation { continuation in
                guard !Task.isCancelled else {
                  continuation.resume(throwing: CancellationError())
                  return
                }

                requestTask = appScreenshotSetsAppScreenshotsGetToManyRelationshipWithRequestBuilder(urlString: urlString).execute { result in
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
     - GET /v1/appScreenshotSets/{id}/relationships/appScreenshots
     - BASIC:
       - type: http
       - name: itc-bearer-token
     - parameter id: (path) the id of the requested resource 
     - parameter limit: (query) maximum resources per page (optional)
     - returns: RequestBuilder<AppScreenshotSetAppScreenshotsLinkagesResponse> 
     */
    open class func appScreenshotSetsAppScreenshotsGetToManyRelationshipWithRequestBuilder(id: String, limit: Int? = nil) -> RequestBuilder<AppScreenshotSetAppScreenshotsLinkagesResponse> {
        var localVariablePath = "/v1/appScreenshotSets/{id}/relationships/appScreenshots"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = ASCAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "limit": limit?.encodeToJSON(),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AppScreenshotSetAppScreenshotsLinkagesResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     - GET /v1/appScreenshotSets/{id}/relationships/appScreenshots
     - BASIC:
       - type: http
       - name: itc-bearer-token
     - parameter urlString: next or first url from App Store Connect API
     - returns: RequestBuilder<AppScreenshotSetAppScreenshotsLinkagesResponse> 
     */
    open class func appScreenshotSetsAppScreenshotsGetToManyRelationshipWithRequestBuilder(urlString: String) -> RequestBuilder<AppScreenshotSetAppScreenshotsLinkagesResponse> {
        let localVariableRequestBuilder: RequestBuilder<AppScreenshotSetAppScreenshotsLinkagesResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()
        return localVariableRequestBuilder.init(method: "GET", URLString: urlString, parameters: nil)
    }

    /**

     - parameter id: (path) the id of the requested resource 
     - parameter appScreenshotSetAppScreenshotsLinkagesRequest: (body) List of related linkages 
     - returns: Void
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func appScreenshotSetsAppScreenshotsReplaceToManyRelationship(id: String, appScreenshotSetAppScreenshotsLinkagesRequest: AppScreenshotSetAppScreenshotsLinkagesRequest) async throws {
        var requestTask: RequestTask?
        return try await withTaskCancellationHandler {
            try Task.checkCancellation()
            return try await withCheckedThrowingContinuation { continuation in
                guard !Task.isCancelled else {
                  continuation.resume(throwing: CancellationError())
                  return
                }

                requestTask = appScreenshotSetsAppScreenshotsReplaceToManyRelationshipWithRequestBuilder(id: id, appScreenshotSetAppScreenshotsLinkagesRequest: appScreenshotSetAppScreenshotsLinkagesRequest).execute { result in
                    switch result {
                    case .success:
                        continuation.resume(returning: ())
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
     - returns: Void
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func appScreenshotSetsAppScreenshotsReplaceToManyRelationship(urlString: String) async throws {
        var requestTask: RequestTask?
        return try await withTaskCancellationHandler {
            try Task.checkCancellation()
            return try await withCheckedThrowingContinuation { continuation in
                guard !Task.isCancelled else {
                  continuation.resume(throwing: CancellationError())
                  return
                }

                requestTask = appScreenshotSetsAppScreenshotsReplaceToManyRelationshipWithRequestBuilder(urlString: urlString).execute { result in
                    switch result {
                    case .success:
                        continuation.resume(returning: ())
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
     - PATCH /v1/appScreenshotSets/{id}/relationships/appScreenshots
     - BASIC:
       - type: http
       - name: itc-bearer-token
     - parameter id: (path) the id of the requested resource 
     - parameter appScreenshotSetAppScreenshotsLinkagesRequest: (body) List of related linkages 
     - returns: RequestBuilder<Void> 
     */
    open class func appScreenshotSetsAppScreenshotsReplaceToManyRelationshipWithRequestBuilder(id: String, appScreenshotSetAppScreenshotsLinkagesRequest: AppScreenshotSetAppScreenshotsLinkagesRequest) -> RequestBuilder<Void> {
        var localVariablePath = "/v1/appScreenshotSets/{id}/relationships/appScreenshots"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = ASCAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: appScreenshotSetAppScreenshotsLinkagesRequest)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Void>.Type = ASCAPI.requestBuilderFactory.getNonDecodableBuilder()

        return localVariableRequestBuilder.init(method: "PATCH", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     - PATCH /v1/appScreenshotSets/{id}/relationships/appScreenshots
     - BASIC:
       - type: http
       - name: itc-bearer-token
     - parameter urlString: next or first url from App Store Connect API
     - returns: RequestBuilder<Void> 
     */
    open class func appScreenshotSetsAppScreenshotsReplaceToManyRelationshipWithRequestBuilder(urlString: String) -> RequestBuilder<Void> {
        let localVariableRequestBuilder: RequestBuilder<Void>.Type = ASCAPI.requestBuilderFactory.getNonDecodableBuilder()
        return localVariableRequestBuilder.init(method: "PATCH", URLString: urlString, parameters: nil)
    }

    /**

     - parameter appScreenshotSetCreateRequest: (body) AppScreenshotSet representation 
     - returns: AppScreenshotSetResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func appScreenshotSetsCreateInstance(appScreenshotSetCreateRequest: AppScreenshotSetCreateRequest) async throws -> AppScreenshotSetResponse {
        var requestTask: RequestTask?
        return try await withTaskCancellationHandler {
            try Task.checkCancellation()
            return try await withCheckedThrowingContinuation { continuation in
                guard !Task.isCancelled else {
                  continuation.resume(throwing: CancellationError())
                  return
                }

                requestTask = appScreenshotSetsCreateInstanceWithRequestBuilder(appScreenshotSetCreateRequest: appScreenshotSetCreateRequest).execute { result in
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
     - returns: AppScreenshotSetResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func appScreenshotSetsCreateInstance(urlString: String) async throws -> AppScreenshotSetResponse {
        var requestTask: RequestTask?
        return try await withTaskCancellationHandler {
            try Task.checkCancellation()
            return try await withCheckedThrowingContinuation { continuation in
                guard !Task.isCancelled else {
                  continuation.resume(throwing: CancellationError())
                  return
                }

                requestTask = appScreenshotSetsCreateInstanceWithRequestBuilder(urlString: urlString).execute { result in
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
     - POST /v1/appScreenshotSets
     - BASIC:
       - type: http
       - name: itc-bearer-token
     - parameter appScreenshotSetCreateRequest: (body) AppScreenshotSet representation 
     - returns: RequestBuilder<AppScreenshotSetResponse> 
     */
    open class func appScreenshotSetsCreateInstanceWithRequestBuilder(appScreenshotSetCreateRequest: AppScreenshotSetCreateRequest) -> RequestBuilder<AppScreenshotSetResponse> {
        let localVariablePath = "/v1/appScreenshotSets"
        let localVariableURLString = ASCAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: appScreenshotSetCreateRequest)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AppScreenshotSetResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     - POST /v1/appScreenshotSets
     - BASIC:
       - type: http
       - name: itc-bearer-token
     - parameter urlString: next or first url from App Store Connect API
     - returns: RequestBuilder<AppScreenshotSetResponse> 
     */
    open class func appScreenshotSetsCreateInstanceWithRequestBuilder(urlString: String) -> RequestBuilder<AppScreenshotSetResponse> {
        let localVariableRequestBuilder: RequestBuilder<AppScreenshotSetResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()
        return localVariableRequestBuilder.init(method: "POST", URLString: urlString, parameters: nil)
    }

    /**

     - parameter id: (path) the id of the requested resource 
     - returns: Void
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func appScreenshotSetsDeleteInstance(id: String) async throws {
        var requestTask: RequestTask?
        return try await withTaskCancellationHandler {
            try Task.checkCancellation()
            return try await withCheckedThrowingContinuation { continuation in
                guard !Task.isCancelled else {
                  continuation.resume(throwing: CancellationError())
                  return
                }

                requestTask = appScreenshotSetsDeleteInstanceWithRequestBuilder(id: id).execute { result in
                    switch result {
                    case .success:
                        continuation.resume(returning: ())
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
     - returns: Void
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func appScreenshotSetsDeleteInstance(urlString: String) async throws {
        var requestTask: RequestTask?
        return try await withTaskCancellationHandler {
            try Task.checkCancellation()
            return try await withCheckedThrowingContinuation { continuation in
                guard !Task.isCancelled else {
                  continuation.resume(throwing: CancellationError())
                  return
                }

                requestTask = appScreenshotSetsDeleteInstanceWithRequestBuilder(urlString: urlString).execute { result in
                    switch result {
                    case .success:
                        continuation.resume(returning: ())
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
     - DELETE /v1/appScreenshotSets/{id}
     - BASIC:
       - type: http
       - name: itc-bearer-token
     - parameter id: (path) the id of the requested resource 
     - returns: RequestBuilder<Void> 
     */
    open class func appScreenshotSetsDeleteInstanceWithRequestBuilder(id: String) -> RequestBuilder<Void> {
        var localVariablePath = "/v1/appScreenshotSets/{id}"
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

        return localVariableRequestBuilder.init(method: "DELETE", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     - DELETE /v1/appScreenshotSets/{id}
     - BASIC:
       - type: http
       - name: itc-bearer-token
     - parameter urlString: next or first url from App Store Connect API
     - returns: RequestBuilder<Void> 
     */
    open class func appScreenshotSetsDeleteInstanceWithRequestBuilder(urlString: String) -> RequestBuilder<Void> {
        let localVariableRequestBuilder: RequestBuilder<Void>.Type = ASCAPI.requestBuilderFactory.getNonDecodableBuilder()
        return localVariableRequestBuilder.init(method: "DELETE", URLString: urlString, parameters: nil)
    }

    /**
     * enum for parameter fieldsAppScreenshotSets
     */
    public enum FieldsAppScreenshotSets_appScreenshotSetsGetInstance: String, CaseIterable, JSONEncodable {
        case appcustomproductpagelocalization = "appCustomProductPageLocalization"
        case appscreenshots = "appScreenshots"
        case appstoreversionexperimenttreatmentlocalization = "appStoreVersionExperimentTreatmentLocalization"
        case appstoreversionlocalization = "appStoreVersionLocalization"
        case screenshotdisplaytype = "screenshotDisplayType"
    }

    /**
     * enum for parameter include
     */
    public enum Include_appScreenshotSetsGetInstance: String, CaseIterable, JSONEncodable {
        case appcustomproductpagelocalization = "appCustomProductPageLocalization"
        case appscreenshots = "appScreenshots"
        case appstoreversionexperimenttreatmentlocalization = "appStoreVersionExperimentTreatmentLocalization"
        case appstoreversionlocalization = "appStoreVersionLocalization"
    }

    /**
     * enum for parameter fieldsAppScreenshots
     */
    public enum FieldsAppScreenshots_appScreenshotSetsGetInstance: String, CaseIterable, JSONEncodable {
        case appscreenshotset = "appScreenshotSet"
        case assetdeliverystate = "assetDeliveryState"
        case assettoken = "assetToken"
        case assettype = "assetType"
        case filename = "fileName"
        case filesize = "fileSize"
        case imageasset = "imageAsset"
        case sourcefilechecksum = "sourceFileChecksum"
        case uploadoperations = "uploadOperations"
        case uploaded = "uploaded"
    }

    /**

     - parameter id: (path) the id of the requested resource 
     - parameter fieldsAppScreenshotSets: (query) the fields to include for returned resources of type appScreenshotSets (optional)
     - parameter include: (query) comma-separated list of relationships to include (optional)
     - parameter fieldsAppScreenshots: (query) the fields to include for returned resources of type appScreenshots (optional)
     - parameter limitAppScreenshots: (query) maximum number of related appScreenshots returned (when they are included) (optional)
     - returns: AppScreenshotSetResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func appScreenshotSetsGetInstance(id: String, fieldsAppScreenshotSets: [FieldsAppScreenshotSets_appScreenshotSetsGetInstance]? = nil, include: [Include_appScreenshotSetsGetInstance]? = nil, fieldsAppScreenshots: [FieldsAppScreenshots_appScreenshotSetsGetInstance]? = nil, limitAppScreenshots: Int? = nil) async throws -> AppScreenshotSetResponse {
        var requestTask: RequestTask?
        return try await withTaskCancellationHandler {
            try Task.checkCancellation()
            return try await withCheckedThrowingContinuation { continuation in
                guard !Task.isCancelled else {
                  continuation.resume(throwing: CancellationError())
                  return
                }

                requestTask = appScreenshotSetsGetInstanceWithRequestBuilder(id: id, fieldsAppScreenshotSets: fieldsAppScreenshotSets, include: include, fieldsAppScreenshots: fieldsAppScreenshots, limitAppScreenshots: limitAppScreenshots).execute { result in
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
     - returns: AppScreenshotSetResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func appScreenshotSetsGetInstance(urlString: String) async throws -> AppScreenshotSetResponse {
        var requestTask: RequestTask?
        return try await withTaskCancellationHandler {
            try Task.checkCancellation()
            return try await withCheckedThrowingContinuation { continuation in
                guard !Task.isCancelled else {
                  continuation.resume(throwing: CancellationError())
                  return
                }

                requestTask = appScreenshotSetsGetInstanceWithRequestBuilder(urlString: urlString).execute { result in
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
     - GET /v1/appScreenshotSets/{id}
     - BASIC:
       - type: http
       - name: itc-bearer-token
     - parameter id: (path) the id of the requested resource 
     - parameter fieldsAppScreenshotSets: (query) the fields to include for returned resources of type appScreenshotSets (optional)
     - parameter include: (query) comma-separated list of relationships to include (optional)
     - parameter fieldsAppScreenshots: (query) the fields to include for returned resources of type appScreenshots (optional)
     - parameter limitAppScreenshots: (query) maximum number of related appScreenshots returned (when they are included) (optional)
     - returns: RequestBuilder<AppScreenshotSetResponse> 
     */
    open class func appScreenshotSetsGetInstanceWithRequestBuilder(id: String, fieldsAppScreenshotSets: [FieldsAppScreenshotSets_appScreenshotSetsGetInstance]? = nil, include: [Include_appScreenshotSetsGetInstance]? = nil, fieldsAppScreenshots: [FieldsAppScreenshots_appScreenshotSetsGetInstance]? = nil, limitAppScreenshots: Int? = nil) -> RequestBuilder<AppScreenshotSetResponse> {
        var localVariablePath = "/v1/appScreenshotSets/{id}"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = ASCAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "fields[appScreenshotSets]": fieldsAppScreenshotSets?.encodeToJSON(),
            "include": include?.encodeToJSON(),
            "fields[appScreenshots]": fieldsAppScreenshots?.encodeToJSON(),
            "limit[appScreenshots]": limitAppScreenshots?.encodeToJSON(),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AppScreenshotSetResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     - GET /v1/appScreenshotSets/{id}
     - BASIC:
       - type: http
       - name: itc-bearer-token
     - parameter urlString: next or first url from App Store Connect API
     - returns: RequestBuilder<AppScreenshotSetResponse> 
     */
    open class func appScreenshotSetsGetInstanceWithRequestBuilder(urlString: String) -> RequestBuilder<AppScreenshotSetResponse> {
        let localVariableRequestBuilder: RequestBuilder<AppScreenshotSetResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()
        return localVariableRequestBuilder.init(method: "GET", URLString: urlString, parameters: nil)
    }
}
