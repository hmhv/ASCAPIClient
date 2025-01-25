//
// SubscriptionPricePointsAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

open class SubscriptionPricePointsAPI {

    /**
     * enum for parameter fieldsSubscriptionPricePoints
     */
    public enum FieldsSubscriptionPricePoints_subscriptionPricePointsEqualizationsGetToManyRelated: String, Sendable, CaseIterable {
        case customerprice = "customerPrice"
        case proceeds = "proceeds"
        case proceedsyear2 = "proceedsYear2"
        case territory = "territory"
        case equalizations = "equalizations"
    }

    /**
     * enum for parameter fieldsTerritories
     */
    public enum FieldsTerritories_subscriptionPricePointsEqualizationsGetToManyRelated: String, Sendable, CaseIterable {
        case currency = "currency"
    }

    /**
     * enum for parameter include
     */
    public enum Include_subscriptionPricePointsEqualizationsGetToManyRelated: String, Sendable, CaseIterable {
        case territory = "territory"
    }

    /**

     - parameter id: (path) the id of the requested resource 
     - parameter filterTerritory: (query) filter by id(s) of related &#39;territory&#39; (optional)
     - parameter filterSubscription: (query) filter by id(s) of related &#39;subscription&#39; (optional)
     - parameter fieldsSubscriptionPricePoints: (query) the fields to include for returned resources of type subscriptionPricePoints (optional)
     - parameter fieldsTerritories: (query) the fields to include for returned resources of type territories (optional)
     - parameter limit: (query) maximum resources per page (optional)
     - parameter include: (query) comma-separated list of relationships to include (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: SubscriptionPricePointsResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func subscriptionPricePointsEqualizationsGetToManyRelated(id: String, filterTerritory: [String]? = nil, filterSubscription: [String]? = nil, fieldsSubscriptionPricePoints: [FieldsSubscriptionPricePoints_subscriptionPricePointsEqualizationsGetToManyRelated]? = nil, fieldsTerritories: [FieldsTerritories_subscriptionPricePointsEqualizationsGetToManyRelated]? = nil, limit: Int? = nil, include: [Include_subscriptionPricePointsEqualizationsGetToManyRelated]? = nil, apiConfiguration: ASCAPIConfiguration = ASCAPIConfiguration.shared) async throws(ErrorResponse) -> SubscriptionPricePointsResponse {
        return try await subscriptionPricePointsEqualizationsGetToManyRelatedWithRequestBuilder(id: id, filterTerritory: filterTerritory, filterSubscription: filterSubscription, fieldsSubscriptionPricePoints: fieldsSubscriptionPricePoints, fieldsTerritories: fieldsTerritories, limit: limit, include: include, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     - parameter urlString: next or first url from App Store Connect API
     - parameter apiConfiguration: The configuration for the http request.
     - returns: SubscriptionPricePointsResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func subscriptionPricePointsEqualizationsGetToManyRelated(urlString: String, apiConfiguration: ASCAPIConfiguration = ASCAPIConfiguration.shared) async throws(ErrorResponse) -> SubscriptionPricePointsResponse {
        return try await subscriptionPricePointsEqualizationsGetToManyRelatedWithRequestBuilder(urlString: urlString, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     - GET /v1/subscriptionPricePoints/{id}/equalizations
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter id: (path) the id of the requested resource 
     - parameter filterTerritory: (query) filter by id(s) of related &#39;territory&#39; (optional)
     - parameter filterSubscription: (query) filter by id(s) of related &#39;subscription&#39; (optional)
     - parameter fieldsSubscriptionPricePoints: (query) the fields to include for returned resources of type subscriptionPricePoints (optional)
     - parameter fieldsTerritories: (query) the fields to include for returned resources of type territories (optional)
     - parameter limit: (query) maximum resources per page (optional)
     - parameter include: (query) comma-separated list of relationships to include (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<SubscriptionPricePointsResponse> 
     */
    open class func subscriptionPricePointsEqualizationsGetToManyRelatedWithRequestBuilder(id: String, filterTerritory: [String]? = nil, filterSubscription: [String]? = nil, fieldsSubscriptionPricePoints: [FieldsSubscriptionPricePoints_subscriptionPricePointsEqualizationsGetToManyRelated]? = nil, fieldsTerritories: [FieldsTerritories_subscriptionPricePointsEqualizationsGetToManyRelated]? = nil, limit: Int? = nil, include: [Include_subscriptionPricePointsEqualizationsGetToManyRelated]? = nil, apiConfiguration: ASCAPIConfiguration = ASCAPIConfiguration.shared) -> RequestBuilder<SubscriptionPricePointsResponse> {
        var localVariablePath = "/v1/subscriptionPricePoints/{id}/equalizations"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "filter[territory]": (wrappedValue: filterTerritory?.encodeToJSON(codableHelper: apiConfiguration.codableHelper), isExplode: false),
            "filter[subscription]": (wrappedValue: filterSubscription?.encodeToJSON(codableHelper: apiConfiguration.codableHelper), isExplode: false),
            "fields[subscriptionPricePoints]": (wrappedValue: fieldsSubscriptionPricePoints?.encodeToJSON(codableHelper: apiConfiguration.codableHelper), isExplode: false),
            "fields[territories]": (wrappedValue: fieldsTerritories?.encodeToJSON(codableHelper: apiConfiguration.codableHelper), isExplode: false),
            "limit": (wrappedValue: limit?.encodeToJSON(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "include": (wrappedValue: include?.encodeToJSON(codableHelper: apiConfiguration.codableHelper), isExplode: false),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<SubscriptionPricePointsResponse>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     - GET /v1/subscriptionPricePoints/{id}/equalizations
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter urlString: next or first url from App Store Connect API
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<SubscriptionPricePointsResponse> 
     */
    open class func subscriptionPricePointsEqualizationsGetToManyRelatedWithRequestBuilder(urlString: String, apiConfiguration: ASCAPIConfiguration = ASCAPIConfiguration.shared) -> RequestBuilder<SubscriptionPricePointsResponse> {
        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<SubscriptionPricePointsResponse>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: urlString, parameters: nil, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     * enum for parameter fieldsSubscriptionPricePoints
     */
    public enum FieldsSubscriptionPricePoints_subscriptionPricePointsGetInstance: String, Sendable, CaseIterable {
        case customerprice = "customerPrice"
        case proceeds = "proceeds"
        case proceedsyear2 = "proceedsYear2"
        case territory = "territory"
        case equalizations = "equalizations"
    }

    /**
     * enum for parameter include
     */
    public enum Include_subscriptionPricePointsGetInstance: String, Sendable, CaseIterable {
        case territory = "territory"
    }

    /**

     - parameter id: (path) the id of the requested resource 
     - parameter fieldsSubscriptionPricePoints: (query) the fields to include for returned resources of type subscriptionPricePoints (optional)
     - parameter include: (query) comma-separated list of relationships to include (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: SubscriptionPricePointResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func subscriptionPricePointsGetInstance(id: String, fieldsSubscriptionPricePoints: [FieldsSubscriptionPricePoints_subscriptionPricePointsGetInstance]? = nil, include: [Include_subscriptionPricePointsGetInstance]? = nil, apiConfiguration: ASCAPIConfiguration = ASCAPIConfiguration.shared) async throws(ErrorResponse) -> SubscriptionPricePointResponse {
        return try await subscriptionPricePointsGetInstanceWithRequestBuilder(id: id, fieldsSubscriptionPricePoints: fieldsSubscriptionPricePoints, include: include, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     - parameter urlString: next or first url from App Store Connect API
     - parameter apiConfiguration: The configuration for the http request.
     - returns: SubscriptionPricePointResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func subscriptionPricePointsGetInstance(urlString: String, apiConfiguration: ASCAPIConfiguration = ASCAPIConfiguration.shared) async throws(ErrorResponse) -> SubscriptionPricePointResponse {
        return try await subscriptionPricePointsGetInstanceWithRequestBuilder(urlString: urlString, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     - GET /v1/subscriptionPricePoints/{id}
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter id: (path) the id of the requested resource 
     - parameter fieldsSubscriptionPricePoints: (query) the fields to include for returned resources of type subscriptionPricePoints (optional)
     - parameter include: (query) comma-separated list of relationships to include (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<SubscriptionPricePointResponse> 
     */
    open class func subscriptionPricePointsGetInstanceWithRequestBuilder(id: String, fieldsSubscriptionPricePoints: [FieldsSubscriptionPricePoints_subscriptionPricePointsGetInstance]? = nil, include: [Include_subscriptionPricePointsGetInstance]? = nil, apiConfiguration: ASCAPIConfiguration = ASCAPIConfiguration.shared) -> RequestBuilder<SubscriptionPricePointResponse> {
        var localVariablePath = "/v1/subscriptionPricePoints/{id}"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "fields[subscriptionPricePoints]": (wrappedValue: fieldsSubscriptionPricePoints?.encodeToJSON(codableHelper: apiConfiguration.codableHelper), isExplode: false),
            "include": (wrappedValue: include?.encodeToJSON(codableHelper: apiConfiguration.codableHelper), isExplode: false),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<SubscriptionPricePointResponse>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     - GET /v1/subscriptionPricePoints/{id}
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter urlString: next or first url from App Store Connect API
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<SubscriptionPricePointResponse> 
     */
    open class func subscriptionPricePointsGetInstanceWithRequestBuilder(urlString: String, apiConfiguration: ASCAPIConfiguration = ASCAPIConfiguration.shared) -> RequestBuilder<SubscriptionPricePointResponse> {
        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<SubscriptionPricePointResponse>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: urlString, parameters: nil, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }
}
