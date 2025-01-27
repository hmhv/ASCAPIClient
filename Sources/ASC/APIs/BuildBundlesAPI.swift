//
// BuildBundlesAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

open class BuildBundlesAPI {

    /**
     * enum for parameter fieldsAppClipDomainStatuses
     */
    public enum FieldsAppClipDomainStatuses_buildBundlesAppClipDomainCacheStatusGetToOneRelated: String, Sendable, CaseIterable {
        case domains = "domains"
        case lastupdateddate = "lastUpdatedDate"
    }

    /**

     - parameter id: (path) the id of the requested resource 
     - parameter fieldsAppClipDomainStatuses: (query) the fields to include for returned resources of type appClipDomainStatuses (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: AppClipDomainStatusResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func buildBundlesAppClipDomainCacheStatusGetToOneRelated(id: String, fieldsAppClipDomainStatuses: [FieldsAppClipDomainStatuses_buildBundlesAppClipDomainCacheStatusGetToOneRelated]? = nil, apiConfiguration: ASCAPIConfiguration = ASCAPIConfiguration.shared) async throws(ErrorResponse) -> AppClipDomainStatusResponse {
        return try await buildBundlesAppClipDomainCacheStatusGetToOneRelatedWithRequestBuilder(id: id, fieldsAppClipDomainStatuses: fieldsAppClipDomainStatuses, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     - parameter urlString: next or first url from App Store Connect API
     - parameter apiConfiguration: The configuration for the http request.
     - returns: AppClipDomainStatusResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func buildBundlesAppClipDomainCacheStatusGetToOneRelated(urlString: String, apiConfiguration: ASCAPIConfiguration = ASCAPIConfiguration.shared) async throws(ErrorResponse) -> AppClipDomainStatusResponse {
        return try await buildBundlesAppClipDomainCacheStatusGetToOneRelatedWithRequestBuilder(urlString: urlString, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     - GET /v1/buildBundles/{id}/appClipDomainCacheStatus
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter id: (path) the id of the requested resource 
     - parameter fieldsAppClipDomainStatuses: (query) the fields to include for returned resources of type appClipDomainStatuses (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<AppClipDomainStatusResponse> 
     */
    open class func buildBundlesAppClipDomainCacheStatusGetToOneRelatedWithRequestBuilder(id: String, fieldsAppClipDomainStatuses: [FieldsAppClipDomainStatuses_buildBundlesAppClipDomainCacheStatusGetToOneRelated]? = nil, apiConfiguration: ASCAPIConfiguration = ASCAPIConfiguration.shared) -> RequestBuilder<AppClipDomainStatusResponse> {
        var localVariablePath = "/v1/buildBundles/{id}/appClipDomainCacheStatus"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "fields[appClipDomainStatuses]": (wrappedValue: fieldsAppClipDomainStatuses?.encodeToJSON(codableHelper: apiConfiguration.codableHelper), isExplode: false),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AppClipDomainStatusResponse>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     - GET /v1/buildBundles/{id}/appClipDomainCacheStatus
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter urlString: next or first url from App Store Connect API
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<AppClipDomainStatusResponse> 
     */
    open class func buildBundlesAppClipDomainCacheStatusGetToOneRelatedWithRequestBuilder(urlString: String, apiConfiguration: ASCAPIConfiguration = ASCAPIConfiguration.shared) -> RequestBuilder<AppClipDomainStatusResponse> {
        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AppClipDomainStatusResponse>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: urlString, parameters: nil, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     * enum for parameter fieldsAppClipDomainStatuses
     */
    public enum FieldsAppClipDomainStatuses_buildBundlesAppClipDomainDebugStatusGetToOneRelated: String, Sendable, CaseIterable {
        case domains = "domains"
        case lastupdateddate = "lastUpdatedDate"
    }

