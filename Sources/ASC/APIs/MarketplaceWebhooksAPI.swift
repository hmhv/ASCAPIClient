//
// MarketplaceWebhooksAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

open class MarketplaceWebhooksAPI {

    /**

     - parameter marketplaceWebhookCreateRequest: (body) MarketplaceWebhook representation 
     - returns: MarketplaceWebhookResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func marketplaceWebhooksCreateInstance(marketplaceWebhookCreateRequest: MarketplaceWebhookCreateRequest) async throws -> MarketplaceWebhookResponse {
        return try await marketplaceWebhooksCreateInstanceWithRequestBuilder(marketplaceWebhookCreateRequest: marketplaceWebhookCreateRequest).execute().body
    }

    /**
     - parameter urlString: next or first url from App Store Connect API
     - returns: MarketplaceWebhookResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func marketplaceWebhooksCreateInstance(urlString: String) async throws -> MarketplaceWebhookResponse {
        return try await marketplaceWebhooksCreateInstanceWithRequestBuilder(urlString: urlString).execute().body
    }

    /**
     - POST /v1/marketplaceWebhooks
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter marketplaceWebhookCreateRequest: (body) MarketplaceWebhook representation 
     - returns: RequestBuilder<MarketplaceWebhookResponse> 
     */
    open class func marketplaceWebhooksCreateInstanceWithRequestBuilder(marketplaceWebhookCreateRequest: MarketplaceWebhookCreateRequest) -> RequestBuilder<MarketplaceWebhookResponse> {
        let localVariablePath = "/v1/marketplaceWebhooks"
        let localVariableURLString = ASCAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: marketplaceWebhookCreateRequest)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            "Content-Type": "application/json",
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<MarketplaceWebhookResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     - POST /v1/marketplaceWebhooks
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter urlString: next or first url from App Store Connect API
     - returns: RequestBuilder<MarketplaceWebhookResponse> 
     */
    open class func marketplaceWebhooksCreateInstanceWithRequestBuilder(urlString: String) -> RequestBuilder<MarketplaceWebhookResponse> {
        let localVariableNillableHeaders: [String: Any?] = [
            "Content-Type": "application/json",
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<MarketplaceWebhookResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: urlString, parameters: nil, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**

     - parameter id: (path) the id of the requested resource 
     - returns: Void
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func marketplaceWebhooksDeleteInstance(id: String) async throws {
        return try await marketplaceWebhooksDeleteInstanceWithRequestBuilder(id: id).execute().body
    }

    /**
     - parameter urlString: next or first url from App Store Connect API
     - returns: Void
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func marketplaceWebhooksDeleteInstance(urlString: String) async throws {
        return try await marketplaceWebhooksDeleteInstanceWithRequestBuilder(urlString: urlString).execute().body
    }

    /**
     - DELETE /v1/marketplaceWebhooks/{id}
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter id: (path) the id of the requested resource 
     - returns: RequestBuilder<Void> 
     */
    open class func marketplaceWebhooksDeleteInstanceWithRequestBuilder(id: String) -> RequestBuilder<Void> {
        var localVariablePath = "/v1/marketplaceWebhooks/{id}"
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
     - DELETE /v1/marketplaceWebhooks/{id}
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter urlString: next or first url from App Store Connect API
     - returns: RequestBuilder<Void> 
     */
    open class func marketplaceWebhooksDeleteInstanceWithRequestBuilder(urlString: String) -> RequestBuilder<Void> {
        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Void>.Type = ASCAPI.requestBuilderFactory.getNonDecodableBuilder()

        return localVariableRequestBuilder.init(method: "DELETE", URLString: urlString, parameters: nil, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     * enum for parameter fieldsMarketplaceWebhooks
     */
    public enum FieldsMarketplaceWebhooks_marketplaceWebhooksGetCollection: String, CaseIterable {
        case endpointurl = "endpointUrl"
    }

    /**

     - parameter fieldsMarketplaceWebhooks: (query) the fields to include for returned resources of type marketplaceWebhooks (optional)
     - parameter limit: (query) maximum resources per page (optional)
     - returns: MarketplaceWebhooksResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func marketplaceWebhooksGetCollection(fieldsMarketplaceWebhooks: [FieldsMarketplaceWebhooks_marketplaceWebhooksGetCollection]? = nil, limit: Int? = nil) async throws -> MarketplaceWebhooksResponse {
        return try await marketplaceWebhooksGetCollectionWithRequestBuilder(fieldsMarketplaceWebhooks: fieldsMarketplaceWebhooks, limit: limit).execute().body
    }

    /**
     - parameter urlString: next or first url from App Store Connect API
     - returns: MarketplaceWebhooksResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func marketplaceWebhooksGetCollection(urlString: String) async throws -> MarketplaceWebhooksResponse {
        return try await marketplaceWebhooksGetCollectionWithRequestBuilder(urlString: urlString).execute().body
    }

    /**
     - GET /v1/marketplaceWebhooks
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter fieldsMarketplaceWebhooks: (query) the fields to include for returned resources of type marketplaceWebhooks (optional)
     - parameter limit: (query) maximum resources per page (optional)
     - returns: RequestBuilder<MarketplaceWebhooksResponse> 
     */
    open class func marketplaceWebhooksGetCollectionWithRequestBuilder(fieldsMarketplaceWebhooks: [FieldsMarketplaceWebhooks_marketplaceWebhooksGetCollection]? = nil, limit: Int? = nil) -> RequestBuilder<MarketplaceWebhooksResponse> {
        let localVariablePath = "/v1/marketplaceWebhooks"
        let localVariableURLString = ASCAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "fields[marketplaceWebhooks]": (wrappedValue: fieldsMarketplaceWebhooks?.encodeToJSON(), isExplode: false),
            "limit": (wrappedValue: limit?.encodeToJSON(), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<MarketplaceWebhooksResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     - GET /v1/marketplaceWebhooks
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter urlString: next or first url from App Store Connect API
     - returns: RequestBuilder<MarketplaceWebhooksResponse> 
     */
    open class func marketplaceWebhooksGetCollectionWithRequestBuilder(urlString: String) -> RequestBuilder<MarketplaceWebhooksResponse> {
        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<MarketplaceWebhooksResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: urlString, parameters: nil, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**

     - parameter id: (path) the id of the requested resource 
     - parameter marketplaceWebhookUpdateRequest: (body) MarketplaceWebhook representation 
     - returns: MarketplaceWebhookResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func marketplaceWebhooksUpdateInstance(id: String, marketplaceWebhookUpdateRequest: MarketplaceWebhookUpdateRequest) async throws -> MarketplaceWebhookResponse {
        return try await marketplaceWebhooksUpdateInstanceWithRequestBuilder(id: id, marketplaceWebhookUpdateRequest: marketplaceWebhookUpdateRequest).execute().body
    }

    /**
     - parameter urlString: next or first url from App Store Connect API
     - returns: MarketplaceWebhookResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func marketplaceWebhooksUpdateInstance(urlString: String) async throws -> MarketplaceWebhookResponse {
        return try await marketplaceWebhooksUpdateInstanceWithRequestBuilder(urlString: urlString).execute().body
    }

    /**
     - PATCH /v1/marketplaceWebhooks/{id}
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter id: (path) the id of the requested resource 
     - parameter marketplaceWebhookUpdateRequest: (body) MarketplaceWebhook representation 
     - returns: RequestBuilder<MarketplaceWebhookResponse> 
     */
    open class func marketplaceWebhooksUpdateInstanceWithRequestBuilder(id: String, marketplaceWebhookUpdateRequest: MarketplaceWebhookUpdateRequest) -> RequestBuilder<MarketplaceWebhookResponse> {
        var localVariablePath = "/v1/marketplaceWebhooks/{id}"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = ASCAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: marketplaceWebhookUpdateRequest)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            "Content-Type": "application/json",
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<MarketplaceWebhookResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PATCH", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     - PATCH /v1/marketplaceWebhooks/{id}
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter urlString: next or first url from App Store Connect API
     - returns: RequestBuilder<MarketplaceWebhookResponse> 
     */
    open class func marketplaceWebhooksUpdateInstanceWithRequestBuilder(urlString: String) -> RequestBuilder<MarketplaceWebhookResponse> {
        let localVariableNillableHeaders: [String: Any?] = [
            "Content-Type": "application/json",
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<MarketplaceWebhookResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PATCH", URLString: urlString, parameters: nil, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }
}
