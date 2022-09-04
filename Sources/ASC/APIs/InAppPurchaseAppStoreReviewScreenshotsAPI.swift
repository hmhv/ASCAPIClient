//
// InAppPurchaseAppStoreReviewScreenshotsAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

open class InAppPurchaseAppStoreReviewScreenshotsAPI {

    /**

     - parameter inAppPurchaseAppStoreReviewScreenshotCreateRequest: (body) InAppPurchaseAppStoreReviewScreenshot representation 
     - returns: InAppPurchaseAppStoreReviewScreenshotResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func inAppPurchaseAppStoreReviewScreenshotsCreateInstance(inAppPurchaseAppStoreReviewScreenshotCreateRequest: InAppPurchaseAppStoreReviewScreenshotCreateRequest) async throws -> InAppPurchaseAppStoreReviewScreenshotResponse {
        var requestTask: RequestTask?
        return try await withTaskCancellationHandler {
            try Task.checkCancellation()
            return try await withCheckedThrowingContinuation { continuation in
                guard !Task.isCancelled else {
                  continuation.resume(throwing: CancellationError())
                  return
                }

                requestTask = inAppPurchaseAppStoreReviewScreenshotsCreateInstanceWithRequestBuilder(inAppPurchaseAppStoreReviewScreenshotCreateRequest: inAppPurchaseAppStoreReviewScreenshotCreateRequest).execute { result in
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
     - returns: InAppPurchaseAppStoreReviewScreenshotResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func inAppPurchaseAppStoreReviewScreenshotsCreateInstance(urlString: String) async throws -> InAppPurchaseAppStoreReviewScreenshotResponse {
        var requestTask: RequestTask?
        return try await withTaskCancellationHandler {
            try Task.checkCancellation()
            return try await withCheckedThrowingContinuation { continuation in
                guard !Task.isCancelled else {
                  continuation.resume(throwing: CancellationError())
                  return
                }

                requestTask = inAppPurchaseAppStoreReviewScreenshotsCreateInstanceWithRequestBuilder(urlString: urlString).execute { result in
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
     - POST /v1/inAppPurchaseAppStoreReviewScreenshots
     - BASIC:
       - type: http
       - name: itc-bearer-token
     - parameter inAppPurchaseAppStoreReviewScreenshotCreateRequest: (body) InAppPurchaseAppStoreReviewScreenshot representation 
     - returns: RequestBuilder<InAppPurchaseAppStoreReviewScreenshotResponse> 
     */
    open class func inAppPurchaseAppStoreReviewScreenshotsCreateInstanceWithRequestBuilder(inAppPurchaseAppStoreReviewScreenshotCreateRequest: InAppPurchaseAppStoreReviewScreenshotCreateRequest) -> RequestBuilder<InAppPurchaseAppStoreReviewScreenshotResponse> {
        let localVariablePath = "/v1/inAppPurchaseAppStoreReviewScreenshots"
        let localVariableURLString = ASCAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: inAppPurchaseAppStoreReviewScreenshotCreateRequest)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<InAppPurchaseAppStoreReviewScreenshotResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     - POST /v1/inAppPurchaseAppStoreReviewScreenshots
     - BASIC:
       - type: http
       - name: itc-bearer-token
     - parameter urlString: next or first url from App Store Connect API
     - returns: RequestBuilder<InAppPurchaseAppStoreReviewScreenshotResponse> 
     */
    open class func inAppPurchaseAppStoreReviewScreenshotsCreateInstanceWithRequestBuilder(urlString: String) -> RequestBuilder<InAppPurchaseAppStoreReviewScreenshotResponse> {
        let localVariableRequestBuilder: RequestBuilder<InAppPurchaseAppStoreReviewScreenshotResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()
        return localVariableRequestBuilder.init(method: "POST", URLString: urlString, parameters: nil)
    }

    /**

     - parameter id: (path) the id of the requested resource 
     - returns: Void
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func inAppPurchaseAppStoreReviewScreenshotsDeleteInstance(id: String) async throws {
        var requestTask: RequestTask?
        return try await withTaskCancellationHandler {
            try Task.checkCancellation()
            return try await withCheckedThrowingContinuation { continuation in
                guard !Task.isCancelled else {
                  continuation.resume(throwing: CancellationError())
                  return
                }

                requestTask = inAppPurchaseAppStoreReviewScreenshotsDeleteInstanceWithRequestBuilder(id: id).execute { result in
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
    open class func inAppPurchaseAppStoreReviewScreenshotsDeleteInstance(urlString: String) async throws {
        var requestTask: RequestTask?
        return try await withTaskCancellationHandler {
            try Task.checkCancellation()
            return try await withCheckedThrowingContinuation { continuation in
                guard !Task.isCancelled else {
                  continuation.resume(throwing: CancellationError())
                  return
                }

                requestTask = inAppPurchaseAppStoreReviewScreenshotsDeleteInstanceWithRequestBuilder(urlString: urlString).execute { result in
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
     - DELETE /v1/inAppPurchaseAppStoreReviewScreenshots/{id}
     - BASIC:
       - type: http
       - name: itc-bearer-token
     - parameter id: (path) the id of the requested resource 
     - returns: RequestBuilder<Void> 
     */
    open class func inAppPurchaseAppStoreReviewScreenshotsDeleteInstanceWithRequestBuilder(id: String) -> RequestBuilder<Void> {
        var localVariablePath = "/v1/inAppPurchaseAppStoreReviewScreenshots/{id}"
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
     - DELETE /v1/inAppPurchaseAppStoreReviewScreenshots/{id}
     - BASIC:
       - type: http
       - name: itc-bearer-token
     - parameter urlString: next or first url from App Store Connect API
     - returns: RequestBuilder<Void> 
     */
    open class func inAppPurchaseAppStoreReviewScreenshotsDeleteInstanceWithRequestBuilder(urlString: String) -> RequestBuilder<Void> {
        let localVariableRequestBuilder: RequestBuilder<Void>.Type = ASCAPI.requestBuilderFactory.getNonDecodableBuilder()
        return localVariableRequestBuilder.init(method: "DELETE", URLString: urlString, parameters: nil)
    }

