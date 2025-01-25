//
// CustomerReviewsAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

open class CustomerReviewsAPI {

    /**
     * enum for parameter fieldsCustomerReviews
     */
    public enum FieldsCustomerReviews_customerReviewsGetInstance: String, CaseIterable {
        case rating = "rating"
        case title = "title"
        case body = "body"
        case reviewernickname = "reviewerNickname"
        case createddate = "createdDate"
        case territory = "territory"
        case response = "response"
    }

    /**
     * enum for parameter fieldsCustomerReviewResponses
     */
    public enum FieldsCustomerReviewResponses_customerReviewsGetInstance: String, CaseIterable {
        case responsebody = "responseBody"
        case lastmodifieddate = "lastModifiedDate"
        case state = "state"
        case review = "review"
    }

    /**
     * enum for parameter include
     */
    public enum Include_customerReviewsGetInstance: String, CaseIterable {
        case response = "response"
    }

    /**

     - parameter id: (path) the id of the requested resource 
     - parameter fieldsCustomerReviews: (query) the fields to include for returned resources of type customerReviews (optional)
     - parameter fieldsCustomerReviewResponses: (query) the fields to include for returned resources of type customerReviewResponses (optional)
     - parameter include: (query) comma-separated list of relationships to include (optional)
     - returns: CustomerReviewResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func customerReviewsGetInstance(id: String, fieldsCustomerReviews: [FieldsCustomerReviews_customerReviewsGetInstance]? = nil, fieldsCustomerReviewResponses: [FieldsCustomerReviewResponses_customerReviewsGetInstance]? = nil, include: [Include_customerReviewsGetInstance]? = nil) async throws -> CustomerReviewResponse {
        return try await customerReviewsGetInstanceWithRequestBuilder(id: id, fieldsCustomerReviews: fieldsCustomerReviews, fieldsCustomerReviewResponses: fieldsCustomerReviewResponses, include: include).execute().body
    }

    /**
     - parameter urlString: next or first url from App Store Connect API
     - returns: CustomerReviewResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func customerReviewsGetInstance(urlString: String) async throws -> CustomerReviewResponse {
        return try await customerReviewsGetInstanceWithRequestBuilder(urlString: urlString).execute().body
    }

    /**
     - GET /v1/customerReviews/{id}
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter id: (path) the id of the requested resource 
     - parameter fieldsCustomerReviews: (query) the fields to include for returned resources of type customerReviews (optional)
     - parameter fieldsCustomerReviewResponses: (query) the fields to include for returned resources of type customerReviewResponses (optional)
     - parameter include: (query) comma-separated list of relationships to include (optional)
     - returns: RequestBuilder<CustomerReviewResponse> 
     */
    open class func customerReviewsGetInstanceWithRequestBuilder(id: String, fieldsCustomerReviews: [FieldsCustomerReviews_customerReviewsGetInstance]? = nil, fieldsCustomerReviewResponses: [FieldsCustomerReviewResponses_customerReviewsGetInstance]? = nil, include: [Include_customerReviewsGetInstance]? = nil) -> RequestBuilder<CustomerReviewResponse> {
        var localVariablePath = "/v1/customerReviews/{id}"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = ASCAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "fields[customerReviews]": (wrappedValue: fieldsCustomerReviews?.encodeToJSON(), isExplode: false),
            "fields[customerReviewResponses]": (wrappedValue: fieldsCustomerReviewResponses?.encodeToJSON(), isExplode: false),
            "include": (wrappedValue: include?.encodeToJSON(), isExplode: false),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<CustomerReviewResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     - GET /v1/customerReviews/{id}
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter urlString: next or first url from App Store Connect API
     - returns: RequestBuilder<CustomerReviewResponse> 
     */
    open class func customerReviewsGetInstanceWithRequestBuilder(urlString: String) -> RequestBuilder<CustomerReviewResponse> {
        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<CustomerReviewResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: urlString, parameters: nil, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     * enum for parameter fieldsCustomerReviewResponses
     */
    public enum FieldsCustomerReviewResponses_customerReviewsResponseGetToOneRelated: String, CaseIterable {
        case responsebody = "responseBody"
        case lastmodifieddate = "lastModifiedDate"
        case state = "state"
        case review = "review"
    }

