//
// DiagnosticSignaturesAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

open class DiagnosticSignaturesAPI {

    /**

     - parameter id: (path) the id of the requested resource 
     - parameter limit: (query) maximum resources per page (optional)
     - returns: DiagnosticLogs
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func diagnosticSignaturesLogsGetToManyRelated(id: String, limit: Int? = nil) async throws -> DiagnosticLogs {
        return try await diagnosticSignaturesLogsGetToManyRelatedWithRequestBuilder(id: id, limit: limit).execute().body
    }

    /**
     - parameter urlString: next or first url from App Store Connect API
     - returns: DiagnosticLogs
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func diagnosticSignaturesLogsGetToManyRelated(urlString: String) async throws -> DiagnosticLogs {
        return try await diagnosticSignaturesLogsGetToManyRelatedWithRequestBuilder(urlString: urlString).execute().body
    }

    /**
     - GET /v1/diagnosticSignatures/{id}/logs
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter id: (path) the id of the requested resource 
     - parameter limit: (query) maximum resources per page (optional)
     - returns: RequestBuilder<DiagnosticLogs> 
     */
    open class func diagnosticSignaturesLogsGetToManyRelatedWithRequestBuilder(id: String, limit: Int? = nil) -> RequestBuilder<DiagnosticLogs> {
        var localVariablePath = "/v1/diagnosticSignatures/{id}/logs"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = ASCAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "limit": (wrappedValue: limit?.encodeToJSON(), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<DiagnosticLogs>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     - GET /v1/diagnosticSignatures/{id}/logs
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter urlString: next or first url from App Store Connect API
     - returns: RequestBuilder<DiagnosticLogs> 
     */
    open class func diagnosticSignaturesLogsGetToManyRelatedWithRequestBuilder(urlString: String) -> RequestBuilder<DiagnosticLogs> {
        let localVariableRequestBuilder: RequestBuilder<DiagnosticLogs>.Type = ASCAPI.requestBuilderFactory.getBuilder()
        return localVariableRequestBuilder.init(method: "GET", URLString: urlString, parameters: [:], headers: nil, requiresAuthentication: true)
    }
}
