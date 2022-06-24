//
// BetaAppReviewDetailsAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

open class BetaAppReviewDetailsAPI {

    /**
     * enum for parameter fieldsApps
     */
    public enum FieldsApps_betaAppReviewDetailsAppGetToOneRelated: String, CaseIterable, JSONEncodable {
        case appclips = "appClips"
        case appcustomproductpages = "appCustomProductPages"
        case appevents = "appEvents"
        case appinfos = "appInfos"
        case appstoreversions = "appStoreVersions"
        case availableinnewterritories = "availableInNewTerritories"
        case availableterritories = "availableTerritories"
        case betaapplocalizations = "betaAppLocalizations"
        case betaappreviewdetail = "betaAppReviewDetail"
        case betagroups = "betaGroups"
        case betalicenseagreement = "betaLicenseAgreement"
        case betatesters = "betaTesters"
        case builds = "builds"
        case bundleid = "bundleId"
        case ciproduct = "ciProduct"
        case contentrightsdeclaration = "contentRightsDeclaration"
        case enduserlicenseagreement = "endUserLicenseAgreement"
        case gamecenterenabledversions = "gameCenterEnabledVersions"
        case inapppurchases = "inAppPurchases"
        case isoreverwasmadeforkids = "isOrEverWasMadeForKids"
        case name = "name"
        case perfpowermetrics = "perfPowerMetrics"
        case preorder = "preOrder"
        case prereleaseversions = "preReleaseVersions"
        case pricepoints = "pricePoints"
        case prices = "prices"
        case primarylocale = "primaryLocale"
        case reviewsubmissions = "reviewSubmissions"
        case sku = "sku"
        case subscriptionstatusurl = "subscriptionStatusUrl"
        case subscriptionstatusurlforsandbox = "subscriptionStatusUrlForSandbox"
        case subscriptionstatusurlversion = "subscriptionStatusUrlVersion"
        case subscriptionstatusurlversionforsandbox = "subscriptionStatusUrlVersionForSandbox"
    }

    /**

     - parameter id: (path) the id of the requested resource 
     - parameter fieldsApps: (query) the fields to include for returned resources of type apps (optional)
     - returns: AppResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func betaAppReviewDetailsAppGetToOneRelated(id: String, fieldsApps: [FieldsApps_betaAppReviewDetailsAppGetToOneRelated]? = nil) async throws -> AppResponse {
        var requestTask: RequestTask?
        return try await withTaskCancellationHandler {
            try Task.checkCancellation()
            return try await withCheckedThrowingContinuation { continuation in
                guard !Task.isCancelled else {
                  continuation.resume(throwing: CancellationError())
                  return
                }

                requestTask = betaAppReviewDetailsAppGetToOneRelatedWithRequestBuilder(id: id, fieldsApps: fieldsApps).execute { result in
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
     - returns: AppResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func betaAppReviewDetailsAppGetToOneRelated(urlString: String) async throws -> AppResponse {
        var requestTask: RequestTask?
        return try await withTaskCancellationHandler {
            try Task.checkCancellation()
            return try await withCheckedThrowingContinuation { continuation in
                guard !Task.isCancelled else {
                  continuation.resume(throwing: CancellationError())
                  return
                }

                requestTask = betaAppReviewDetailsAppGetToOneRelatedWithRequestBuilder(urlString: urlString).execute { result in
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
     - GET /v1/betaAppReviewDetails/{id}/app
     - BASIC:
       - type: http
       - name: itc-bearer-token
     - parameter id: (path) the id of the requested resource 
     - parameter fieldsApps: (query) the fields to include for returned resources of type apps (optional)
     - returns: RequestBuilder<AppResponse> 
     */
    open class func betaAppReviewDetailsAppGetToOneRelatedWithRequestBuilder(id: String, fieldsApps: [FieldsApps_betaAppReviewDetailsAppGetToOneRelated]? = nil) -> RequestBuilder<AppResponse> {
        var localVariablePath = "/v1/betaAppReviewDetails/{id}/app"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = ASCAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "fields[apps]": fieldsApps?.encodeToJSON(),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AppResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     - GET /v1/betaAppReviewDetails/{id}/app
     - BASIC:
       - type: http
       - name: itc-bearer-token
     - parameter urlString: next or first url from App Store Connect API
     - returns: RequestBuilder<AppResponse> 
     */
    open class func betaAppReviewDetailsAppGetToOneRelatedWithRequestBuilder(urlString: String) -> RequestBuilder<AppResponse> {
        let localVariableRequestBuilder: RequestBuilder<AppResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()
        return localVariableRequestBuilder.init(method: "GET", URLString: urlString, parameters: nil)
    }

