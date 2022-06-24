//
// UserInvitationsAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

open class UserInvitationsAPI {

    /**

     - parameter userInvitationCreateRequest: (body) UserInvitation representation 
     - returns: UserInvitationResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func userInvitationsCreateInstance(userInvitationCreateRequest: UserInvitationCreateRequest) async throws -> UserInvitationResponse {
        var requestTask: RequestTask?
        return try await withTaskCancellationHandler {
            try Task.checkCancellation()
            return try await withCheckedThrowingContinuation { continuation in
                guard !Task.isCancelled else {
                  continuation.resume(throwing: CancellationError())
                  return
                }

                requestTask = userInvitationsCreateInstanceWithRequestBuilder(userInvitationCreateRequest: userInvitationCreateRequest).execute { result in
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
     - returns: UserInvitationResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func userInvitationsCreateInstance(urlString: String) async throws -> UserInvitationResponse {
        var requestTask: RequestTask?
        return try await withTaskCancellationHandler {
            try Task.checkCancellation()
            return try await withCheckedThrowingContinuation { continuation in
                guard !Task.isCancelled else {
                  continuation.resume(throwing: CancellationError())
                  return
                }

                requestTask = userInvitationsCreateInstanceWithRequestBuilder(urlString: urlString).execute { result in
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
     - POST /v1/userInvitations
     - BASIC:
       - type: http
       - name: itc-bearer-token
     - parameter userInvitationCreateRequest: (body) UserInvitation representation 
     - returns: RequestBuilder<UserInvitationResponse> 
     */
    open class func userInvitationsCreateInstanceWithRequestBuilder(userInvitationCreateRequest: UserInvitationCreateRequest) -> RequestBuilder<UserInvitationResponse> {
        let localVariablePath = "/v1/userInvitations"
        let localVariableURLString = ASCAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: userInvitationCreateRequest)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<UserInvitationResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     - POST /v1/userInvitations
     - BASIC:
       - type: http
       - name: itc-bearer-token
     - parameter urlString: next or first url from App Store Connect API
     - returns: RequestBuilder<UserInvitationResponse> 
     */
    open class func userInvitationsCreateInstanceWithRequestBuilder(urlString: String) -> RequestBuilder<UserInvitationResponse> {
        let localVariableRequestBuilder: RequestBuilder<UserInvitationResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()
        return localVariableRequestBuilder.init(method: "POST", URLString: urlString, parameters: nil)
    }

    /**

     - parameter id: (path) the id of the requested resource 
     - returns: Void
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func userInvitationsDeleteInstance(id: String) async throws {
        var requestTask: RequestTask?
        return try await withTaskCancellationHandler {
            try Task.checkCancellation()
            return try await withCheckedThrowingContinuation { continuation in
                guard !Task.isCancelled else {
                  continuation.resume(throwing: CancellationError())
                  return
                }

                requestTask = userInvitationsDeleteInstanceWithRequestBuilder(id: id).execute { result in
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
    open class func userInvitationsDeleteInstance(urlString: String) async throws {
        var requestTask: RequestTask?
        return try await withTaskCancellationHandler {
            try Task.checkCancellation()
            return try await withCheckedThrowingContinuation { continuation in
                guard !Task.isCancelled else {
                  continuation.resume(throwing: CancellationError())
                  return
                }

                requestTask = userInvitationsDeleteInstanceWithRequestBuilder(urlString: urlString).execute { result in
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
     - DELETE /v1/userInvitations/{id}
     - BASIC:
       - type: http
       - name: itc-bearer-token
     - parameter id: (path) the id of the requested resource 
     - returns: RequestBuilder<Void> 
     */
    open class func userInvitationsDeleteInstanceWithRequestBuilder(id: String) -> RequestBuilder<Void> {
        var localVariablePath = "/v1/userInvitations/{id}"
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
     - DELETE /v1/userInvitations/{id}
     - BASIC:
       - type: http
       - name: itc-bearer-token
     - parameter urlString: next or first url from App Store Connect API
     - returns: RequestBuilder<Void> 
     */
    open class func userInvitationsDeleteInstanceWithRequestBuilder(urlString: String) -> RequestBuilder<Void> {
        let localVariableRequestBuilder: RequestBuilder<Void>.Type = ASCAPI.requestBuilderFactory.getNonDecodableBuilder()
        return localVariableRequestBuilder.init(method: "DELETE", URLString: urlString, parameters: nil)
    }

