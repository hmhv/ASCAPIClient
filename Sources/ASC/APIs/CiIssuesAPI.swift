//
// CiIssuesAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

open class CiIssuesAPI {

    /**
     * enum for parameter fieldsCiIssues
     */
    public enum FieldsCiIssues_ciIssuesGetInstance: String, CaseIterable {
        case category = "category"
        case filesource = "fileSource"
        case issuetype = "issueType"
        case message = "message"
    }

    /**

     - parameter id: (path) the id of the requested resource 
     - parameter fieldsCiIssues: (query) the fields to include for returned resources of type ciIssues (optional)
     - returns: CiIssueResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func ciIssuesGetInstance(id: String, fieldsCiIssues: [FieldsCiIssues_ciIssuesGetInstance]? = nil) async throws -> CiIssueResponse {
        return try await ciIssuesGetInstanceWithRequestBuilder(id: id, fieldsCiIssues: fieldsCiIssues).execute().body
    }

    /**
     - parameter urlString: next or first url from App Store Connect API
     - returns: CiIssueResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func ciIssuesGetInstance(urlString: String) async throws -> CiIssueResponse {
        return try await ciIssuesGetInstanceWithRequestBuilder(urlString: urlString).execute().body
    }

    /**
     - GET /v1/ciIssues/{id}
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter id: (path) the id of the requested resource 
     - parameter fieldsCiIssues: (query) the fields to include for returned resources of type ciIssues (optional)
     - returns: RequestBuilder<CiIssueResponse> 
     */
    open class func ciIssuesGetInstanceWithRequestBuilder(id: String, fieldsCiIssues: [FieldsCiIssues_ciIssuesGetInstance]? = nil) -> RequestBuilder<CiIssueResponse> {
        var localVariablePath = "/v1/ciIssues/{id}"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = ASCAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "fields[ciIssues]": (wrappedValue: fieldsCiIssues?.encodeToJSON(), isExplode: false),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<CiIssueResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     - GET /v1/ciIssues/{id}
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter urlString: next or first url from App Store Connect API
     - returns: RequestBuilder<CiIssueResponse> 
     */
    open class func ciIssuesGetInstanceWithRequestBuilder(urlString: String) -> RequestBuilder<CiIssueResponse> {
        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<CiIssueResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: urlString, parameters: nil, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }
}