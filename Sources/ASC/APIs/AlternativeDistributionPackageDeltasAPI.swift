//
// AlternativeDistributionPackageDeltasAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

open class AlternativeDistributionPackageDeltasAPI {

    /**
     * enum for parameter fieldsAlternativeDistributionPackageDeltas
     */
    public enum FieldsAlternativeDistributionPackageDeltas_alternativeDistributionPackageDeltasGetInstance: String, CaseIterable {
        case alternativedistributionkeyblob = "alternativeDistributionKeyBlob"
        case filechecksum = "fileChecksum"
        case url = "url"
        case urlexpirationdate = "urlExpirationDate"
    }

    /**

     - parameter id: (path) the id of the requested resource 
     - parameter fieldsAlternativeDistributionPackageDeltas: (query) the fields to include for returned resources of type alternativeDistributionPackageDeltas (optional)
     - returns: AlternativeDistributionPackageDeltaResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func alternativeDistributionPackageDeltasGetInstance(id: String, fieldsAlternativeDistributionPackageDeltas: [FieldsAlternativeDistributionPackageDeltas_alternativeDistributionPackageDeltasGetInstance]? = nil) async throws -> AlternativeDistributionPackageDeltaResponse {
        return try await alternativeDistributionPackageDeltasGetInstanceWithRequestBuilder(id: id, fieldsAlternativeDistributionPackageDeltas: fieldsAlternativeDistributionPackageDeltas).execute().body
    }

    /**
     - parameter urlString: next or first url from App Store Connect API
     - returns: AlternativeDistributionPackageDeltaResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func alternativeDistributionPackageDeltasGetInstance(urlString: String) async throws -> AlternativeDistributionPackageDeltaResponse {
        return try await alternativeDistributionPackageDeltasGetInstanceWithRequestBuilder(urlString: urlString).execute().body
    }

    /**
     - GET /v1/alternativeDistributionPackageDeltas/{id}
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter id: (path) the id of the requested resource 
     - parameter fieldsAlternativeDistributionPackageDeltas: (query) the fields to include for returned resources of type alternativeDistributionPackageDeltas (optional)
     - returns: RequestBuilder<AlternativeDistributionPackageDeltaResponse> 
     */
    open class func alternativeDistributionPackageDeltasGetInstanceWithRequestBuilder(id: String, fieldsAlternativeDistributionPackageDeltas: [FieldsAlternativeDistributionPackageDeltas_alternativeDistributionPackageDeltasGetInstance]? = nil) -> RequestBuilder<AlternativeDistributionPackageDeltaResponse> {
        var localVariablePath = "/v1/alternativeDistributionPackageDeltas/{id}"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = ASCAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "fields[alternativeDistributionPackageDeltas]": (wrappedValue: fieldsAlternativeDistributionPackageDeltas?.encodeToJSON(), isExplode: false),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AlternativeDistributionPackageDeltaResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     - GET /v1/alternativeDistributionPackageDeltas/{id}
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter urlString: next or first url from App Store Connect API
     - returns: RequestBuilder<AlternativeDistributionPackageDeltaResponse> 
     */
    open class func alternativeDistributionPackageDeltasGetInstanceWithRequestBuilder(urlString: String) -> RequestBuilder<AlternativeDistributionPackageDeltaResponse> {
        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AlternativeDistributionPackageDeltaResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: urlString, parameters: nil, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }
}
