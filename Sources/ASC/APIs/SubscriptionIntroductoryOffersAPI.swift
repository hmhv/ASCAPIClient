//
// SubscriptionIntroductoryOffersAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

open class SubscriptionIntroductoryOffersAPI {

    /**

     - parameter subscriptionIntroductoryOfferCreateRequest: (body) SubscriptionIntroductoryOffer representation 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: SubscriptionIntroductoryOfferResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func subscriptionIntroductoryOffersCreateInstance(subscriptionIntroductoryOfferCreateRequest: SubscriptionIntroductoryOfferCreateRequest, apiConfiguration: ASCAPIConfiguration = ASCAPIConfiguration.shared) async throws(ErrorResponse) -> SubscriptionIntroductoryOfferResponse {
        return try await subscriptionIntroductoryOffersCreateInstanceWithRequestBuilder(subscriptionIntroductoryOfferCreateRequest: subscriptionIntroductoryOfferCreateRequest, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     - parameter urlString: next or first url from App Store Connect API
     - parameter apiConfiguration: The configuration for the http request.
     - returns: SubscriptionIntroductoryOfferResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func subscriptionIntroductoryOffersCreateInstance(urlString: String, apiConfiguration: ASCAPIConfiguration = ASCAPIConfiguration.shared) async throws(ErrorResponse) -> SubscriptionIntroductoryOfferResponse {
        return try await subscriptionIntroductoryOffersCreateInstanceWithRequestBuilder(urlString: urlString, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     - POST /v1/subscriptionIntroductoryOffers
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter subscriptionIntroductoryOfferCreateRequest: (body) SubscriptionIntroductoryOffer representation 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<SubscriptionIntroductoryOfferResponse> 
     */
    open class func subscriptionIntroductoryOffersCreateInstanceWithRequestBuilder(subscriptionIntroductoryOfferCreateRequest: SubscriptionIntroductoryOfferCreateRequest, apiConfiguration: ASCAPIConfiguration = ASCAPIConfiguration.shared) -> RequestBuilder<SubscriptionIntroductoryOfferResponse> {
        let localVariablePath = "/v1/subscriptionIntroductoryOffers"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: subscriptionIntroductoryOfferCreateRequest, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            "Content-Type": "application/json",
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<SubscriptionIntroductoryOfferResponse>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     - POST /v1/subscriptionIntroductoryOffers
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter urlString: next or first url from App Store Connect API
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<SubscriptionIntroductoryOfferResponse> 
     */
    open class func subscriptionIntroductoryOffersCreateInstanceWithRequestBuilder(urlString: String, apiConfiguration: ASCAPIConfiguration = ASCAPIConfiguration.shared) -> RequestBuilder<SubscriptionIntroductoryOfferResponse> {
        let localVariableNillableHeaders: [String: Any?] = [
            "Content-Type": "application/json",
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<SubscriptionIntroductoryOfferResponse>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: urlString, parameters: nil, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**

     - parameter id: (path) the id of the requested resource 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: Void
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func subscriptionIntroductoryOffersDeleteInstance(id: String, apiConfiguration: ASCAPIConfiguration = ASCAPIConfiguration.shared) async throws(ErrorResponse) {
        return try await subscriptionIntroductoryOffersDeleteInstanceWithRequestBuilder(id: id, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     - parameter urlString: next or first url from App Store Connect API
     - parameter apiConfiguration: The configuration for the http request.
     - returns: Void
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func subscriptionIntroductoryOffersDeleteInstance(urlString: String, apiConfiguration: ASCAPIConfiguration = ASCAPIConfiguration.shared) async throws(ErrorResponse) {
        return try await subscriptionIntroductoryOffersDeleteInstanceWithRequestBuilder(urlString: urlString, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     - DELETE /v1/subscriptionIntroductoryOffers/{id}
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter id: (path) the id of the requested resource 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<Void> 
     */
    open class func subscriptionIntroductoryOffersDeleteInstanceWithRequestBuilder(id: String, apiConfiguration: ASCAPIConfiguration = ASCAPIConfiguration.shared) -> RequestBuilder<Void> {
        var localVariablePath = "/v1/subscriptionIntroductoryOffers/{id}"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Void>.Type = apiConfiguration.requestBuilderFactory.getNonDecodableBuilder()

        return localVariableRequestBuilder.init(method: "DELETE", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     - DELETE /v1/subscriptionIntroductoryOffers/{id}
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter urlString: next or first url from App Store Connect API
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<Void> 
     */
    open class func subscriptionIntroductoryOffersDeleteInstanceWithRequestBuilder(urlString: String, apiConfiguration: ASCAPIConfiguration = ASCAPIConfiguration.shared) -> RequestBuilder<Void> {
        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Void>.Type = apiConfiguration.requestBuilderFactory.getNonDecodableBuilder()

        return localVariableRequestBuilder.init(method: "DELETE", URLString: urlString, parameters: nil, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**

     - parameter id: (path) the id of the requested resource 
     - parameter subscriptionIntroductoryOfferUpdateRequest: (body) SubscriptionIntroductoryOffer representation 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: SubscriptionIntroductoryOfferResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func subscriptionIntroductoryOffersUpdateInstance(id: String, subscriptionIntroductoryOfferUpdateRequest: SubscriptionIntroductoryOfferUpdateRequest, apiConfiguration: ASCAPIConfiguration = ASCAPIConfiguration.shared) async throws(ErrorResponse) -> SubscriptionIntroductoryOfferResponse {
        return try await subscriptionIntroductoryOffersUpdateInstanceWithRequestBuilder(id: id, subscriptionIntroductoryOfferUpdateRequest: subscriptionIntroductoryOfferUpdateRequest, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     - parameter urlString: next or first url from App Store Connect API
     - parameter apiConfiguration: The configuration for the http request.
     - returns: SubscriptionIntroductoryOfferResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func subscriptionIntroductoryOffersUpdateInstance(urlString: String, apiConfiguration: ASCAPIConfiguration = ASCAPIConfiguration.shared) async throws(ErrorResponse) -> SubscriptionIntroductoryOfferResponse {
        return try await subscriptionIntroductoryOffersUpdateInstanceWithRequestBuilder(urlString: urlString, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     - PATCH /v1/subscriptionIntroductoryOffers/{id}
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter id: (path) the id of the requested resource 
     - parameter subscriptionIntroductoryOfferUpdateRequest: (body) SubscriptionIntroductoryOffer representation 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<SubscriptionIntroductoryOfferResponse> 
     */
    open class func subscriptionIntroductoryOffersUpdateInstanceWithRequestBuilder(id: String, subscriptionIntroductoryOfferUpdateRequest: SubscriptionIntroductoryOfferUpdateRequest, apiConfiguration: ASCAPIConfiguration = ASCAPIConfiguration.shared) -> RequestBuilder<SubscriptionIntroductoryOfferResponse> {
        var localVariablePath = "/v1/subscriptionIntroductoryOffers/{id}"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: subscriptionIntroductoryOfferUpdateRequest, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            "Content-Type": "application/json",
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<SubscriptionIntroductoryOfferResponse>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PATCH", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     - PATCH /v1/subscriptionIntroductoryOffers/{id}
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter urlString: next or first url from App Store Connect API
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<SubscriptionIntroductoryOfferResponse> 
     */
    open class func subscriptionIntroductoryOffersUpdateInstanceWithRequestBuilder(urlString: String, apiConfiguration: ASCAPIConfiguration = ASCAPIConfiguration.shared) -> RequestBuilder<SubscriptionIntroductoryOfferResponse> {
        let localVariableNillableHeaders: [String: Any?] = [
            "Content-Type": "application/json",
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<SubscriptionIntroductoryOfferResponse>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PATCH", URLString: urlString, parameters: nil, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }
}