    /**
     * enum for parameter filterRoles
     */
    public enum FilterRoles_userInvitationsGetCollection: String, CaseIterable, JSONEncodable {
        case admin = "ADMIN"
        case finance = "FINANCE"
        case accountHolder = "ACCOUNT_HOLDER"
        case sales = "SALES"
        case marketing = "MARKETING"
        case appManager = "APP_MANAGER"
        case developer = "DEVELOPER"
        case accessToReports = "ACCESS_TO_REPORTS"
        case customerSupport = "CUSTOMER_SUPPORT"
        case imageManager = "IMAGE_MANAGER"
        case createApps = "CREATE_APPS"
        case cloudManagedDeveloperId = "CLOUD_MANAGED_DEVELOPER_ID"
        case cloudManagedAppDistribution = "CLOUD_MANAGED_APP_DISTRIBUTION"
    }

    /**
     * enum for parameter sort
     */
    public enum Sort_userInvitationsGetCollection: String, CaseIterable, JSONEncodable {
        case email = "email"
        case email_desc = "-email"
        case lastname = "lastName"
        case lastname_desc = "-lastName"
    }

    /**
     * enum for parameter fieldsUserInvitations
     */
    public enum FieldsUserInvitations_userInvitationsGetCollection: String, CaseIterable, JSONEncodable {
        case allappsvisible = "allAppsVisible"
        case email = "email"
        case expirationdate = "expirationDate"
        case firstname = "firstName"
        case lastname = "lastName"
        case provisioningallowed = "provisioningAllowed"
        case roles = "roles"
        case visibleapps = "visibleApps"
    }

    /**
     * enum for parameter include
     */
    public enum Include_userInvitationsGetCollection: String, CaseIterable, JSONEncodable {
        case visibleapps = "visibleApps"
    }

    /**
     * enum for parameter fieldsApps
     */
    public enum FieldsApps_userInvitationsGetCollection: String, CaseIterable, JSONEncodable {
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

