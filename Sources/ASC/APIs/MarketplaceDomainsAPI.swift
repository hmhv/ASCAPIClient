//
// MarketplaceDomainsAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

open class MarketplaceDomainsAPI {

    /**

     - parameter marketplaceDomainCreateRequest: (body) MarketplaceDomain representation 
     - returns: MarketplaceDomainResponse
     */
    @available(*, deprecated, message: "This operation is deprecated.")
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func marketplaceDomainsCreateInstance(marketplaceDomainCreateRequest: MarketplaceDomainCreateRequest) async throws -> MarketplaceDomainResponse {
        return try await marketplaceDomainsCreateInstanceWithRequestBuilder(marketplaceDomainCreateRequest: marketplaceDomainCreateRequest).execute().body
    }

    /**
     - parameter urlString: next or first url from App Store Connect API
     - returns: MarketplaceDomainResponse
     */
    @available(*, deprecated, message: "This operation is deprecated.")
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func marketplaceDomainsCreateInstance(urlString: String) async throws -> MarketplaceDomainResponse {
        return try await marketplaceDomainsCreateInstanceWithRequestBuilder(urlString: urlString).execute().body
    }

    /**
     - POST /v1/marketplaceDomains
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter marketplaceDomainCreateRequest: (body) MarketplaceDomain representation 
     - returns: RequestBuilder<MarketplaceDomainResponse> 
     */
    @available(*, deprecated, message: "This operation is deprecated.")
    open class func marketplaceDomainsCreateInstanceWithRequestBuilder(marketplaceDomainCreateRequest: MarketplaceDomainCreateRequest) -> RequestBuilder<MarketplaceDomainResponse> {
        let localVariablePath = "/v1/marketplaceDomains"
        let localVariableURLString = ASCAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: marketplaceDomainCreateRequest)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            "Content-Type": "application/json",
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<MarketplaceDomainResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     - POST /v1/marketplaceDomains
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter urlString: next or first url from App Store Connect API
     - returns: RequestBuilder<MarketplaceDomainResponse> 
     */
    @available(*, deprecated, message: "This operation is deprecated.")
    open class func marketplaceDomainsCreateInstanceWithRequestBuilder(urlString: String) -> RequestBuilder<MarketplaceDomainResponse> {
        let localVariableNillableHeaders: [String: Any?] = [
            "Content-Type": "application/json",
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<MarketplaceDomainResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: urlString, parameters: nil, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**

     - parameter id: (path) the id of the requested resource 
     - returns: Void
     */
    @available(*, deprecated, message: "This operation is deprecated.")
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func marketplaceDomainsDeleteInstance(id: String) async throws {
        return try await marketplaceDomainsDeleteInstanceWithRequestBuilder(id: id).execute().body
    }

    /**
     - parameter urlString: next or first url from App Store Connect API
     - returns: Void
     */
    @available(*, deprecated, message: "This operation is deprecated.")
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func marketplaceDomainsDeleteInstance(urlString: String) async throws {
        return try await marketplaceDomainsDeleteInstanceWithRequestBuilder(urlString: urlString).execute().body
    }

    /**
     - DELETE /v1/marketplaceDomains/{id}
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter id: (path) the id of the requested resource 
     - returns: RequestBuilder<Void> 
     */
    @available(*, deprecated, message: "This operation is deprecated.")
    open class func marketplaceDomainsDeleteInstanceWithRequestBuilder(id: String) -> RequestBuilder<Void> {
        var localVariablePath = "/v1/marketplaceDomains/{id}"
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
     - DELETE /v1/marketplaceDomains/{id}
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter urlString: next or first url from App Store Connect API
     - returns: RequestBuilder<Void> 
     */
    @available(*, deprecated, message: "This operation is deprecated.")
    open class func marketplaceDomainsDeleteInstanceWithRequestBuilder(urlString: String) -> RequestBuilder<Void> {
        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Void>.Type = ASCAPI.requestBuilderFactory.getNonDecodableBuilder()

        return localVariableRequestBuilder.init(method: "DELETE", URLString: urlString, parameters: nil, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     * enum for parameter fieldsMarketplaceDomains
     */
    public enum FieldsMarketplaceDomains_marketplaceDomainsGetCollection: String, CaseIterable {
        case createddate = "createdDate"
        case domain = "domain"
        case referencename = "referenceName"
    }

    /**

     - parameter fieldsMarketplaceDomains: (query) the fields to include for returned resources of type marketplaceDomains (optional)
     - parameter limit: (query) maximum resources per page (optional)
     - returns: MarketplaceDomainsResponse
     */
    @available(*, deprecated, message: "This operation is deprecated.")
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func marketplaceDomainsGetCollection(fieldsMarketplaceDomains: [FieldsMarketplaceDomains_marketplaceDomainsGetCollection]? = nil, limit: Int? = nil) async throws -> MarketplaceDomainsResponse {
        return try await marketplaceDomainsGetCollectionWithRequestBuilder(fieldsMarketplaceDomains: fieldsMarketplaceDomains, limit: limit).execute().body
    }

    /**
     - parameter urlString: next or first url from App Store Connect API
     - returns: MarketplaceDomainsResponse
     */
    @available(*, deprecated, message: "This operation is deprecated.")
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func marketplaceDomainsGetCollection(urlString: String) async throws -> MarketplaceDomainsResponse {
        return try await marketplaceDomainsGetCollectionWithRequestBuilder(urlString: urlString).execute().body
    }

    /**
     - GET /v1/marketplaceDomains
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter fieldsMarketplaceDomains: (query) the fields to include for returned resources of type marketplaceDomains (optional)
     - parameter limit: (query) maximum resources per page (optional)
     - returns: RequestBuilder<MarketplaceDomainsResponse> 
     */
    @available(*, deprecated, message: "This operation is deprecated.")
    open class func marketplaceDomainsGetCollectionWithRequestBuilder(fieldsMarketplaceDomains: [FieldsMarketplaceDomains_marketplaceDomainsGetCollection]? = nil, limit: Int? = nil) -> RequestBuilder<MarketplaceDomainsResponse> {
        let localVariablePath = "/v1/marketplaceDomains"
        let localVariableURLString = ASCAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "fields[marketplaceDomains]": (wrappedValue: fieldsMarketplaceDomains?.encodeToJSON(), isExplode: false),
            "limit": (wrappedValue: limit?.encodeToJSON(), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<MarketplaceDomainsResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     - GET /v1/marketplaceDomains
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter urlString: next or first url from App Store Connect API
     - returns: RequestBuilder<MarketplaceDomainsResponse> 
     */
    @available(*, deprecated, message: "This operation is deprecated.")
    open class func marketplaceDomainsGetCollectionWithRequestBuilder(urlString: String) -> RequestBuilder<MarketplaceDomainsResponse> {
        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<MarketplaceDomainsResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: urlString, parameters: nil, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     * enum for parameter fieldsMarketplaceDomains
     */
    public enum FieldsMarketplaceDomains_marketplaceDomainsGetInstance: String, CaseIterable {
        case createddate = "createdDate"
        case domain = "domain"
        case referencename = "referenceName"
    }

    /**

     - parameter id: (path) the id of the requested resource 
     - parameter fieldsMarketplaceDomains: (query) the fields to include for returned resources of type marketplaceDomains (optional)
     - returns: MarketplaceDomainResponse
     */
    @available(*, deprecated, message: "This operation is deprecated.")
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func marketplaceDomainsGetInstance(id: String, fieldsMarketplaceDomains: [FieldsMarketplaceDomains_marketplaceDomainsGetInstance]? = nil) async throws -> MarketplaceDomainResponse {
        return try await marketplaceDomainsGetInstanceWithRequestBuilder(id: id, fieldsMarketplaceDomains: fieldsMarketplaceDomains).execute().body
    }

    /**
     - parameter urlString: next or first url from App Store Connect API
     - returns: MarketplaceDomainResponse
     */
    @available(*, deprecated, message: "This operation is deprecated.")
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func marketplaceDomainsGetInstance(urlString: String) async throws -> MarketplaceDomainResponse {
        return try await marketplaceDomainsGetInstanceWithRequestBuilder(urlString: urlString).execute().body
    }

    /**
     - GET /v1/marketplaceDomains/{id}
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter id: (path) the id of the requested resource 
     - parameter fieldsMarketplaceDomains: (query) the fields to include for returned resources of type marketplaceDomains (optional)
     - returns: RequestBuilder<MarketplaceDomainResponse> 
     */
    @available(*, deprecated, message: "This operation is deprecated.")
    open class func marketplaceDomainsGetInstanceWithRequestBuilder(id: String, fieldsMarketplaceDomains: [FieldsMarketplaceDomains_marketplaceDomainsGetInstance]? = nil) -> RequestBuilder<MarketplaceDomainResponse> {
        var localVariablePath = "/v1/marketplaceDomains/{id}"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = ASCAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "fields[marketplaceDomains]": (wrappedValue: fieldsMarketplaceDomains?.encodeToJSON(), isExplode: false),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<MarketplaceDomainResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     - GET /v1/marketplaceDomains/{id}
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter urlString: next or first url from App Store Connect API
     - returns: RequestBuilder<MarketplaceDomainResponse> 
     */
    @available(*, deprecated, message: "This operation is deprecated.")
    open class func marketplaceDomainsGetInstanceWithRequestBuilder(urlString: String) -> RequestBuilder<MarketplaceDomainResponse> {
        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<MarketplaceDomainResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: urlString, parameters: nil, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }
}
