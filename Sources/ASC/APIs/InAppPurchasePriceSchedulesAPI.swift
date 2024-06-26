//
// InAppPurchasePriceSchedulesAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

open class InAppPurchasePriceSchedulesAPI {

    /**
     * enum for parameter fieldsInAppPurchasePricePoints
     */
    public enum FieldsInAppPurchasePricePoints_inAppPurchasePriceSchedulesAutomaticPricesGetToManyRelated: String, CaseIterable {
        case customerprice = "customerPrice"
        case inapppurchasev2 = "inAppPurchaseV2"
        case pricetier = "priceTier"
        case proceeds = "proceeds"
        case territory = "territory"
    }

    /**
     * enum for parameter fieldsInAppPurchasePrices
     */
    public enum FieldsInAppPurchasePrices_inAppPurchasePriceSchedulesAutomaticPricesGetToManyRelated: String, CaseIterable {
        case enddate = "endDate"
        case inapppurchasepricepoint = "inAppPurchasePricePoint"
        case inapppurchasev2 = "inAppPurchaseV2"
        case manual = "manual"
        case startdate = "startDate"
        case territory = "territory"
    }

    /**
     * enum for parameter fieldsTerritories
     */
    public enum FieldsTerritories_inAppPurchasePriceSchedulesAutomaticPricesGetToManyRelated: String, CaseIterable {
        case currency = "currency"
    }

    /**
     * enum for parameter include
     */
    public enum Include_inAppPurchasePriceSchedulesAutomaticPricesGetToManyRelated: String, CaseIterable {
        case inapppurchasepricepoint = "inAppPurchasePricePoint"
        case territory = "territory"
    }