    /**
     * enum for parameter fieldsBetaAppReviewDetails
     */
    public enum FieldsBetaAppReviewDetails_betaAppReviewDetailsGetCollection: String, CaseIterable, JSONEncodable {
        case app = "app"
        case contactemail = "contactEmail"
        case contactfirstname = "contactFirstName"
        case contactlastname = "contactLastName"
        case contactphone = "contactPhone"
        case demoaccountname = "demoAccountName"
        case demoaccountpassword = "demoAccountPassword"
        case demoaccountrequired = "demoAccountRequired"
        case notes = "notes"
    }

    /**
     * enum for parameter include
     */
    public enum Include_betaAppReviewDetailsGetCollection: String, CaseIterable, JSONEncodable {
        case app = "app"
    }

    /**
     * enum for parameter fieldsApps
     */
    public enum FieldsApps_betaAppReviewDetailsGetCollection: String, CaseIterable, JSONEncodable {
        case appclips = "appClips"
        case appcustomproductpages = "appCustomProductPages"
        case appevents = "appEvents"
        case appinfos = "appInfos"
        case appstoreversions = "appStoreVersions"
        case availableinnewterritories = "availableInNewTerritories"
        case availableterritories = "availableTerritories"
        case betaapplocalizations = "betaAppLocalizations"
        case betaappreviewdetail = "betaAppReviewDetail"
        case betagroups = "betaGroups"
        case betalicenseagreement = "betaLicenseAgreement"
        case betatesters = "betaTesters"
        case builds = "builds"
        case bundleid = "bundleId"
        case ciproduct = "ciProduct"
        case contentrightsdeclaration = "contentRightsDeclaration"
        case enduserlicenseagreement = "endUserLicenseAgreement"
        case gamecenterenabledversions = "gameCenterEnabledVersions"
        case inapppurchases = "inAppPurchases"
        case isoreverwasmadeforkids = "isOrEverWasMadeForKids"
        case name = "name"
        case perfpowermetrics = "perfPowerMetrics"
        case preorder = "preOrder"
        case prereleaseversions = "preReleaseVersions"
        case pricepoints = "pricePoints"
        case prices = "prices"
        case primarylocale = "primaryLocale"
        case reviewsubmissions = "reviewSubmissions"
        case sku = "sku"
        case subscriptionstatusurl = "subscriptionStatusUrl"
        case subscriptionstatusurlforsandbox = "subscriptionStatusUrlForSandbox"
        case subscriptionstatusurlversion = "subscriptionStatusUrlVersion"
        case subscriptionstatusurlversionforsandbox = "subscriptionStatusUrlVersionForSandbox"
    }

