//
// InAppPurchaseLocalizationsAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

open class InAppPurchaseLocalizationsAPI {

    /**

     - parameter inAppPurchaseLocalizationCreateRequest: (body) InAppPurchaseLocalization representation 
     - returns: InAppPurchaseLocalizationResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func inAppPurchaseLocalizationsCreateInstance(inAppPurchaseLocalizationCreateRequest: InAppPurchaseLocalizationCreateRequest) async throws -> InAppPurchaseLocalizationResponse {
        var requestTask: RequestTask?
        return try await withTaskCancellationHandler {
            try Task.checkCancellation()
            return try await withCheckedThrowingContinuation { continuation in
                guard !Task.isCancelled else {
                  continuation.resume(throwing: CancellationError())
                  return
                }

                requestTask = inAppPurchaseLocalizationsCreateInstanceWithRequestBuilder(inAppPurchaseLocalizationCreateRequest: inAppPurchaseLocalizationCreateRequest).execute { result in
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
     - returns: InAppPurchaseLocalizationResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func inAppPurchaseLocalizationsCreateInstance(urlString: String) async throws -> InAppPurchaseLocalizationResponse {
        var requestTask: RequestTask?
        return try await withTaskCancellationHandler {
            try Task.checkCancellation()
            return try await withCheckedThrowingContinuation { continuation in
                guard !Task.isCancelled else {
                  continuation.resume(throwing: CancellationError())
                  return
                }

                requestTask = inAppPurchaseLocalizationsCreateInstanceWithRequestBuilder(urlString: urlString).execute { result in
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
     - POST /v1/inAppPurchaseLocalizations
     - BASIC:
       - type: http
       - name: itc-bearer-token
     - parameter inAppPurchaseLocalizationCreateRequest: (body) InAppPurchaseLocalization representation 
     - returns: RequestBuilder<InAppPurchaseLocalizationResponse> 
     */
    open class func inAppPurchaseLocalizationsCreateInstanceWithRequestBuilder(inAppPurchaseLocalizationCreateRequest: InAppPurchaseLocalizationCreateRequest) -> RequestBuilder<InAppPurchaseLocalizationResponse> {
        let localVariablePath = "/v1/inAppPurchaseLocalizations"
        let localVariableURLString = ASCAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: inAppPurchaseLocalizationCreateRequest)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<InAppPurchaseLocalizationResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     - POST /v1/inAppPurchaseLocalizations
     - BASIC:
       - type: http
       - name: itc-bearer-token
     - parameter urlString: next or first url from App Store Connect API
     - returns: RequestBuilder<InAppPurchaseLocalizationResponse> 
     */
    open class func inAppPurchaseLocalizationsCreateInstanceWithRequestBuilder(urlString: String) -> RequestBuilder<InAppPurchaseLocalizationResponse> {
        let localVariableRequestBuilder: RequestBuilder<InAppPurchaseLocalizationResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()
        return localVariableRequestBuilder.init(method: "POST", URLString: urlString, parameters: nil)
    }

    /**

     - parameter id: (path) the id of the requested resource 
     - returns: Void
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func inAppPurchaseLocalizationsDeleteInstance(id: String) async throws {
        var requestTask: RequestTask?
        return try await withTaskCancellationHandler {
            try Task.checkCancellation()
            return try await withCheckedThrowingContinuation { continuation in
                guard !Task.isCancelled else {
                  continuation.resume(throwing: CancellationError())
                  return
                }

                requestTask = inAppPurchaseLocalizationsDeleteInstanceWithRequestBuilder(id: id).execute { result in
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
    open class func inAppPurchaseLocalizationsDeleteInstance(urlString: String) async throws {
        var requestTask: RequestTask?
        return try await withTaskCancellationHandler {
            try Task.checkCancellation()
            return try await withCheckedThrowingContinuation { continuation in
                guard !Task.isCancelled else {
                  continuation.resume(throwing: CancellationError())
                  return
                }

                requestTask = inAppPurchaseLocalizationsDeleteInstanceWithRequestBuilder(urlString: urlString).execute { result in
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
     - DELETE /v1/inAppPurchaseLocalizations/{id}
     - BASIC:
       - type: http
       - name: itc-bearer-token
     - parameter id: (path) the id of the requested resource 
     - returns: RequestBuilder<Void> 
     */
    open class func inAppPurchaseLocalizationsDeleteInstanceWithRequestBuilder(id: String) -> RequestBuilder<Void> {
        var localVariablePath = "/v1/inAppPurchaseLocalizations/{id}"
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
     - DELETE /v1/inAppPurchaseLocalizations/{id}
     - BASIC:
       - type: http
       - name: itc-bearer-token
     - parameter urlString: next or first url from App Store Connect API
     - returns: RequestBuilder<Void> 
     */
    open class func inAppPurchaseLocalizationsDeleteInstanceWithRequestBuilder(urlString: String) -> RequestBuilder<Void> {
        let localVariableRequestBuilder: RequestBuilder<Void>.Type = ASCAPI.requestBuilderFactory.getNonDecodableBuilder()
        return localVariableRequestBuilder.init(method: "DELETE", URLString: urlString, parameters: nil)
    }

