//
// CiXcodeVersionsAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

open class CiXcodeVersionsAPI {

    /**
     * enum for parameter fieldsCiXcodeVersions
     */
    public enum FieldsCiXcodeVersions_ciXcodeVersionsGetCollection: String, CaseIterable, JSONEncodable {
        case macosversions = "macOsVersions"
        case name = "name"
        case testdestinations = "testDestinations"
        case version = "version"
    }

    /**
     * enum for parameter include
     */
    public enum Include_ciXcodeVersionsGetCollection: String, CaseIterable, JSONEncodable {
        case macosversions = "macOsVersions"
    }

    /**
     * enum for parameter fieldsCiMacOsVersions
     */
    public enum FieldsCiMacOsVersions_ciXcodeVersionsGetCollection: String, CaseIterable, JSONEncodable {
        case name = "name"
        case version = "version"
        case xcodeversions = "xcodeVersions"
    }

    /**

     - parameter fieldsCiXcodeVersions: (query) the fields to include for returned resources of type ciXcodeVersions (optional)
     - parameter limit: (query) maximum resources per page (optional)
     - parameter include: (query) comma-separated list of relationships to include (optional)
     - parameter fieldsCiMacOsVersions: (query) the fields to include for returned resources of type ciMacOsVersions (optional)
     - parameter limitMacOsVersions: (query) maximum number of related macOsVersions returned (when they are included) (optional)
     - returns: CiXcodeVersionsResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func ciXcodeVersionsGetCollection(fieldsCiXcodeVersions: [FieldsCiXcodeVersions_ciXcodeVersionsGetCollection]? = nil, limit: Int? = nil, include: [Include_ciXcodeVersionsGetCollection]? = nil, fieldsCiMacOsVersions: [FieldsCiMacOsVersions_ciXcodeVersionsGetCollection]? = nil, limitMacOsVersions: Int? = nil) async throws -> CiXcodeVersionsResponse {
        var requestTask: RequestTask?
        return try await withTaskCancellationHandler {
            try Task.checkCancellation()
            return try await withCheckedThrowingContinuation { continuation in
                guard !Task.isCancelled else {
                  continuation.resume(throwing: CancellationError())
                  return
                }

                requestTask = ciXcodeVersionsGetCollectionWithRequestBuilder(fieldsCiXcodeVersions: fieldsCiXcodeVersions, limit: limit, include: include, fieldsCiMacOsVersions: fieldsCiMacOsVersions, limitMacOsVersions: limitMacOsVersions).execute { result in
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
     - returns: CiXcodeVersionsResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func ciXcodeVersionsGetCollection(urlString: String) async throws -> CiXcodeVersionsResponse {
        var requestTask: RequestTask?
        return try await withTaskCancellationHandler {
            try Task.checkCancellation()
            return try await withCheckedThrowingContinuation { continuation in
                guard !Task.isCancelled else {
                  continuation.resume(throwing: CancellationError())
                  return
                }

                requestTask = ciXcodeVersionsGetCollectionWithRequestBuilder(urlString: urlString).execute { result in
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
     - GET /v1/ciXcodeVersions
     - BASIC:
       - type: http
       - name: itc-bearer-token
     - parameter fieldsCiXcodeVersions: (query) the fields to include for returned resources of type ciXcodeVersions (optional)
     - parameter limit: (query) maximum resources per page (optional)
     - parameter include: (query) comma-separated list of relationships to include (optional)
     - parameter fieldsCiMacOsVersions: (query) the fields to include for returned resources of type ciMacOsVersions (optional)
     - parameter limitMacOsVersions: (query) maximum number of related macOsVersions returned (when they are included) (optional)
     - returns: RequestBuilder<CiXcodeVersionsResponse> 
     */
    open class func ciXcodeVersionsGetCollectionWithRequestBuilder(fieldsCiXcodeVersions: [FieldsCiXcodeVersions_ciXcodeVersionsGetCollection]? = nil, limit: Int? = nil, include: [Include_ciXcodeVersionsGetCollection]? = nil, fieldsCiMacOsVersions: [FieldsCiMacOsVersions_ciXcodeVersionsGetCollection]? = nil, limitMacOsVersions: Int? = nil) -> RequestBuilder<CiXcodeVersionsResponse> {
        let localVariablePath = "/v1/ciXcodeVersions"
        let localVariableURLString = ASCAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "fields[ciXcodeVersions]": fieldsCiXcodeVersions?.encodeToJSON(),
            "limit": limit?.encodeToJSON(),
            "include": include?.encodeToJSON(),
            "fields[ciMacOsVersions]": fieldsCiMacOsVersions?.encodeToJSON(),
            "limit[macOsVersions]": limitMacOsVersions?.encodeToJSON(),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<CiXcodeVersionsResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     - GET /v1/ciXcodeVersions
     - BASIC:
       - type: http
       - name: itc-bearer-token
     - parameter urlString: next or first url from App Store Connect API
     - returns: RequestBuilder<CiXcodeVersionsResponse> 
     */
    open class func ciXcodeVersionsGetCollectionWithRequestBuilder(urlString: String) -> RequestBuilder<CiXcodeVersionsResponse> {
        let localVariableRequestBuilder: RequestBuilder<CiXcodeVersionsResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()
        return localVariableRequestBuilder.init(method: "GET", URLString: urlString, parameters: nil)
    }

