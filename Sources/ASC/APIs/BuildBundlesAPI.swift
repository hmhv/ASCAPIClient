//
// BuildBundlesAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

open class BuildBundlesAPI {

    /**
     * enum for parameter fieldsAppClipDomainStatuses
     */
    public enum FieldsAppClipDomainStatuses_buildBundlesAppClipDomainCacheStatusGetToOneRelated: String, CaseIterable, JSONEncodable {
        case domains = "domains"
        case lastupdateddate = "lastUpdatedDate"
    }

    /**

     - parameter id: (path) the id of the requested resource 
     - parameter fieldsAppClipDomainStatuses: (query) the fields to include for returned resources of type appClipDomainStatuses (optional)
     - returns: AppClipDomainStatusResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func buildBundlesAppClipDomainCacheStatusGetToOneRelated(id: String, fieldsAppClipDomainStatuses: [FieldsAppClipDomainStatuses_buildBundlesAppClipDomainCacheStatusGetToOneRelated]? = nil) async throws -> AppClipDomainStatusResponse {
        var requestTask: RequestTask?
        return try await withTaskCancellationHandler {
            try Task.checkCancellation()
            return try await withCheckedThrowingContinuation { continuation in
                guard !Task.isCancelled else {
                  continuation.resume(throwing: CancellationError())
                  return
                }

                requestTask = buildBundlesAppClipDomainCacheStatusGetToOneRelatedWithRequestBuilder(id: id, fieldsAppClipDomainStatuses: fieldsAppClipDomainStatuses).execute { result in
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
     - returns: AppClipDomainStatusResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func buildBundlesAppClipDomainCacheStatusGetToOneRelated(urlString: String) async throws -> AppClipDomainStatusResponse {
        var requestTask: RequestTask?
        return try await withTaskCancellationHandler {
            try Task.checkCancellation()
            return try await withCheckedThrowingContinuation { continuation in
                guard !Task.isCancelled else {
                  continuation.resume(throwing: CancellationError())
                  return
                }

                requestTask = buildBundlesAppClipDomainCacheStatusGetToOneRelatedWithRequestBuilder(urlString: urlString).execute { result in
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
     - GET /v1/buildBundles/{id}/appClipDomainCacheStatus
     - BASIC:
       - type: http
       - name: itc-bearer-token
     - parameter id: (path) the id of the requested resource 
     - parameter fieldsAppClipDomainStatuses: (query) the fields to include for returned resources of type appClipDomainStatuses (optional)
     - returns: RequestBuilder<AppClipDomainStatusResponse> 
     */
    open class func buildBundlesAppClipDomainCacheStatusGetToOneRelatedWithRequestBuilder(id: String, fieldsAppClipDomainStatuses: [FieldsAppClipDomainStatuses_buildBundlesAppClipDomainCacheStatusGetToOneRelated]? = nil) -> RequestBuilder<AppClipDomainStatusResponse> {
        var localVariablePath = "/v1/buildBundles/{id}/appClipDomainCacheStatus"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = ASCAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "fields[appClipDomainStatuses]": fieldsAppClipDomainStatuses?.encodeToJSON(),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AppClipDomainStatusResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     - GET /v1/buildBundles/{id}/appClipDomainCacheStatus
     - BASIC:
       - type: http
       - name: itc-bearer-token
     - parameter urlString: next or first url from App Store Connect API
     - returns: RequestBuilder<AppClipDomainStatusResponse> 
     */
    open class func buildBundlesAppClipDomainCacheStatusGetToOneRelatedWithRequestBuilder(urlString: String) -> RequestBuilder<AppClipDomainStatusResponse> {
        let localVariableRequestBuilder: RequestBuilder<AppClipDomainStatusResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()
        return localVariableRequestBuilder.init(method: "GET", URLString: urlString, parameters: nil)
    }

    /**
     * enum for parameter fieldsAppClipDomainStatuses
     */
    public enum FieldsAppClipDomainStatuses_buildBundlesAppClipDomainDebugStatusGetToOneRelated: String, CaseIterable, JSONEncodable {
        case domains = "domains"
        case lastupdateddate = "lastUpdatedDate"
    }

