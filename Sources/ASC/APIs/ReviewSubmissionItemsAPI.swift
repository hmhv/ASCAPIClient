//
// ReviewSubmissionItemsAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

open class ReviewSubmissionItemsAPI {

    /**

     - parameter reviewSubmissionItemCreateRequest: (body) ReviewSubmissionItem representation 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: ReviewSubmissionItemResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func reviewSubmissionItemsCreateInstance(reviewSubmissionItemCreateRequest: ReviewSubmissionItemCreateRequest, apiConfiguration: ASCAPIConfiguration = ASCAPIConfiguration.shared) async throws(ErrorResponse) -> ReviewSubmissionItemResponse {
        return try await reviewSubmissionItemsCreateInstanceWithRequestBuilder(reviewSubmissionItemCreateRequest: reviewSubmissionItemCreateRequest, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     - parameter urlString: next or first url from App Store Connect API
     - parameter apiConfiguration: The configuration for the http request.
     - returns: ReviewSubmissionItemResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func reviewSubmissionItemsCreateInstance(urlString: String, apiConfiguration: ASCAPIConfiguration = ASCAPIConfiguration.shared) async throws(ErrorResponse) -> ReviewSubmissionItemResponse {
        return try await reviewSubmissionItemsCreateInstanceWithRequestBuilder(urlString: urlString, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     - POST /v1/reviewSubmissionItems
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter reviewSubmissionItemCreateRequest: (body) ReviewSubmissionItem representation 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<ReviewSubmissionItemResponse> 
     */
    open class func reviewSubmissionItemsCreateInstanceWithRequestBuilder(reviewSubmissionItemCreateRequest: ReviewSubmissionItemCreateRequest, apiConfiguration: ASCAPIConfiguration = ASCAPIConfiguration.shared) -> RequestBuilder<ReviewSubmissionItemResponse> {
        let localVariablePath = "/v1/reviewSubmissionItems"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: reviewSubmissionItemCreateRequest, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            "Content-Type": "application/json",
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ReviewSubmissionItemResponse>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     - POST /v1/reviewSubmissionItems
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter urlString: next or first url from App Store Connect API
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<ReviewSubmissionItemResponse> 
     */
    open class func reviewSubmissionItemsCreateInstanceWithRequestBuilder(urlString: String, apiConfiguration: ASCAPIConfiguration = ASCAPIConfiguration.shared) -> RequestBuilder<ReviewSubmissionItemResponse> {
        let localVariableNillableHeaders: [String: Any?] = [
            "Content-Type": "application/json",
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ReviewSubmissionItemResponse>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: urlString, parameters: nil, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**

     - parameter id: (path) the id of the requested resource 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: Void
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func reviewSubmissionItemsDeleteInstance(id: String, apiConfiguration: ASCAPIConfiguration = ASCAPIConfiguration.shared) async throws(ErrorResponse) {
        return try await reviewSubmissionItemsDeleteInstanceWithRequestBuilder(id: id, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     - parameter urlString: next or first url from App Store Connect API
     - parameter apiConfiguration: The configuration for the http request.
     - returns: Void
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func reviewSubmissionItemsDeleteInstance(urlString: String, apiConfiguration: ASCAPIConfiguration = ASCAPIConfiguration.shared) async throws(ErrorResponse) {
        return try await reviewSubmissionItemsDeleteInstanceWithRequestBuilder(urlString: urlString, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     - DELETE /v1/reviewSubmissionItems/{id}
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter id: (path) the id of the requested resource 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<Void> 
     */
    open class func reviewSubmissionItemsDeleteInstanceWithRequestBuilder(id: String, apiConfiguration: ASCAPIConfiguration = ASCAPIConfiguration.shared) -> RequestBuilder<Void> {
        var localVariablePath = "/v1/reviewSubmissionItems/{id}"
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
     - DELETE /v1/reviewSubmissionItems/{id}
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter urlString: next or first url from App Store Connect API
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<Void> 
     */
    open class func reviewSubmissionItemsDeleteInstanceWithRequestBuilder(urlString: String, apiConfiguration: ASCAPIConfiguration = ASCAPIConfiguration.shared) -> RequestBuilder<Void> {
        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Void>.Type = apiConfiguration.requestBuilderFactory.getNonDecodableBuilder()

        return localVariableRequestBuilder.init(method: "DELETE", URLString: urlString, parameters: nil, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**

     - parameter id: (path) the id of the requested resource 
     - parameter reviewSubmissionItemUpdateRequest: (body) ReviewSubmissionItem representation 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: ReviewSubmissionItemResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func reviewSubmissionItemsUpdateInstance(id: String, reviewSubmissionItemUpdateRequest: ReviewSubmissionItemUpdateRequest, apiConfiguration: ASCAPIConfiguration = ASCAPIConfiguration.shared) async throws(ErrorResponse) -> ReviewSubmissionItemResponse {
        return try await reviewSubmissionItemsUpdateInstanceWithRequestBuilder(id: id, reviewSubmissionItemUpdateRequest: reviewSubmissionItemUpdateRequest, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     - parameter urlString: next or first url from App Store Connect API
     - parameter apiConfiguration: The configuration for the http request.
     - returns: ReviewSubmissionItemResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func reviewSubmissionItemsUpdateInstance(urlString: String, apiConfiguration: ASCAPIConfiguration = ASCAPIConfiguration.shared) async throws(ErrorResponse) -> ReviewSubmissionItemResponse {
        return try await reviewSubmissionItemsUpdateInstanceWithRequestBuilder(urlString: urlString, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     - PATCH /v1/reviewSubmissionItems/{id}
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter id: (path) the id of the requested resource 
     - parameter reviewSubmissionItemUpdateRequest: (body) ReviewSubmissionItem representation 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<ReviewSubmissionItemResponse> 
     */
    open class func reviewSubmissionItemsUpdateInstanceWithRequestBuilder(id: String, reviewSubmissionItemUpdateRequest: ReviewSubmissionItemUpdateRequest, apiConfiguration: ASCAPIConfiguration = ASCAPIConfiguration.shared) -> RequestBuilder<ReviewSubmissionItemResponse> {
        var localVariablePath = "/v1/reviewSubmissionItems/{id}"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: reviewSubmissionItemUpdateRequest, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            "Content-Type": "application/json",
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ReviewSubmissionItemResponse>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PATCH", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     - PATCH /v1/reviewSubmissionItems/{id}
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter urlString: next or first url from App Store Connect API
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<ReviewSubmissionItemResponse> 
     */
    open class func reviewSubmissionItemsUpdateInstanceWithRequestBuilder(urlString: String, apiConfiguration: ASCAPIConfiguration = ASCAPIConfiguration.shared) -> RequestBuilder<ReviewSubmissionItemResponse> {
        let localVariableNillableHeaders: [String: Any?] = [
            "Content-Type": "application/json",
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ReviewSubmissionItemResponse>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PATCH", URLString: urlString, parameters: nil, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }
}