    /**

     - parameter id: (path) the id of the requested resource 
     - parameter fieldsAppClipDomainStatuses: (query) the fields to include for returned resources of type appClipDomainStatuses (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: AppClipDomainStatusResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func buildBundlesAppClipDomainDebugStatusGetToOneRelated(id: String, fieldsAppClipDomainStatuses: [FieldsAppClipDomainStatuses_buildBundlesAppClipDomainDebugStatusGetToOneRelated]? = nil, apiConfiguration: ASCAPIConfiguration = ASCAPIConfiguration.shared) async throws(ErrorResponse) -> AppClipDomainStatusResponse {
        return try await buildBundlesAppClipDomainDebugStatusGetToOneRelatedWithRequestBuilder(id: id, fieldsAppClipDomainStatuses: fieldsAppClipDomainStatuses, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     - parameter urlString: next or first url from App Store Connect API
     - parameter apiConfiguration: The configuration for the http request.
     - returns: AppClipDomainStatusResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func buildBundlesAppClipDomainDebugStatusGetToOneRelated(urlString: String, apiConfiguration: ASCAPIConfiguration = ASCAPIConfiguration.shared) async throws(ErrorResponse) -> AppClipDomainStatusResponse {
        return try await buildBundlesAppClipDomainDebugStatusGetToOneRelatedWithRequestBuilder(urlString: urlString, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     - GET /v1/buildBundles/{id}/appClipDomainDebugStatus
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter id: (path) the id of the requested resource 
     - parameter fieldsAppClipDomainStatuses: (query) the fields to include for returned resources of type appClipDomainStatuses (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<AppClipDomainStatusResponse> 
     */
    open class func buildBundlesAppClipDomainDebugStatusGetToOneRelatedWithRequestBuilder(id: String, fieldsAppClipDomainStatuses: [FieldsAppClipDomainStatuses_buildBundlesAppClipDomainDebugStatusGetToOneRelated]? = nil, apiConfiguration: ASCAPIConfiguration = ASCAPIConfiguration.shared) -> RequestBuilder<AppClipDomainStatusResponse> {
        var localVariablePath = "/v1/buildBundles/{id}/appClipDomainDebugStatus"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "fields[appClipDomainStatuses]": (wrappedValue: fieldsAppClipDomainStatuses?.encodeToJSON(codableHelper: apiConfiguration.codableHelper), isExplode: false),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AppClipDomainStatusResponse>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     - GET /v1/buildBundles/{id}/appClipDomainDebugStatus
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter urlString: next or first url from App Store Connect API
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<AppClipDomainStatusResponse> 
     */
    open class func buildBundlesAppClipDomainDebugStatusGetToOneRelatedWithRequestBuilder(urlString: String, apiConfiguration: ASCAPIConfiguration = ASCAPIConfiguration.shared) -> RequestBuilder<AppClipDomainStatusResponse> {
        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AppClipDomainStatusResponse>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: urlString, parameters: nil, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     * enum for parameter fieldsBetaAppClipInvocations
     */
    public enum FieldsBetaAppClipInvocations_buildBundlesBetaAppClipInvocationsGetToManyRelated: String, Sendable, CaseIterable {
        case url = "url"
        case betaappclipinvocationlocalizations = "betaAppClipInvocationLocalizations"
    }

    /**
     * enum for parameter fieldsBetaAppClipInvocationLocalizations
     */
    public enum FieldsBetaAppClipInvocationLocalizations_buildBundlesBetaAppClipInvocationsGetToManyRelated: String, Sendable, CaseIterable {
        case title = "title"
        case locale = "locale"
    }

    /**
     * enum for parameter include
     */
    public enum Include_buildBundlesBetaAppClipInvocationsGetToManyRelated: String, Sendable, CaseIterable {
        case betaappclipinvocationlocalizations = "betaAppClipInvocationLocalizations"
    }

