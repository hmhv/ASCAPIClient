//
// SubscriptionPricePointsAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

open class SubscriptionPricePointsAPI {

    /**
     * enum for parameter fieldsSubscriptionPricePoints
     */
    public enum FieldsSubscriptionPricePoints_subscriptionPricePointsEqualizationsGetToManyRelated: String, CaseIterable {
        case customerprice = "customerPrice"
        case equalizations = "equalizations"
        case proceeds = "proceeds"
        case proceedsyear2 = "proceedsYear2"
        case subscription = "subscription"
        case territory = "territory"
    }

    /**
     * enum for parameter fieldsTerritories
     */
    public enum FieldsTerritories_subscriptionPricePointsEqualizationsGetToManyRelated: String, CaseIterable {
        case currency = "currency"
    }

    /**
     * enum for parameter include
     */
    public enum Include_subscriptionPricePointsEqualizationsGetToManyRelated: String, CaseIterable {
        case territory = "territory"
    }

    /**

     - parameter id: (path) the id of the requested resource 
     - parameter filterSubscription: (query) filter by id(s) of related &#39;subscription&#39; (optional)
     - parameter filterTerritory: (query) filter by id(s) of related &#39;territory&#39; (optional)
     - parameter fieldsSubscriptionPricePoints: (query) the fields to include for returned resources of type subscriptionPricePoints (optional)
     - parameter fieldsTerritories: (query) the fields to include for returned resources of type territories (optional)
     - parameter limit: (query) maximum resources per page (optional)
     - parameter include: (query) comma-separated list of relationships to include (optional)
     - returns: SubscriptionPricePointsResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func subscriptionPricePointsEqualizationsGetToManyRelated(id: String, filterSubscription: [String]? = nil, filterTerritory: [String]? = nil, fieldsSubscriptionPricePoints: [FieldsSubscriptionPricePoints_subscriptionPricePointsEqualizationsGetToManyRelated]? = nil, fieldsTerritories: [FieldsTerritories_subscriptionPricePointsEqualizationsGetToManyRelated]? = nil, limit: Int? = nil, include: [Include_subscriptionPricePointsEqualizationsGetToManyRelated]? = nil) async throws -> SubscriptionPricePointsResponse {
        return try await subscriptionPricePointsEqualizationsGetToManyRelatedWithRequestBuilder(id: id, filterSubscription: filterSubscription, filterTerritory: filterTerritory, fieldsSubscriptionPricePoints: fieldsSubscriptionPricePoints, fieldsTerritories: fieldsTerritories, limit: limit, include: include).execute().body
    }

    /**
     - parameter urlString: next or first url from App Store Connect API
     - returns: SubscriptionPricePointsResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func subscriptionPricePointsEqualizationsGetToManyRelated(urlString: String) async throws -> SubscriptionPricePointsResponse {
        return try await subscriptionPricePointsEqualizationsGetToManyRelatedWithRequestBuilder(urlString: urlString).execute().body
    }

    /**
     - GET /v1/subscriptionPricePoints/{id}/equalizations
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter id: (path) the id of the requested resource 
     - parameter filterSubscription: (query) filter by id(s) of related &#39;subscription&#39; (optional)
     - parameter filterTerritory: (query) filter by id(s) of related &#39;territory&#39; (optional)
     - parameter fieldsSubscriptionPricePoints: (query) the fields to include for returned resources of type subscriptionPricePoints (optional)
     - parameter fieldsTerritories: (query) the fields to include for returned resources of type territories (optional)
     - parameter limit: (query) maximum resources per page (optional)
     - parameter include: (query) comma-separated list of relationships to include (optional)
     - returns: RequestBuilder<SubscriptionPricePointsResponse> 
     */
    open class func subscriptionPricePointsEqualizationsGetToManyRelatedWithRequestBuilder(id: String, filterSubscription: [String]? = nil, filterTerritory: [String]? = nil, fieldsSubscriptionPricePoints: [FieldsSubscriptionPricePoints_subscriptionPricePointsEqualizationsGetToManyRelated]? = nil, fieldsTerritories: [FieldsTerritories_subscriptionPricePointsEqualizationsGetToManyRelated]? = nil, limit: Int? = nil, include: [Include_subscriptionPricePointsEqualizationsGetToManyRelated]? = nil) -> RequestBuilder<SubscriptionPricePointsResponse> {
        var localVariablePath = "/v1/subscriptionPricePoints/{id}/equalizations"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = ASCAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "filter[subscription]": (wrappedValue: filterSubscription?.encodeToJSON(), isExplode: false),
            "filter[territory]": (wrappedValue: filterTerritory?.encodeToJSON(), isExplode: false),
            "fields[subscriptionPricePoints]": (wrappedValue: fieldsSubscriptionPricePoints?.encodeToJSON(), isExplode: false),
            "fields[territories]": (wrappedValue: fieldsTerritories?.encodeToJSON(), isExplode: false),
            "limit": (wrappedValue: limit?.encodeToJSON(), isExplode: true),
            "include": (wrappedValue: include?.encodeToJSON(), isExplode: false),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<SubscriptionPricePointsResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     - GET /v1/subscriptionPricePoints/{id}/equalizations
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter urlString: next or first url from App Store Connect API
     - returns: RequestBuilder<SubscriptionPricePointsResponse> 
     */
    open class func subscriptionPricePointsEqualizationsGetToManyRelatedWithRequestBuilder(urlString: String) -> RequestBuilder<SubscriptionPricePointsResponse> {
        let localVariableRequestBuilder: RequestBuilder<SubscriptionPricePointsResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()
        return localVariableRequestBuilder.init(method: "GET", URLString: urlString, parameters: [:], headers: nil, requiresAuthentication: true)
    }