    /**
     * enum for parameter fieldsCiXcodeVersions
     */
    public enum FieldsCiXcodeVersions_ciXcodeVersionsGetInstance: String, CaseIterable, JSONEncodable {
        case macosversions = "macOsVersions"
        case name = "name"
        case testdestinations = "testDestinations"
        case version = "version"
    }

    /**
     * enum for parameter include
     */
    public enum Include_ciXcodeVersionsGetInstance: String, CaseIterable, JSONEncodable {
        case macosversions = "macOsVersions"
    }

    /**
     * enum for parameter fieldsCiMacOsVersions
     */
    public enum FieldsCiMacOsVersions_ciXcodeVersionsGetInstance: String, CaseIterable, JSONEncodable {
        case name = "name"
        case version = "version"
        case xcodeversions = "xcodeVersions"
    }

    /**

     - parameter id: (path) the id of the requested resource 
     - parameter fieldsCiXcodeVersions: (query) the fields to include for returned resources of type ciXcodeVersions (optional)
     - parameter include: (query) comma-separated list of relationships to include (optional)
     - parameter fieldsCiMacOsVersions: (query) the fields to include for returned resources of type ciMacOsVersions (optional)
     - parameter limitMacOsVersions: (query) maximum number of related macOsVersions returned (when they are included) (optional)
     - returns: CiXcodeVersionResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func ciXcodeVersionsGetInstance(id: String, fieldsCiXcodeVersions: [FieldsCiXcodeVersions_ciXcodeVersionsGetInstance]? = nil, include: [Include_ciXcodeVersionsGetInstance]? = nil, fieldsCiMacOsVersions: [FieldsCiMacOsVersions_ciXcodeVersionsGetInstance]? = nil, limitMacOsVersions: Int? = nil) async throws -> CiXcodeVersionResponse {
        var requestTask: RequestTask?
        return try await withTaskCancellationHandler {
            try Task.checkCancellation()
            return try await withCheckedThrowingContinuation { continuation in
                guard !Task.isCancelled else {
                  continuation.resume(throwing: CancellationError())
                  return
                }

                requestTask = ciXcodeVersionsGetInstanceWithRequestBuilder(id: id, fieldsCiXcodeVersions: fieldsCiXcodeVersions, include: include, fieldsCiMacOsVersions: fieldsCiMacOsVersions, limitMacOsVersions: limitMacOsVersions).execute { result in
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
     - returns: CiXcodeVersionResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func ciXcodeVersionsGetInstance(urlString: String) async throws -> CiXcodeVersionResponse {
        var requestTask: RequestTask?
        return try await withTaskCancellationHandler {
            try Task.checkCancellation()
            return try await withCheckedThrowingContinuation { continuation in
                guard !Task.isCancelled else {
                  continuation.resume(throwing: CancellationError())
                  return
                }

                requestTask = ciXcodeVersionsGetInstanceWithRequestBuilder(urlString: urlString).execute { result in
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
     - GET /v1/ciXcodeVersions/{id}
     - BASIC:
       - type: http
       - name: itc-bearer-token
     - parameter id: (path) the id of the requested resource 
     - parameter fieldsCiXcodeVersions: (query) the fields to include for returned resources of type ciXcodeVersions (optional)
     - parameter include: (query) comma-separated list of relationships to include (optional)
     - parameter fieldsCiMacOsVersions: (query) the fields to include for returned resources of type ciMacOsVersions (optional)
     - parameter limitMacOsVersions: (query) maximum number of related macOsVersions returned (when they are included) (optional)
     - returns: RequestBuilder<CiXcodeVersionResponse> 
     */
    open class func ciXcodeVersionsGetInstanceWithRequestBuilder(id: String, fieldsCiXcodeVersions: [FieldsCiXcodeVersions_ciXcodeVersionsGetInstance]? = nil, include: [Include_ciXcodeVersionsGetInstance]? = nil, fieldsCiMacOsVersions: [FieldsCiMacOsVersions_ciXcodeVersionsGetInstance]? = nil, limitMacOsVersions: Int? = nil) -> RequestBuilder<CiXcodeVersionResponse> {
        var localVariablePath = "/v1/ciXcodeVersions/{id}"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = ASCAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "fields[ciXcodeVersions]": fieldsCiXcodeVersions?.encodeToJSON(),
            "include": include?.encodeToJSON(),
            "fields[ciMacOsVersions]": fieldsCiMacOsVersions?.encodeToJSON(),
            "limit[macOsVersions]": limitMacOsVersions?.encodeToJSON(),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<CiXcodeVersionResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     - GET /v1/ciXcodeVersions/{id}
     - BASIC:
       - type: http
       - name: itc-bearer-token
     - parameter urlString: next or first url from App Store Connect API
     - returns: RequestBuilder<CiXcodeVersionResponse> 
     */
    open class func ciXcodeVersionsGetInstanceWithRequestBuilder(urlString: String) -> RequestBuilder<CiXcodeVersionResponse> {
        let localVariableRequestBuilder: RequestBuilder<CiXcodeVersionResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()
        return localVariableRequestBuilder.init(method: "GET", URLString: urlString, parameters: nil)
    }