    /**

     - parameter id: (path) the id of the requested resource 
     - parameter fieldsAppClipDomainStatuses: (query) the fields to include for returned resources of type appClipDomainStatuses (optional)
     - returns: AppClipDomainStatusResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func buildBundlesAppClipDomainDebugStatusGetToOneRelated(id: String, fieldsAppClipDomainStatuses: [FieldsAppClipDomainStatuses_buildBundlesAppClipDomainDebugStatusGetToOneRelated]? = nil) async throws -> AppClipDomainStatusResponse {
        var requestTask: RequestTask?
        return try await withTaskCancellationHandler {
            try Task.checkCancellation()
            return try await withCheckedThrowingContinuation { continuation in
                guard !Task.isCancelled else {
                  continuation.resume(throwing: CancellationError())
                  return
                }

                requestTask = buildBundlesAppClipDomainDebugStatusGetToOneRelatedWithRequestBuilder(id: id, fieldsAppClipDomainStatuses: fieldsAppClipDomainStatuses).execute { result in
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
     - returns: AppClipDomainStatusResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func buildBundlesAppClipDomainDebugStatusGetToOneRelated(urlString: String) async throws -> AppClipDomainStatusResponse {
        var requestTask: RequestTask?
        return try await withTaskCancellationHandler {
            try Task.checkCancellation()
            return try await withCheckedThrowingContinuation { continuation in
                guard !Task.isCancelled else {
                  continuation.resume(throwing: CancellationError())
                  return
                }

                requestTask = buildBundlesAppClipDomainDebugStatusGetToOneRelatedWithRequestBuilder(urlString: urlString).execute { result in
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
     - GET /v1/buildBundles/{id}/appClipDomainDebugStatus
     - BASIC:
       - type: http
       - name: itc-bearer-token
     - parameter id: (path) the id of the requested resource 
     - parameter fieldsAppClipDomainStatuses: (query) the fields to include for returned resources of type appClipDomainStatuses (optional)
     - returns: RequestBuilder<AppClipDomainStatusResponse> 
     */
    open class func buildBundlesAppClipDomainDebugStatusGetToOneRelatedWithRequestBuilder(id: String, fieldsAppClipDomainStatuses: [FieldsAppClipDomainStatuses_buildBundlesAppClipDomainDebugStatusGetToOneRelated]? = nil) -> RequestBuilder<AppClipDomainStatusResponse> {
        var localVariablePath = "/v1/buildBundles/{id}/appClipDomainDebugStatus"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = ASCAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "fields[appClipDomainStatuses]": fieldsAppClipDomainStatuses?.encodeToJSON(),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AppClipDomainStatusResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     - GET /v1/buildBundles/{id}/appClipDomainDebugStatus
     - BASIC:
       - type: http
       - name: itc-bearer-token
     - parameter urlString: next or first url from App Store Connect API
     - returns: RequestBuilder<AppClipDomainStatusResponse> 
     */
    open class func buildBundlesAppClipDomainDebugStatusGetToOneRelatedWithRequestBuilder(urlString: String) -> RequestBuilder<AppClipDomainStatusResponse> {
        let localVariableRequestBuilder: RequestBuilder<AppClipDomainStatusResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()
        return localVariableRequestBuilder.init(method: "GET", URLString: urlString, parameters: nil)
    }

    /**
     * enum for parameter fieldsBetaAppClipInvocations
     */
    public enum FieldsBetaAppClipInvocations_buildBundlesBetaAppClipInvocationsGetToManyRelated: String, CaseIterable, JSONEncodable {
        case betaappclipinvocationlocalizations = "betaAppClipInvocationLocalizations"
        case buildbundle = "buildBundle"
        case url = "url"
    }

    /**
     * enum for parameter fieldsBetaAppClipInvocationLocalizations
     */
    public enum FieldsBetaAppClipInvocationLocalizations_buildBundlesBetaAppClipInvocationsGetToManyRelated: String, CaseIterable, JSONEncodable {
        case betaappclipinvocation = "betaAppClipInvocation"
        case locale = "locale"
        case title = "title"
    }

    /**
     * enum for parameter include
     */
    public enum Include_buildBundlesBetaAppClipInvocationsGetToManyRelated: String, CaseIterable, JSONEncodable {
        case betaappclipinvocationlocalizations = "betaAppClipInvocationLocalizations"
    }

