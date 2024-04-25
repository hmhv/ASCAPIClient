//
// FinanceReportsAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

open class FinanceReportsAPI {

    /**
     * enum for parameter filterReportType
     */
    public enum FilterReportType_financeReportsGetCollection: String, CaseIterable {
        case financial = "FINANCIAL"
        case financeDetail = "FINANCE_DETAIL"
    }

    /**

     - parameter filterRegionCode: (query) filter by attribute &#39;regionCode&#39; 
     - parameter filterReportDate: (query) filter by attribute &#39;reportDate&#39; 
     - parameter filterReportType: (query) filter by attribute &#39;reportType&#39; 
     - parameter filterVendorNumber: (query) filter by attribute &#39;vendorNumber&#39; 
     - returns: URL
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func financeReportsGetCollection(filterRegionCode: [String], filterReportDate: [String], filterReportType: [FilterReportType_financeReportsGetCollection], filterVendorNumber: [String]) async throws -> URL {
        return try await financeReportsGetCollectionWithRequestBuilder(filterRegionCode: filterRegionCode, filterReportDate: filterReportDate, filterReportType: filterReportType, filterVendorNumber: filterVendorNumber).execute().body
    }

    /**
     - parameter urlString: next or first url from App Store Connect API
     - returns: URL
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func financeReportsGetCollection(urlString: String) async throws -> URL {
        return try await financeReportsGetCollectionWithRequestBuilder(urlString: urlString).execute().body
    }

    /**
     - GET /v1/financeReports
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter filterRegionCode: (query) filter by attribute &#39;regionCode&#39; 
     - parameter filterReportDate: (query) filter by attribute &#39;reportDate&#39; 
     - parameter filterReportType: (query) filter by attribute &#39;reportType&#39; 
     - parameter filterVendorNumber: (query) filter by attribute &#39;vendorNumber&#39; 
     - returns: RequestBuilder<URL> 
     */
    open class func financeReportsGetCollectionWithRequestBuilder(filterRegionCode: [String], filterReportDate: [String], filterReportType: [FilterReportType_financeReportsGetCollection], filterVendorNumber: [String]) -> RequestBuilder<URL> {
        let localVariablePath = "/v1/financeReports"
        let localVariableURLString = ASCAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "filter[regionCode]": (wrappedValue: filterRegionCode.encodeToJSON(), isExplode: false),
            "filter[reportDate]": (wrappedValue: filterReportDate.encodeToJSON(), isExplode: false),
            "filter[reportType]": (wrappedValue: filterReportType.encodeToJSON(), isExplode: false),
            "filter[vendorNumber]": (wrappedValue: filterVendorNumber.encodeToJSON(), isExplode: false),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<URL>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     - GET /v1/financeReports
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter urlString: next or first url from App Store Connect API
     - returns: RequestBuilder<URL> 
     */
    open class func financeReportsGetCollectionWithRequestBuilder(urlString: String) -> RequestBuilder<URL> {
        let localVariableRequestBuilder: RequestBuilder<URL>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: urlString, parameters: nil, headers: nil, requiresAuthentication: true)
    }
}
