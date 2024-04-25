//
// EndUserLicenseAgreementsAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

open class EndUserLicenseAgreementsAPI {

    /**

     - parameter endUserLicenseAgreementCreateRequest: (body) EndUserLicenseAgreement representation 
     - returns: EndUserLicenseAgreementResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func endUserLicenseAgreementsCreateInstance(endUserLicenseAgreementCreateRequest: EndUserLicenseAgreementCreateRequest) async throws -> EndUserLicenseAgreementResponse {
        return try await endUserLicenseAgreementsCreateInstanceWithRequestBuilder(endUserLicenseAgreementCreateRequest: endUserLicenseAgreementCreateRequest).execute().body
    }

    /**
     - parameter urlString: next or first url from App Store Connect API
     - returns: EndUserLicenseAgreementResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func endUserLicenseAgreementsCreateInstance(urlString: String) async throws -> EndUserLicenseAgreementResponse {
        return try await endUserLicenseAgreementsCreateInstanceWithRequestBuilder(urlString: urlString).execute().body
    }

    /**
     - POST /v1/endUserLicenseAgreements
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter endUserLicenseAgreementCreateRequest: (body) EndUserLicenseAgreement representation 
     - returns: RequestBuilder<EndUserLicenseAgreementResponse> 
     */
    open class func endUserLicenseAgreementsCreateInstanceWithRequestBuilder(endUserLicenseAgreementCreateRequest: EndUserLicenseAgreementCreateRequest) -> RequestBuilder<EndUserLicenseAgreementResponse> {
        let localVariablePath = "/v1/endUserLicenseAgreements"
        let localVariableURLString = ASCAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: endUserLicenseAgreementCreateRequest)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            "Content-Type": "application/json",
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<EndUserLicenseAgreementResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     - POST /v1/endUserLicenseAgreements
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter urlString: next or first url from App Store Connect API
     - returns: RequestBuilder<EndUserLicenseAgreementResponse> 
     */
    open class func endUserLicenseAgreementsCreateInstanceWithRequestBuilder(urlString: String) -> RequestBuilder<EndUserLicenseAgreementResponse> {
        let localVariableRequestBuilder: RequestBuilder<EndUserLicenseAgreementResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: urlString, parameters: nil, headers: nil, requiresAuthentication: true)
    }

    /**

     - parameter id: (path) the id of the requested resource 
     - returns: Void
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func endUserLicenseAgreementsDeleteInstance(id: String) async throws {
        return try await endUserLicenseAgreementsDeleteInstanceWithRequestBuilder(id: id).execute().body
    }

    /**
     - parameter urlString: next or first url from App Store Connect API
     - returns: Void
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func endUserLicenseAgreementsDeleteInstance(urlString: String) async throws {
        return try await endUserLicenseAgreementsDeleteInstanceWithRequestBuilder(urlString: urlString).execute().body
    }

    /**
     - DELETE /v1/endUserLicenseAgreements/{id}
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter id: (path) the id of the requested resource 
     - returns: RequestBuilder<Void> 
     */
    open class func endUserLicenseAgreementsDeleteInstanceWithRequestBuilder(id: String) -> RequestBuilder<Void> {
        var localVariablePath = "/v1/endUserLicenseAgreements/{id}"
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
     - DELETE /v1/endUserLicenseAgreements/{id}
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter urlString: next or first url from App Store Connect API
     - returns: RequestBuilder<Void> 
     */
    open class func endUserLicenseAgreementsDeleteInstanceWithRequestBuilder(urlString: String) -> RequestBuilder<Void> {
        let localVariableRequestBuilder: RequestBuilder<Void>.Type = ASCAPI.requestBuilderFactory.getNonDecodableBuilder()

        return localVariableRequestBuilder.init(method: "DELETE", URLString: urlString, parameters: nil, headers: nil, requiresAuthentication: true)
    }

    /**
     * enum for parameter fieldsEndUserLicenseAgreements
     */
    public enum FieldsEndUserLicenseAgreements_endUserLicenseAgreementsGetInstance: String, CaseIterable {
        case agreementtext = "agreementText"
        case app = "app"
        case territories = "territories"
    }

    /**
     * enum for parameter include
     */
    public enum Include_endUserLicenseAgreementsGetInstance: String, CaseIterable {
        case app = "app"
        case territories = "territories"
    }

    /**
     * enum for parameter fieldsTerritories
     */
    public enum FieldsTerritories_endUserLicenseAgreementsGetInstance: String, CaseIterable {
        case currency = "currency"
    }

    /**

     - parameter id: (path) the id of the requested resource 
     - parameter fieldsEndUserLicenseAgreements: (query) the fields to include for returned resources of type endUserLicenseAgreements (optional)
     - parameter include: (query) comma-separated list of relationships to include (optional)
     - parameter fieldsTerritories: (query) the fields to include for returned resources of type territories (optional)
     - parameter limitTerritories: (query) maximum number of related territories returned (when they are included) (optional)
     - returns: EndUserLicenseAgreementResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func endUserLicenseAgreementsGetInstance(id: String, fieldsEndUserLicenseAgreements: [FieldsEndUserLicenseAgreements_endUserLicenseAgreementsGetInstance]? = nil, include: [Include_endUserLicenseAgreementsGetInstance]? = nil, fieldsTerritories: [FieldsTerritories_endUserLicenseAgreementsGetInstance]? = nil, limitTerritories: Int? = nil) async throws -> EndUserLicenseAgreementResponse {
        return try await endUserLicenseAgreementsGetInstanceWithRequestBuilder(id: id, fieldsEndUserLicenseAgreements: fieldsEndUserLicenseAgreements, include: include, fieldsTerritories: fieldsTerritories, limitTerritories: limitTerritories).execute().body
    }

    /**
     - parameter urlString: next or first url from App Store Connect API
     - returns: EndUserLicenseAgreementResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func endUserLicenseAgreementsGetInstance(urlString: String) async throws -> EndUserLicenseAgreementResponse {
        return try await endUserLicenseAgreementsGetInstanceWithRequestBuilder(urlString: urlString).execute().body
    }

    /**
     - GET /v1/endUserLicenseAgreements/{id}
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter id: (path) the id of the requested resource 
     - parameter fieldsEndUserLicenseAgreements: (query) the fields to include for returned resources of type endUserLicenseAgreements (optional)
     - parameter include: (query) comma-separated list of relationships to include (optional)
     - parameter fieldsTerritories: (query) the fields to include for returned resources of type territories (optional)
     - parameter limitTerritories: (query) maximum number of related territories returned (when they are included) (optional)
     - returns: RequestBuilder<EndUserLicenseAgreementResponse> 
     */
    open class func endUserLicenseAgreementsGetInstanceWithRequestBuilder(id: String, fieldsEndUserLicenseAgreements: [FieldsEndUserLicenseAgreements_endUserLicenseAgreementsGetInstance]? = nil, include: [Include_endUserLicenseAgreementsGetInstance]? = nil, fieldsTerritories: [FieldsTerritories_endUserLicenseAgreementsGetInstance]? = nil, limitTerritories: Int? = nil) -> RequestBuilder<EndUserLicenseAgreementResponse> {
        var localVariablePath = "/v1/endUserLicenseAgreements/{id}"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = ASCAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "fields[endUserLicenseAgreements]": (wrappedValue: fieldsEndUserLicenseAgreements?.encodeToJSON(), isExplode: false),
            "include": (wrappedValue: include?.encodeToJSON(), isExplode: false),
            "fields[territories]": (wrappedValue: fieldsTerritories?.encodeToJSON(), isExplode: false),
            "limit[territories]": (wrappedValue: limitTerritories?.encodeToJSON(), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<EndUserLicenseAgreementResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     - GET /v1/endUserLicenseAgreements/{id}
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter urlString: next or first url from App Store Connect API
     - returns: RequestBuilder<EndUserLicenseAgreementResponse> 
     */
    open class func endUserLicenseAgreementsGetInstanceWithRequestBuilder(urlString: String) -> RequestBuilder<EndUserLicenseAgreementResponse> {
        let localVariableRequestBuilder: RequestBuilder<EndUserLicenseAgreementResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: urlString, parameters: nil, headers: nil, requiresAuthentication: true)
    }

    /**
     * enum for parameter fieldsTerritories
     */
    public enum FieldsTerritories_endUserLicenseAgreementsTerritoriesGetToManyRelated: String, CaseIterable {
        case currency = "currency"
    }

    /**

     - parameter id: (path) the id of the requested resource 
     - parameter fieldsTerritories: (query) the fields to include for returned resources of type territories (optional)
     - parameter limit: (query) maximum resources per page (optional)
     - returns: TerritoriesWithoutIncludesResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func endUserLicenseAgreementsTerritoriesGetToManyRelated(id: String, fieldsTerritories: [FieldsTerritories_endUserLicenseAgreementsTerritoriesGetToManyRelated]? = nil, limit: Int? = nil) async throws -> TerritoriesWithoutIncludesResponse {
        return try await endUserLicenseAgreementsTerritoriesGetToManyRelatedWithRequestBuilder(id: id, fieldsTerritories: fieldsTerritories, limit: limit).execute().body
    }

    /**
     - parameter urlString: next or first url from App Store Connect API
     - returns: TerritoriesWithoutIncludesResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func endUserLicenseAgreementsTerritoriesGetToManyRelated(urlString: String) async throws -> TerritoriesWithoutIncludesResponse {
        return try await endUserLicenseAgreementsTerritoriesGetToManyRelatedWithRequestBuilder(urlString: urlString).execute().body
    }

    /**
     - GET /v1/endUserLicenseAgreements/{id}/territories
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter id: (path) the id of the requested resource 
     - parameter fieldsTerritories: (query) the fields to include for returned resources of type territories (optional)
     - parameter limit: (query) maximum resources per page (optional)
     - returns: RequestBuilder<TerritoriesWithoutIncludesResponse> 
     */
    open class func endUserLicenseAgreementsTerritoriesGetToManyRelatedWithRequestBuilder(id: String, fieldsTerritories: [FieldsTerritories_endUserLicenseAgreementsTerritoriesGetToManyRelated]? = nil, limit: Int? = nil) -> RequestBuilder<TerritoriesWithoutIncludesResponse> {
        var localVariablePath = "/v1/endUserLicenseAgreements/{id}/territories"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = ASCAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "fields[territories]": (wrappedValue: fieldsTerritories?.encodeToJSON(), isExplode: false),
            "limit": (wrappedValue: limit?.encodeToJSON(), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<TerritoriesWithoutIncludesResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     - GET /v1/endUserLicenseAgreements/{id}/territories
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter urlString: next or first url from App Store Connect API
     - returns: RequestBuilder<TerritoriesWithoutIncludesResponse> 
     */
    open class func endUserLicenseAgreementsTerritoriesGetToManyRelatedWithRequestBuilder(urlString: String) -> RequestBuilder<TerritoriesWithoutIncludesResponse> {
        let localVariableRequestBuilder: RequestBuilder<TerritoriesWithoutIncludesResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: urlString, parameters: nil, headers: nil, requiresAuthentication: true)
    }

    /**

     - parameter id: (path) the id of the requested resource 
     - parameter endUserLicenseAgreementUpdateRequest: (body) EndUserLicenseAgreement representation 
     - returns: EndUserLicenseAgreementResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func endUserLicenseAgreementsUpdateInstance(id: String, endUserLicenseAgreementUpdateRequest: EndUserLicenseAgreementUpdateRequest) async throws -> EndUserLicenseAgreementResponse {
        return try await endUserLicenseAgreementsUpdateInstanceWithRequestBuilder(id: id, endUserLicenseAgreementUpdateRequest: endUserLicenseAgreementUpdateRequest).execute().body
    }

    /**
     - parameter urlString: next or first url from App Store Connect API
     - returns: EndUserLicenseAgreementResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func endUserLicenseAgreementsUpdateInstance(urlString: String) async throws -> EndUserLicenseAgreementResponse {
        return try await endUserLicenseAgreementsUpdateInstanceWithRequestBuilder(urlString: urlString).execute().body
    }

    /**
     - PATCH /v1/endUserLicenseAgreements/{id}
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter id: (path) the id of the requested resource 
     - parameter endUserLicenseAgreementUpdateRequest: (body) EndUserLicenseAgreement representation 
     - returns: RequestBuilder<EndUserLicenseAgreementResponse> 
     */
    open class func endUserLicenseAgreementsUpdateInstanceWithRequestBuilder(id: String, endUserLicenseAgreementUpdateRequest: EndUserLicenseAgreementUpdateRequest) -> RequestBuilder<EndUserLicenseAgreementResponse> {
        var localVariablePath = "/v1/endUserLicenseAgreements/{id}"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = ASCAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: endUserLicenseAgreementUpdateRequest)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            "Content-Type": "application/json",
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<EndUserLicenseAgreementResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PATCH", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     - PATCH /v1/endUserLicenseAgreements/{id}
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter urlString: next or first url from App Store Connect API
     - returns: RequestBuilder<EndUserLicenseAgreementResponse> 
     */
    open class func endUserLicenseAgreementsUpdateInstanceWithRequestBuilder(urlString: String) -> RequestBuilder<EndUserLicenseAgreementResponse> {
        let localVariableRequestBuilder: RequestBuilder<EndUserLicenseAgreementResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PATCH", URLString: urlString, parameters: nil, headers: nil, requiresAuthentication: true)
    }
}