    /**
     * enum for parameter fieldsCiXcodeVersions
     */
    public enum FieldsCiXcodeVersions_ciXcodeVersionsMacOsVersionsGetToManyRelated: String, CaseIterable, JSONEncodable {
        case macosversions = "macOsVersions"
        case name = "name"
        case testdestinations = "testDestinations"
        case version = "version"
    }

    /**
     * enum for parameter fieldsCiMacOsVersions
     */
    public enum FieldsCiMacOsVersions_ciXcodeVersionsMacOsVersionsGetToManyRelated: String, CaseIterable, JSONEncodable {
        case name = "name"
        case version = "version"
        case xcodeversions = "xcodeVersions"
    }

    /**
     * enum for parameter include
     */
    public enum Include_ciXcodeVersionsMacOsVersionsGetToManyRelated: String, CaseIterable, JSONEncodable {
        case xcodeversions = "xcodeVersions"
    }

    /**

     - parameter id: (path) the id of the requested resource 
     - parameter fieldsCiXcodeVersions: (query) the fields to include for returned resources of type ciXcodeVersions (optional)
     - parameter fieldsCiMacOsVersions: (query) the fields to include for returned resources of type ciMacOsVersions (optional)
     - parameter limit: (query) maximum resources per page (optional)
     - parameter limitXcodeVersions: (query) maximum number of related xcodeVersions returned (when they are included) (optional)
     - parameter include: (query) comma-separated list of relationships to include (optional)
     - returns: CiMacOsVersionsResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func ciXcodeVersionsMacOsVersionsGetToManyRelated(id: String, fieldsCiXcodeVersions: [FieldsCiXcodeVersions_ciXcodeVersionsMacOsVersionsGetToManyRelated]? = nil, fieldsCiMacOsVersions: [FieldsCiMacOsVersions_ciXcodeVersionsMacOsVersionsGetToManyRelated]? = nil, limit: Int? = nil, limitXcodeVersions: Int? = nil, include: [Include_ciXcodeVersionsMacOsVersionsGetToManyRelated]? = nil) async throws -> CiMacOsVersionsResponse {
        var requestTask: RequestTask?
        return try await withTaskCancellationHandler {
            try Task.checkCancellation()
            return try await withCheckedThrowingContinuation { continuation in
                guard !Task.isCancelled else {
                  continuation.resume(throwing: CancellationError())
                  return
                }

                requestTask = ciXcodeVersionsMacOsVersionsGetToManyRelatedWithRequestBuilder(id: id, fieldsCiXcodeVersions: fieldsCiXcodeVersions, fieldsCiMacOsVersions: fieldsCiMacOsVersions, limit: limit, limitXcodeVersions: limitXcodeVersions, include: include).execute { result in
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
     - returns: CiMacOsVersionsResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func ciXcodeVersionsMacOsVersionsGetToManyRelated(urlString: String) async throws -> CiMacOsVersionsResponse {
        var requestTask: RequestTask?
        return try await withTaskCancellationHandler {
            try Task.checkCancellation()
            return try await withCheckedThrowingContinuation { continuation in
                guard !Task.isCancelled else {
                  continuation.resume(throwing: CancellationError())
                  return
                }

                requestTask = ciXcodeVersionsMacOsVersionsGetToManyRelatedWithRequestBuilder(urlString: urlString).execute { result in
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
     - GET /v1/ciXcodeVersions/{id}/macOsVersions
     - BASIC:
       - type: http
       - name: itc-bearer-token
     - parameter id: (path) the id of the requested resource 
     - parameter fieldsCiXcodeVersions: (query) the fields to include for returned resources of type ciXcodeVersions (optional)
     - parameter fieldsCiMacOsVersions: (query) the fields to include for returned resources of type ciMacOsVersions (optional)
     - parameter limit: (query) maximum resources per page (optional)
     - parameter limitXcodeVersions: (query) maximum number of related xcodeVersions returned (when they are included) (optional)
     - parameter include: (query) comma-separated list of relationships to include (optional)
     - returns: RequestBuilder<CiMacOsVersionsResponse> 
     */
    open class func ciXcodeVersionsMacOsVersionsGetToManyRelatedWithRequestBuilder(id: String, fieldsCiXcodeVersions: [FieldsCiXcodeVersions_ciXcodeVersionsMacOsVersionsGetToManyRelated]? = nil, fieldsCiMacOsVersions: [FieldsCiMacOsVersions_ciXcodeVersionsMacOsVersionsGetToManyRelated]? = nil, limit: Int? = nil, limitXcodeVersions: Int? = nil, include: [Include_ciXcodeVersionsMacOsVersionsGetToManyRelated]? = nil) -> RequestBuilder<CiMacOsVersionsResponse> {
        var localVariablePath = "/v1/ciXcodeVersions/{id}/macOsVersions"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = ASCAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "fields[ciXcodeVersions]": fieldsCiXcodeVersions?.encodeToJSON(),
            "fields[ciMacOsVersions]": fieldsCiMacOsVersions?.encodeToJSON(),
            "limit": limit?.encodeToJSON(),
            "limit[xcodeVersions]": limitXcodeVersions?.encodeToJSON(),
            "include": include?.encodeToJSON(),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<CiMacOsVersionsResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     - GET /v1/ciXcodeVersions/{id}/macOsVersions
     - BASIC:
       - type: http
       - name: itc-bearer-token
     - parameter urlString: next or first url from App Store Connect API
     - returns: RequestBuilder<CiMacOsVersionsResponse> 
     */
    open class func ciXcodeVersionsMacOsVersionsGetToManyRelatedWithRequestBuilder(urlString: String) -> RequestBuilder<CiMacOsVersionsResponse> {
        let localVariableRequestBuilder: RequestBuilder<CiMacOsVersionsResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()
        return localVariableRequestBuilder.init(method: "GET", URLString: urlString, parameters: nil)
    }
}