    /**

     - parameter id: (path) the id of the requested resource 
     - parameter fieldsBetaAppClipInvocations: (query) the fields to include for returned resources of type betaAppClipInvocations (optional)
     - parameter fieldsBetaAppClipInvocationLocalizations: (query) the fields to include for returned resources of type betaAppClipInvocationLocalizations (optional)
     - parameter limit: (query) maximum resources per page (optional)
     - parameter include: (query) comma-separated list of relationships to include (optional)
     - parameter limitBetaAppClipInvocationLocalizations: (query) maximum number of related betaAppClipInvocationLocalizations returned (when they are included) (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: BetaAppClipInvocationsResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func buildBundlesBetaAppClipInvocationsGetToManyRelated(id: String, fieldsBetaAppClipInvocations: [FieldsBetaAppClipInvocations_buildBundlesBetaAppClipInvocationsGetToManyRelated]? = nil, fieldsBetaAppClipInvocationLocalizations: [FieldsBetaAppClipInvocationLocalizations_buildBundlesBetaAppClipInvocationsGetToManyRelated]? = nil, limit: Int? = nil, include: [Include_buildBundlesBetaAppClipInvocationsGetToManyRelated]? = nil, limitBetaAppClipInvocationLocalizations: Int? = nil, apiConfiguration: ASCAPIConfiguration = ASCAPIConfiguration.shared) async throws(ErrorResponse) -> BetaAppClipInvocationsResponse {
        return try await buildBundlesBetaAppClipInvocationsGetToManyRelatedWithRequestBuilder(id: id, fieldsBetaAppClipInvocations: fieldsBetaAppClipInvocations, fieldsBetaAppClipInvocationLocalizations: fieldsBetaAppClipInvocationLocalizations, limit: limit, include: include, limitBetaAppClipInvocationLocalizations: limitBetaAppClipInvocationLocalizations, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     - parameter urlString: next or first url from App Store Connect API
     - parameter apiConfiguration: The configuration for the http request.
     - returns: BetaAppClipInvocationsResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func buildBundlesBetaAppClipInvocationsGetToManyRelated(urlString: String, apiConfiguration: ASCAPIConfiguration = ASCAPIConfiguration.shared) async throws(ErrorResponse) -> BetaAppClipInvocationsResponse {
        return try await buildBundlesBetaAppClipInvocationsGetToManyRelatedWithRequestBuilder(urlString: urlString, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     - GET /v1/buildBundles/{id}/betaAppClipInvocations
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter id: (path) the id of the requested resource 
     - parameter fieldsBetaAppClipInvocations: (query) the fields to include for returned resources of type betaAppClipInvocations (optional)
     - parameter fieldsBetaAppClipInvocationLocalizations: (query) the fields to include for returned resources of type betaAppClipInvocationLocalizations (optional)
     - parameter limit: (query) maximum resources per page (optional)
     - parameter include: (query) comma-separated list of relationships to include (optional)
     - parameter limitBetaAppClipInvocationLocalizations: (query) maximum number of related betaAppClipInvocationLocalizations returned (when they are included) (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<BetaAppClipInvocationsResponse> 
     */
    open class func buildBundlesBetaAppClipInvocationsGetToManyRelatedWithRequestBuilder(id: String, fieldsBetaAppClipInvocations: [FieldsBetaAppClipInvocations_buildBundlesBetaAppClipInvocationsGetToManyRelated]? = nil, fieldsBetaAppClipInvocationLocalizations: [FieldsBetaAppClipInvocationLocalizations_buildBundlesBetaAppClipInvocationsGetToManyRelated]? = nil, limit: Int? = nil, include: [Include_buildBundlesBetaAppClipInvocationsGetToManyRelated]? = nil, limitBetaAppClipInvocationLocalizations: Int? = nil, apiConfiguration: ASCAPIConfiguration = ASCAPIConfiguration.shared) -> RequestBuilder<BetaAppClipInvocationsResponse> {
        var localVariablePath = "/v1/buildBundles/{id}/betaAppClipInvocations"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "fields[betaAppClipInvocations]": (wrappedValue: fieldsBetaAppClipInvocations?.encodeToJSON(codableHelper: apiConfiguration.codableHelper), isExplode: false),
            "fields[betaAppClipInvocationLocalizations]": (wrappedValue: fieldsBetaAppClipInvocationLocalizations?.encodeToJSON(codableHelper: apiConfiguration.codableHelper), isExplode: false),
            "limit": (wrappedValue: limit?.encodeToJSON(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "include": (wrappedValue: include?.encodeToJSON(codableHelper: apiConfiguration.codableHelper), isExplode: false),
            "limit[betaAppClipInvocationLocalizations]": (wrappedValue: limitBetaAppClipInvocationLocalizations?.encodeToJSON(codableHelper: apiConfiguration.codableHelper), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<BetaAppClipInvocationsResponse>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     - GET /v1/buildBundles/{id}/betaAppClipInvocations
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter urlString: next or first url from App Store Connect API
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<BetaAppClipInvocationsResponse> 
     */
    open class func buildBundlesBetaAppClipInvocationsGetToManyRelatedWithRequestBuilder(urlString: String, apiConfiguration: ASCAPIConfiguration = ASCAPIConfiguration.shared) -> RequestBuilder<BetaAppClipInvocationsResponse> {
        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<BetaAppClipInvocationsResponse>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: urlString, parameters: nil, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     * enum for parameter fieldsBuildBundleFileSizes
     */
    public enum FieldsBuildBundleFileSizes_buildBundlesBuildBundleFileSizesGetToManyRelated: String, Sendable, CaseIterable {
        case devicemodel = "deviceModel"
        case osversion = "osVersion"
        case downloadbytes = "downloadBytes"
        case installbytes = "installBytes"
    }

    /**

     - parameter id: (path) the id of the requested resource 
     - parameter fieldsBuildBundleFileSizes: (query) the fields to include for returned resources of type buildBundleFileSizes (optional)
     - parameter limit: (query) maximum resources per page (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: BuildBundleFileSizesResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func buildBundlesBuildBundleFileSizesGetToManyRelated(id: String, fieldsBuildBundleFileSizes: [FieldsBuildBundleFileSizes_buildBundlesBuildBundleFileSizesGetToManyRelated]? = nil, limit: Int? = nil, apiConfiguration: ASCAPIConfiguration = ASCAPIConfiguration.shared) async throws(ErrorResponse) -> BuildBundleFileSizesResponse {
        return try await buildBundlesBuildBundleFileSizesGetToManyRelatedWithRequestBuilder(id: id, fieldsBuildBundleFileSizes: fieldsBuildBundleFileSizes, limit: limit, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     - parameter urlString: next or first url from App Store Connect API
     - parameter apiConfiguration: The configuration for the http request.
     - returns: BuildBundleFileSizesResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func buildBundlesBuildBundleFileSizesGetToManyRelated(urlString: String, apiConfiguration: ASCAPIConfiguration = ASCAPIConfiguration.shared) async throws(ErrorResponse) -> BuildBundleFileSizesResponse {
        return try await buildBundlesBuildBundleFileSizesGetToManyRelatedWithRequestBuilder(urlString: urlString, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     - GET /v1/buildBundles/{id}/buildBundleFileSizes
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter id: (path) the id of the requested resource 
     - parameter fieldsBuildBundleFileSizes: (query) the fields to include for returned resources of type buildBundleFileSizes (optional)
     - parameter limit: (query) maximum resources per page (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<BuildBundleFileSizesResponse> 
     */
    open class func buildBundlesBuildBundleFileSizesGetToManyRelatedWithRequestBuilder(id: String, fieldsBuildBundleFileSizes: [FieldsBuildBundleFileSizes_buildBundlesBuildBundleFileSizesGetToManyRelated]? = nil, limit: Int? = nil, apiConfiguration: ASCAPIConfiguration = ASCAPIConfiguration.shared) -> RequestBuilder<BuildBundleFileSizesResponse> {
        var localVariablePath = "/v1/buildBundles/{id}/buildBundleFileSizes"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "fields[buildBundleFileSizes]": (wrappedValue: fieldsBuildBundleFileSizes?.encodeToJSON(codableHelper: apiConfiguration.codableHelper), isExplode: false),
            "limit": (wrappedValue: limit?.encodeToJSON(codableHelper: apiConfiguration.codableHelper), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<BuildBundleFileSizesResponse>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     - GET /v1/buildBundles/{id}/buildBundleFileSizes
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter urlString: next or first url from App Store Connect API
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<BuildBundleFileSizesResponse> 
     */
    open class func buildBundlesBuildBundleFileSizesGetToManyRelatedWithRequestBuilder(urlString: String, apiConfiguration: ASCAPIConfiguration = ASCAPIConfiguration.shared) -> RequestBuilder<BuildBundleFileSizesResponse> {
        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<BuildBundleFileSizesResponse>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: urlString, parameters: nil, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }
}
