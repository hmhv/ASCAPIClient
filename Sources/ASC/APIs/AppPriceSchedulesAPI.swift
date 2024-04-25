//
// AppPriceSchedulesAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

open class AppPriceSchedulesAPI {

    /**
     * enum for parameter fieldsAppPrices
     */
    public enum FieldsAppPrices_appPriceSchedulesAutomaticPricesGetToManyRelated: String, CaseIterable {
        case apppricepoint = "appPricePoint"
        case enddate = "endDate"
        case manual = "manual"
        case startdate = "startDate"
        case territory = "territory"
    }

    /**
     * enum for parameter fieldsAppPricePoints
     */
    public enum FieldsAppPricePoints_appPriceSchedulesAutomaticPricesGetToManyRelated: String, CaseIterable {
        case app = "app"
        case customerprice = "customerPrice"
        case equalizations = "equalizations"
        case proceeds = "proceeds"
        case territory = "territory"
    }

    /**
     * enum for parameter fieldsTerritories
     */
    public enum FieldsTerritories_appPriceSchedulesAutomaticPricesGetToManyRelated: String, CaseIterable {
        case currency = "currency"
    }

    /**
     * enum for parameter include
     */
    public enum Include_appPriceSchedulesAutomaticPricesGetToManyRelated: String, CaseIterable {
        case apppricepoint = "appPricePoint"
        case territory = "territory"
    }