    /**
     * enum for parameter fieldsInAppPurchaseLocalizations
     */
    public enum FieldsInAppPurchaseLocalizations_inAppPurchaseLocalizationsGetInstance: String, CaseIterable, JSONEncodable {
        case description = "description"
        case inapppurchasev2 = "inAppPurchaseV2"
        case locale = "locale"
        case name = "name"
        case state = "state"
    }

    /**
     * enum for parameter include
     */
    public enum Include_inAppPurchaseLocalizationsGetInstance: String, CaseIterable, JSONEncodable {
        case inapppurchasev2 = "inAppPurchaseV2"
    }

    /**

     - parameter id: (path) the id of the requested resource 
     - parameter fieldsInAppPurchaseLocalizations: (query) the fields to include for returned resources of type inAppPurchaseLocalizations (optional)
     - parameter include: (query) comma-separated list of relationships to include (optional)
     - returns: InAppPurchaseLocalizationResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func inAppPurchaseLocalizationsGetInstance(id: String, fieldsInAppPurchaseLocalizations: [FieldsInAppPurchaseLocalizations_inAppPurchaseLocalizationsGetInstance]? = nil, include: [Include_inAppPurchaseLocalizationsGetInstance]? = nil) async throws -> InAppPurchaseLocalizationResponse {
        var requestTask: RequestTask?
        return try await withTaskCancellationHandler {
            try Task.checkCancellation()
            return try await withCheckedThrowingContinuation { continuation in
                guard !Task.isCancelled else {
                  continuation.resume(throwing: CancellationError())
                  return
                }

                requestTask = inAppPurchaseLocalizationsGetInstanceWithRequestBuilder(id: id, fieldsInAppPurchaseLocalizations: fieldsInAppPurchaseLocalizations, include: include).execute { result in
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
     - returns: InAppPurchaseLocalizationResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func inAppPurchaseLocalizationsGetInstance(urlString: String) async throws -> InAppPurchaseLocalizationResponse {
        var requestTask: RequestTask?
        return try await withTaskCancellationHandler {
            try Task.checkCancellation()
            return try await withCheckedThrowingContinuation { continuation in
                guard !Task.isCancelled else {
                  continuation.resume(throwing: CancellationError())
                  return
                }

                requestTask = inAppPurchaseLocalizationsGetInstanceWithRequestBuilder(urlString: urlString).execute { result in
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
     - GET /v1/inAppPurchaseLocalizations/{id}
     - BASIC:
       - type: http
       - name: itc-bearer-token
     - parameter id: (path) the id of the requested resource 
     - parameter fieldsInAppPurchaseLocalizations: (query) the fields to include for returned resources of type inAppPurchaseLocalizations (optional)
     - parameter include: (query) comma-separated list of relationships to include (optional)
     - returns: RequestBuilder<InAppPurchaseLocalizationResponse> 
     */
    open class func inAppPurchaseLocalizationsGetInstanceWithRequestBuilder(id: String, fieldsInAppPurchaseLocalizations: [FieldsInAppPurchaseLocalizations_inAppPurchaseLocalizationsGetInstance]? = nil, include: [Include_inAppPurchaseLocalizationsGetInstance]? = nil) -> RequestBuilder<InAppPurchaseLocalizationResponse> {
        var localVariablePath = "/v1/inAppPurchaseLocalizations/{id}"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = ASCAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "fields[inAppPurchaseLocalizations]": fieldsInAppPurchaseLocalizations?.encodeToJSON(),
            "include": include?.encodeToJSON(),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<InAppPurchaseLocalizationResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     - GET /v1/inAppPurchaseLocalizations/{id}
     - BASIC:
       - type: http
       - name: itc-bearer-token
     - parameter urlString: next or first url from App Store Connect API
     - returns: RequestBuilder<InAppPurchaseLocalizationResponse> 
     */
    open class func inAppPurchaseLocalizationsGetInstanceWithRequestBuilder(urlString: String) -> RequestBuilder<InAppPurchaseLocalizationResponse> {
        let localVariableRequestBuilder: RequestBuilder<InAppPurchaseLocalizationResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()
        return localVariableRequestBuilder.init(method: "GET", URLString: urlString, parameters: nil)
    }