    /**

     - parameter filterApp: (query) filter by id(s) of related &#39;app&#39; 
     - parameter fieldsBetaAppReviewDetails: (query) the fields to include for returned resources of type betaAppReviewDetails (optional)
     - parameter limit: (query) maximum resources per page (optional)
     - parameter include: (query) comma-separated list of relationships to include (optional)
     - parameter fieldsApps: (query) the fields to include for returned resources of type apps (optional)
     - returns: BetaAppReviewDetailsResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func betaAppReviewDetailsGetCollection(filterApp: [String], fieldsBetaAppReviewDetails: [FieldsBetaAppReviewDetails_betaAppReviewDetailsGetCollection]? = nil, limit: Int? = nil, include: [Include_betaAppReviewDetailsGetCollection]? = nil, fieldsApps: [FieldsApps_betaAppReviewDetailsGetCollection]? = nil) async throws -> BetaAppReviewDetailsResponse {
        var requestTask: RequestTask?
        return try await withTaskCancellationHandler {
            try Task.checkCancellation()
            return try await withCheckedThrowingContinuation { continuation in
                guard !Task.isCancelled else {
                  continuation.resume(throwing: CancellationError())
                  return
                }

                requestTask = betaAppReviewDetailsGetCollectionWithRequestBuilder(filterApp: filterApp, fieldsBetaAppReviewDetails: fieldsBetaAppReviewDetails, limit: limit, include: include, fieldsApps: fieldsApps).execute { result in
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
     - returns: BetaAppReviewDetailsResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func betaAppReviewDetailsGetCollection(urlString: String) async throws -> BetaAppReviewDetailsResponse {
        var requestTask: RequestTask?
        return try await withTaskCancellationHandler {
            try Task.checkCancellation()
            return try await withCheckedThrowingContinuation { continuation in
                guard !Task.isCancelled else {
                  continuation.resume(throwing: CancellationError())
                  return
                }

                requestTask = betaAppReviewDetailsGetCollectionWithRequestBuilder(urlString: urlString).execute { result in
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
     - GET /v1/betaAppReviewDetails
     - BASIC:
       - type: http
       - name: itc-bearer-token
     - parameter filterApp: (query) filter by id(s) of related &#39;app&#39; 
     - parameter fieldsBetaAppReviewDetails: (query) the fields to include for returned resources of type betaAppReviewDetails (optional)
     - parameter limit: (query) maximum resources per page (optional)
     - parameter include: (query) comma-separated list of relationships to include (optional)
     - parameter fieldsApps: (query) the fields to include for returned resources of type apps (optional)
     - returns: RequestBuilder<BetaAppReviewDetailsResponse> 
     */
    open class func betaAppReviewDetailsGetCollectionWithRequestBuilder(filterApp: [String], fieldsBetaAppReviewDetails: [FieldsBetaAppReviewDetails_betaAppReviewDetailsGetCollection]? = nil, limit: Int? = nil, include: [Include_betaAppReviewDetailsGetCollection]? = nil, fieldsApps: [FieldsApps_betaAppReviewDetailsGetCollection]? = nil) -> RequestBuilder<BetaAppReviewDetailsResponse> {
        let localVariablePath = "/v1/betaAppReviewDetails"
        let localVariableURLString = ASCAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "filter[app]": filterApp.encodeToJSON(),
            "fields[betaAppReviewDetails]": fieldsBetaAppReviewDetails?.encodeToJSON(),
            "limit": limit?.encodeToJSON(),
            "include": include?.encodeToJSON(),
            "fields[apps]": fieldsApps?.encodeToJSON(),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<BetaAppReviewDetailsResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     - GET /v1/betaAppReviewDetails
     - BASIC:
       - type: http
       - name: itc-bearer-token
     - parameter urlString: next or first url from App Store Connect API
     - returns: RequestBuilder<BetaAppReviewDetailsResponse> 
     */
    open class func betaAppReviewDetailsGetCollectionWithRequestBuilder(urlString: String) -> RequestBuilder<BetaAppReviewDetailsResponse> {
        let localVariableRequestBuilder: RequestBuilder<BetaAppReviewDetailsResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()
        return localVariableRequestBuilder.init(method: "GET", URLString: urlString, parameters: nil)
    }

    /**
     * enum for parameter fieldsBetaAppReviewDetails
     */
    public enum FieldsBetaAppReviewDetails_betaAppReviewDetailsGetInstance: String, CaseIterable, JSONEncodable {
        case app = "app"
        case contactemail = "contactEmail"
        case contactfirstname = "contactFirstName"
        case contactlastname = "contactLastName"
        case contactphone = "contactPhone"
        case demoaccountname = "demoAccountName"
        case demoaccountpassword = "demoAccountPassword"
        case demoaccountrequired = "demoAccountRequired"
        case notes = "notes"
    }

    /**
     * enum for parameter include
     */
    public enum Include_betaAppReviewDetailsGetInstance: String, CaseIterable, JSONEncodable {
        case app = "app"
    }