    /**
     * enum for parameter fieldsCustomerReviews
     */
    public enum FieldsCustomerReviews_customerReviewsResponseGetToOneRelated: String, CaseIterable {
        case rating = "rating"
        case title = "title"
        case body = "body"
        case reviewernickname = "reviewerNickname"
        case createddate = "createdDate"
        case territory = "territory"
        case response = "response"
    }

    /**
     * enum for parameter include
     */
    public enum Include_customerReviewsResponseGetToOneRelated: String, CaseIterable {
        case review = "review"
    }

    /**

     - parameter id: (path) the id of the requested resource 
     - parameter fieldsCustomerReviewResponses: (query) the fields to include for returned resources of type customerReviewResponses (optional)
     - parameter fieldsCustomerReviews: (query) the fields to include for returned resources of type customerReviews (optional)
     - parameter include: (query) comma-separated list of relationships to include (optional)
     - returns: CustomerReviewResponseV1Response
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func customerReviewsResponseGetToOneRelated(id: String, fieldsCustomerReviewResponses: [FieldsCustomerReviewResponses_customerReviewsResponseGetToOneRelated]? = nil, fieldsCustomerReviews: [FieldsCustomerReviews_customerReviewsResponseGetToOneRelated]? = nil, include: [Include_customerReviewsResponseGetToOneRelated]? = nil) async throws -> CustomerReviewResponseV1Response {
        return try await customerReviewsResponseGetToOneRelatedWithRequestBuilder(id: id, fieldsCustomerReviewResponses: fieldsCustomerReviewResponses, fieldsCustomerReviews: fieldsCustomerReviews, include: include).execute().body
    }

    /**
     - parameter urlString: next or first url from App Store Connect API
     - returns: CustomerReviewResponseV1Response
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func customerReviewsResponseGetToOneRelated(urlString: String) async throws -> CustomerReviewResponseV1Response {
        return try await customerReviewsResponseGetToOneRelatedWithRequestBuilder(urlString: urlString).execute().body
    }

    /**
     - GET /v1/customerReviews/{id}/response
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter id: (path) the id of the requested resource 
     - parameter fieldsCustomerReviewResponses: (query) the fields to include for returned resources of type customerReviewResponses (optional)
     - parameter fieldsCustomerReviews: (query) the fields to include for returned resources of type customerReviews (optional)
     - parameter include: (query) comma-separated list of relationships to include (optional)
     - returns: RequestBuilder<CustomerReviewResponseV1Response> 
     */
    open class func customerReviewsResponseGetToOneRelatedWithRequestBuilder(id: String, fieldsCustomerReviewResponses: [FieldsCustomerReviewResponses_customerReviewsResponseGetToOneRelated]? = nil, fieldsCustomerReviews: [FieldsCustomerReviews_customerReviewsResponseGetToOneRelated]? = nil, include: [Include_customerReviewsResponseGetToOneRelated]? = nil) -> RequestBuilder<CustomerReviewResponseV1Response> {
        var localVariablePath = "/v1/customerReviews/{id}/response"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = ASCAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "fields[customerReviewResponses]": (wrappedValue: fieldsCustomerReviewResponses?.encodeToJSON(), isExplode: false),
            "fields[customerReviews]": (wrappedValue: fieldsCustomerReviews?.encodeToJSON(), isExplode: false),
            "include": (wrappedValue: include?.encodeToJSON(), isExplode: false),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<CustomerReviewResponseV1Response>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     - GET /v1/customerReviews/{id}/response
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter urlString: next or first url from App Store Connect API
     - returns: RequestBuilder<CustomerReviewResponseV1Response> 
     */
    open class func customerReviewsResponseGetToOneRelatedWithRequestBuilder(urlString: String) -> RequestBuilder<CustomerReviewResponseV1Response> {
        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<CustomerReviewResponseV1Response>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: urlString, parameters: nil, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }
}