     - parameter filterEmail: (query) filter by attribute &#39;email&#39; (optional)
     - parameter filterRoles: (query) filter by attribute &#39;roles&#39; (optional)
     - parameter filterVisibleApps: (query) filter by id(s) of related &#39;visibleApps&#39; (optional)
     - parameter sort: (query) comma-separated list of sort expressions; resources will be sorted as specified (optional)
     - parameter fieldsUserInvitations: (query) the fields to include for returned resources of type userInvitations (optional)
     - parameter limit: (query) maximum resources per page (optional)
     - parameter include: (query) comma-separated list of relationships to include (optional)
     - parameter fieldsApps: (query) the fields to include for returned resources of type apps (optional)
     - parameter limitVisibleApps: (query) maximum number of related visibleApps returned (when they are included) (optional)
     - returns: UserInvitationsResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func userInvitationsGetCollection(filterEmail: [String]? = nil, filterRoles: [FilterRoles_userInvitationsGetCollection]? = nil, filterVisibleApps: [String]? = nil, sort: [Sort_userInvitationsGetCollection]? = nil, fieldsUserInvitations: [FieldsUserInvitations_userInvitationsGetCollection]? = nil, limit: Int? = nil, include: [Include_userInvitationsGetCollection]? = nil, fieldsApps: [FieldsApps_userInvitationsGetCollection]? = nil, limitVisibleApps: Int? = nil) async throws -> UserInvitationsResponse {
        var requestTask: RequestTask?
        return try await withTaskCancellationHandler {
            try Task.checkCancellation()
            return try await withCheckedThrowingContinuation { continuation in
                guard !Task.isCancelled else {
                  continuation.resume(throwing: CancellationError())
                  return
                }

                requestTask = userInvitationsGetCollectionWithRequestBuilder(filterEmail: filterEmail, filterRoles: filterRoles, filterVisibleApps: filterVisibleApps, sort: sort, fieldsUserInvitations: fieldsUserInvitations, limit: limit, include: include, fieldsApps: fieldsApps, limitVisibleApps: limitVisibleApps).execute { result in
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
     - returns: UserInvitationsResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func userInvitationsGetCollection(urlString: String) async throws -> UserInvitationsResponse {
        var requestTask: RequestTask?
        return try await withTaskCancellationHandler {
            try Task.checkCancellation()
            return try await withCheckedThrowingContinuation { continuation in
                guard !Task.isCancelled else {
                  continuation.resume(throwing: CancellationError())
                  return
                }

                requestTask = userInvitationsGetCollectionWithRequestBuilder(urlString: urlString).execute { result in
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
     - GET /v1/userInvitations
     - BASIC:
       - type: http
       - name: itc-bearer-token
     - parameter filterEmail: (query) filter by attribute &#39;email&#39; (optional)
     - parameter filterRoles: (query) filter by attribute &#39;roles&#39; (optional)
     - parameter filterVisibleApps: (query) filter by id(s) of related &#39;visibleApps&#39; (optional)
     - parameter sort: (query) comma-separated list of sort expressions; resources will be sorted as specified (optional)
     - parameter fieldsUserInvitations: (query) the fields to include for returned resources of type userInvitations (optional)
     - parameter limit: (query) maximum resources per page (optional)
     - parameter include: (query) comma-separated list of relationships to include (optional)
     - parameter fieldsApps: (query) the fields to include for returned resources of type apps (optional)
     - parameter limitVisibleApps: (query) maximum number of related visibleApps returned (when they are included) (optional)
     - returns: RequestBuilder<UserInvitationsResponse> 
     */
    open class func userInvitationsGetCollectionWithRequestBuilder(filterEmail: [String]? = nil, filterRoles: [FilterRoles_userInvitationsGetCollection]? = nil, filterVisibleApps: [String]? = nil, sort: [Sort_userInvitationsGetCollection]? = nil, fieldsUserInvitations: [FieldsUserInvitations_userInvitationsGetCollection]? = nil, limit: Int? = nil, include: [Include_userInvitationsGetCollection]? = nil, fieldsApps: [FieldsApps_userInvitationsGetCollection]? = nil, limitVisibleApps: Int? = nil) -> RequestBuilder<UserInvitationsResponse> {
        let localVariablePath = "/v1/userInvitations"
        let localVariableURLString = ASCAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "filter[email]": filterEmail?.encodeToJSON(),
            "filter[roles]": filterRoles?.encodeToJSON(),
            "filter[visibleApps]": filterVisibleApps?.encodeToJSON(),
            "sort": sort?.encodeToJSON(),
            "fields[userInvitations]": fieldsUserInvitations?.encodeToJSON(),
            "limit": limit?.encodeToJSON(),
            "include": include?.encodeToJSON(),
            "fields[apps]": fieldsApps?.encodeToJSON(),
            "limit[visibleApps]": limitVisibleApps?.encodeToJSON(),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<UserInvitationsResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     - GET /v1/userInvitations
     - BASIC:
       - type: http
       - name: itc-bearer-token
     - parameter urlString: next or first url from App Store Connect API
     - returns: RequestBuilder<UserInvitationsResponse> 
     */
    open class func userInvitationsGetCollectionWithRequestBuilder(urlString: String) -> RequestBuilder<UserInvitationsResponse> {
        let localVariableRequestBuilder: RequestBuilder<UserInvitationsResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()
        return localVariableRequestBuilder.init(method: "GET", URLString: urlString, parameters: nil)
    }

    /**
     * enum for parameter fieldsUserInvitations
     */
    public enum FieldsUserInvitations_userInvitationsGetInstance: String, CaseIterable, JSONEncodable {
        case allappsvisible = "allAppsVisible"
        case email = "email"
        case expirationdate = "expirationDate"
        case firstname = "firstName"
        case lastname = "lastName"
        case provisioningallowed = "provisioningAllowed"
        case roles = "roles"
        case visibleapps = "visibleApps"
    }

    /**
     * enum for parameter include
     */
    public enum Include_userInvitationsGetInstance: String, CaseIterable, JSONEncodable {
        case visibleapps = "visibleApps"
    }

    /**
     * enum for parameter fieldsApps
     */
    public enum FieldsApps_userInvitationsGetInstance: String, CaseIterable, JSONEncodable {
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
     - parameter fieldsUserInvitations: (query) the fields to include for returned resources of type userInvitations (optional)
     - parameter include: (query) comma-separated list of relationships to include (optional)
     - parameter fieldsApps: (query) the fields to include for returned resources of type apps (optional)
     - parameter limitVisibleApps: (query) maximum number of related visibleApps returned (when they are included) (optional)
     - returns: UserInvitationResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func userInvitationsGetInstance(id: String, fieldsUserInvitations: [FieldsUserInvitations_userInvitationsGetInstance]? = nil, include: [Include_userInvitationsGetInstance]? = nil, fieldsApps: [FieldsApps_userInvitationsGetInstance]? = nil, limitVisibleApps: Int? = nil) async throws -> UserInvitationResponse {
        var requestTask: RequestTask?
        return try await withTaskCancellationHandler {
            try Task.checkCancellation()
            return try await withCheckedThrowingContinuation { continuation in
                guard !Task.isCancelled else {
                  continuation.resume(throwing: CancellationError())
                  return
                }

                requestTask = userInvitationsGetInstanceWithRequestBuilder(id: id, fieldsUserInvitations: fieldsUserInvitations, include: include, fieldsApps: fieldsApps, limitVisibleApps: limitVisibleApps).execute { result in
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
     - returns: UserInvitationResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func userInvitationsGetInstance(urlString: String) async throws -> UserInvitationResponse {
        var requestTask: RequestTask?
        return try await withTaskCancellationHandler {
            try Task.checkCancellation()
            return try await withCheckedThrowingContinuation { continuation in
                guard !Task.isCancelled else {
                  continuation.resume(throwing: CancellationError())
                  return
                }

                requestTask = userInvitationsGetInstanceWithRequestBuilder(urlString: urlString).execute { result in
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
     - GET /v1/userInvitations/{id}
     - BASIC:
       - type: http
       - name: itc-bearer-token
     - parameter id: (path) the id of the requested resource 
     - parameter fieldsUserInvitations: (query) the fields to include for returned resources of type userInvitations (optional)
     - parameter include: (query) comma-separated list of relationships to include (optional)
     - parameter fieldsApps: (query) the fields to include for returned resources of type apps (optional)
     - parameter limitVisibleApps: (query) maximum number of related visibleApps returned (when they are included) (optional)
     - returns: RequestBuilder<UserInvitationResponse> 
     */
    open class func userInvitationsGetInstanceWithRequestBuilder(id: String, fieldsUserInvitations: [FieldsUserInvitations_userInvitationsGetInstance]? = nil, include: [Include_userInvitationsGetInstance]? = nil, fieldsApps: [FieldsApps_userInvitationsGetInstance]? = nil, limitVisibleApps: Int? = nil) -> RequestBuilder<UserInvitationResponse> {
        var localVariablePath = "/v1/userInvitations/{id}"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = ASCAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "fields[userInvitations]": fieldsUserInvitations?.encodeToJSON(),
            "include": include?.encodeToJSON(),
            "fields[apps]": fieldsApps?.encodeToJSON(),
            "limit[visibleApps]": limitVisibleApps?.encodeToJSON(),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<UserInvitationResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     - GET /v1/userInvitations/{id}
     - BASIC:
       - type: http
       - name: itc-bearer-token
     - parameter urlString: next or first url from App Store Connect API
     - returns: RequestBuilder<UserInvitationResponse> 
     */
    open class func userInvitationsGetInstanceWithRequestBuilder(urlString: String) -> RequestBuilder<UserInvitationResponse> {
        let localVariableRequestBuilder: RequestBuilder<UserInvitationResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()
        return localVariableRequestBuilder.init(method: "GET", URLString: urlString, parameters: nil)
    }

    /**
     * enum for parameter fieldsApps
     */
    public enum FieldsApps_userInvitationsVisibleAppsGetToManyRelated: String, CaseIterable, JSONEncodable {
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
     - parameter limit: (query) maximum resources per page (optional)
     - returns: AppsResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func userInvitationsVisibleAppsGetToManyRelated(id: String, fieldsApps: [FieldsApps_userInvitationsVisibleAppsGetToManyRelated]? = nil, limit: Int? = nil) async throws -> AppsResponse {
        var requestTask: RequestTask?
        return try await withTaskCancellationHandler {
            try Task.checkCancellation()
            return try await withCheckedThrowingContinuation { continuation in
                guard !Task.isCancelled else {
                  continuation.resume(throwing: CancellationError())
                  return
                }

                requestTask = userInvitationsVisibleAppsGetToManyRelatedWithRequestBuilder(id: id, fieldsApps: fieldsApps, limit: limit).execute { result in
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
     - returns: AppsResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func userInvitationsVisibleAppsGetToManyRelated(urlString: String) async throws -> AppsResponse {
        var requestTask: RequestTask?
        return try await withTaskCancellationHandler {
            try Task.checkCancellation()
            return try await withCheckedThrowingContinuation { continuation in
                guard !Task.isCancelled else {
                  continuation.resume(throwing: CancellationError())
                  return
                }

                requestTask = userInvitationsVisibleAppsGetToManyRelatedWithRequestBuilder(urlString: urlString).execute { result in
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
     - GET /v1/userInvitations/{id}/visibleApps
     - BASIC:
       - type: http
       - name: itc-bearer-token
     - parameter id: (path) the id of the requested resource 
     - parameter fieldsApps: (query) the fields to include for returned resources of type apps (optional)
     - parameter limit: (query) maximum resources per page (optional)
     - returns: RequestBuilder<AppsResponse> 
     */
    open class func userInvitationsVisibleAppsGetToManyRelatedWithRequestBuilder(id: String, fieldsApps: [FieldsApps_userInvitationsVisibleAppsGetToManyRelated]? = nil, limit: Int? = nil) -> RequestBuilder<AppsResponse> {
        var localVariablePath = "/v1/userInvitations/{id}/visibleApps"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = ASCAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "fields[apps]": fieldsApps?.encodeToJSON(),
            "limit": limit?.encodeToJSON(),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AppsResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     - GET /v1/userInvitations/{id}/visibleApps
     - BASIC:
       - type: http
       - name: itc-bearer-token
     - parameter urlString: next or first url from App Store Connect API
     - returns: RequestBuilder<AppsResponse> 
     */
    open class func userInvitationsVisibleAppsGetToManyRelatedWithRequestBuilder(urlString: String) -> RequestBuilder<AppsResponse> {
        let localVariableRequestBuilder: RequestBuilder<AppsResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()
        return localVariableRequestBuilder.init(method: "GET", URLString: urlString, parameters: nil)
    }
}