    /**
     * enum for parameter fieldsApps
     */
    public enum FieldsApps_betaAppReviewDetailsGetInstance: String, CaseIterable, JSONEncodable {
        case appclips = "appClips"
        case appcustomproductpages = "appCustomProductPages"
        case appevents = "appEvents"
        case appinfos = "appInfos"
        case appstoreversions = "appStoreVersions"
        case availableinnewterritories = "availableInNewTerritories"
        case availableterritories = "availableTerritories"
        case betaapplocalizations = "betaAppLocalizations"
        case betaappreviewdetail = "betaAppReviewDetail"
        case betagroups = "betaGroups"
        case betalicenseagreement = "betaLicenseAgreement"
        case betatesters = "betaTesters"
        case builds = "builds"
        case bundleid = "bundleId"
        case ciproduct = "ciProduct"
        case contentrightsdeclaration = "contentRightsDeclaration"
        case enduserlicenseagreement = "endUserLicenseAgreement"
        case gamecenterenabledversions = "gameCenterEnabledVersions"
        case inapppurchases = "inAppPurchases"
        case isoreverwasmadeforkids = "isOrEverWasMadeForKids"
        case name = "name"
        case perfpowermetrics = "perfPowerMetrics"
        case preorder = "preOrder"
        case prereleaseversions = "preReleaseVersions"
        case pricepoints = "pricePoints"
        case prices = "prices"
        case primarylocale = "primaryLocale"
        case reviewsubmissions = "reviewSubmissions"
        case sku = "sku"
        case subscriptionstatusurl = "subscriptionStatusUrl"
        case subscriptionstatusurlforsandbox = "subscriptionStatusUrlForSandbox"
        case subscriptionstatusurlversion = "subscriptionStatusUrlVersion"
        case subscriptionstatusurlversionforsandbox = "subscriptionStatusUrlVersionForSandbox"
    }

    /**

     - parameter id: (path) the id of the requested resource 
     - parameter fieldsBetaAppReviewDetails: (query) the fields to include for returned resources of type betaAppReviewDetails (optional)
     - parameter include: (query) comma-separated list of relationships to include (optional)
     - parameter fieldsApps: (query) the fields to include for returned resources of type apps (optional)
     - returns: BetaAppReviewDetailResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func betaAppReviewDetailsGetInstance(id: String, fieldsBetaAppReviewDetails: [FieldsBetaAppReviewDetails_betaAppReviewDetailsGetInstance]? = nil, include: [Include_betaAppReviewDetailsGetInstance]? = nil, fieldsApps: [FieldsApps_betaAppReviewDetailsGetInstance]? = nil) async throws -> BetaAppReviewDetailResponse {
        var requestTask: RequestTask?
        return try await withTaskCancellationHandler {
            try Task.checkCancellation()
            return try await withCheckedThrowingContinuation { continuation in
                guard !Task.isCancelled else {
                  continuation.resume(throwing: CancellationError())
                  return
                }

                requestTask = betaAppReviewDetailsGetInstanceWithRequestBuilder(id: id, fieldsBetaAppReviewDetails: fieldsBetaAppReviewDetails, include: include, fieldsApps: fieldsApps).execute { result in
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
     - returns: BetaAppReviewDetailResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func betaAppReviewDetailsGetInstance(urlString: String) async throws -> BetaAppReviewDetailResponse {
        var requestTask: RequestTask?
        return try await withTaskCancellationHandler {
            try Task.checkCancellation()
            return try await withCheckedThrowingContinuation { continuation in
                guard !Task.isCancelled else {
                  continuation.resume(throwing: CancellationError())
                  return
                }

                requestTask = betaAppReviewDetailsGetInstanceWithRequestBuilder(urlString: urlString).execute { result in
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
     - GET /v1/betaAppReviewDetails/{id}
     - BASIC:
       - type: http
       - name: itc-bearer-token
     - parameter id: (path) the id of the requested resource 
     - parameter fieldsBetaAppReviewDetails: (query) the fields to include for returned resources of type betaAppReviewDetails (optional)
     - parameter include: (query) comma-separated list of relationships to include (optional)
     - parameter fieldsApps: (query) the fields to include for returned resources of type apps (optional)
     - returns: RequestBuilder<BetaAppReviewDetailResponse> 
     */
    open class func betaAppReviewDetailsGetInstanceWithRequestBuilder(id: String, fieldsBetaAppReviewDetails: [FieldsBetaAppReviewDetails_betaAppReviewDetailsGetInstance]? = nil, include: [Include_betaAppReviewDetailsGetInstance]? = nil, fieldsApps: [FieldsApps_betaAppReviewDetailsGetInstance]? = nil) -> RequestBuilder<BetaAppReviewDetailResponse> {
        var localVariablePath = "/v1/betaAppReviewDetails/{id}"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = ASCAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "fields[betaAppReviewDetails]": fieldsBetaAppReviewDetails?.encodeToJSON(),
            "include": include?.encodeToJSON(),
            "fields[apps]": fieldsApps?.encodeToJSON(),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<BetaAppReviewDetailResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     - GET /v1/betaAppReviewDetails/{id}
     - BASIC:
       - type: http
       - name: itc-bearer-token
     - parameter urlString: next or first url from App Store Connect API
     - returns: RequestBuilder<BetaAppReviewDetailResponse> 
     */
    open class func betaAppReviewDetailsGetInstanceWithRequestBuilder(urlString: String) -> RequestBuilder<BetaAppReviewDetailResponse> {
        let localVariableRequestBuilder: RequestBuilder<BetaAppReviewDetailResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()
        return localVariableRequestBuilder.init(method: "GET", URLString: urlString, parameters: nil)
    }

