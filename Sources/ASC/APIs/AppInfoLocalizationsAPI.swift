//
// AppInfoLocalizationsAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

open class AppInfoLocalizationsAPI {

    /**

     - parameter appInfoLocalizationCreateRequest: (body) AppInfoLocalization representation 
     - returns: AppInfoLocalizationResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func appInfoLocalizationsCreateInstance(appInfoLocalizationCreateRequest: AppInfoLocalizationCreateRequest) async throws -> AppInfoLocalizationResponse {
        var requestTask: RequestTask?
        return try await withTaskCancellationHandler {
            try Task.checkCancellation()
            return try await withCheckedThrowingContinuation { continuation in
                guard !Task.isCancelled else {
                  continuation.resume(throwing: CancellationError())
                  return
                }

                requestTask = appInfoLocalizationsCreateInstanceWithRequestBuilder(appInfoLocalizationCreateRequest: appInfoLocalizationCreateRequest).execute { result in
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
     - returns: AppInfoLocalizationResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func appInfoLocalizationsCreateInstance(urlString: String) async throws -> AppInfoLocalizationResponse {
        var requestTask: RequestTask?
        return try await withTaskCancellationHandler {
            try Task.checkCancellation()
            return try await withCheckedThrowingContinuation { continuation in
                guard !Task.isCancelled else {
                  continuation.resume(throwing: CancellationError())
                  return
                }

                requestTask = appInfoLocalizationsCreateInstanceWithRequestBuilder(urlString: urlString).execute { result in
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
     - POST /v1/appInfoLocalizations
     - BASIC:
       - type: http
       - name: itc-bearer-token
     - parameter appInfoLocalizationCreateRequest: (body) AppInfoLocalization representation 
     - returns: RequestBuilder<AppInfoLocalizationResponse> 
     */
    open class func appInfoLocalizationsCreateInstanceWithRequestBuilder(appInfoLocalizationCreateRequest: AppInfoLocalizationCreateRequest) -> RequestBuilder<AppInfoLocalizationResponse> {
        let localVariablePath = "/v1/appInfoLocalizations"
        let localVariableURLString = ASCAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: appInfoLocalizationCreateRequest)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AppInfoLocalizationResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     - POST /v1/appInfoLocalizations
     - BASIC:
       - type: http
       - name: itc-bearer-token
     - parameter urlString: next or first url from App Store Connect API
     - returns: RequestBuilder<AppInfoLocalizationResponse> 
     */
    open class func appInfoLocalizationsCreateInstanceWithRequestBuilder(urlString: String) -> RequestBuilder<AppInfoLocalizationResponse> {
        let localVariableRequestBuilder: RequestBuilder<AppInfoLocalizationResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()
        return localVariableRequestBuilder.init(method: "POST", URLString: urlString, parameters: nil)
    }

    /**

     - parameter id: (path) the id of the requested resource 
     - returns: Void
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func appInfoLocalizationsDeleteInstance(id: String) async throws {
        var requestTask: RequestTask?
        return try await withTaskCancellationHandler {
            try Task.checkCancellation()
            return try await withCheckedThrowingContinuation { continuation in
                guard !Task.isCancelled else {
                  continuation.resume(throwing: CancellationError())
                  return
                }

                requestTask = appInfoLocalizationsDeleteInstanceWithRequestBuilder(id: id).execute { result in
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
    open class func appInfoLocalizationsDeleteInstance(urlString: String) async throws {
        var requestTask: RequestTask?
        return try await withTaskCancellationHandler {
            try Task.checkCancellation()
            return try await withCheckedThrowingContinuation { continuation in
                guard !Task.isCancelled else {
                  continuation.resume(throwing: CancellationError())
                  return
                }

                requestTask = appInfoLocalizationsDeleteInstanceWithRequestBuilder(urlString: urlString).execute { result in
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
     - DELETE /v1/appInfoLocalizations/{id}
     - BASIC:
       - type: http
       - name: itc-bearer-token
     - parameter id: (path) the id of the requested resource 
     - returns: RequestBuilder<Void> 
     */
    open class func appInfoLocalizationsDeleteInstanceWithRequestBuilder(id: String) -> RequestBuilder<Void> {
        var localVariablePath = "/v1/appInfoLocalizations/{id}"
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
     - DELETE /v1/appInfoLocalizations/{id}
     - BASIC:
       - type: http
       - name: itc-bearer-token
     - parameter urlString: next or first url from App Store Connect API
     - returns: RequestBuilder<Void> 
     */
    open class func appInfoLocalizationsDeleteInstanceWithRequestBuilder(urlString: String) -> RequestBuilder<Void> {
        let localVariableRequestBuilder: RequestBuilder<Void>.Type = ASCAPI.requestBuilderFactory.getNonDecodableBuilder()
        return localVariableRequestBuilder.init(method: "DELETE", URLString: urlString, parameters: nil)
    }