    /**

     - parameter id: (path) the id of the requested resource 
     - parameter filterEndDate: (query) filter by attribute &#39;endDate&#39; (optional)
     - parameter filterStartDate: (query) filter by attribute &#39;startDate&#39; (optional)
     - parameter filterTerritory: (query) filter by id(s) of related &#39;territory&#39; (optional)
     - parameter fieldsAppPrices: (query) the fields to include for returned resources of type appPrices (optional)
     - parameter fieldsAppPricePoints: (query) the fields to include for returned resources of type appPricePoints (optional)
     - parameter fieldsTerritories: (query) the fields to include for returned resources of type territories (optional)
     - parameter limit: (query) maximum resources per page (optional)
     - parameter include: (query) comma-separated list of relationships to include (optional)
     - returns: AppPricesV2Response
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func appPriceSchedulesAutomaticPricesGetToManyRelated(id: String, filterEndDate: [String]? = nil, filterStartDate: [String]? = nil, filterTerritory: [String]? = nil, fieldsAppPrices: [FieldsAppPrices_appPriceSchedulesAutomaticPricesGetToManyRelated]? = nil, fieldsAppPricePoints: [FieldsAppPricePoints_appPriceSchedulesAutomaticPricesGetToManyRelated]? = nil, fieldsTerritories: [FieldsTerritories_appPriceSchedulesAutomaticPricesGetToManyRelated]? = nil, limit: Int? = nil, include: [Include_appPriceSchedulesAutomaticPricesGetToManyRelated]? = nil) async throws -> AppPricesV2Response {
        return try await appPriceSchedulesAutomaticPricesGetToManyRelatedWithRequestBuilder(id: id, filterEndDate: filterEndDate, filterStartDate: filterStartDate, filterTerritory: filterTerritory, fieldsAppPrices: fieldsAppPrices, fieldsAppPricePoints: fieldsAppPricePoints, fieldsTerritories: fieldsTerritories, limit: limit, include: include).execute().body
    }

    /**
     - parameter urlString: next or first url from App Store Connect API
     - returns: AppPricesV2Response
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func appPriceSchedulesAutomaticPricesGetToManyRelated(urlString: String) async throws -> AppPricesV2Response {
        return try await appPriceSchedulesAutomaticPricesGetToManyRelatedWithRequestBuilder(urlString: urlString).execute().body
    }

    /**
     - GET /v1/appPriceSchedules/{id}/automaticPrices
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter id: (path) the id of the requested resource 
     - parameter filterEndDate: (query) filter by attribute &#39;endDate&#39; (optional)
     - parameter filterStartDate: (query) filter by attribute &#39;startDate&#39; (optional)
     - parameter filterTerritory: (query) filter by id(s) of related &#39;territory&#39; (optional)
     - parameter fieldsAppPrices: (query) the fields to include for returned resources of type appPrices (optional)
     - parameter fieldsAppPricePoints: (query) the fields to include for returned resources of type appPricePoints (optional)
     - parameter fieldsTerritories: (query) the fields to include for returned resources of type territories (optional)
     - parameter limit: (query) maximum resources per page (optional)
     - parameter include: (query) comma-separated list of relationships to include (optional)
     - returns: RequestBuilder<AppPricesV2Response> 
     */
    open class func appPriceSchedulesAutomaticPricesGetToManyRelatedWithRequestBuilder(id: String, filterEndDate: [String]? = nil, filterStartDate: [String]? = nil, filterTerritory: [String]? = nil, fieldsAppPrices: [FieldsAppPrices_appPriceSchedulesAutomaticPricesGetToManyRelated]? = nil, fieldsAppPricePoints: [FieldsAppPricePoints_appPriceSchedulesAutomaticPricesGetToManyRelated]? = nil, fieldsTerritories: [FieldsTerritories_appPriceSchedulesAutomaticPricesGetToManyRelated]? = nil, limit: Int? = nil, include: [Include_appPriceSchedulesAutomaticPricesGetToManyRelated]? = nil) -> RequestBuilder<AppPricesV2Response> {
        var localVariablePath = "/v1/appPriceSchedules/{id}/automaticPrices"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = ASCAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "filter[endDate]": (wrappedValue: filterEndDate?.encodeToJSON(), isExplode: false),
            "filter[startDate]": (wrappedValue: filterStartDate?.encodeToJSON(), isExplode: false),
            "filter[territory]": (wrappedValue: filterTerritory?.encodeToJSON(), isExplode: false),
            "fields[appPrices]": (wrappedValue: fieldsAppPrices?.encodeToJSON(), isExplode: false),
            "fields[appPricePoints]": (wrappedValue: fieldsAppPricePoints?.encodeToJSON(), isExplode: false),
            "fields[territories]": (wrappedValue: fieldsTerritories?.encodeToJSON(), isExplode: false),
            "limit": (wrappedValue: limit?.encodeToJSON(), isExplode: true),
            "include": (wrappedValue: include?.encodeToJSON(), isExplode: false),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AppPricesV2Response>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     - GET /v1/appPriceSchedules/{id}/automaticPrices
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter urlString: next or first url from App Store Connect API
     - returns: RequestBuilder<AppPricesV2Response> 
     */
    open class func appPriceSchedulesAutomaticPricesGetToManyRelatedWithRequestBuilder(urlString: String) -> RequestBuilder<AppPricesV2Response> {
        let localVariableRequestBuilder: RequestBuilder<AppPricesV2Response>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: urlString, parameters: nil, headers: nil, requiresAuthentication: true)
    }

    /**
     * enum for parameter fieldsTerritories
     */
    public enum FieldsTerritories_appPriceSchedulesBaseTerritoryGetToOneRelated: String, CaseIterable {
        case currency = "currency"
    }