    /**

     - parameter id: (path) the id of the requested resource 
     - parameter filterTerritory: (query) filter by id(s) of related &#39;territory&#39; (optional)
     - parameter fieldsInAppPurchasePricePoints: (query) the fields to include for returned resources of type inAppPurchasePricePoints (optional)
     - parameter fieldsInAppPurchasePrices: (query) the fields to include for returned resources of type inAppPurchasePrices (optional)
     - parameter fieldsTerritories: (query) the fields to include for returned resources of type territories (optional)
     - parameter limit: (query) maximum resources per page (optional)
     - parameter include: (query) comma-separated list of relationships to include (optional)
     - returns: InAppPurchasePricesResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func inAppPurchasePriceSchedulesAutomaticPricesGetToManyRelated(id: String, filterTerritory: [String]? = nil, fieldsInAppPurchasePricePoints: [FieldsInAppPurchasePricePoints_inAppPurchasePriceSchedulesAutomaticPricesGetToManyRelated]? = nil, fieldsInAppPurchasePrices: [FieldsInAppPurchasePrices_inAppPurchasePriceSchedulesAutomaticPricesGetToManyRelated]? = nil, fieldsTerritories: [FieldsTerritories_inAppPurchasePriceSchedulesAutomaticPricesGetToManyRelated]? = nil, limit: Int? = nil, include: [Include_inAppPurchasePriceSchedulesAutomaticPricesGetToManyRelated]? = nil) async throws -> InAppPurchasePricesResponse {
        return try await inAppPurchasePriceSchedulesAutomaticPricesGetToManyRelatedWithRequestBuilder(id: id, filterTerritory: filterTerritory, fieldsInAppPurchasePricePoints: fieldsInAppPurchasePricePoints, fieldsInAppPurchasePrices: fieldsInAppPurchasePrices, fieldsTerritories: fieldsTerritories, limit: limit, include: include).execute().body
    }

    /**
     - parameter urlString: next or first url from App Store Connect API
     - returns: InAppPurchasePricesResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func inAppPurchasePriceSchedulesAutomaticPricesGetToManyRelated(urlString: String) async throws -> InAppPurchasePricesResponse {
        return try await inAppPurchasePriceSchedulesAutomaticPricesGetToManyRelatedWithRequestBuilder(urlString: urlString).execute().body
    }

    /**
     - GET /v1/inAppPurchasePriceSchedules/{id}/automaticPrices
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter id: (path) the id of the requested resource 
     - parameter filterTerritory: (query) filter by id(s) of related &#39;territory&#39; (optional)
     - parameter fieldsInAppPurchasePricePoints: (query) the fields to include for returned resources of type inAppPurchasePricePoints (optional)
     - parameter fieldsInAppPurchasePrices: (query) the fields to include for returned resources of type inAppPurchasePrices (optional)
     - parameter fieldsTerritories: (query) the fields to include for returned resources of type territories (optional)
     - parameter limit: (query) maximum resources per page (optional)
     - parameter include: (query) comma-separated list of relationships to include (optional)
     - returns: RequestBuilder<InAppPurchasePricesResponse> 
     */
    open class func inAppPurchasePriceSchedulesAutomaticPricesGetToManyRelatedWithRequestBuilder(id: String, filterTerritory: [String]? = nil, fieldsInAppPurchasePricePoints: [FieldsInAppPurchasePricePoints_inAppPurchasePriceSchedulesAutomaticPricesGetToManyRelated]? = nil, fieldsInAppPurchasePrices: [FieldsInAppPurchasePrices_inAppPurchasePriceSchedulesAutomaticPricesGetToManyRelated]? = nil, fieldsTerritories: [FieldsTerritories_inAppPurchasePriceSchedulesAutomaticPricesGetToManyRelated]? = nil, limit: Int? = nil, include: [Include_inAppPurchasePriceSchedulesAutomaticPricesGetToManyRelated]? = nil) -> RequestBuilder<InAppPurchasePricesResponse> {
        var localVariablePath = "/v1/inAppPurchasePriceSchedules/{id}/automaticPrices"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = ASCAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "filter[territory]": (wrappedValue: filterTerritory?.encodeToJSON(), isExplode: false),
            "fields[inAppPurchasePricePoints]": (wrappedValue: fieldsInAppPurchasePricePoints?.encodeToJSON(), isExplode: false),
            "fields[inAppPurchasePrices]": (wrappedValue: fieldsInAppPurchasePrices?.encodeToJSON(), isExplode: false),
            "fields[territories]": (wrappedValue: fieldsTerritories?.encodeToJSON(), isExplode: false),
            "limit": (wrappedValue: limit?.encodeToJSON(), isExplode: true),
            "include": (wrappedValue: include?.encodeToJSON(), isExplode: false),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<InAppPurchasePricesResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     - GET /v1/inAppPurchasePriceSchedules/{id}/automaticPrices
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter urlString: next or first url from App Store Connect API
     - returns: RequestBuilder<InAppPurchasePricesResponse> 
     */
    open class func inAppPurchasePriceSchedulesAutomaticPricesGetToManyRelatedWithRequestBuilder(urlString: String) -> RequestBuilder<InAppPurchasePricesResponse> {
        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<InAppPurchasePricesResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: urlString, parameters: nil, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     * enum for parameter fieldsTerritories
     */
    public enum FieldsTerritories_inAppPurchasePriceSchedulesBaseTerritoryGetToOneRelated: String, CaseIterable {
        case currency = "currency"
    }

    /**

     - parameter id: (path) the id of the requested resource 
     - parameter fieldsTerritories: (query) the fields to include for returned resources of type territories (optional)
     - returns: TerritoryResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func inAppPurchasePriceSchedulesBaseTerritoryGetToOneRelated(id: String, fieldsTerritories: [FieldsTerritories_inAppPurchasePriceSchedulesBaseTerritoryGetToOneRelated]? = nil) async throws -> TerritoryResponse {
        return try await inAppPurchasePriceSchedulesBaseTerritoryGetToOneRelatedWithRequestBuilder(id: id, fieldsTerritories: fieldsTerritories).execute().body
    }

    /**
     - parameter urlString: next or first url from App Store Connect API
     - returns: TerritoryResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func inAppPurchasePriceSchedulesBaseTerritoryGetToOneRelated(urlString: String) async throws -> TerritoryResponse {
        return try await inAppPurchasePriceSchedulesBaseTerritoryGetToOneRelatedWithRequestBuilder(urlString: urlString).execute().body
    }

    /**
     - GET /v1/inAppPurchasePriceSchedules/{id}/baseTerritory
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter id: (path) the id of the requested resource 
     - parameter fieldsTerritories: (query) the fields to include for returned resources of type territories (optional)
     - returns: RequestBuilder<TerritoryResponse> 
     */
    open class func inAppPurchasePriceSchedulesBaseTerritoryGetToOneRelatedWithRequestBuilder(id: String, fieldsTerritories: [FieldsTerritories_inAppPurchasePriceSchedulesBaseTerritoryGetToOneRelated]? = nil) -> RequestBuilder<TerritoryResponse> {
        var localVariablePath = "/v1/inAppPurchasePriceSchedules/{id}/baseTerritory"
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
     - GET /v1/inAppPurchasePriceSchedules/{id}/baseTerritory
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter urlString: next or first url from App Store Connect API
     - returns: RequestBuilder<TerritoryResponse> 
     */
    open class func inAppPurchasePriceSchedulesBaseTerritoryGetToOneRelatedWithRequestBuilder(urlString: String) -> RequestBuilder<TerritoryResponse> {
        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<TerritoryResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: urlString, parameters: nil, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**