    /**

     - parameter id: (path) the id of the requested resource 
     - parameter fieldsBetaAppClipInvocations: (query) the fields to include for returned resources of type betaAppClipInvocations (optional)
     - parameter fieldsBetaAppClipInvocationLocalizations: (query) the fields to include for returned resources of type betaAppClipInvocationLocalizations (optional)
     - parameter limit: (query) maximum resources per page (optional)
     - parameter limitBetaAppClipInvocationLocalizations: (query) maximum number of related betaAppClipInvocationLocalizations returned (when they are included) (optional)
     - parameter include: (query) comma-separated list of relationships to include (optional)
     - returns: BetaAppClipInvocationsResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func buildBundlesBetaAppClipInvocationsGetToManyRelated(id: String, fieldsBetaAppClipInvocations: [FieldsBetaAppClipInvocations_buildBundlesBetaAppClipInvocationsGetToManyRelated]? = nil, fieldsBetaAppClipInvocationLocalizations: [FieldsBetaAppClipInvocationLocalizations_buildBundlesBetaAppClipInvocationsGetToManyRelated]? = nil, limit: Int? = nil, limitBetaAppClipInvocationLocalizations: Int? = nil, include: [Include_buildBundlesBetaAppClipInvocationsGetToManyRelated]? = nil) async throws -> BetaAppClipInvocationsResponse {
        var requestTask: RequestTask?
        return try await withTaskCancellationHandler {
            try Task.checkCancellation()
            return try await withCheckedThrowingContinuation { continuation in
                guard !Task.isCancelled else {
                  continuation.resume(throwing: CancellationError())
                  return
                }

                requestTask = buildBundlesBetaAppClipInvocationsGetToManyRelatedWithRequestBuilder(id: id, fieldsBetaAppClipInvocations: fieldsBetaAppClipInvocations, fieldsBetaAppClipInvocationLocalizations: fieldsBetaAppClipInvocationLocalizations, limit: limit, limitBetaAppClipInvocationLocalizations: limitBetaAppClipInvocationLocalizations, include: include).execute { result in
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
     - returns: BetaAppClipInvocationsResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func buildBundlesBetaAppClipInvocationsGetToManyRelated(urlString: String) async throws -> BetaAppClipInvocationsResponse {
        var requestTask: RequestTask?
        return try await withTaskCancellationHandler {
            try Task.checkCancellation()
            return try await withCheckedThrowingContinuation { continuation in
                guard !Task.isCancelled else {
                  continuation.resume(throwing: CancellationError())
                  return
                }

                requestTask = buildBundlesBetaAppClipInvocationsGetToManyRelatedWithRequestBuilder(urlString: urlString).execute { result in
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
     - GET /v1/buildBundles/{id}/betaAppClipInvocations
     - BASIC:
       - type: http
       - name: itc-bearer-token
     - parameter id: (path) the id of the requested resource 
     - parameter fieldsBetaAppClipInvocations: (query) the fields to include for returned resources of type betaAppClipInvocations (optional)
     - parameter fieldsBetaAppClipInvocationLocalizations: (query) the fields to include for returned resources of type betaAppClipInvocationLocalizations (optional)
     - parameter limit: (query) maximum resources per page (optional)
     - parameter limitBetaAppClipInvocationLocalizations: (query) maximum number of related betaAppClipInvocationLocalizations returned (when they are included) (optional)
     - parameter include: (query) comma-separated list of relationships to include (optional)
     - returns: RequestBuilder<BetaAppClipInvocationsResponse> 
     */
    open class func buildBundlesBetaAppClipInvocationsGetToManyRelatedWithRequestBuilder(id: String, fieldsBetaAppClipInvocations: [FieldsBetaAppClipInvocations_buildBundlesBetaAppClipInvocationsGetToManyRelated]? = nil, fieldsBetaAppClipInvocationLocalizations: [FieldsBetaAppClipInvocationLocalizations_buildBundlesBetaAppClipInvocationsGetToManyRelated]? = nil, limit: Int? = nil, limitBetaAppClipInvocationLocalizations: Int? = nil, include: [Include_buildBundlesBetaAppClipInvocationsGetToManyRelated]? = nil) -> RequestBuilder<BetaAppClipInvocationsResponse> {
        var localVariablePath = "/v1/buildBundles/{id}/betaAppClipInvocations"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = ASCAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "fields[betaAppClipInvocations]": fieldsBetaAppClipInvocations?.encodeToJSON(),
            "fields[betaAppClipInvocationLocalizations]": fieldsBetaAppClipInvocationLocalizations?.encodeToJSON(),
            "limit": limit?.encodeToJSON(),
            "limit[betaAppClipInvocationLocalizations]": limitBetaAppClipInvocationLocalizations?.encodeToJSON(),
            "include": include?.encodeToJSON(),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<BetaAppClipInvocationsResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     - GET /v1/buildBundles/{id}/betaAppClipInvocations
     - BASIC:
       - type: http
       - name: itc-bearer-token
     - parameter urlString: next or first url from App Store Connect API
     - returns: RequestBuilder<BetaAppClipInvocationsResponse> 
     */
    open class func buildBundlesBetaAppClipInvocationsGetToManyRelatedWithRequestBuilder(urlString: String) -> RequestBuilder<BetaAppClipInvocationsResponse> {
        let localVariableRequestBuilder: RequestBuilder<BetaAppClipInvocationsResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()
        return localVariableRequestBuilder.init(method: "GET", URLString: urlString, parameters: nil)
    }