    /**
     * enum for parameter fieldsSubscriptionPricePoints
     */
    public enum FieldsSubscriptionPricePoints_subscriptionPricePointsGetInstance: String, CaseIterable {
        case customerprice = "customerPrice"
        case equalizations = "equalizations"
        case proceeds = "proceeds"
        case proceedsyear2 = "proceedsYear2"
        case subscription = "subscription"
        case territory = "territory"
    }

    /**
     * enum for parameter include
     */
    public enum Include_subscriptionPricePointsGetInstance: String, CaseIterable {
        case territory = "territory"
    }

    /**

     - parameter id: (path) the id of the requested resource 
     - parameter fieldsSubscriptionPricePoints: (query) the fields to include for returned resources of type subscriptionPricePoints (optional)
     - parameter include: (query) comma-separated list of relationships to include (optional)
     - returns: SubscriptionPricePointResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func subscriptionPricePointsGetInstance(id: String, fieldsSubscriptionPricePoints: [FieldsSubscriptionPricePoints_subscriptionPricePointsGetInstance]? = nil, include: [Include_subscriptionPricePointsGetInstance]? = nil) async throws -> SubscriptionPricePointResponse {
        return try await subscriptionPricePointsGetInstanceWithRequestBuilder(id: id, fieldsSubscriptionPricePoints: fieldsSubscriptionPricePoints, include: include).execute().body
    }

    /**
     - parameter urlString: next or first url from App Store Connect API
     - returns: SubscriptionPricePointResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func subscriptionPricePointsGetInstance(urlString: String) async throws -> SubscriptionPricePointResponse {
        return try await subscriptionPricePointsGetInstanceWithRequestBuilder(urlString: urlString).execute().body
    }

    /**
     - GET /v1/subscriptionPricePoints/{id}
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter id: (path) the id of the requested resource 
     - parameter fieldsSubscriptionPricePoints: (query) the fields to include for returned resources of type subscriptionPricePoints (optional)
     - parameter include: (query) comma-separated list of relationships to include (optional)
     - returns: RequestBuilder<SubscriptionPricePointResponse> 
     */
    open class func subscriptionPricePointsGetInstanceWithRequestBuilder(id: String, fieldsSubscriptionPricePoints: [FieldsSubscriptionPricePoints_subscriptionPricePointsGetInstance]? = nil, include: [Include_subscriptionPricePointsGetInstance]? = nil) -> RequestBuilder<SubscriptionPricePointResponse> {
        var localVariablePath = "/v1/subscriptionPricePoints/{id}"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = ASCAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "fields[subscriptionPricePoints]": (wrappedValue: fieldsSubscriptionPricePoints?.encodeToJSON(), isExplode: false),
            "include": (wrappedValue: include?.encodeToJSON(), isExplode: false),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<SubscriptionPricePointResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     - GET /v1/subscriptionPricePoints/{id}
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter urlString: next or first url from App Store Connect API
     - returns: RequestBuilder<SubscriptionPricePointResponse> 
     */
    open class func subscriptionPricePointsGetInstanceWithRequestBuilder(urlString: String) -> RequestBuilder<SubscriptionPricePointResponse> {
        let localVariableRequestBuilder: RequestBuilder<SubscriptionPricePointResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()
        return localVariableRequestBuilder.init(method: "GET", URLString: urlString, parameters: [:], headers: nil, requiresAuthentication: true)
    }
}