    /**

     - parameter id: (path) the id of the requested resource 
     - parameter fieldsTerritories: (query) the fields to include for returned resources of type territories (optional)
     - returns: TerritoryResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func appPriceSchedulesBaseTerritoryGetToOneRelated(id: String, fieldsTerritories: [FieldsTerritories_appPriceSchedulesBaseTerritoryGetToOneRelated]? = nil) async throws -> TerritoryResponse {
        return try await appPriceSchedulesBaseTerritoryGetToOneRelatedWithRequestBuilder(id: id, fieldsTerritories: fieldsTerritories).execute().body
    }

    /**
     - parameter urlString: next or first url from App Store Connect API
     - returns: TerritoryResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func appPriceSchedulesBaseTerritoryGetToOneRelated(urlString: String) async throws -> TerritoryResponse {
        return try await appPriceSchedulesBaseTerritoryGetToOneRelatedWithRequestBuilder(urlString: urlString).execute().body
    }

    /**
     - GET /v1/appPriceSchedules/{id}/baseTerritory
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter id: (path) the id of the requested resource 
     - parameter fieldsTerritories: (query) the fields to include for returned resources of type territories (optional)
     - returns: RequestBuilder<TerritoryResponse> 
     */
    open class func appPriceSchedulesBaseTerritoryGetToOneRelatedWithRequestBuilder(id: String, fieldsTerritories: [FieldsTerritories_appPriceSchedulesBaseTerritoryGetToOneRelated]? = nil) -> RequestBuilder<TerritoryResponse> {
        var localVariablePath = "/v1/appPriceSchedules/{id}/baseTerritory"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = ASCAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "fields[territories]": (wrappedValue: fieldsTerritories?.encodeToJSON(), isExplode: false),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<TerritoryResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     - GET /v1/appPriceSchedules/{id}/baseTerritory
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter urlString: next or first url from App Store Connect API
     - returns: RequestBuilder<TerritoryResponse> 
     */
    open class func appPriceSchedulesBaseTerritoryGetToOneRelatedWithRequestBuilder(urlString: String) -> RequestBuilder<TerritoryResponse> {
        let localVariableRequestBuilder: RequestBuilder<TerritoryResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: urlString, parameters: nil, headers: nil, requiresAuthentication: true)
    }