    /**
     * enum for parameter fieldsAppInfoLocalizations
     */
    public enum FieldsAppInfoLocalizations_appInfoLocalizationsGetInstance: String, CaseIterable, JSONEncodable {
        case appinfo = "appInfo"
        case locale = "locale"
        case name = "name"
        case privacychoicesurl = "privacyChoicesUrl"
        case privacypolicytext = "privacyPolicyText"
        case privacypolicyurl = "privacyPolicyUrl"
        case subtitle = "subtitle"
    }

    /**
     * enum for parameter include
     */
    public enum Include_appInfoLocalizationsGetInstance: String, CaseIterable, JSONEncodable {
        case appinfo = "appInfo"
    }

    /**

     - parameter id: (path) the id of the requested resource 
     - parameter fieldsAppInfoLocalizations: (query) the fields to include for returned resources of type appInfoLocalizations (optional)
     - parameter include: (query) comma-separated list of relationships to include (optional)
     - returns: AppInfoLocalizationResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func appInfoLocalizationsGetInstance(id: String, fieldsAppInfoLocalizations: [FieldsAppInfoLocalizations_appInfoLocalizationsGetInstance]? = nil, include: [Include_appInfoLocalizationsGetInstance]? = nil) async throws -> AppInfoLocalizationResponse {
        var requestTask: RequestTask?
        return try await withTaskCancellationHandler {
            try Task.checkCancellation()
            return try await withCheckedThrowingContinuation { continuation in
                guard !Task.isCancelled else {
                  continuation.resume(throwing: CancellationError())
                  return
                }

                requestTask = appInfoLocalizationsGetInstanceWithRequestBuilder(id: id, fieldsAppInfoLocalizations: fieldsAppInfoLocalizations, include: include).execute { result in
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
     - returns: AppInfoLocalizationResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func appInfoLocalizationsGetInstance(urlString: String) async throws -> AppInfoLocalizationResponse {
        var requestTask: RequestTask?
        return try await withTaskCancellationHandler {
            try Task.checkCancellation()
            return try await withCheckedThrowingContinuation { continuation in
                guard !Task.isCancelled else {
                  continuation.resume(throwing: CancellationError())
                  return
                }

                requestTask = appInfoLocalizationsGetInstanceWithRequestBuilder(urlString: urlString).execute { result in
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
     - GET /v1/appInfoLocalizations/{id}
     - BASIC:
       - type: http
       - name: itc-bearer-token
     - parameter id: (path) the id of the requested resource 
     - parameter fieldsAppInfoLocalizations: (query) the fields to include for returned resources of type appInfoLocalizations (optional)
     - parameter include: (query) comma-separated list of relationships to include (optional)
     - returns: RequestBuilder<AppInfoLocalizationResponse> 
     */
    open class func appInfoLocalizationsGetInstanceWithRequestBuilder(id: String, fieldsAppInfoLocalizations: [FieldsAppInfoLocalizations_appInfoLocalizationsGetInstance]? = nil, include: [Include_appInfoLocalizationsGetInstance]? = nil) -> RequestBuilder<AppInfoLocalizationResponse> {
        var localVariablePath = "/v1/appInfoLocalizations/{id}"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = ASCAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "fields[appInfoLocalizations]": fieldsAppInfoLocalizations?.encodeToJSON(),
            "include": include?.encodeToJSON(),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AppInfoLocalizationResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     - GET /v1/appInfoLocalizations/{id}
     - BASIC:
       - type: http
       - name: itc-bearer-token
     - parameter urlString: next or first url from App Store Connect API
     - returns: RequestBuilder<AppInfoLocalizationResponse> 
     */
    open class func appInfoLocalizationsGetInstanceWithRequestBuilder(urlString: String) -> RequestBuilder<AppInfoLocalizationResponse> {
        let localVariableRequestBuilder: RequestBuilder<AppInfoLocalizationResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()
        return localVariableRequestBuilder.init(method: "GET", URLString: urlString, parameters: nil)
    }

