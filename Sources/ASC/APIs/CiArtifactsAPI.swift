//
// CiArtifactsAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

open class CiArtifactsAPI {

    /**
     * enum for parameter fieldsCiArtifacts
     */
    public enum FieldsCiArtifacts_ciArtifactsGetInstance: String, Sendable, CaseIterable {
        case filetype = "fileType"
        case filename = "fileName"
        case filesize = "fileSize"
        case downloadurl = "downloadUrl"
    }

    /**

     - parameter id: (path) the id of the requested resource 
     - parameter fieldsCiArtifacts: (query) the fields to include for returned resources of type ciArtifacts (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: CiArtifactResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func ciArtifactsGetInstance(id: String, fieldsCiArtifacts: [FieldsCiArtifacts_ciArtifactsGetInstance]? = nil, apiConfiguration: ASCAPIConfiguration = ASCAPIConfiguration.shared) async throws(ErrorResponse) -> CiArtifactResponse {
        return try await ciArtifactsGetInstanceWithRequestBuilder(id: id, fieldsCiArtifacts: fieldsCiArtifacts, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     - parameter urlString: next or first url from App Store Connect API
     - parameter apiConfiguration: The configuration for the http request.
     - returns: CiArtifactResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func ciArtifactsGetInstance(urlString: String, apiConfiguration: ASCAPIConfiguration = ASCAPIConfiguration.shared) async throws(ErrorResponse) -> CiArtifactResponse {
        return try await ciArtifactsGetInstanceWithRequestBuilder(urlString: urlString, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     - GET /v1/ciArtifacts/{id}
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter id: (path) the id of the requested resource 
     - parameter fieldsCiArtifacts: (query) the fields to include for returned resources of type ciArtifacts (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<CiArtifactResponse> 
     */
    open class func ciArtifactsGetInstanceWithRequestBuilder(id: String, fieldsCiArtifacts: [FieldsCiArtifacts_ciArtifactsGetInstance]? = nil, apiConfiguration: ASCAPIConfiguration = ASCAPIConfiguration.shared) -> RequestBuilder<CiArtifactResponse> {
        var localVariablePath = "/v1/ciArtifacts/{id}"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "fields[ciArtifacts]": (wrappedValue: fieldsCiArtifacts?.encodeToJSON(codableHelper: apiConfiguration.codableHelper), isExplode: false),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<CiArtifactResponse>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     - GET /v1/ciArtifacts/{id}
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter urlString: next or first url from App Store Connect API
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<CiArtifactResponse> 
     */
    open class func ciArtifactsGetInstanceWithRequestBuilder(urlString: String, apiConfiguration: ASCAPIConfiguration = ASCAPIConfiguration.shared) -> RequestBuilder<CiArtifactResponse> {
        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<CiArtifactResponse>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: urlString, parameters: nil, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }
}