    /**
     * enum for parameter fieldsBuildBundleFileSizes
     */
    public enum FieldsBuildBundleFileSizes_buildBundlesBuildBundleFileSizesGetToManyRelated: String, CaseIterable, JSONEncodable {
        case devicemodel = "deviceModel"
        case downloadbytes = "downloadBytes"
        case installbytes = "installBytes"
        case osversion = "osVersion"
    }

    /**

     - parameter id: (path) the id of the requested resource 
     - parameter fieldsBuildBundleFileSizes: (query) the fields to include for returned resources of type buildBundleFileSizes (optional)
     - parameter limit: (query) maximum resources per page (optional)
     - returns: BuildBundleFileSizesResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func buildBundlesBuildBundleFileSizesGetToManyRelated(id: String, fieldsBuildBundleFileSizes: [FieldsBuildBundleFileSizes_buildBundlesBuildBundleFileSizesGetToManyRelated]? = nil, limit: Int? = nil) async throws -> BuildBundleFileSizesResponse {
        var requestTask: RequestTask?
        return try await withTaskCancellationHandler {
            try Task.checkCancellation()
            return try await withCheckedThrowingContinuation { continuation in
                guard !Task.isCancelled else {
                  continuation.resume(throwing: CancellationError())
                  return
                }

                requestTask = buildBundlesBuildBundleFileSizesGetToManyRelatedWithRequestBuilder(id: id, fieldsBuildBundleFileSizes: fieldsBuildBundleFileSizes, limit: limit).execute { result in
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
     - returns: BuildBundleFileSizesResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func buildBundlesBuildBundleFileSizesGetToManyRelated(urlString: String) async throws -> BuildBundleFileSizesResponse {
        var requestTask: RequestTask?
        return try await withTaskCancellationHandler {
            try Task.checkCancellation()
            return try await withCheckedThrowingContinuation { continuation in
                guard !Task.isCancelled else {
                  continuation.resume(throwing: CancellationError())
                  return
                }

                requestTask = buildBundlesBuildBundleFileSizesGetToManyRelatedWithRequestBuilder(urlString: urlString).execute { result in
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
     - GET /v1/buildBundles/{id}/buildBundleFileSizes
     - BASIC:
       - type: http
       - name: itc-bearer-token
     - parameter id: (path) the id of the requested resource 
     - parameter fieldsBuildBundleFileSizes: (query) the fields to include for returned resources of type buildBundleFileSizes (optional)
     - parameter limit: (query) maximum resources per page (optional)
     - returns: RequestBuilder<BuildBundleFileSizesResponse> 
     */
    open class func buildBundlesBuildBundleFileSizesGetToManyRelatedWithRequestBuilder(id: String, fieldsBuildBundleFileSizes: [FieldsBuildBundleFileSizes_buildBundlesBuildBundleFileSizesGetToManyRelated]? = nil, limit: Int? = nil) -> RequestBuilder<BuildBundleFileSizesResponse> {
        var localVariablePath = "/v1/buildBundles/{id}/buildBundleFileSizes"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = ASCAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "fields[buildBundleFileSizes]": fieldsBuildBundleFileSizes?.encodeToJSON(),
            "limit": limit?.encodeToJSON(),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<BuildBundleFileSizesResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     - GET /v1/buildBundles/{id}/buildBundleFileSizes
     - BASIC:
       - type: http
       - name: itc-bearer-token
     - parameter urlString: next or first url from App Store Connect API
     - returns: RequestBuilder<BuildBundleFileSizesResponse> 
     */
    open class func buildBundlesBuildBundleFileSizesGetToManyRelatedWithRequestBuilder(urlString: String) -> RequestBuilder<BuildBundleFileSizesResponse> {
        let localVariableRequestBuilder: RequestBuilder<BuildBundleFileSizesResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()
        return localVariableRequestBuilder.init(method: "GET", URLString: urlString, parameters: nil)
    }
}