    /**
     * enum for parameter fieldsInAppPurchaseAppStoreReviewScreenshots
     */
    public enum FieldsInAppPurchaseAppStoreReviewScreenshots_inAppPurchaseAppStoreReviewScreenshotsGetInstance: String, CaseIterable, JSONEncodable {
        case assetdeliverystate = "assetDeliveryState"
        case assettoken = "assetToken"
        case assettype = "assetType"
        case filename = "fileName"
        case filesize = "fileSize"
        case imageasset = "imageAsset"
        case inapppurchasev2 = "inAppPurchaseV2"
        case sourcefilechecksum = "sourceFileChecksum"
        case uploadoperations = "uploadOperations"
        case uploaded = "uploaded"
    }

    /**
     * enum for parameter include
     */
    public enum Include_inAppPurchaseAppStoreReviewScreenshotsGetInstance: String, CaseIterable, JSONEncodable {
        case inapppurchasev2 = "inAppPurchaseV2"
    }

    /**

     - parameter id: (path) the id of the requested resource 
     - parameter fieldsInAppPurchaseAppStoreReviewScreenshots: (query) the fields to include for returned resources of type inAppPurchaseAppStoreReviewScreenshots (optional)
     - parameter include: (query) comma-separated list of relationships to include (optional)
     - returns: InAppPurchaseAppStoreReviewScreenshotResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func inAppPurchaseAppStoreReviewScreenshotsGetInstance(id: String, fieldsInAppPurchaseAppStoreReviewScreenshots: [FieldsInAppPurchaseAppStoreReviewScreenshots_inAppPurchaseAppStoreReviewScreenshotsGetInstance]? = nil, include: [Include_inAppPurchaseAppStoreReviewScreenshotsGetInstance]? = nil) async throws -> InAppPurchaseAppStoreReviewScreenshotResponse {
        var requestTask: RequestTask?
        return try await withTaskCancellationHandler {
            try Task.checkCancellation()
            return try await withCheckedThrowingContinuation { continuation in
                guard !Task.isCancelled else {
                  continuation.resume(throwing: CancellationError())
                  return
                }

                requestTask = inAppPurchaseAppStoreReviewScreenshotsGetInstanceWithRequestBuilder(id: id, fieldsInAppPurchaseAppStoreReviewScreenshots: fieldsInAppPurchaseAppStoreReviewScreenshots, include: include).execute { result in
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
     - returns: InAppPurchaseAppStoreReviewScreenshotResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func inAppPurchaseAppStoreReviewScreenshotsGetInstance(urlString: String) async throws -> InAppPurchaseAppStoreReviewScreenshotResponse {
        var requestTask: RequestTask?
        return try await withTaskCancellationHandler {
            try Task.checkCancellation()
            return try await withCheckedThrowingContinuation { continuation in
                guard !Task.isCancelled else {
                  continuation.resume(throwing: CancellationError())
                  return
                }

                requestTask = inAppPurchaseAppStoreReviewScreenshotsGetInstanceWithRequestBuilder(urlString: urlString).execute { result in
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
     - GET /v1/inAppPurchaseAppStoreReviewScreenshots/{id}
     - BASIC:
       - type: http
       - name: itc-bearer-token
     - parameter id: (path) the id of the requested resource 
     - parameter fieldsInAppPurchaseAppStoreReviewScreenshots: (query) the fields to include for returned resources of type inAppPurchaseAppStoreReviewScreenshots (optional)
     - parameter include: (query) comma-separated list of relationships to include (optional)
     - returns: RequestBuilder<InAppPurchaseAppStoreReviewScreenshotResponse> 
     */
    open class func inAppPurchaseAppStoreReviewScreenshotsGetInstanceWithRequestBuilder(id: String, fieldsInAppPurchaseAppStoreReviewScreenshots: [FieldsInAppPurchaseAppStoreReviewScreenshots_inAppPurchaseAppStoreReviewScreenshotsGetInstance]? = nil, include: [Include_inAppPurchaseAppStoreReviewScreenshotsGetInstance]? = nil) -> RequestBuilder<InAppPurchaseAppStoreReviewScreenshotResponse> {
        var localVariablePath = "/v1/inAppPurchaseAppStoreReviewScreenshots/{id}"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = ASCAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "fields[inAppPurchaseAppStoreReviewScreenshots]": fieldsInAppPurchaseAppStoreReviewScreenshots?.encodeToJSON(),
            "include": include?.encodeToJSON(),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<InAppPurchaseAppStoreReviewScreenshotResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     - GET /v1/inAppPurchaseAppStoreReviewScreenshots/{id}
     - BASIC:
       - type: http
       - name: itc-bearer-token
     - parameter urlString: next or first url from App Store Connect API
     - returns: RequestBuilder<InAppPurchaseAppStoreReviewScreenshotResponse> 
     */
    open class func inAppPurchaseAppStoreReviewScreenshotsGetInstanceWithRequestBuilder(urlString: String) -> RequestBuilder<InAppPurchaseAppStoreReviewScreenshotResponse> {
        let localVariableRequestBuilder: RequestBuilder<InAppPurchaseAppStoreReviewScreenshotResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()
        return localVariableRequestBuilder.init(method: "GET", URLString: urlString, parameters: nil)
    }

