//
// BetaAppLocalizationsAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

open class BetaAppLocalizationsAPI {

    /**
     * enum for parameter fieldsApps
     */
    public enum FieldsApps_betaAppLocalizationsAppGetToOneRelated: String, CaseIterable, JSONEncodable {
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
    open class func betaAppLocalizationsAppGetToOneRelated(id: String, fieldsApps: [FieldsApps_betaAppLocalizationsAppGetToOneRelated]? = nil) async throws -> AppResponse {
        var requestTask: RequestTask?
        return try await withTaskCancellationHandler {
            try Task.checkCancellation()
            return try await withCheckedThrowingContinuation { continuation in
                guard !Task.isCancelled else {
                  continuation.resume(throwing: CancellationError())
                  return
                }

                requestTask = betaAppLocalizationsAppGetToOneRelatedWithRequestBuilder(id: id, fieldsApps: fieldsApps).execute { result in
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
    open class func betaAppLocalizationsAppGetToOneRelated(urlString: String) async throws -> AppResponse {
        var requestTask: RequestTask?
        return try await withTaskCancellationHandler {
            try Task.checkCancellation()
            return try await withCheckedThrowingContinuation { continuation in
                guard !Task.isCancelled else {
                  continuation.resume(throwing: CancellationError())
                  return
                }

                requestTask = betaAppLocalizationsAppGetToOneRelatedWithRequestBuilder(urlString: urlString).execute { result in
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
     - GET /v1/betaAppLocalizations/{id}/app
     - BASIC:
       - type: http
       - name: itc-bearer-token
     - parameter id: (path) the id of the requested resource 
     - parameter fieldsApps: (query) the fields to include for returned resources of type apps (optional)
     - returns: RequestBuilder<AppResponse> 
     */
    open class func betaAppLocalizationsAppGetToOneRelatedWithRequestBuilder(id: String, fieldsApps: [FieldsApps_betaAppLocalizationsAppGetToOneRelated]? = nil) -> RequestBuilder<AppResponse> {
        var localVariablePath = "/v1/betaAppLocalizations/{id}/app"
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
     - GET /v1/betaAppLocalizations/{id}/app
     - BASIC:
       - type: http
       - name: itc-bearer-token
     - parameter urlString: next or first url from App Store Connect API
     - returns: RequestBuilder<AppResponse> 
     */
    open class func betaAppLocalizationsAppGetToOneRelatedWithRequestBuilder(urlString: String) -> RequestBuilder<AppResponse> {
        let localVariableRequestBuilder: RequestBuilder<AppResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()
        return localVariableRequestBuilder.init(method: "GET", URLString: urlString, parameters: nil)
    }

    /**

     - parameter betaAppLocalizationCreateRequest: (body) BetaAppLocalization representation 
     - returns: BetaAppLocalizationResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func betaAppLocalizationsCreateInstance(betaAppLocalizationCreateRequest: BetaAppLocalizationCreateRequest) async throws -> BetaAppLocalizationResponse {
        var requestTask: RequestTask?
        return try await withTaskCancellationHandler {
            try Task.checkCancellation()
            return try await withCheckedThrowingContinuation { continuation in
                guard !Task.isCancelled else {
                  continuation.resume(throwing: CancellationError())
                  return
                }

                requestTask = betaAppLocalizationsCreateInstanceWithRequestBuilder(betaAppLocalizationCreateRequest: betaAppLocalizationCreateRequest).execute { result in
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
     - returns: BetaAppLocalizationResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func betaAppLocalizationsCreateInstance(urlString: String) async throws -> BetaAppLocalizationResponse {
        var requestTask: RequestTask?
        return try await withTaskCancellationHandler {
            try Task.checkCancellation()
            return try await withCheckedThrowingContinuation { continuation in
                guard !Task.isCancelled else {
                  continuation.resume(throwing: CancellationError())
                  return
                }

                requestTask = betaAppLocalizationsCreateInstanceWithRequestBuilder(urlString: urlString).execute { result in
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
     - POST /v1/betaAppLocalizations
     - BASIC:
       - type: http
       - name: itc-bearer-token
     - parameter betaAppLocalizationCreateRequest: (body) BetaAppLocalization representation 
     - returns: RequestBuilder<BetaAppLocalizationResponse> 
     */
    open class func betaAppLocalizationsCreateInstanceWithRequestBuilder(betaAppLocalizationCreateRequest: BetaAppLocalizationCreateRequest) -> RequestBuilder<BetaAppLocalizationResponse> {
        let localVariablePath = "/v1/betaAppLocalizations"
        let localVariableURLString = ASCAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: betaAppLocalizationCreateRequest)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<BetaAppLocalizationResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     - POST /v1/betaAppLocalizations
     - BASIC:
       - type: http
       - name: itc-bearer-token
     - parameter urlString: next or first url from App Store Connect API
     - returns: RequestBuilder<BetaAppLocalizationResponse> 
     */
    open class func betaAppLocalizationsCreateInstanceWithRequestBuilder(urlString: String) -> RequestBuilder<BetaAppLocalizationResponse> {
        let localVariableRequestBuilder: RequestBuilder<BetaAppLocalizationResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()
        return localVariableRequestBuilder.init(method: "POST", URLString: urlString, parameters: nil)
    }

    /**

     - parameter id: (path) the id of the requested resource 
     - returns: Void
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func betaAppLocalizationsDeleteInstance(id: String) async throws {
        var requestTask: RequestTask?
        return try await withTaskCancellationHandler {
            try Task.checkCancellation()
            return try await withCheckedThrowingContinuation { continuation in
                guard !Task.isCancelled else {
                  continuation.resume(throwing: CancellationError())
                  return
                }

                requestTask = betaAppLocalizationsDeleteInstanceWithRequestBuilder(id: id).execute { result in
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
    open class func betaAppLocalizationsDeleteInstance(urlString: String) async throws {
        var requestTask: RequestTask?
        return try await withTaskCancellationHandler {
            try Task.checkCancellation()
            return try await withCheckedThrowingContinuation { continuation in
                guard !Task.isCancelled else {
                  continuation.resume(throwing: CancellationError())
                  return
                }

                requestTask = betaAppLocalizationsDeleteInstanceWithRequestBuilder(urlString: urlString).execute { result in
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
     - DELETE /v1/betaAppLocalizations/{id}
     - BASIC:
       - type: http
       - name: itc-bearer-token
     - parameter id: (path) the id of the requested resource 
     - returns: RequestBuilder<Void> 
     */
    open class func betaAppLocalizationsDeleteInstanceWithRequestBuilder(id: String) -> RequestBuilder<Void> {
        var localVariablePath = "/v1/betaAppLocalizations/{id}"
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
     - DELETE /v1/betaAppLocalizations/{id}
     - BASIC:
       - type: http
       - name: itc-bearer-token
     - parameter urlString: next or first url from App Store Connect API
     - returns: RequestBuilder<Void> 
     */
    open class func betaAppLocalizationsDeleteInstanceWithRequestBuilder(urlString: String) -> RequestBuilder<Void> {
        let localVariableRequestBuilder: RequestBuilder<Void>.Type = ASCAPI.requestBuilderFactory.getNonDecodableBuilder()
        return localVariableRequestBuilder.init(method: "DELETE", URLString: urlString, parameters: nil)
    }

    /**
     * enum for parameter fieldsBetaAppLocalizations
     */
    public enum FieldsBetaAppLocalizations_betaAppLocalizationsGetCollection: String, CaseIterable, JSONEncodable {
        case app = "app"
        case description = "description"
        case feedbackemail = "feedbackEmail"
        case locale = "locale"
        case marketingurl = "marketingUrl"
        case privacypolicyurl = "privacyPolicyUrl"
        case tvosprivacypolicy = "tvOsPrivacyPolicy"
    }

    /**
     * enum for parameter include
     */
    public enum Include_betaAppLocalizationsGetCollection: String, CaseIterable, JSONEncodable {
        case app = "app"
    }

    /**
     * enum for parameter fieldsApps
     */
    public enum FieldsApps_betaAppLocalizationsGetCollection: String, CaseIterable, JSONEncodable {
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

     - parameter filterLocale: (query) filter by attribute &#39;locale&#39; (optional)
     - parameter filterApp: (query) filter by id(s) of related &#39;app&#39; (optional)
     - parameter fieldsBetaAppLocalizations: (query) the fields to include for returned resources of type betaAppLocalizations (optional)
     - parameter limit: (query) maximum resources per page (optional)
     - parameter include: (query) comma-separated list of relationships to include (optional)
     - parameter fieldsApps: (query) the fields to include for returned resources of type apps (optional)
     - returns: BetaAppLocalizationsResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func betaAppLocalizationsGetCollection(filterLocale: [String]? = nil, filterApp: [String]? = nil, fieldsBetaAppLocalizations: [FieldsBetaAppLocalizations_betaAppLocalizationsGetCollection]? = nil, limit: Int? = nil, include: [Include_betaAppLocalizationsGetCollection]? = nil, fieldsApps: [FieldsApps_betaAppLocalizationsGetCollection]? = nil) async throws -> BetaAppLocalizationsResponse {
        var requestTask: RequestTask?
        return try await withTaskCancellationHandler {
            try Task.checkCancellation()
            return try await withCheckedThrowingContinuation { continuation in
                guard !Task.isCancelled else {
                  continuation.resume(throwing: CancellationError())
                  return
                }

                requestTask = betaAppLocalizationsGetCollectionWithRequestBuilder(filterLocale: filterLocale, filterApp: filterApp, fieldsBetaAppLocalizations: fieldsBetaAppLocalizations, limit: limit, include: include, fieldsApps: fieldsApps).execute { result in
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
     - returns: BetaAppLocalizationsResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func betaAppLocalizationsGetCollection(urlString: String) async throws -> BetaAppLocalizationsResponse {
        var requestTask: RequestTask?
        return try await withTaskCancellationHandler {
            try Task.checkCancellation()
            return try await withCheckedThrowingContinuation { continuation in
                guard !Task.isCancelled else {
                  continuation.resume(throwing: CancellationError())
                  return
                }

                requestTask = betaAppLocalizationsGetCollectionWithRequestBuilder(urlString: urlString).execute { result in
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
     - GET /v1/betaAppLocalizations
     - BASIC:
       - type: http
       - name: itc-bearer-token
     - parameter filterLocale: (query) filter by attribute &#39;locale&#39; (optional)
     - parameter filterApp: (query) filter by id(s) of related &#39;app&#39; (optional)
     - parameter fieldsBetaAppLocalizations: (query) the fields to include for returned resources of type betaAppLocalizations (optional)
     - parameter limit: (query) maximum resources per page (optional)
     - parameter include: (query) comma-separated list of relationships to include (optional)
     - parameter fieldsApps: (query) the fields to include for returned resources of type apps (optional)
     - returns: RequestBuilder<BetaAppLocalizationsResponse> 
     */
    open class func betaAppLocalizationsGetCollectionWithRequestBuilder(filterLocale: [String]? = nil, filterApp: [String]? = nil, fieldsBetaAppLocalizations: [FieldsBetaAppLocalizations_betaAppLocalizationsGetCollection]? = nil, limit: Int? = nil, include: [Include_betaAppLocalizationsGetCollection]? = nil, fieldsApps: [FieldsApps_betaAppLocalizationsGetCollection]? = nil) -> RequestBuilder<BetaAppLocalizationsResponse> {
        let localVariablePath = "/v1/betaAppLocalizations"
        let localVariableURLString = ASCAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "filter[locale]": filterLocale?.encodeToJSON(),
            "filter[app]": filterApp?.encodeToJSON(),
            "fields[betaAppLocalizations]": fieldsBetaAppLocalizations?.encodeToJSON(),
            "limit": limit?.encodeToJSON(),
            "include": include?.encodeToJSON(),
            "fields[apps]": fieldsApps?.encodeToJSON(),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<BetaAppLocalizationsResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     - GET /v1/betaAppLocalizations
     - BASIC:
       - type: http
       - name: itc-bearer-token
     - parameter urlString: next or first url from App Store Connect API
     - returns: RequestBuilder<BetaAppLocalizationsResponse> 
     */
    open class func betaAppLocalizationsGetCollectionWithRequestBuilder(urlString: String) -> RequestBuilder<BetaAppLocalizationsResponse> {
        let localVariableRequestBuilder: RequestBuilder<BetaAppLocalizationsResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()
        return localVariableRequestBuilder.init(method: "GET", URLString: urlString, parameters: nil)
    }

    /**
     * enum for parameter fieldsBetaAppLocalizations
     */
    public enum FieldsBetaAppLocalizations_betaAppLocalizationsGetInstance: String, CaseIterable, JSONEncodable {
        case app = "app"
        case description = "description"
        case feedbackemail = "feedbackEmail"
        case locale = "locale"
        case marketingurl = "marketingUrl"
        case privacypolicyurl = "privacyPolicyUrl"
        case tvosprivacypolicy = "tvOsPrivacyPolicy"
    }

    /**
     * enum for parameter include
     */
    public enum Include_betaAppLocalizationsGetInstance: String, CaseIterable, JSONEncodable {
        case app = "app"
    }

    /**
     * enum for parameter fieldsApps
     */
    public enum FieldsApps_betaAppLocalizationsGetInstance: String, CaseIterable, JSONEncodable {
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
     - parameter fieldsBetaAppLocalizations: (query) the fields to include for returned resources of type betaAppLocalizations (optional)
     - parameter include: (query) comma-separated list of relationships to include (optional)
     - parameter fieldsApps: (query) the fields to include for returned resources of type apps (optional)
     - returns: BetaAppLocalizationResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func betaAppLocalizationsGetInstance(id: String, fieldsBetaAppLocalizations: [FieldsBetaAppLocalizations_betaAppLocalizationsGetInstance]? = nil, include: [Include_betaAppLocalizationsGetInstance]? = nil, fieldsApps: [FieldsApps_betaAppLocalizationsGetInstance]? = nil) async throws -> BetaAppLocalizationResponse {
        var requestTask: RequestTask?
        return try await withTaskCancellationHandler {
            try Task.checkCancellation()
            return try await withCheckedThrowingContinuation { continuation in
                guard !Task.isCancelled else {
                  continuation.resume(throwing: CancellationError())
                  return
                }

                requestTask = betaAppLocalizationsGetInstanceWithRequestBuilder(id: id, fieldsBetaAppLocalizations: fieldsBetaAppLocalizations, include: include, fieldsApps: fieldsApps).execute { result in
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
     - returns: BetaAppLocalizationResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func betaAppLocalizationsGetInstance(urlString: String) async throws -> BetaAppLocalizationResponse {
        var requestTask: RequestTask?
        return try await withTaskCancellationHandler {
            try Task.checkCancellation()
            return try await withCheckedThrowingContinuation { continuation in
                guard !Task.isCancelled else {
                  continuation.resume(throwing: CancellationError())
                  return
                }

                requestTask = betaAppLocalizationsGetInstanceWithRequestBuilder(urlString: urlString).execute { result in
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
     - GET /v1/betaAppLocalizations/{id}
     - BASIC:
       - type: http
       - name: itc-bearer-token
     - parameter id: (path) the id of the requested resource 
     - parameter fieldsBetaAppLocalizations: (query) the fields to include for returned resources of type betaAppLocalizations (optional)
     - parameter include: (query) comma-separated list of relationships to include (optional)
     - parameter fieldsApps: (query) the fields to include for returned resources of type apps (optional)
     - returns: RequestBuilder<BetaAppLocalizationResponse> 
     */
    open class func betaAppLocalizationsGetInstanceWithRequestBuilder(id: String, fieldsBetaAppLocalizations: [FieldsBetaAppLocalizations_betaAppLocalizationsGetInstance]? = nil, include: [Include_betaAppLocalizationsGetInstance]? = nil, fieldsApps: [FieldsApps_betaAppLocalizationsGetInstance]? = nil) -> RequestBuilder<BetaAppLocalizationResponse> {
        var localVariablePath = "/v1/betaAppLocalizations/{id}"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = ASCAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "fields[betaAppLocalizations]": fieldsBetaAppLocalizations?.encodeToJSON(),
            "include": include?.encodeToJSON(),
            "fields[apps]": fieldsApps?.encodeToJSON(),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<BetaAppLocalizationResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     - GET /v1/betaAppLocalizations/{id}
     - BASIC:
       - type: http
       - name: itc-bearer-token
     - parameter urlString: next or first url from App Store Connect API
     - returns: RequestBuilder<BetaAppLocalizationResponse> 
     */
    open class func betaAppLocalizationsGetInstanceWithRequestBuilder(urlString: String) -> RequestBuilder<BetaAppLocalizationResponse> {
        let localVariableRequestBuilder: RequestBuilder<BetaAppLocalizationResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()
        return localVariableRequestBuilder.init(method: "GET", URLString: urlString, parameters: nil)
    }

    /**

     - parameter id: (path) the id of the requested resource 
     - parameter betaAppLocalizationUpdateRequest: (body) BetaAppLocalization representation 
     - returns: BetaAppLocalizationResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func betaAppLocalizationsUpdateInstance(id: String, betaAppLocalizationUpdateRequest: BetaAppLocalizationUpdateRequest) async throws -> BetaAppLocalizationResponse {
        var requestTask: RequestTask?
        return try await withTaskCancellationHandler {
            try Task.checkCancellation()
            return try await withCheckedThrowingContinuation { continuation in
                guard !Task.isCancelled else {
                  continuation.resume(throwing: CancellationError())
                  return
                }

                requestTask = betaAppLocalizationsUpdateInstanceWithRequestBuilder(id: id, betaAppLocalizationUpdateRequest: betaAppLocalizationUpdateRequest).execute { result in
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
     - returns: BetaAppLocalizationResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func betaAppLocalizationsUpdateInstance(urlString: String) async throws -> BetaAppLocalizationResponse {
        var requestTask: RequestTask?
        return try await withTaskCancellationHandler {
            try Task.checkCancellation()
            return try await withCheckedThrowingContinuation { continuation in
                guard !Task.isCancelled else {
                  continuation.resume(throwing: CancellationError())
                  return
                }

                requestTask = betaAppLocalizationsUpdateInstanceWithRequestBuilder(urlString: urlString).execute { result in
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
     - PATCH /v1/betaAppLocalizations/{id}
     - BASIC:
       - type: http
       - name: itc-bearer-token
     - parameter id: (path) the id of the requested resource 
     - parameter betaAppLocalizationUpdateRequest: (body) BetaAppLocalization representation 
     - returns: RequestBuilder<BetaAppLocalizationResponse> 
     */
    open class func betaAppLocalizationsUpdateInstanceWithRequestBuilder(id: String, betaAppLocalizationUpdateRequest: BetaAppLocalizationUpdateRequest) -> RequestBuilder<BetaAppLocalizationResponse> {
        var localVariablePath = "/v1/betaAppLocalizations/{id}"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = ASCAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: betaAppLocalizationUpdateRequest)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<BetaAppLocalizationResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PATCH", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     - PATCH /v1/betaAppLocalizations/{id}
     - BASIC:
       - type: http
       - name: itc-bearer-token
     - parameter urlString: next or first url from App Store Connect API
     - returns: RequestBuilder<BetaAppLocalizationResponse> 
     */
    open class func betaAppLocalizationsUpdateInstanceWithRequestBuilder(urlString: String) -> RequestBuilder<BetaAppLocalizationResponse> {
        let localVariableRequestBuilder: RequestBuilder<BetaAppLocalizationResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()
        return localVariableRequestBuilder.init(method: "PATCH", URLString: urlString, parameters: nil)
    }
}