    /**

     - parameter id: (path) the id of the requested resource 
     - parameter appInfoLocalizationUpdateRequest: (body) AppInfoLocalization representation 
     - returns: AppInfoLocalizationResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func appInfoLocalizationsUpdateInstance(id: String, appInfoLocalizationUpdateRequest: AppInfoLocalizationUpdateRequest) async throws -> AppInfoLocalizationResponse {
        var requestTask: RequestTask?
        return try await withTaskCancellationHandler {
            try Task.checkCancellation()
            return try await withCheckedThrowingContinuation { continuation in
                guard !Task.isCancelled else {
                  continuation.resume(throwing: CancellationError())
                  return
                }

                requestTask = appInfoLocalizationsUpdateInstanceWithRequestBuilder(id: id, appInfoLocalizationUpdateRequest: appInfoLocalizationUpdateRequest).execute { result in
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
     - returns: AppInfoLocalizationResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func appInfoLocalizationsUpdateInstance(urlString: String) async throws -> AppInfoLocalizationResponse {
        var requestTask: RequestTask?
        return try await withTaskCancellationHandler {
            try Task.checkCancellation()
            return try await withCheckedThrowingContinuation { continuation in
                guard !Task.isCancelled else {
                  continuation.resume(throwing: CancellationError())
                  return
                }

                requestTask = appInfoLocalizationsUpdateInstanceWithRequestBuilder(urlString: urlString).execute { result in
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
     - PATCH /v1/appInfoLocalizations/{id}
     - BASIC:
       - type: http
       - name: itc-bearer-token
     - parameter id: (path) the id of the requested resource 
     - parameter appInfoLocalizationUpdateRequest: (body) AppInfoLocalization representation 
     - returns: RequestBuilder<AppInfoLocalizationResponse> 
     */
    open class func appInfoLocalizationsUpdateInstanceWithRequestBuilder(id: String, appInfoLocalizationUpdateRequest: AppInfoLocalizationUpdateRequest) -> RequestBuilder<AppInfoLocalizationResponse> {
        var localVariablePath = "/v1/appInfoLocalizations/{id}"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = ASCAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: appInfoLocalizationUpdateRequest)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AppInfoLocalizationResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PATCH", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     - PATCH /v1/appInfoLocalizations/{id}
     - BASIC:
       - type: http
       - name: itc-bearer-token
     - parameter urlString: next or first url from App Store Connect API
     - returns: RequestBuilder<AppInfoLocalizationResponse> 
     */
    open class func appInfoLocalizationsUpdateInstanceWithRequestBuilder(urlString: String) -> RequestBuilder<AppInfoLocalizationResponse> {
        let localVariableRequestBuilder: RequestBuilder<AppInfoLocalizationResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()
        return localVariableRequestBuilder.init(method: "PATCH", URLString: urlString, parameters: nil)
    }
}
