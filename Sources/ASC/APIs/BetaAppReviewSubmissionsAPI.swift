//
// BetaAppReviewSubmissionsAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

open class BetaAppReviewSubmissionsAPI {

    /**
     * enum for parameter fieldsBuilds
     */
    public enum FieldsBuilds_betaAppReviewSubmissionsBuildGetToOneRelated: String, Sendable, CaseIterable {
        case version = "version"
        case uploadeddate = "uploadedDate"
        case expirationdate = "expirationDate"
        case expired = "expired"
        case minosversion = "minOsVersion"
        case lsminimumsystemversion = "lsMinimumSystemVersion"
        case computedminmacosversion = "computedMinMacOsVersion"
        case iconassettoken = "iconAssetToken"
        case processingstate = "processingState"
        case buildaudiencetype = "buildAudienceType"
        case usesnonexemptencryption = "usesNonExemptEncryption"
        case prereleaseversion = "preReleaseVersion"
        case individualtesters = "individualTesters"
        case betagroups = "betaGroups"
        case betabuildlocalizations = "betaBuildLocalizations"
        case appencryptiondeclaration = "appEncryptionDeclaration"
        case betaappreviewsubmission = "betaAppReviewSubmission"
        case app = "app"
        case buildbetadetail = "buildBetaDetail"
        case appstoreversion = "appStoreVersion"
        case icons = "icons"
        case buildbundles = "buildBundles"
        case perfpowermetrics = "perfPowerMetrics"
        case diagnosticsignatures = "diagnosticSignatures"
    }

    /**

     - parameter id: (path) the id of the requested resource 
     - parameter fieldsBuilds: (query) the fields to include for returned resources of type builds (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: BuildWithoutIncludesResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func betaAppReviewSubmissionsBuildGetToOneRelated(id: String, fieldsBuilds: [FieldsBuilds_betaAppReviewSubmissionsBuildGetToOneRelated]? = nil, apiConfiguration: ASCAPIConfiguration = ASCAPIConfiguration.shared) async throws(ErrorResponse) -> BuildWithoutIncludesResponse {
        return try await betaAppReviewSubmissionsBuildGetToOneRelatedWithRequestBuilder(id: id, fieldsBuilds: fieldsBuilds, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     - parameter urlString: next or first url from App Store Connect API
     - parameter apiConfiguration: The configuration for the http request.
     - returns: BuildWithoutIncludesResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func betaAppReviewSubmissionsBuildGetToOneRelated(urlString: String, apiConfiguration: ASCAPIConfiguration = ASCAPIConfiguration.shared) async throws(ErrorResponse) -> BuildWithoutIncludesResponse {
        return try await betaAppReviewSubmissionsBuildGetToOneRelatedWithRequestBuilder(urlString: urlString, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     - GET /v1/betaAppReviewSubmissions/{id}/build
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter id: (path) the id of the requested resource 
     - parameter fieldsBuilds: (query) the fields to include for returned resources of type builds (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<BuildWithoutIncludesResponse> 
     */
    open class func betaAppReviewSubmissionsBuildGetToOneRelatedWithRequestBuilder(id: String, fieldsBuilds: [FieldsBuilds_betaAppReviewSubmissionsBuildGetToOneRelated]? = nil, apiConfiguration: ASCAPIConfiguration = ASCAPIConfiguration.shared) -> RequestBuilder<BuildWithoutIncludesResponse> {
        var localVariablePath = "/v1/betaAppReviewSubmissions/{id}/build"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "fields[builds]": (wrappedValue: fieldsBuilds?.encodeToJSON(codableHelper: apiConfiguration.codableHelper), isExplode: false),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<BuildWithoutIncludesResponse>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     - GET /v1/betaAppReviewSubmissions/{id}/build
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter urlString: next or first url from App Store Connect API
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<BuildWithoutIncludesResponse> 
     */
    open class func betaAppReviewSubmissionsBuildGetToOneRelatedWithRequestBuilder(urlString: String, apiConfiguration: ASCAPIConfiguration = ASCAPIConfiguration.shared) -> RequestBuilder<BuildWithoutIncludesResponse> {
        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<BuildWithoutIncludesResponse>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: urlString, parameters: nil, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**

