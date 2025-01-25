//
// CiTestResultsAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

open class CiTestResultsAPI {

    /**
     * enum for parameter fieldsCiTestResults
     */
    public enum FieldsCiTestResults_ciTestResultsGetInstance: String, Sendable, CaseIterable {
        case classname = "className"
        case name = "name"
        case status = "status"
        case filesource = "fileSource"
        case message = "message"
        case destinationtestresults = "destinationTestResults"
    }

    /**

     - parameter id: (path) the id of the requested resource 
     - parameter fieldsCiTestResults: (query) the fields to include for returned resources of type ciTestResults (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: CiTestResultResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func ciTestResultsGetInstance(id: String, fieldsCiTestResults: [FieldsCiTestResults_ciTestResultsGetInstance]? = nil, apiConfiguration: ASCAPIConfiguration = ASCAPIConfiguration.shared) async throws(ErrorResponse) -> CiTestResultResponse {
        return try await ciTestResultsGetInstanceWithRequestBuilder(id: id, fieldsCiTestResults: fieldsCiTestResults, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     - parameter urlString: next or first url from App Store Connect API
     - parameter apiConfiguration: The configuration for the http request.
     - returns: CiTestResultResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func ciTestResultsGetInstance(urlString: String, apiConfiguration: ASCAPIConfiguration = ASCAPIConfiguration.shared) async throws(ErrorResponse) -> CiTestResultResponse {
        return try await ciTestResultsGetInstanceWithRequestBuilder(urlString: urlString, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     - GET /v1/ciTestResults/{id}
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter id: (path) the id of the requested resource 
     - parameter fieldsCiTestResults: (query) the fields to include for returned resources of type ciTestResults (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<CiTestResultResponse> 
     */
    open class func ciTestResultsGetInstanceWithRequestBuilder(id: String, fieldsCiTestResults: [FieldsCiTestResults_ciTestResultsGetInstance]? = nil, apiConfiguration: ASCAPIConfiguration = ASCAPIConfiguration.shared) -> RequestBuilder<CiTestResultResponse> {
        var localVariablePath = "/v1/ciTestResults/{id}"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "fields[ciTestResults]": (wrappedValue: fieldsCiTestResults?.encodeToJSON(codableHelper: apiConfiguration.codableHelper), isExplode: false),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<CiTestResultResponse>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     - GET /v1/ciTestResults/{id}
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter urlString: next or first url from App Store Connect API
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<CiTestResultResponse> 
     */
    open class func ciTestResultsGetInstanceWithRequestBuilder(urlString: String, apiConfiguration: ASCAPIConfiguration = ASCAPIConfiguration.shared) -> RequestBuilder<CiTestResultResponse> {
        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<CiTestResultResponse>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: urlString, parameters: nil, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }
}