    /**

     - parameter appPriceScheduleCreateRequest: (body) AppPriceSchedule representation 
     - returns: AppPriceScheduleResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func appPriceSchedulesCreateInstance(appPriceScheduleCreateRequest: AppPriceScheduleCreateRequest) async throws -> AppPriceScheduleResponse {
        return try await appPriceSchedulesCreateInstanceWithRequestBuilder(appPriceScheduleCreateRequest: appPriceScheduleCreateRequest).execute().body
    }

    /**
     - parameter urlString: next or first url from App Store Connect API
     - returns: AppPriceScheduleResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func appPriceSchedulesCreateInstance(urlString: String) async throws -> AppPriceScheduleResponse {
        return try await appPriceSchedulesCreateInstanceWithRequestBuilder(urlString: urlString).execute().body
    }

    /**
     - POST /v1/appPriceSchedules
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter appPriceScheduleCreateRequest: (body) AppPriceSchedule representation 
     - returns: RequestBuilder<AppPriceScheduleResponse> 
     */
    open class func appPriceSchedulesCreateInstanceWithRequestBuilder(appPriceScheduleCreateRequest: AppPriceScheduleCreateRequest) -> RequestBuilder<AppPriceScheduleResponse> {
        let localVariablePath = "/v1/appPriceSchedules"
        let localVariableURLString = ASCAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: appPriceScheduleCreateRequest)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            "Content-Type": "application/json",
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AppPriceScheduleResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     - POST /v1/appPriceSchedules
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter urlString: next or first url from App Store Connect API
     - returns: RequestBuilder<AppPriceScheduleResponse> 
     */
    open class func appPriceSchedulesCreateInstanceWithRequestBuilder(urlString: String) -> RequestBuilder<AppPriceScheduleResponse> {
        let localVariableRequestBuilder: RequestBuilder<AppPriceScheduleResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: urlString, parameters: nil, headers: nil, requiresAuthentication: true)
    }

    /**
     * enum for parameter fieldsAppPriceSchedules
     */
    public enum FieldsAppPriceSchedules_appPriceSchedulesGetInstance: String, CaseIterable {
        case app = "app"
        case automaticprices = "automaticPrices"
        case baseterritory = "baseTerritory"
        case manualprices = "manualPrices"
    }

    /**
     * enum for parameter include
     */
    public enum Include_appPriceSchedulesGetInstance: String, CaseIterable {
        case app = "app"
        case automaticprices = "automaticPrices"
        case baseterritory = "baseTerritory"
        case manualprices = "manualPrices"
    }

    /**
     * enum for parameter fieldsAppPrices
     */
    public enum FieldsAppPrices_appPriceSchedulesGetInstance: String, CaseIterable {
        case apppricepoint = "appPricePoint"
        case enddate = "endDate"
        case manual = "manual"
        case startdate = "startDate"
        case territory = "territory"
    }

    /**
     * enum for parameter fieldsTerritories
     */
    public enum FieldsTerritories_appPriceSchedulesGetInstance: String, CaseIterable {
        case currency = "currency"
    }

    /**

     - parameter id: (path) the id of the requested resource 
     - parameter fieldsAppPriceSchedules: (query) the fields to include for returned resources of type appPriceSchedules (optional)
     - parameter include: (query) comma-separated list of relationships to include (optional)
     - parameter fieldsAppPrices: (query) the fields to include for returned resources of type appPrices (optional)
     - parameter fieldsTerritories: (query) the fields to include for returned resources of type territories (optional)
     - parameter limitAutomaticPrices: (query) maximum number of related automaticPrices returned (when they are included) (optional)
     - parameter limitManualPrices: (query) maximum number of related manualPrices returned (when they are included) (optional)
     - returns: AppPriceScheduleResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func appPriceSchedulesGetInstance(id: String, fieldsAppPriceSchedules: [FieldsAppPriceSchedules_appPriceSchedulesGetInstance]? = nil, include: [Include_appPriceSchedulesGetInstance]? = nil, fieldsAppPrices: [FieldsAppPrices_appPriceSchedulesGetInstance]? = nil, fieldsTerritories: [FieldsTerritories_appPriceSchedulesGetInstance]? = nil, limitAutomaticPrices: Int? = nil, limitManualPrices: Int? = nil) async throws -> AppPriceScheduleResponse {
        return try await appPriceSchedulesGetInstanceWithRequestBuilder(id: id, fieldsAppPriceSchedules: fieldsAppPriceSchedules, include: include, fieldsAppPrices: fieldsAppPrices, fieldsTerritories: fieldsTerritories, limitAutomaticPrices: limitAutomaticPrices, limitManualPrices: limitManualPrices).execute().body
    }

    /**
     - parameter urlString: next or first url from App Store Connect API
     - returns: AppPriceScheduleResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func appPriceSchedulesGetInstance(urlString: String) async throws -> AppPriceScheduleResponse {
        return try await appPriceSchedulesGetInstanceWithRequestBuilder(urlString: urlString).execute().body
    }

    /**
     - GET /v1/appPriceSchedules/{id}
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter id: (path) the id of the requested resource 
     - parameter fieldsAppPriceSchedules: (query) the fields to include for returned resources of type appPriceSchedules (optional)
     - parameter include: (query) comma-separated list of relationships to include (optional)
     - parameter fieldsAppPrices: (query) the fields to include for returned resources of type appPrices (optional)
     - parameter fieldsTerritories: (query) the fields to include for returned resources of type territories (optional)
     - parameter limitAutomaticPrices: (query) maximum number of related automaticPrices returned (when they are included) (optional)
     - parameter limitManualPrices: (query) maximum number of related manualPrices returned (when they are included) (optional)
     - returns: RequestBuilder<AppPriceScheduleResponse> 
     */
    open class func appPriceSchedulesGetInstanceWithRequestBuilder(id: String, fieldsAppPriceSchedules: [FieldsAppPriceSchedules_appPriceSchedulesGetInstance]? = nil, include: [Include_appPriceSchedulesGetInstance]? = nil, fieldsAppPrices: [FieldsAppPrices_appPriceSchedulesGetInstance]? = nil, fieldsTerritories: [FieldsTerritories_appPriceSchedulesGetInstance]? = nil, limitAutomaticPrices: Int? = nil, limitManualPrices: Int? = nil) -> RequestBuilder<AppPriceScheduleResponse> {
        var localVariablePath = "/v1/appPriceSchedules/{id}"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = ASCAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "fields[appPriceSchedules]": (wrappedValue: fieldsAppPriceSchedules?.encodeToJSON(), isExplode: false),
            "include": (wrappedValue: include?.encodeToJSON(), isExplode: false),
            "fields[appPrices]": (wrappedValue: fieldsAppPrices?.encodeToJSON(), isExplode: false),
            "fields[territories]": (wrappedValue: fieldsTerritories?.encodeToJSON(), isExplode: false),
            "limit[automaticPrices]": (wrappedValue: limitAutomaticPrices?.encodeToJSON(), isExplode: true),
            "limit[manualPrices]": (wrappedValue: limitManualPrices?.encodeToJSON(), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AppPriceScheduleResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     - GET /v1/appPriceSchedules/{id}
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter urlString: next or first url from App Store Connect API
     - returns: RequestBuilder<AppPriceScheduleResponse> 
     */
    open class func appPriceSchedulesGetInstanceWithRequestBuilder(urlString: String) -> RequestBuilder<AppPriceScheduleResponse> {
        let localVariableRequestBuilder: RequestBuilder<AppPriceScheduleResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: urlString, parameters: nil, headers: nil, requiresAuthentication: true)
    }

    /**
     * enum for parameter fieldsAppPrices
     */
    public enum FieldsAppPrices_appPriceSchedulesManualPricesGetToManyRelated: String, CaseIterable {
        case apppricepoint = "appPricePoint"
        case enddate = "endDate"
        case manual = "manual"
        case startdate = "startDate"
        case territory = "territory"
    }

    /**
     * enum for parameter fieldsAppPricePoints
     */
    public enum FieldsAppPricePoints_appPriceSchedulesManualPricesGetToManyRelated: String, CaseIterable {
        case app = "app"
        case customerprice = "customerPrice"
        case equalizations = "equalizations"
        case proceeds = "proceeds"
        case territory = "territory"
    }

    /**
     * enum for parameter fieldsTerritories
     */
    public enum FieldsTerritories_appPriceSchedulesManualPricesGetToManyRelated: String, CaseIterable {
        case currency = "currency"
    }

    /**
     * enum for parameter include
     */
    public enum Include_appPriceSchedulesManualPricesGetToManyRelated: String, CaseIterable {
        case apppricepoint = "appPricePoint"
        case territory = "territory"
    }

    /**

     - parameter id: (path) the id of the requested resource 
     - parameter filterEndDate: (query) filter by attribute &#39;endDate&#39; (optional)
     - parameter filterStartDate: (query) filter by attribute &#39;startDate&#39; (optional)
     - parameter filterTerritory: (query) filter by id(s) of related &#39;territory&#39; (optional)
     - parameter fieldsAppPrices: (query) the fields to include for returned resources of type appPrices (optional)
     - parameter fieldsAppPricePoints: (query) the fields to include for returned resources of type appPricePoints (optional)
     - parameter fieldsTerritories: (query) the fields to include for returned resources of type territories (optional)
     - parameter limit: (query) maximum resources per page (optional)
     - parameter include: (query) comma-separated list of relationships to include (optional)
     - returns: AppPricesV2Response
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func appPriceSchedulesManualPricesGetToManyRelated(id: String, filterEndDate: [String]? = nil, filterStartDate: [String]? = nil, filterTerritory: [String]? = nil, fieldsAppPrices: [FieldsAppPrices_appPriceSchedulesManualPricesGetToManyRelated]? = nil, fieldsAppPricePoints: [FieldsAppPricePoints_appPriceSchedulesManualPricesGetToManyRelated]? = nil, fieldsTerritories: [FieldsTerritories_appPriceSchedulesManualPricesGetToManyRelated]? = nil, limit: Int? = nil, include: [Include_appPriceSchedulesManualPricesGetToManyRelated]? = nil) async throws -> AppPricesV2Response {
        return try await appPriceSchedulesManualPricesGetToManyRelatedWithRequestBuilder(id: id, filterEndDate: filterEndDate, filterStartDate: filterStartDate, filterTerritory: filterTerritory, fieldsAppPrices: fieldsAppPrices, fieldsAppPricePoints: fieldsAppPricePoints, fieldsTerritories: fieldsTerritories, limit: limit, include: include).execute().body
    }

    /**
     - parameter urlString: next or first url from App Store Connect API
     - returns: AppPricesV2Response
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func appPriceSchedulesManualPricesGetToManyRelated(urlString: String) async throws -> AppPricesV2Response {
        return try await appPriceSchedulesManualPricesGetToManyRelatedWithRequestBuilder(urlString: urlString).execute().body
    }

    /**
     - GET /v1/appPriceSchedules/{id}/manualPrices
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter id: (path) the id of the requested resource 
     - parameter filterEndDate: (query) filter by attribute &#39;endDate&#39; (optional)
     - parameter filterStartDate: (query) filter by attribute &#39;startDate&#39; (optional)
     - parameter filterTerritory: (query) filter by id(s) of related &#39;territory&#39; (optional)
     - parameter fieldsAppPrices: (query) the fields to include for returned resources of type appPrices (optional)
     - parameter fieldsAppPricePoints: (query) the fields to include for returned resources of type appPricePoints (optional)
     - parameter fieldsTerritories: (query) the fields to include for returned resources of type territories (optional)
     - parameter limit: (query) maximum resources per page (optional)
     - parameter include: (query) comma-separated list of relationships to include (optional)
     - returns: RequestBuilder<AppPricesV2Response> 
     */
    open class func appPriceSchedulesManualPricesGetToManyRelatedWithRequestBuilder(id: String, filterEndDate: [String]? = nil, filterStartDate: [String]? = nil, filterTerritory: [String]? = nil, fieldsAppPrices: [FieldsAppPrices_appPriceSchedulesManualPricesGetToManyRelated]? = nil, fieldsAppPricePoints: [FieldsAppPricePoints_appPriceSchedulesManualPricesGetToManyRelated]? = nil, fieldsTerritories: [FieldsTerritories_appPriceSchedulesManualPricesGetToManyRelated]? = nil, limit: Int? = nil, include: [Include_appPriceSchedulesManualPricesGetToManyRelated]? = nil) -> RequestBuilder<AppPricesV2Response> {
        var localVariablePath = "/v1/appPriceSchedules/{id}/manualPrices"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = ASCAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "filter[endDate]": (wrappedValue: filterEndDate?.encodeToJSON(), isExplode: false),
            "filter[startDate]": (wrappedValue: filterStartDate?.encodeToJSON(), isExplode: false),
            "filter[territory]": (wrappedValue: filterTerritory?.encodeToJSON(), isExplode: false),
            "fields[appPrices]": (wrappedValue: fieldsAppPrices?.encodeToJSON(), isExplode: false),
            "fields[appPricePoints]": (wrappedValue: fieldsAppPricePoints?.encodeToJSON(), isExplode: false),
            "fields[territories]": (wrappedValue: fieldsTerritories?.encodeToJSON(), isExplode: false),
            "limit": (wrappedValue: limit?.encodeToJSON(), isExplode: true),
            "include": (wrappedValue: include?.encodeToJSON(), isExplode: false),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AppPricesV2Response>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     - GET /v1/appPriceSchedules/{id}/manualPrices
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter urlString: next or first url from App Store Connect API
     - returns: RequestBuilder<AppPricesV2Response> 
     */
    open class func appPriceSchedulesManualPricesGetToManyRelatedWithRequestBuilder(urlString: String) -> RequestBuilder<AppPricesV2Response> {
        let localVariableRequestBuilder: RequestBuilder<AppPricesV2Response>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: urlString, parameters: nil, headers: nil, requiresAuthentication: true)
    }
}