     - parameter inAppPurchasePriceScheduleCreateRequest: (body) InAppPurchasePriceSchedule representation 
     - returns: InAppPurchasePriceScheduleResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func inAppPurchasePriceSchedulesCreateInstance(inAppPurchasePriceScheduleCreateRequest: InAppPurchasePriceScheduleCreateRequest) async throws -> InAppPurchasePriceScheduleResponse {
        return try await inAppPurchasePriceSchedulesCreateInstanceWithRequestBuilder(inAppPurchasePriceScheduleCreateRequest: inAppPurchasePriceScheduleCreateRequest).execute().body
    }

    /**
     - parameter urlString: next or first url from App Store Connect API
     - returns: InAppPurchasePriceScheduleResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func inAppPurchasePriceSchedulesCreateInstance(urlString: String) async throws -> InAppPurchasePriceScheduleResponse {
        return try await inAppPurchasePriceSchedulesCreateInstanceWithRequestBuilder(urlString: urlString).execute().body
    }

    /**
     - POST /v1/inAppPurchasePriceSchedules
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter inAppPurchasePriceScheduleCreateRequest: (body) InAppPurchasePriceSchedule representation 
     - returns: RequestBuilder<InAppPurchasePriceScheduleResponse> 
     */
    open class func inAppPurchasePriceSchedulesCreateInstanceWithRequestBuilder(inAppPurchasePriceScheduleCreateRequest: InAppPurchasePriceScheduleCreateRequest) -> RequestBuilder<InAppPurchasePriceScheduleResponse> {
        let localVariablePath = "/v1/inAppPurchasePriceSchedules"
        let localVariableURLString = ASCAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: inAppPurchasePriceScheduleCreateRequest)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            "Content-Type": "application/json",
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<InAppPurchasePriceScheduleResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     - POST /v1/inAppPurchasePriceSchedules
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter urlString: next or first url from App Store Connect API
     - returns: RequestBuilder<InAppPurchasePriceScheduleResponse> 
     */
    open class func inAppPurchasePriceSchedulesCreateInstanceWithRequestBuilder(urlString: String) -> RequestBuilder<InAppPurchasePriceScheduleResponse> {
        let localVariableNillableHeaders: [String: Any?] = [
            "Content-Type": "application/json",
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<InAppPurchasePriceScheduleResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: urlString, parameters: nil, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     * enum for parameter fieldsInAppPurchasePriceSchedules
     */
    public enum FieldsInAppPurchasePriceSchedules_inAppPurchasePriceSchedulesGetInstance: String, CaseIterable {
        case automaticprices = "automaticPrices"
        case baseterritory = "baseTerritory"
        case inapppurchase = "inAppPurchase"
        case manualprices = "manualPrices"
    }

    /**
     * enum for parameter include
     */
    public enum Include_inAppPurchasePriceSchedulesGetInstance: String, CaseIterable {
        case automaticprices = "automaticPrices"
        case baseterritory = "baseTerritory"
        case inapppurchase = "inAppPurchase"
        case manualprices = "manualPrices"
    }

    /**
     * enum for parameter fieldsInAppPurchasePrices
     */
    public enum FieldsInAppPurchasePrices_inAppPurchasePriceSchedulesGetInstance: String, CaseIterable {
        case enddate = "endDate"
        case inapppurchasepricepoint = "inAppPurchasePricePoint"
        case inapppurchasev2 = "inAppPurchaseV2"
        case manual = "manual"
        case startdate = "startDate"
        case territory = "territory"
    }

    /**
     * enum for parameter fieldsTerritories
     */
    public enum FieldsTerritories_inAppPurchasePriceSchedulesGetInstance: String, CaseIterable {
        case currency = "currency"
    }

    /**

     - parameter id: (path) the id of the requested resource 
     - parameter fieldsInAppPurchasePriceSchedules: (query) the fields to include for returned resources of type inAppPurchasePriceSchedules (optional)
     - parameter include: (query) comma-separated list of relationships to include (optional)
     - parameter fieldsInAppPurchasePrices: (query) the fields to include for returned resources of type inAppPurchasePrices (optional)
     - parameter fieldsTerritories: (query) the fields to include for returned resources of type territories (optional)
     - parameter limitAutomaticPrices: (query) maximum number of related automaticPrices returned (when they are included) (optional)
     - parameter limitManualPrices: (query) maximum number of related manualPrices returned (when they are included) (optional)
     - returns: InAppPurchasePriceScheduleResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func inAppPurchasePriceSchedulesGetInstance(id: String, fieldsInAppPurchasePriceSchedules: [FieldsInAppPurchasePriceSchedules_inAppPurchasePriceSchedulesGetInstance]? = nil, include: [Include_inAppPurchasePriceSchedulesGetInstance]? = nil, fieldsInAppPurchasePrices: [FieldsInAppPurchasePrices_inAppPurchasePriceSchedulesGetInstance]? = nil, fieldsTerritories: [FieldsTerritories_inAppPurchasePriceSchedulesGetInstance]? = nil, limitAutomaticPrices: Int? = nil, limitManualPrices: Int? = nil) async throws -> InAppPurchasePriceScheduleResponse {
        return try await inAppPurchasePriceSchedulesGetInstanceWithRequestBuilder(id: id, fieldsInAppPurchasePriceSchedules: fieldsInAppPurchasePriceSchedules, include: include, fieldsInAppPurchasePrices: fieldsInAppPurchasePrices, fieldsTerritories: fieldsTerritories, limitAutomaticPrices: limitAutomaticPrices, limitManualPrices: limitManualPrices).execute().body
    }

    /**
     - parameter urlString: next or first url from App Store Connect API
     - returns: InAppPurchasePriceScheduleResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func inAppPurchasePriceSchedulesGetInstance(urlString: String) async throws -> InAppPurchasePriceScheduleResponse {
        return try await inAppPurchasePriceSchedulesGetInstanceWithRequestBuilder(urlString: urlString).execute().body
    }

    /**
     - GET /v1/inAppPurchasePriceSchedules/{id}
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter id: (path) the id of the requested resource 
     - parameter fieldsInAppPurchasePriceSchedules: (query) the fields to include for returned resources of type inAppPurchasePriceSchedules (optional)
     - parameter include: (query) comma-separated list of relationships to include (optional)
     - parameter fieldsInAppPurchasePrices: (query) the fields to include for returned resources of type inAppPurchasePrices (optional)
     - parameter fieldsTerritories: (query) the fields to include for returned resources of type territories (optional)
     - parameter limitAutomaticPrices: (query) maximum number of related automaticPrices returned (when they are included) (optional)
     - parameter limitManualPrices: (query) maximum number of related manualPrices returned (when they are included) (optional)
     - returns: RequestBuilder<InAppPurchasePriceScheduleResponse> 
     */
    open class func inAppPurchasePriceSchedulesGetInstanceWithRequestBuilder(id: String, fieldsInAppPurchasePriceSchedules: [FieldsInAppPurchasePriceSchedules_inAppPurchasePriceSchedulesGetInstance]? = nil, include: [Include_inAppPurchasePriceSchedulesGetInstance]? = nil, fieldsInAppPurchasePrices: [FieldsInAppPurchasePrices_inAppPurchasePriceSchedulesGetInstance]? = nil, fieldsTerritories: [FieldsTerritories_inAppPurchasePriceSchedulesGetInstance]? = nil, limitAutomaticPrices: Int? = nil, limitManualPrices: Int? = nil) -> RequestBuilder<InAppPurchasePriceScheduleResponse> {
        var localVariablePath = "/v1/inAppPurchasePriceSchedules/{id}"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = ASCAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "fields[inAppPurchasePriceSchedules]": (wrappedValue: fieldsInAppPurchasePriceSchedules?.encodeToJSON(), isExplode: false),
            "include": (wrappedValue: include?.encodeToJSON(), isExplode: false),
            "fields[inAppPurchasePrices]": (wrappedValue: fieldsInAppPurchasePrices?.encodeToJSON(), isExplode: false),
            "fields[territories]": (wrappedValue: fieldsTerritories?.encodeToJSON(), isExplode: false),
            "limit[automaticPrices]": (wrappedValue: limitAutomaticPrices?.encodeToJSON(), isExplode: true),
            "limit[manualPrices]": (wrappedValue: limitManualPrices?.encodeToJSON(), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<InAppPurchasePriceScheduleResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     - GET /v1/inAppPurchasePriceSchedules/{id}
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter urlString: next or first url from App Store Connect API
     - returns: RequestBuilder<InAppPurchasePriceScheduleResponse> 
     */
    open class func inAppPurchasePriceSchedulesGetInstanceWithRequestBuilder(urlString: String) -> RequestBuilder<InAppPurchasePriceScheduleResponse> {
        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<InAppPurchasePriceScheduleResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: urlString, parameters: nil, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     * enum for parameter fieldsInAppPurchasePricePoints
     */
    public enum FieldsInAppPurchasePricePoints_inAppPurchasePriceSchedulesManualPricesGetToManyRelated: String, CaseIterable {
        case customerprice = "customerPrice"
        case inapppurchasev2 = "inAppPurchaseV2"
        case pricetier = "priceTier"
        case proceeds = "proceeds"
        case territory = "territory"
    }

    /**
     * enum for parameter fieldsInAppPurchasePrices
     */
    public enum FieldsInAppPurchasePrices_inAppPurchasePriceSchedulesManualPricesGetToManyRelated: String, CaseIterable {
        case enddate = "endDate"
        case inapppurchasepricepoint = "inAppPurchasePricePoint"
        case inapppurchasev2 = "inAppPurchaseV2"
        case manual = "manual"
        case startdate = "startDate"
        case territory = "territory"
    }

    /**
     * enum for parameter fieldsTerritories
     */
    public enum FieldsTerritories_inAppPurchasePriceSchedulesManualPricesGetToManyRelated: String, CaseIterable {
        case currency = "currency"
    }

    /**
     * enum for parameter include
     */
    public enum Include_inAppPurchasePriceSchedulesManualPricesGetToManyRelated: String, CaseIterable {
        case inapppurchasepricepoint = "inAppPurchasePricePoint"
        case territory = "territory"
    }

    /**

     - parameter id: (path) the id of the requested resource 
     - parameter filterTerritory: (query) filter by id(s) of related &#39;territory&#39; (optional)
     - parameter fieldsInAppPurchasePricePoints: (query) the fields to include for returned resources of type inAppPurchasePricePoints (optional)
     - parameter fieldsInAppPurchasePrices: (query) the fields to include for returned resources of type inAppPurchasePrices (optional)
     - parameter fieldsTerritories: (query) the fields to include for returned resources of type territories (optional)
     - parameter limit: (query) maximum resources per page (optional)
     - parameter include: (query) comma-separated list of relationships to include (optional)
     - returns: InAppPurchasePricesResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func inAppPurchasePriceSchedulesManualPricesGetToManyRelated(id: String, filterTerritory: [String]? = nil, fieldsInAppPurchasePricePoints: [FieldsInAppPurchasePricePoints_inAppPurchasePriceSchedulesManualPricesGetToManyRelated]? = nil, fieldsInAppPurchasePrices: [FieldsInAppPurchasePrices_inAppPurchasePriceSchedulesManualPricesGetToManyRelated]? = nil, fieldsTerritories: [FieldsTerritories_inAppPurchasePriceSchedulesManualPricesGetToManyRelated]? = nil, limit: Int? = nil, include: [Include_inAppPurchasePriceSchedulesManualPricesGetToManyRelated]? = nil) async throws -> InAppPurchasePricesResponse {
        return try await inAppPurchasePriceSchedulesManualPricesGetToManyRelatedWithRequestBuilder(id: id, filterTerritory: filterTerritory, fieldsInAppPurchasePricePoints: fieldsInAppPurchasePricePoints, fieldsInAppPurchasePrices: fieldsInAppPurchasePrices, fieldsTerritories: fieldsTerritories, limit: limit, include: include).execute().body
    }

    /**
     - parameter urlString: next or first url from App Store Connect API
     - returns: InAppPurchasePricesResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func inAppPurchasePriceSchedulesManualPricesGetToManyRelated(urlString: String) async throws -> InAppPurchasePricesResponse {
        return try await inAppPurchasePriceSchedulesManualPricesGetToManyRelatedWithRequestBuilder(urlString: urlString).execute().body
    }

    /**
     - GET /v1/inAppPurchasePriceSchedules/{id}/manualPrices
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter id: (path) the id of the requested resource 
     - parameter filterTerritory: (query) filter by id(s) of related &#39;territory&#39; (optional)
     - parameter fieldsInAppPurchasePricePoints: (query) the fields to include for returned resources of type inAppPurchasePricePoints (optional)
     - parameter fieldsInAppPurchasePrices: (query) the fields to include for returned resources of type inAppPurchasePrices (optional)
     - parameter fieldsTerritories: (query) the fields to include for returned resources of type territories (optional)
     - parameter limit: (query) maximum resources per page (optional)
     - parameter include: (query) comma-separated list of relationships to include (optional)
     - returns: RequestBuilder<InAppPurchasePricesResponse> 
     */
    open class func inAppPurchasePriceSchedulesManualPricesGetToManyRelatedWithRequestBuilder(id: String, filterTerritory: [String]? = nil, fieldsInAppPurchasePricePoints: [FieldsInAppPurchasePricePoints_inAppPurchasePriceSchedulesManualPricesGetToManyRelated]? = nil, fieldsInAppPurchasePrices: [FieldsInAppPurchasePrices_inAppPurchasePriceSchedulesManualPricesGetToManyRelated]? = nil, fieldsTerritories: [FieldsTerritories_inAppPurchasePriceSchedulesManualPricesGetToManyRelated]? = nil, limit: Int? = nil, include: [Include_inAppPurchasePriceSchedulesManualPricesGetToManyRelated]? = nil) -> RequestBuilder<InAppPurchasePricesResponse> {
        var localVariablePath = "/v1/inAppPurchasePriceSchedules/{id}/manualPrices"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = ASCAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "filter[territory]": (wrappedValue: filterTerritory?.encodeToJSON(), isExplode: false),
            "fields[inAppPurchasePricePoints]": (wrappedValue: fieldsInAppPurchasePricePoints?.encodeToJSON(), isExplode: false),
            "fields[inAppPurchasePrices]": (wrappedValue: fieldsInAppPurchasePrices?.encodeToJSON(), isExplode: false),
            "fields[territories]": (wrappedValue: fieldsTerritories?.encodeToJSON(), isExplode: false),
            "limit": (wrappedValue: limit?.encodeToJSON(), isExplode: true),
            "include": (wrappedValue: include?.encodeToJSON(), isExplode: false),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<InAppPurchasePricesResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     - GET /v1/inAppPurchasePriceSchedules/{id}/manualPrices
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter urlString: next or first url from App Store Connect API
     - returns: RequestBuilder<InAppPurchasePricesResponse> 
     */
    open class func inAppPurchasePriceSchedulesManualPricesGetToManyRelatedWithRequestBuilder(urlString: String) -> RequestBuilder<InAppPurchasePricesResponse> {
        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<InAppPurchasePricesResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: urlString, parameters: nil, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }
}