    /**

     - parameter id: (path) the id of the requested resource 
     - parameter inAppPurchaseAppStoreReviewScreenshotUpdateRequest: (body) InAppPurchaseAppStoreReviewScreenshot representation 
     - returns: InAppPurchaseAppStoreReviewScreenshotResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func inAppPurchaseAppStoreReviewScreenshotsUpdateInstance(id: String, inAppPurchaseAppStoreReviewScreenshotUpdateRequest: InAppPurchaseAppStoreReviewScreenshotUpdateRequest) async throws -> InAppPurchaseAppStoreReviewScreenshotResponse {
        var requestTask: RequestTask?
        return try await withTaskCancellationHandler {
            try Task.checkCancellation()
            return try await withCheckedThrowingContinuation { continuation in
                guard !Task.isCancelled else {
                  continuation.resume(throwing: CancellationError())
                  return
                }

                requestTask = inAppPurchaseAppStoreReviewScreenshotsUpdateInstanceWithRequestBuilder(id: id, inAppPurchaseAppStoreReviewScreenshotUpdateRequest: inAppPurchaseAppStoreReviewScreenshotUpdateRequest).execute { result in
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
     - returns: InAppPurchaseAppStoreReviewScreenshotResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func inAppPurchaseAppStoreReviewScreenshotsUpdateInstance(urlString: String) async throws -> InAppPurchaseAppStoreReviewScreenshotResponse {
        var requestTask: RequestTask?
        return try await withTaskCancellationHandler {
            try Task.checkCancellation()
            return try await withCheckedThrowingContinuation { continuation in
                guard !Task.isCancelled else {
                  continuation.resume(throwing: CancellationError())
                  return
                }

                requestTask = inAppPurchaseAppStoreReviewScreenshotsUpdateInstanceWithRequestBuilder(urlString: urlString).execute { result in
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
     - PATCH /v1/inAppPurchaseAppStoreReviewScreenshots/{id}
     - BASIC:
       - type: http
       - name: itc-bearer-token
     - parameter id: (path) the id of the requested resource 
     - parameter inAppPurchaseAppStoreReviewScreenshotUpdateRequest: (body) InAppPurchaseAppStoreReviewScreenshot representation 
     - returns: RequestBuilder<InAppPurchaseAppStoreReviewScreenshotResponse> 
     */
    open class func inAppPurchaseAppStoreReviewScreenshotsUpdateInstanceWithRequestBuilder(id: String, inAppPurchaseAppStoreReviewScreenshotUpdateRequest: InAppPurchaseAppStoreReviewScreenshotUpdateRequest) -> RequestBuilder<InAppPurchaseAppStoreReviewScreenshotResponse> {
        var localVariablePath = "/v1/inAppPurchaseAppStoreReviewScreenshots/{id}"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = ASCAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: inAppPurchaseAppStoreReviewScreenshotUpdateRequest)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<InAppPurchaseAppStoreReviewScreenshotResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PATCH", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     - PATCH /v1/inAppPurchaseAppStoreReviewScreenshots/{id}
     - BASIC:
       - type: http
       - name: itc-bearer-token
     - parameter urlString: next or first url from App Store Connect API
     - returns: RequestBuilder<InAppPurchaseAppStoreReviewScreenshotResponse> 
     */
    open class func inAppPurchaseAppStoreReviewScreenshotsUpdateInstanceWithRequestBuilder(urlString: String) -> RequestBuilder<InAppPurchaseAppStoreReviewScreenshotResponse> {
        let localVariableRequestBuilder: RequestBuilder<InAppPurchaseAppStoreReviewScreenshotResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()
        return localVariableRequestBuilder.init(method: "PATCH", URLString: urlString, parameters: nil)
    }
}
