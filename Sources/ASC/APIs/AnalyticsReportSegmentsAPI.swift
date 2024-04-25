//
// AnalyticsReportSegmentsAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

open class AnalyticsReportSegmentsAPI {

    /**
     * enum for parameter fieldsAnalyticsReportSegments
     */
    public enum FieldsAnalyticsReportSegments_analyticsReportSegmentsGetInstance: String, CaseIterable {
        case checksum = "checksum"
        case sizeinbytes = "sizeInBytes"
        case url = "url"
    }

    /**

     - parameter id: (path) the id of the requested resource 
     - parameter fieldsAnalyticsReportSegments: (query) the fields to include for returned resources of type analyticsReportSegments (optional)
     - returns: AnalyticsReportSegmentResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func analyticsReportSegmentsGetInstance(id: String, fieldsAnalyticsReportSegments: [FieldsAnalyticsReportSegments_analyticsReportSegmentsGetInstance]? = nil) async throws -> AnalyticsReportSegmentResponse {
        return try await analyticsReportSegmentsGetInstanceWithRequestBuilder(id: id, fieldsAnalyticsReportSegments: fieldsAnalyticsReportSegments).execute().body
    }

    /**
     - parameter urlString: next or first url from App Store Connect API
     - returns: AnalyticsReportSegmentResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func analyticsReportSegmentsGetInstance(urlString: String) async throws -> AnalyticsReportSegmentResponse {
        return try await analyticsReportSegmentsGetInstanceWithRequestBuilder(urlString: urlString).execute().body
    }

    /**
     - GET /v1/analyticsReportSegments/{id}
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter id: (path) the id of the requested resource 
     - parameter fieldsAnalyticsReportSegments: (query) the fields to include for returned resources of type analyticsReportSegments (optional)
     - returns: RequestBuilder<AnalyticsReportSegmentResponse> 
     */
    open class func analyticsReportSegmentsGetInstanceWithRequestBuilder(id: String, fieldsAnalyticsReportSegments: [FieldsAnalyticsReportSegments_analyticsReportSegmentsGetInstance]? = nil) -> RequestBuilder<AnalyticsReportSegmentResponse> {
        var localVariablePath = "/v1/analyticsReportSegments/{id}"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = ASCAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "fields[analyticsReportSegments]": (wrappedValue: fieldsAnalyticsReportSegments?.encodeToJSON(), isExplode: false),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AnalyticsReportSegmentResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     - GET /v1/analyticsReportSegments/{id}
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter urlString: next or first url from App Store Connect API
     - returns: RequestBuilder<AnalyticsReportSegmentResponse> 
     */
    open class func analyticsReportSegmentsGetInstanceWithRequestBuilder(urlString: String) -> RequestBuilder<AnalyticsReportSegmentResponse> {
        let localVariableRequestBuilder: RequestBuilder<AnalyticsReportSegmentResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()
        return localVariableRequestBuilder.init(method: "GET", URLString: urlString, parameters: [:], headers: nil, requiresAuthentication: true)
    }
}