    /**

     - parameter id: (path) the id of the requested resource 
     - parameter inAppPurchaseLocalizationUpdateRequest: (body) InAppPurchaseLocalization representation 
     - returns: InAppPurchaseLocalizationResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func inAppPurchaseLocalizationsUpdateInstance(id: String, inAppPurchaseLocalizationUpdateRequest: InAppPurchaseLocalizationUpdateRequest) async throws -> InAppPurchaseLocalizationResponse {
        var requestTask: RequestTask?
        return try await withTaskCancellationHandler {
            try Task.checkCancellation()
            return try await withCheckedThrowingContinuation { continuation in
                guard !Task.isCancelled else {
                  continuation.resume(throwing: CancellationError())
                  return
                }

                requestTask = inAppPurchaseLocalizationsUpdateInstanceWithRequestBuilder(id: id, inAppPurchaseLocalizationUpdateRequest: inAppPurchaseLocalizationUpdateRequest).execute { result in
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
     - returns: InAppPurchaseLocalizationResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func inAppPurchaseLocalizationsUpdateInstance(urlString: String) async throws -> InAppPurchaseLocalizationResponse {
        var requestTask: RequestTask?
        return try await withTaskCancellationHandler {
            try Task.checkCancellation()
            return try await withCheckedThrowingContinuation { continuation in
                guard !Task.isCancelled else {
                  continuation.resume(throwing: CancellationError())
                  return
                }

                requestTask = inAppPurchaseLocalizationsUpdateInstanceWithRequestBuilder(urlString: urlString).execute { result in
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
     - PATCH /v1/inAppPurchaseLocalizations/{id}
     - BASIC:
       - type: http
       - name: itc-bearer-token
     - parameter id: (path) the id of the requested resource 
     - parameter inAppPurchaseLocalizationUpdateRequest: (body) InAppPurchaseLocalization representation 
     - returns: RequestBuilder<InAppPurchaseLocalizationResponse> 
     */
    open class func inAppPurchaseLocalizationsUpdateInstanceWithRequestBuilder(id: String, inAppPurchaseLocalizationUpdateRequest: InAppPurchaseLocalizationUpdateRequest) -> RequestBuilder<InAppPurchaseLocalizationResponse> {
        var localVariablePath = "/v1/inAppPurchaseLocalizations/{id}"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = ASCAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: inAppPurchaseLocalizationUpdateRequest)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<InAppPurchaseLocalizationResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PATCH", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     - PATCH /v1/inAppPurchaseLocalizations/{id}
     - BASIC:
       - type: http
       - name: itc-bearer-token
     - parameter urlString: next or first url from App Store Connect API
     - returns: RequestBuilder<InAppPurchaseLocalizationResponse> 
     */
    open class func inAppPurchaseLocalizationsUpdateInstanceWithRequestBuilder(urlString: String) -> RequestBuilder<InAppPurchaseLocalizationResponse> {
        let localVariableRequestBuilder: RequestBuilder<InAppPurchaseLocalizationResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()
        return localVariableRequestBuilder.init(method: "PATCH", URLString: urlString, parameters: nil)
    }
}