     - parameter betaAppReviewSubmissionCreateRequest: (body) BetaAppReviewSubmission representation 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: BetaAppReviewSubmissionResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func betaAppReviewSubmissionsCreateInstance(betaAppReviewSubmissionCreateRequest: BetaAppReviewSubmissionCreateRequest, apiConfiguration: ASCAPIConfiguration = ASCAPIConfiguration.shared) async throws(ErrorResponse) -> BetaAppReviewSubmissionResponse {
        return try await betaAppReviewSubmissionsCreateInstanceWithRequestBuilder(betaAppReviewSubmissionCreateRequest: betaAppReviewSubmissionCreateRequest, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     - parameter urlString: next or first url from App Store Connect API
     - parameter apiConfiguration: The configuration for the http request.
     - returns: BetaAppReviewSubmissionResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func betaAppReviewSubmissionsCreateInstance(urlString: String, apiConfiguration: ASCAPIConfiguration = ASCAPIConfiguration.shared) async throws(ErrorResponse) -> BetaAppReviewSubmissionResponse {
        return try await betaAppReviewSubmissionsCreateInstanceWithRequestBuilder(urlString: urlString, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     - POST /v1/betaAppReviewSubmissions
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter betaAppReviewSubmissionCreateRequest: (body) BetaAppReviewSubmission representation 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<BetaAppReviewSubmissionResponse> 
     */
    open class func betaAppReviewSubmissionsCreateInstanceWithRequestBuilder(betaAppReviewSubmissionCreateRequest: BetaAppReviewSubmissionCreateRequest, apiConfiguration: ASCAPIConfiguration = ASCAPIConfiguration.shared) -> RequestBuilder<BetaAppReviewSubmissionResponse> {
        let localVariablePath = "/v1/betaAppReviewSubmissions"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: betaAppReviewSubmissionCreateRequest, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            "Content-Type": "application/json",
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<BetaAppReviewSubmissionResponse>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     - POST /v1/betaAppReviewSubmissions
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter urlString: next or first url from App Store Connect API
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<BetaAppReviewSubmissionResponse> 
     */
    open class func betaAppReviewSubmissionsCreateInstanceWithRequestBuilder(urlString: String, apiConfiguration: ASCAPIConfiguration = ASCAPIConfiguration.shared) -> RequestBuilder<BetaAppReviewSubmissionResponse> {
        let localVariableNillableHeaders: [String: Any?] = [
            "Content-Type": "application/json",
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<BetaAppReviewSubmissionResponse>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: urlString, parameters: nil, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     * enum for parameter filterBetaReviewState
     */
    public enum FilterBetaReviewState_betaAppReviewSubmissionsGetCollection: String, Sendable, CaseIterable {
        case waitingForReview = "WAITING_FOR_REVIEW"
        case inReview = "IN_REVIEW"
        case rejected = "REJECTED"
        case approved = "APPROVED"
    }

    /**
     * enum for parameter fieldsBetaAppReviewSubmissions
     */
    public enum FieldsBetaAppReviewSubmissions_betaAppReviewSubmissionsGetCollection: String, Sendable, CaseIterable {
        case betareviewstate = "betaReviewState"
        case submitteddate = "submittedDate"
        case build = "build"
    }

    /**
     * enum for parameter fieldsBuilds
     */
    public enum FieldsBuilds_betaAppReviewSubmissionsGetCollection: String, Sendable, CaseIterable {
        case version = "version"
        case uploadeddate = "uploadedDate"
        case expirationdate = "expirationDate"
        case expired = "expired"
        case minosversion = "minOsVersion"
        case lsminimumsystemversion = "lsMinimumSystemVersion"
        case computedminmacosversion = "computedMinMacOsVersion"
        case iconassettoken = "iconAssetToken"
        case processingstate = "processingState"
        case buildaudiencetype = "buildAudienceType"
        case usesnonexemptencryption = "usesNonExemptEncryption"
        case prereleaseversion = "preReleaseVersion"
        case individualtesters = "individualTesters"
        case betagroups = "betaGroups"
        case betabuildlocalizations = "betaBuildLocalizations"
        case appencryptiondeclaration = "appEncryptionDeclaration"
        case betaappreviewsubmission = "betaAppReviewSubmission"
        case app = "app"
        case buildbetadetail = "buildBetaDetail"
        case appstoreversion = "appStoreVersion"
        case icons = "icons"
        case buildbundles = "buildBundles"
        case perfpowermetrics = "perfPowerMetrics"
        case diagnosticsignatures = "diagnosticSignatures"
    }

    /**
     * enum for parameter include
     */
    public enum Include_betaAppReviewSubmissionsGetCollection: String, Sendable, CaseIterable {
        case build = "build"
    }

    /**

     - parameter filterBuild: (query) filter by id(s) of related &#39;build&#39; 
     - parameter filterBetaReviewState: (query) filter by attribute &#39;betaReviewState&#39; (optional)
     - parameter fieldsBetaAppReviewSubmissions: (query) the fields to include for returned resources of type betaAppReviewSubmissions (optional)
     - parameter fieldsBuilds: (query) the fields to include for returned resources of type builds (optional)
     - parameter limit: (query) maximum resources per page (optional)
     - parameter include: (query) comma-separated list of relationships to include (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: BetaAppReviewSubmissionsResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func betaAppReviewSubmissionsGetCollection(filterBuild: [String], filterBetaReviewState: [FilterBetaReviewState_betaAppReviewSubmissionsGetCollection]? = nil, fieldsBetaAppReviewSubmissions: [FieldsBetaAppReviewSubmissions_betaAppReviewSubmissionsGetCollection]? = nil, fieldsBuilds: [FieldsBuilds_betaAppReviewSubmissionsGetCollection]? = nil, limit: Int? = nil, include: [Include_betaAppReviewSubmissionsGetCollection]? = nil, apiConfiguration: ASCAPIConfiguration = ASCAPIConfiguration.shared) async throws(ErrorResponse) -> BetaAppReviewSubmissionsResponse {
        return try await betaAppReviewSubmissionsGetCollectionWithRequestBuilder(filterBuild: filterBuild, filterBetaReviewState: filterBetaReviewState, fieldsBetaAppReviewSubmissions: fieldsBetaAppReviewSubmissions, fieldsBuilds: fieldsBuilds, limit: limit, include: include, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     - parameter urlString: next or first url from App Store Connect API
     - parameter apiConfiguration: The configuration for the http request.
     - returns: BetaAppReviewSubmissionsResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func betaAppReviewSubmissionsGetCollection(urlString: String, apiConfiguration: ASCAPIConfiguration = ASCAPIConfiguration.shared) async throws(ErrorResponse) -> BetaAppReviewSubmissionsResponse {
        return try await betaAppReviewSubmissionsGetCollectionWithRequestBuilder(urlString: urlString, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     - GET /v1/betaAppReviewSubmissions
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter filterBuild: (query) filter by id(s) of related &#39;build&#39; 
     - parameter filterBetaReviewState: (query) filter by attribute &#39;betaReviewState&#39; (optional)
     - parameter fieldsBetaAppReviewSubmissions: (query) the fields to include for returned resources of type betaAppReviewSubmissions (optional)
     - parameter fieldsBuilds: (query) the fields to include for returned resources of type builds (optional)
     - parameter limit: (query) maximum resources per page (optional)
     - parameter include: (query) comma-separated list of relationships to include (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<BetaAppReviewSubmissionsResponse> 
     */
    open class func betaAppReviewSubmissionsGetCollectionWithRequestBuilder(filterBuild: [String], filterBetaReviewState: [FilterBetaReviewState_betaAppReviewSubmissionsGetCollection]? = nil, fieldsBetaAppReviewSubmissions: [FieldsBetaAppReviewSubmissions_betaAppReviewSubmissionsGetCollection]? = nil, fieldsBuilds: [FieldsBuilds_betaAppReviewSubmissionsGetCollection]? = nil, limit: Int? = nil, include: [Include_betaAppReviewSubmissionsGetCollection]? = nil, apiConfiguration: ASCAPIConfiguration = ASCAPIConfiguration.shared) -> RequestBuilder<BetaAppReviewSubmissionsResponse> {
        let localVariablePath = "/v1/betaAppReviewSubmissions"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "filter[betaReviewState]": (wrappedValue: filterBetaReviewState?.encodeToJSON(codableHelper: apiConfiguration.codableHelper), isExplode: false),
            "filter[build]": (wrappedValue: filterBuild.encodeToJSON(codableHelper: apiConfiguration.codableHelper), isExplode: false),
            "fields[betaAppReviewSubmissions]": (wrappedValue: fieldsBetaAppReviewSubmissions?.encodeToJSON(codableHelper: apiConfiguration.codableHelper), isExplode: false),
            "fields[builds]": (wrappedValue: fieldsBuilds?.encodeToJSON(codableHelper: apiConfiguration.codableHelper), isExplode: false),
            "limit": (wrappedValue: limit?.encodeToJSON(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "include": (wrappedValue: include?.encodeToJSON(codableHelper: apiConfiguration.codableHelper), isExplode: false),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<BetaAppReviewSubmissionsResponse>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     - GET /v1/betaAppReviewSubmissions
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter urlString: next or first url from App Store Connect API
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<BetaAppReviewSubmissionsResponse> 
     */
    open class func betaAppReviewSubmissionsGetCollectionWithRequestBuilder(urlString: String, apiConfiguration: ASCAPIConfiguration = ASCAPIConfiguration.shared) -> RequestBuilder<BetaAppReviewSubmissionsResponse> {
        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<BetaAppReviewSubmissionsResponse>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: urlString, parameters: nil, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     * enum for parameter fieldsBetaAppReviewSubmissions
     */
    public enum FieldsBetaAppReviewSubmissions_betaAppReviewSubmissionsGetInstance: String, Sendable, CaseIterable {
        case betareviewstate = "betaReviewState"
        case submitteddate = "submittedDate"
        case build = "build"
    }

    /**
     * enum for parameter fieldsBuilds
     */
    public enum FieldsBuilds_betaAppReviewSubmissionsGetInstance: String, Sendable, CaseIterable {
        case version = "version"
        case uploadeddate = "uploadedDate"
        case expirationdate = "expirationDate"
        case expired = "expired"
        case minosversion = "minOsVersion"
        case lsminimumsystemversion = "lsMinimumSystemVersion"
        case computedminmacosversion = "computedMinMacOsVersion"
        case iconassettoken = "iconAssetToken"
        case processingstate = "processingState"
        case buildaudiencetype = "buildAudienceType"
        case usesnonexemptencryption = "usesNonExemptEncryption"
        case prereleaseversion = "preReleaseVersion"
        case individualtesters = "individualTesters"
        case betagroups = "betaGroups"
        case betabuildlocalizations = "betaBuildLocalizations"
        case appencryptiondeclaration = "appEncryptionDeclaration"
        case betaappreviewsubmission = "betaAppReviewSubmission"
        case app = "app"
        case buildbetadetail = "buildBetaDetail"
        case appstoreversion = "appStoreVersion"
        case icons = "icons"
        case buildbundles = "buildBundles"
        case perfpowermetrics = "perfPowerMetrics"
        case diagnosticsignatures = "diagnosticSignatures"
    }

    /**
     * enum for parameter include
     */
    public enum Include_betaAppReviewSubmissionsGetInstance: String, Sendable, CaseIterable {
        case build = "build"
    }

    /**

     - parameter id: (path) the id of the requested resource 
     - parameter fieldsBetaAppReviewSubmissions: (query) the fields to include for returned resources of type betaAppReviewSubmissions (optional)
     - parameter fieldsBuilds: (query) the fields to include for returned resources of type builds (optional)
     - parameter include: (query) comma-separated list of relationships to include (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: BetaAppReviewSubmissionResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func betaAppReviewSubmissionsGetInstance(id: String, fieldsBetaAppReviewSubmissions: [FieldsBetaAppReviewSubmissions_betaAppReviewSubmissionsGetInstance]? = nil, fieldsBuilds: [FieldsBuilds_betaAppReviewSubmissionsGetInstance]? = nil, include: [Include_betaAppReviewSubmissionsGetInstance]? = nil, apiConfiguration: ASCAPIConfiguration = ASCAPIConfiguration.shared) async throws(ErrorResponse) -> BetaAppReviewSubmissionResponse {
        return try await betaAppReviewSubmissionsGetInstanceWithRequestBuilder(id: id, fieldsBetaAppReviewSubmissions: fieldsBetaAppReviewSubmissions, fieldsBuilds: fieldsBuilds, include: include, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     - parameter urlString: next or first url from App Store Connect API
     - parameter apiConfiguration: The configuration for the http request.
     - returns: BetaAppReviewSubmissionResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func betaAppReviewSubmissionsGetInstance(urlString: String, apiConfiguration: ASCAPIConfiguration = ASCAPIConfiguration.shared) async throws(ErrorResponse) -> BetaAppReviewSubmissionResponse {
        return try await betaAppReviewSubmissionsGetInstanceWithRequestBuilder(urlString: urlString, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     - GET /v1/betaAppReviewSubmissions/{id}
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter id: (path) the id of the requested resource 
     - parameter fieldsBetaAppReviewSubmissions: (query) the fields to include for returned resources of type betaAppReviewSubmissions (optional)
     - parameter fieldsBuilds: (query) the fields to include for returned resources of type builds (optional)
     - parameter include: (query) comma-separated list of relationships to include (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<BetaAppReviewSubmissionResponse> 
     */
    open class func betaAppReviewSubmissionsGetInstanceWithRequestBuilder(id: String, fieldsBetaAppReviewSubmissions: [FieldsBetaAppReviewSubmissions_betaAppReviewSubmissionsGetInstance]? = nil, fieldsBuilds: [FieldsBuilds_betaAppReviewSubmissionsGetInstance]? = nil, include: [Include_betaAppReviewSubmissionsGetInstance]? = nil, apiConfiguration: ASCAPIConfiguration = ASCAPIConfiguration.shared) -> RequestBuilder<BetaAppReviewSubmissionResponse> {
        var localVariablePath = "/v1/betaAppReviewSubmissions/{id}"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "fields[betaAppReviewSubmissions]": (wrappedValue: fieldsBetaAppReviewSubmissions?.encodeToJSON(codableHelper: apiConfiguration.codableHelper), isExplode: false),
            "fields[builds]": (wrappedValue: fieldsBuilds?.encodeToJSON(codableHelper: apiConfiguration.codableHelper), isExplode: false),
            "include": (wrappedValue: include?.encodeToJSON(codableHelper: apiConfiguration.codableHelper), isExplode: false),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<BetaAppReviewSubmissionResponse>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     - GET /v1/betaAppReviewSubmissions/{id}
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter urlString: next or first url from App Store Connect API
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<BetaAppReviewSubmissionResponse> 
     */
    open class func betaAppReviewSubmissionsGetInstanceWithRequestBuilder(urlString: String, apiConfiguration: ASCAPIConfiguration = ASCAPIConfiguration.shared) -> RequestBuilder<BetaAppReviewSubmissionResponse> {
        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<BetaAppReviewSubmissionResponse>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: urlString, parameters: nil, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }
}