    /**

     - parameter id: (path) the id of the requested resource 
     - parameter betaAppReviewDetailUpdateRequest: (body) BetaAppReviewDetail representation 
     - returns: BetaAppReviewDetailResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func betaAppReviewDetailsUpdateInstance(id: String, betaAppReviewDetailUpdateRequest: BetaAppReviewDetailUpdateRequest) async throws -> BetaAppReviewDetailResponse {
        var requestTask: RequestTask?
        return try await withTaskCancellationHandler {
            try Task.checkCancellation()
            return try await withCheckedThrowingContinuation { continuation in
                guard !Task.isCancelled else {
                  continuation.resume(throwing: CancellationError())
                  return
                }

                requestTask = betaAppReviewDetailsUpdateInstanceWithRequestBuilder(id: id, betaAppReviewDetailUpdateRequest: betaAppReviewDetailUpdateRequest).execute { result in
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
     - returns: BetaAppReviewDetailResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func betaAppReviewDetailsUpdateInstance(urlString: String) async throws -> BetaAppReviewDetailResponse {
        var requestTask: RequestTask?
        return try await withTaskCancellationHandler {
            try Task.checkCancellation()
            return try await withCheckedThrowingContinuation { continuation in
                guard !Task.isCancelled else {
                  continuation.resume(throwing: CancellationError())
                  return
                }

                requestTask = betaAppReviewDetailsUpdateInstanceWithRequestBuilder(urlString: urlString).execute { result in
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
     - PATCH /v1/betaAppReviewDetails/{id}
     - BASIC:
       - type: http
       - name: itc-bearer-token
     - parameter id: (path) the id of the requested resource 
     - parameter betaAppReviewDetailUpdateRequest: (body) BetaAppReviewDetail representation 
     - returns: RequestBuilder<BetaAppReviewDetailResponse> 
     */
    open class func betaAppReviewDetailsUpdateInstanceWithRequestBuilder(id: String, betaAppReviewDetailUpdateRequest: BetaAppReviewDetailUpdateRequest) -> RequestBuilder<BetaAppReviewDetailResponse> {
        var localVariablePath = "/v1/betaAppReviewDetails/{id}"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = ASCAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: betaAppReviewDetailUpdateRequest)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<BetaAppReviewDetailResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PATCH", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     - PATCH /v1/betaAppReviewDetails/{id}
     - BASIC:
       - type: http
       - name: itc-bearer-token
     - parameter urlString: next or first url from App Store Connect API
     - returns: RequestBuilder<BetaAppReviewDetailResponse> 
     */
    open class func betaAppReviewDetailsUpdateInstanceWithRequestBuilder(urlString: String) -> RequestBuilder<BetaAppReviewDetailResponse> {
        let localVariableRequestBuilder: RequestBuilder<BetaAppReviewDetailResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()
        return localVariableRequestBuilder.init(method: "PATCH", URLString: urlString, parameters: nil)
    }
}
