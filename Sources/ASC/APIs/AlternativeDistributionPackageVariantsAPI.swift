//
// AlternativeDistributionPackageVariantsAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

open class AlternativeDistributionPackageVariantsAPI {

    /**
     * enum for parameter fieldsAlternativeDistributionPackageVariants
     */
    public enum FieldsAlternativeDistributionPackageVariants_alternativeDistributionPackageVariantsGetInstance: String, Sendable, CaseIterable {
        case url = "url"
        case urlexpirationdate = "urlExpirationDate"
        case alternativedistributionkeyblob = "alternativeDistributionKeyBlob"
        case filechecksum = "fileChecksum"
    }

    /**

     - parameter id: (path) the id of the requested resource 
     - parameter fieldsAlternativeDistributionPackageVariants: (query) the fields to include for returned resources of type alternativeDistributionPackageVariants (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: AlternativeDistributionPackageVariantResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func alternativeDistributionPackageVariantsGetInstance(id: String, fieldsAlternativeDistributionPackageVariants: [FieldsAlternativeDistributionPackageVariants_alternativeDistributionPackageVariantsGetInstance]? = nil, apiConfiguration: ASCAPIConfiguration = ASCAPIConfiguration.shared) async throws(ErrorResponse) -> AlternativeDistributionPackageVariantResponse {
        return try await alternativeDistributionPackageVariantsGetInstanceWithRequestBuilder(id: id, fieldsAlternativeDistributionPackageVariants: fieldsAlternativeDistributionPackageVariants, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     - parameter urlString: next or first url from App Store Connect API
     - parameter apiConfiguration: The configuration for the http request.
     - returns: AlternativeDistributionPackageVariantResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func alternativeDistributionPackageVariantsGetInstance(urlString: String, apiConfiguration: ASCAPIConfiguration = ASCAPIConfiguration.shared) async throws(ErrorResponse) -> AlternativeDistributionPackageVariantResponse {
        return try await alternativeDistributionPackageVariantsGetInstanceWithRequestBuilder(urlString: urlString, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     - GET /v1/alternativeDistributionPackageVariants/{id}
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter id: (path) the id of the requested resource 
     - parameter fieldsAlternativeDistributionPackageVariants: (query) the fields to include for returned resources of type alternativeDistributionPackageVariants (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<AlternativeDistributionPackageVariantResponse> 
     */
    open class func alternativeDistributionPackageVariantsGetInstanceWithRequestBuilder(id: String, fieldsAlternativeDistributionPackageVariants: [FieldsAlternativeDistributionPackageVariants_alternativeDistributionPackageVariantsGetInstance]? = nil, apiConfiguration: ASCAPIConfiguration = ASCAPIConfiguration.shared) -> RequestBuilder<AlternativeDistributionPackageVariantResponse> {
        var localVariablePath = "/v1/alternativeDistributionPackageVariants/{id}"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "fields[alternativeDistributionPackageVariants]": (wrappedValue: fieldsAlternativeDistributionPackageVariants?.encodeToJSON(codableHelper: apiConfiguration.codableHelper), isExplode: false),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AlternativeDistributionPackageVariantResponse>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     - GET /v1/alternativeDistributionPackageVariants/{id}
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter urlString: next or first url from App Store Connect API
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<AlternativeDistributionPackageVariantResponse> 
     */
    open class func alternativeDistributionPackageVariantsGetInstanceWithRequestBuilder(urlString: String, apiConfiguration: ASCAPIConfiguration = ASCAPIConfiguration.shared) -> RequestBuilder<AlternativeDistributionPackageVariantResponse> {
        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AlternativeDistributionPackageVariantResponse>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: urlString, parameters: nil, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }
}
