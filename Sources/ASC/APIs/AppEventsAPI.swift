//
// AppEventsAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

open class AppEventsAPI {

    /**

     - parameter appEventCreateRequest: (body) AppEvent representation 
     - returns: AppEventResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func appEventsCreateInstance(appEventCreateRequest: AppEventCreateRequest) async throws -> AppEventResponse {
        return try await appEventsCreateInstanceWithRequestBuilder(appEventCreateRequest: appEventCreateRequest).execute().body
    }

    /**
     - parameter urlString: next or first url from App Store Connect API
     - returns: AppEventResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func appEventsCreateInstance(urlString: String) async throws -> AppEventResponse {
        return try await appEventsCreateInstanceWithRequestBuilder(urlString: urlString).execute().body
    }

    /**
     - POST /v1/appEvents
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter appEventCreateRequest: (body) AppEvent representation 
     - returns: RequestBuilder<AppEventResponse> 
     */
    open class func appEventsCreateInstanceWithRequestBuilder(appEventCreateRequest: AppEventCreateRequest) -> RequestBuilder<AppEventResponse> {
        let localVariablePath = "/v1/appEvents"
        let localVariableURLString = ASCAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: appEventCreateRequest)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            "Content-Type": "application/json",
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AppEventResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     - POST /v1/appEvents
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter urlString: next or first url from App Store Connect API
     - returns: RequestBuilder<AppEventResponse> 
     */
    open class func appEventsCreateInstanceWithRequestBuilder(urlString: String) -> RequestBuilder<AppEventResponse> {
        let localVariableNillableHeaders: [String: Any?] = [
            "Content-Type": "application/json",
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AppEventResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: urlString, parameters: nil, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**

     - parameter id: (path) the id of the requested resource 
     - returns: Void
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func appEventsDeleteInstance(id: String) async throws {
        return try await appEventsDeleteInstanceWithRequestBuilder(id: id).execute().body
    }

    /**
     - parameter urlString: next or first url from App Store Connect API
     - returns: Void
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func appEventsDeleteInstance(urlString: String) async throws {
        return try await appEventsDeleteInstanceWithRequestBuilder(urlString: urlString).execute().body
    }

    /**
     - DELETE /v1/appEvents/{id}
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter id: (path) the id of the requested resource 
     - returns: RequestBuilder<Void> 
     */
    open class func appEventsDeleteInstanceWithRequestBuilder(id: String) -> RequestBuilder<Void> {
        var localVariablePath = "/v1/appEvents/{id}"
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

        return localVariableRequestBuilder.init(method: "DELETE", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     - DELETE /v1/appEvents/{id}
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter urlString: next or first url from App Store Connect API
     - returns: RequestBuilder<Void> 
     */
    open class func appEventsDeleteInstanceWithRequestBuilder(urlString: String) -> RequestBuilder<Void> {
        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Void>.Type = ASCAPI.requestBuilderFactory.getNonDecodableBuilder()

        return localVariableRequestBuilder.init(method: "DELETE", URLString: urlString, parameters: nil, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     * enum for parameter fieldsAppEvents
     */
    public enum FieldsAppEvents_appEventsGetInstance: String, CaseIterable {
        case app = "app"
        case archivedterritoryschedules = "archivedTerritorySchedules"
        case badge = "badge"
        case deeplink = "deepLink"
        case eventstate = "eventState"
        case localizations = "localizations"
        case primarylocale = "primaryLocale"
        case priority = "priority"
        case purchaserequirement = "purchaseRequirement"
        case purpose = "purpose"
        case referencename = "referenceName"
        case territoryschedules = "territorySchedules"
    }

    /**
     * enum for parameter include
     */
    public enum Include_appEventsGetInstance: String, CaseIterable {
        case localizations = "localizations"
    }

    /**
     * enum for parameter fieldsAppEventLocalizations
     */
    public enum FieldsAppEventLocalizations_appEventsGetInstance: String, CaseIterable {
        case appevent = "appEvent"
        case appeventscreenshots = "appEventScreenshots"
        case appeventvideoclips = "appEventVideoClips"
        case locale = "locale"
        case longdescription = "longDescription"
        case name = "name"
        case shortdescription = "shortDescription"
    }

    /**

     - parameter id: (path) the id of the requested resource 
     - parameter fieldsAppEvents: (query) the fields to include for returned resources of type appEvents (optional)
     - parameter include: (query) comma-separated list of relationships to include (optional)
     - parameter fieldsAppEventLocalizations: (query) the fields to include for returned resources of type appEventLocalizations (optional)
     - parameter limitLocalizations: (query) maximum number of related localizations returned (when they are included) (optional)
     - returns: AppEventResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func appEventsGetInstance(id: String, fieldsAppEvents: [FieldsAppEvents_appEventsGetInstance]? = nil, include: [Include_appEventsGetInstance]? = nil, fieldsAppEventLocalizations: [FieldsAppEventLocalizations_appEventsGetInstance]? = nil, limitLocalizations: Int? = nil) async throws -> AppEventResponse {
        return try await appEventsGetInstanceWithRequestBuilder(id: id, fieldsAppEvents: fieldsAppEvents, include: include, fieldsAppEventLocalizations: fieldsAppEventLocalizations, limitLocalizations: limitLocalizations).execute().body
    }

    /**
     - parameter urlString: next or first url from App Store Connect API
     - returns: AppEventResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func appEventsGetInstance(urlString: String) async throws -> AppEventResponse {
        return try await appEventsGetInstanceWithRequestBuilder(urlString: urlString).execute().body
    }

    /**
     - GET /v1/appEvents/{id}
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter id: (path) the id of the requested resource 
     - parameter fieldsAppEvents: (query) the fields to include for returned resources of type appEvents (optional)
     - parameter include: (query) comma-separated list of relationships to include (optional)
     - parameter fieldsAppEventLocalizations: (query) the fields to include for returned resources of type appEventLocalizations (optional)
     - parameter limitLocalizations: (query) maximum number of related localizations returned (when they are included) (optional)
     - returns: RequestBuilder<AppEventResponse> 
     */
    open class func appEventsGetInstanceWithRequestBuilder(id: String, fieldsAppEvents: [FieldsAppEvents_appEventsGetInstance]? = nil, include: [Include_appEventsGetInstance]? = nil, fieldsAppEventLocalizations: [FieldsAppEventLocalizations_appEventsGetInstance]? = nil, limitLocalizations: Int? = nil) -> RequestBuilder<AppEventResponse> {
        var localVariablePath = "/v1/appEvents/{id}"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = ASCAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "fields[appEvents]": (wrappedValue: fieldsAppEvents?.encodeToJSON(), isExplode: false),
            "include": (wrappedValue: include?.encodeToJSON(), isExplode: false),
            "fields[appEventLocalizations]": (wrappedValue: fieldsAppEventLocalizations?.encodeToJSON(), isExplode: false),
            "limit[localizations]": (wrappedValue: limitLocalizations?.encodeToJSON(), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AppEventResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     - GET /v1/appEvents/{id}
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter urlString: next or first url from App Store Connect API
     - returns: RequestBuilder<AppEventResponse> 
     */
    open class func appEventsGetInstanceWithRequestBuilder(urlString: String) -> RequestBuilder<AppEventResponse> {
        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AppEventResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: urlString, parameters: nil, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     * enum for parameter fieldsAppEventScreenshots
     */
    public enum FieldsAppEventScreenshots_appEventsLocalizationsGetToManyRelated: String, CaseIterable {
        case appeventassettype = "appEventAssetType"
        case appeventlocalization = "appEventLocalization"
        case assetdeliverystate = "assetDeliveryState"
        case assettoken = "assetToken"
        case filename = "fileName"
        case filesize = "fileSize"
        case imageasset = "imageAsset"
        case uploadoperations = "uploadOperations"
        case uploaded = "uploaded"
    }

    /**
     * enum for parameter fieldsAppEventVideoClips
     */
    public enum FieldsAppEventVideoClips_appEventsLocalizationsGetToManyRelated: String, CaseIterable {
        case appeventassettype = "appEventAssetType"
        case appeventlocalization = "appEventLocalization"
        case assetdeliverystate = "assetDeliveryState"
        case filename = "fileName"
        case filesize = "fileSize"
        case previewframetimecode = "previewFrameTimeCode"
        case previewimage = "previewImage"
        case uploadoperations = "uploadOperations"
        case uploaded = "uploaded"
        case videourl = "videoUrl"
    }

    /**
     * enum for parameter fieldsAppEventLocalizations
     */
    public enum FieldsAppEventLocalizations_appEventsLocalizationsGetToManyRelated: String, CaseIterable {
        case appevent = "appEvent"
        case appeventscreenshots = "appEventScreenshots"
        case appeventvideoclips = "appEventVideoClips"
        case locale = "locale"
        case longdescription = "longDescription"
        case name = "name"
        case shortdescription = "shortDescription"
    }

    /**
     * enum for parameter fieldsAppEvents
     */
    public enum FieldsAppEvents_appEventsLocalizationsGetToManyRelated: String, CaseIterable {
        case app = "app"
        case archivedterritoryschedules = "archivedTerritorySchedules"
        case badge = "badge"
        case deeplink = "deepLink"
        case eventstate = "eventState"
        case localizations = "localizations"
        case primarylocale = "primaryLocale"
        case priority = "priority"
        case purchaserequirement = "purchaseRequirement"
        case purpose = "purpose"
        case referencename = "referenceName"
        case territoryschedules = "territorySchedules"
    }

    /**
     * enum for parameter include
     */
    public enum Include_appEventsLocalizationsGetToManyRelated: String, CaseIterable {
        case appevent = "appEvent"
        case appeventscreenshots = "appEventScreenshots"
        case appeventvideoclips = "appEventVideoClips"
    }

    /**

     - parameter id: (path) the id of the requested resource 
     - parameter fieldsAppEventScreenshots: (query) the fields to include for returned resources of type appEventScreenshots (optional)
     - parameter fieldsAppEventVideoClips: (query) the fields to include for returned resources of type appEventVideoClips (optional)
     - parameter fieldsAppEventLocalizations: (query) the fields to include for returned resources of type appEventLocalizations (optional)
     - parameter fieldsAppEvents: (query) the fields to include for returned resources of type appEvents (optional)
     - parameter limit: (query) maximum resources per page (optional)
     - parameter limitAppEventScreenshots: (query) maximum number of related appEventScreenshots returned (when they are included) (optional)
     - parameter limitAppEventVideoClips: (query) maximum number of related appEventVideoClips returned (when they are included) (optional)
     - parameter include: (query) comma-separated list of relationships to include (optional)
     - returns: AppEventLocalizationsResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func appEventsLocalizationsGetToManyRelated(id: String, fieldsAppEventScreenshots: [FieldsAppEventScreenshots_appEventsLocalizationsGetToManyRelated]? = nil, fieldsAppEventVideoClips: [FieldsAppEventVideoClips_appEventsLocalizationsGetToManyRelated]? = nil, fieldsAppEventLocalizations: [FieldsAppEventLocalizations_appEventsLocalizationsGetToManyRelated]? = nil, fieldsAppEvents: [FieldsAppEvents_appEventsLocalizationsGetToManyRelated]? = nil, limit: Int? = nil, limitAppEventScreenshots: Int? = nil, limitAppEventVideoClips: Int? = nil, include: [Include_appEventsLocalizationsGetToManyRelated]? = nil) async throws -> AppEventLocalizationsResponse {
        return try await appEventsLocalizationsGetToManyRelatedWithRequestBuilder(id: id, fieldsAppEventScreenshots: fieldsAppEventScreenshots, fieldsAppEventVideoClips: fieldsAppEventVideoClips, fieldsAppEventLocalizations: fieldsAppEventLocalizations, fieldsAppEvents: fieldsAppEvents, limit: limit, limitAppEventScreenshots: limitAppEventScreenshots, limitAppEventVideoClips: limitAppEventVideoClips, include: include).execute().body
    }

    /**
     - parameter urlString: next or first url from App Store Connect API
     - returns: AppEventLocalizationsResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func appEventsLocalizationsGetToManyRelated(urlString: String) async throws -> AppEventLocalizationsResponse {
        return try await appEventsLocalizationsGetToManyRelatedWithRequestBuilder(urlString: urlString).execute().body
    }

    /**
     - GET /v1/appEvents/{id}/localizations
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter id: (path) the id of the requested resource 
     - parameter fieldsAppEventScreenshots: (query) the fields to include for returned resources of type appEventScreenshots (optional)
     - parameter fieldsAppEventVideoClips: (query) the fields to include for returned resources of type appEventVideoClips (optional)
     - parameter fieldsAppEventLocalizations: (query) the fields to include for returned resources of type appEventLocalizations (optional)
     - parameter fieldsAppEvents: (query) the fields to include for returned resources of type appEvents (optional)
     - parameter limit: (query) maximum resources per page (optional)
     - parameter limitAppEventScreenshots: (query) maximum number of related appEventScreenshots returned (when they are included) (optional)
     - parameter limitAppEventVideoClips: (query) maximum number of related appEventVideoClips returned (when they are included) (optional)
     - parameter include: (query) comma-separated list of relationships to include (optional)
     - returns: RequestBuilder<AppEventLocalizationsResponse> 
     */
    open class func appEventsLocalizationsGetToManyRelatedWithRequestBuilder(id: String, fieldsAppEventScreenshots: [FieldsAppEventScreenshots_appEventsLocalizationsGetToManyRelated]? = nil, fieldsAppEventVideoClips: [FieldsAppEventVideoClips_appEventsLocalizationsGetToManyRelated]? = nil, fieldsAppEventLocalizations: [FieldsAppEventLocalizations_appEventsLocalizationsGetToManyRelated]? = nil, fieldsAppEvents: [FieldsAppEvents_appEventsLocalizationsGetToManyRelated]? = nil, limit: Int? = nil, limitAppEventScreenshots: Int? = nil, limitAppEventVideoClips: Int? = nil, include: [Include_appEventsLocalizationsGetToManyRelated]? = nil) -> RequestBuilder<AppEventLocalizationsResponse> {
        var localVariablePath = "/v1/appEvents/{id}/localizations"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = ASCAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "fields[appEventScreenshots]": (wrappedValue: fieldsAppEventScreenshots?.encodeToJSON(), isExplode: false),
            "fields[appEventVideoClips]": (wrappedValue: fieldsAppEventVideoClips?.encodeToJSON(), isExplode: false),
            "fields[appEventLocalizations]": (wrappedValue: fieldsAppEventLocalizations?.encodeToJSON(), isExplode: false),
            "fields[appEvents]": (wrappedValue: fieldsAppEvents?.encodeToJSON(), isExplode: false),
            "limit": (wrappedValue: limit?.encodeToJSON(), isExplode: true),
            "limit[appEventScreenshots]": (wrappedValue: limitAppEventScreenshots?.encodeToJSON(), isExplode: true),
            "limit[appEventVideoClips]": (wrappedValue: limitAppEventVideoClips?.encodeToJSON(), isExplode: true),
            "include": (wrappedValue: include?.encodeToJSON(), isExplode: false),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AppEventLocalizationsResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     - GET /v1/appEvents/{id}/localizations
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter urlString: next or first url from App Store Connect API
     - returns: RequestBuilder<AppEventLocalizationsResponse> 
     */
    open class func appEventsLocalizationsGetToManyRelatedWithRequestBuilder(urlString: String) -> RequestBuilder<AppEventLocalizationsResponse> {
        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AppEventLocalizationsResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: urlString, parameters: nil, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**

     - parameter id: (path) the id of the requested resource 
     - parameter appEventUpdateRequest: (body) AppEvent representation 
     - returns: AppEventResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func appEventsUpdateInstance(id: String, appEventUpdateRequest: AppEventUpdateRequest) async throws -> AppEventResponse {
        return try await appEventsUpdateInstanceWithRequestBuilder(id: id, appEventUpdateRequest: appEventUpdateRequest).execute().body
    }

    /**
     - parameter urlString: next or first url from App Store Connect API
     - returns: AppEventResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func appEventsUpdateInstance(urlString: String) async throws -> AppEventResponse {
        return try await appEventsUpdateInstanceWithRequestBuilder(urlString: urlString).execute().body
    }

    /**
     - PATCH /v1/appEvents/{id}
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter id: (path) the id of the requested resource 
     - parameter appEventUpdateRequest: (body) AppEvent representation 
     - returns: RequestBuilder<AppEventResponse> 
     */
    open class func appEventsUpdateInstanceWithRequestBuilder(id: String, appEventUpdateRequest: AppEventUpdateRequest) -> RequestBuilder<AppEventResponse> {
        var localVariablePath = "/v1/appEvents/{id}"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = ASCAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: appEventUpdateRequest)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            "Content-Type": "application/json",
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AppEventResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PATCH", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     - PATCH /v1/appEvents/{id}
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter urlString: next or first url from App Store Connect API
     - returns: RequestBuilder<AppEventResponse> 
     */
    open class func appEventsUpdateInstanceWithRequestBuilder(urlString: String) -> RequestBuilder<AppEventResponse> {
        let localVariableNillableHeaders: [String: Any?] = [
            "Content-Type": "application/json",
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AppEventResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PATCH", URLString: urlString, parameters: nil, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }
}