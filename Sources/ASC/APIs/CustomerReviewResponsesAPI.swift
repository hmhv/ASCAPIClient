//
// CustomerReviewResponsesAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

open class CustomerReviewResponsesAPI {

    /**

     - parameter customerReviewResponseV1CreateRequest: (body) CustomerReviewResponse representation 
     - returns: CustomerReviewResponseV1Response
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func customerReviewResponsesCreateInstance(customerReviewResponseV1CreateRequest: CustomerReviewResponseV1CreateRequest) async throws -> CustomerReviewResponseV1Response {
        return try await customerReviewResponsesCreateInstanceWithRequestBuilder(customerReviewResponseV1CreateRequest: customerReviewResponseV1CreateRequest).execute().body
    }

    /**
     - parameter urlString: next or first url from App Store Connect API
     - returns: CustomerReviewResponseV1Response
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func customerReviewResponsesCreateInstance(urlString: String) async throws -> CustomerReviewResponseV1Response {
        return try await customerReviewResponsesCreateInstanceWithRequestBuilder(urlString: urlString).execute().body
    }

    /**
     - POST /v1/customerReviewResponses
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter customerReviewResponseV1CreateRequest: (body) CustomerReviewResponse representation 
     - returns: RequestBuilder<CustomerReviewResponseV1Response> 
     */
    open class func customerReviewResponsesCreateInstanceWithRequestBuilder(customerReviewResponseV1CreateRequest: CustomerReviewResponseV1CreateRequest) -> RequestBuilder<CustomerReviewResponseV1Response> {
        let localVariablePath = "/v1/customerReviewResponses"
        let localVariableURLString = ASCAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: customerReviewResponseV1CreateRequest)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            "Content-Type": "application/json",
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<CustomerReviewResponseV1Response>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     - POST /v1/customerReviewResponses
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter urlString: next or first url from App Store Connect API
     - returns: RequestBuilder<CustomerReviewResponseV1Response> 
     */
    open class func customerReviewResponsesCreateInstanceWithRequestBuilder(urlString: String) -> RequestBuilder<CustomerReviewResponseV1Response> {
        let localVariableNillableHeaders: [String: Any?] = [
            "Content-Type": "application/json",
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<CustomerReviewResponseV1Response>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: urlString, parameters: nil, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**

     - parameter id: (path) the id of the requested resource 
     - returns: Void
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func customerReviewResponsesDeleteInstance(id: String) async throws {
        return try await customerReviewResponsesDeleteInstanceWithRequestBuilder(id: id).execute().body
    }

    /**
     - parameter urlString: next or first url from App Store Connect API
     - returns: Void
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func customerReviewResponsesDeleteInstance(urlString: String) async throws {
        return try await customerReviewResponsesDeleteInstanceWithRequestBuilder(urlString: urlString).execute().body
    }

    /**
     - DELETE /v1/customerReviewResponses/{id}
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter id: (path) the id of the requested resource 
     - returns: RequestBuilder<Void> 
     */
    open class func customerReviewResponsesDeleteInstanceWithRequestBuilder(id: String) -> RequestBuilder<Void> {
        var localVariablePath = "/v1/customerReviewResponses/{id}"
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
     - DELETE /v1/customerReviewResponses/{id}
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter urlString: next or first url from App Store Connect API
     - returns: RequestBuilder<Void> 
     */
    open class func customerReviewResponsesDeleteInstanceWithRequestBuilder(urlString: String) -> RequestBuilder<Void> {
        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Void>.Type = ASCAPI.requestBuilderFactory.getNonDecodableBuilder()

        return localVariableRequestBuilder.init(method: "DELETE", URLString: urlString, parameters: nil, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     * enum for parameter fieldsCustomerReviewResponses
     */
    public enum FieldsCustomerReviewResponses_customerReviewResponsesGetInstance: String, CaseIterable {
        case lastmodifieddate = "lastModifiedDate"
        case responsebody = "responseBody"
        case review = "review"
        case state = "state"
    }

    /**
     * enum for parameter include
     */
    public enum Include_customerReviewResponsesGetInstance: String, CaseIterable {
        case review = "review"
    }

    /**

     - parameter id: (path) the id of the requested resource 
     - parameter fieldsCustomerReviewResponses: (query) the fields to include for returned resources of type customerReviewResponses (optional)
     - parameter include: (query) comma-separated list of relationships to include (optional)
     - returns: CustomerReviewResponseV1Response
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func customerReviewResponsesGetInstance(id: String, fieldsCustomerReviewResponses: [FieldsCustomerReviewResponses_customerReviewResponsesGetInstance]? = nil, include: [Include_customerReviewResponsesGetInstance]? = nil) async throws -> CustomerReviewResponseV1Response {
        return try await customerReviewResponsesGetInstanceWithRequestBuilder(id: id, fieldsCustomerReviewResponses: fieldsCustomerReviewResponses, include: include).execute().body
    }

    /**
     - parameter urlString: next or first url from App Store Connect API
     - returns: CustomerReviewResponseV1Response
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func customerReviewResponsesGetInstance(urlString: String) async throws -> CustomerReviewResponseV1Response {
        return try await customerReviewResponsesGetInstanceWithRequestBuilder(urlString: urlString).execute().body
    }

    /**
     - GET /v1/customerReviewResponses/{id}
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter id: (path) the id of the requested resource 
     - parameter fieldsCustomerReviewResponses: (query) the fields to include for returned resources of type customerReviewResponses (optional)
     - parameter include: (query) comma-separated list of relationships to include (optional)
     - returns: RequestBuilder<CustomerReviewResponseV1Response> 
     */
    open class func customerReviewResponsesGetInstanceWithRequestBuilder(id: String, fieldsCustomerReviewResponses: [FieldsCustomerReviewResponses_customerReviewResponsesGetInstance]? = nil, include: [Include_customerReviewResponsesGetInstance]? = nil) -> RequestBuilder<CustomerReviewResponseV1Response> {
        var localVariablePath = "/v1/customerReviewResponses/{id}"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = ASCAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "fields[customerReviewResponses]": (wrappedValue: fieldsCustomerReviewResponses?.encodeToJSON(), isExplode: false),
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
     - GET /v1/customerReviewResponses/{id}
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter urlString: next or first url from App Store Connect API
     - returns: RequestBuilder<CustomerReviewResponseV1Response> 
     */
    open class func customerReviewResponsesGetInstanceWithRequestBuilder(urlString: String) -> RequestBuilder<CustomerReviewResponseV1Response> {
        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<CustomerReviewResponseV1Response>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: urlString, parameters: nil, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }
}