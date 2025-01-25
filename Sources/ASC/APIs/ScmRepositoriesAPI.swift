//
// ScmRepositoriesAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

open class ScmRepositoriesAPI {

    /**
     * enum for parameter fieldsScmRepositories
     */
    public enum FieldsScmRepositories_scmRepositoriesGetCollection: String, Sendable, CaseIterable {
        case lastaccesseddate = "lastAccessedDate"
        case httpcloneurl = "httpCloneUrl"
        case sshcloneurl = "sshCloneUrl"
        case ownername = "ownerName"
        case repositoryname = "repositoryName"
        case scmprovider = "scmProvider"
        case defaultbranch = "defaultBranch"
        case gitreferences = "gitReferences"
        case pullrequests = "pullRequests"
    }

    /**
     * enum for parameter include
     */
    public enum Include_scmRepositoriesGetCollection: String, Sendable, CaseIterable {
        case scmprovider = "scmProvider"
        case defaultbranch = "defaultBranch"
    }

    /**

     - parameter filterId: (query) filter by id(s) (optional)
     - parameter fieldsScmRepositories: (query) the fields to include for returned resources of type scmRepositories (optional)
     - parameter limit: (query) maximum resources per page (optional)
     - parameter include: (query) comma-separated list of relationships to include (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: ScmRepositoriesResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func scmRepositoriesGetCollection(filterId: [String]? = nil, fieldsScmRepositories: [FieldsScmRepositories_scmRepositoriesGetCollection]? = nil, limit: Int? = nil, include: [Include_scmRepositoriesGetCollection]? = nil, apiConfiguration: ASCAPIConfiguration = ASCAPIConfiguration.shared) async throws(ErrorResponse) -> ScmRepositoriesResponse {
        return try await scmRepositoriesGetCollectionWithRequestBuilder(filterId: filterId, fieldsScmRepositories: fieldsScmRepositories, limit: limit, include: include, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     - parameter urlString: next or first url from App Store Connect API
     - parameter apiConfiguration: The configuration for the http request.
     - returns: ScmRepositoriesResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func scmRepositoriesGetCollection(urlString: String, apiConfiguration: ASCAPIConfiguration = ASCAPIConfiguration.shared) async throws(ErrorResponse) -> ScmRepositoriesResponse {
        return try await scmRepositoriesGetCollectionWithRequestBuilder(urlString: urlString, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     - GET /v1/scmRepositories
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter filterId: (query) filter by id(s) (optional)
     - parameter fieldsScmRepositories: (query) the fields to include for returned resources of type scmRepositories (optional)
     - parameter limit: (query) maximum resources per page (optional)
     - parameter include: (query) comma-separated list of relationships to include (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<ScmRepositoriesResponse> 
     */
    open class func scmRepositoriesGetCollectionWithRequestBuilder(filterId: [String]? = nil, fieldsScmRepositories: [FieldsScmRepositories_scmRepositoriesGetCollection]? = nil, limit: Int? = nil, include: [Include_scmRepositoriesGetCollection]? = nil, apiConfiguration: ASCAPIConfiguration = ASCAPIConfiguration.shared) -> RequestBuilder<ScmRepositoriesResponse> {
        let localVariablePath = "/v1/scmRepositories"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "filter[id]": (wrappedValue: filterId?.encodeToJSON(codableHelper: apiConfiguration.codableHelper), isExplode: false),
            "fields[scmRepositories]": (wrappedValue: fieldsScmRepositories?.encodeToJSON(codableHelper: apiConfiguration.codableHelper), isExplode: false),
            "limit": (wrappedValue: limit?.encodeToJSON(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "include": (wrappedValue: include?.encodeToJSON(codableHelper: apiConfiguration.codableHelper), isExplode: false),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ScmRepositoriesResponse>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     - GET /v1/scmRepositories
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter urlString: next or first url from App Store Connect API
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<ScmRepositoriesResponse> 
     */
    open class func scmRepositoriesGetCollectionWithRequestBuilder(urlString: String, apiConfiguration: ASCAPIConfiguration = ASCAPIConfiguration.shared) -> RequestBuilder<ScmRepositoriesResponse> {
        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ScmRepositoriesResponse>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: urlString, parameters: nil, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     * enum for parameter fieldsScmRepositories
     */
    public enum FieldsScmRepositories_scmRepositoriesGetInstance: String, Sendable, CaseIterable {
        case lastaccesseddate = "lastAccessedDate"
        case httpcloneurl = "httpCloneUrl"
        case sshcloneurl = "sshCloneUrl"
        case ownername = "ownerName"
        case repositoryname = "repositoryName"
        case scmprovider = "scmProvider"
        case defaultbranch = "defaultBranch"
        case gitreferences = "gitReferences"
        case pullrequests = "pullRequests"
    }

    /**
     * enum for parameter include
     */
    public enum Include_scmRepositoriesGetInstance: String, Sendable, CaseIterable {
        case scmprovider = "scmProvider"
        case defaultbranch = "defaultBranch"
    }

    /**

     - parameter id: (path) the id of the requested resource 
     - parameter fieldsScmRepositories: (query) the fields to include for returned resources of type scmRepositories (optional)
     - parameter include: (query) comma-separated list of relationships to include (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: ScmRepositoryResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func scmRepositoriesGetInstance(id: String, fieldsScmRepositories: [FieldsScmRepositories_scmRepositoriesGetInstance]? = nil, include: [Include_scmRepositoriesGetInstance]? = nil, apiConfiguration: ASCAPIConfiguration = ASCAPIConfiguration.shared) async throws(ErrorResponse) -> ScmRepositoryResponse {
        return try await scmRepositoriesGetInstanceWithRequestBuilder(id: id, fieldsScmRepositories: fieldsScmRepositories, include: include, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     - parameter urlString: next or first url from App Store Connect API
     - parameter apiConfiguration: The configuration for the http request.
     - returns: ScmRepositoryResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func scmRepositoriesGetInstance(urlString: String, apiConfiguration: ASCAPIConfiguration = ASCAPIConfiguration.shared) async throws(ErrorResponse) -> ScmRepositoryResponse {
        return try await scmRepositoriesGetInstanceWithRequestBuilder(urlString: urlString, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     - GET /v1/scmRepositories/{id}
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter id: (path) the id of the requested resource 
     - parameter fieldsScmRepositories: (query) the fields to include for returned resources of type scmRepositories (optional)
     - parameter include: (query) comma-separated list of relationships to include (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<ScmRepositoryResponse> 
     */
    open class func scmRepositoriesGetInstanceWithRequestBuilder(id: String, fieldsScmRepositories: [FieldsScmRepositories_scmRepositoriesGetInstance]? = nil, include: [Include_scmRepositoriesGetInstance]? = nil, apiConfiguration: ASCAPIConfiguration = ASCAPIConfiguration.shared) -> RequestBuilder<ScmRepositoryResponse> {
        var localVariablePath = "/v1/scmRepositories/{id}"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "fields[scmRepositories]": (wrappedValue: fieldsScmRepositories?.encodeToJSON(codableHelper: apiConfiguration.codableHelper), isExplode: false),
            "include": (wrappedValue: include?.encodeToJSON(codableHelper: apiConfiguration.codableHelper), isExplode: false),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ScmRepositoryResponse>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     - GET /v1/scmRepositories/{id}
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter urlString: next or first url from App Store Connect API
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<ScmRepositoryResponse> 
     */
    open class func scmRepositoriesGetInstanceWithRequestBuilder(urlString: String, apiConfiguration: ASCAPIConfiguration = ASCAPIConfiguration.shared) -> RequestBuilder<ScmRepositoryResponse> {
        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ScmRepositoryResponse>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: urlString, parameters: nil, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     * enum for parameter fieldsScmGitReferences
     */
    public enum FieldsScmGitReferences_scmRepositoriesGitReferencesGetToManyRelated: String, Sendable, CaseIterable {
        case name = "name"
        case canonicalname = "canonicalName"
        case isdeleted = "isDeleted"
        case kind = "kind"
        case repository = "repository"
    }

    /**
     * enum for parameter fieldsScmRepositories
     */
    public enum FieldsScmRepositories_scmRepositoriesGitReferencesGetToManyRelated: String, Sendable, CaseIterable {
        case lastaccesseddate = "lastAccessedDate"
        case httpcloneurl = "httpCloneUrl"
        case sshcloneurl = "sshCloneUrl"
        case ownername = "ownerName"
        case repositoryname = "repositoryName"
        case scmprovider = "scmProvider"
        case defaultbranch = "defaultBranch"
        case gitreferences = "gitReferences"
        case pullrequests = "pullRequests"
    }

    /**
     * enum for parameter include
     */
    public enum Include_scmRepositoriesGitReferencesGetToManyRelated: String, Sendable, CaseIterable {
        case repository = "repository"
    }

    /**

     - parameter id: (path) the id of the requested resource 
     - parameter fieldsScmGitReferences: (query) the fields to include for returned resources of type scmGitReferences (optional)
     - parameter fieldsScmRepositories: (query) the fields to include for returned resources of type scmRepositories (optional)
     - parameter limit: (query) maximum resources per page (optional)
     - parameter include: (query) comma-separated list of relationships to include (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: ScmGitReferencesResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func scmRepositoriesGitReferencesGetToManyRelated(id: String, fieldsScmGitReferences: [FieldsScmGitReferences_scmRepositoriesGitReferencesGetToManyRelated]? = nil, fieldsScmRepositories: [FieldsScmRepositories_scmRepositoriesGitReferencesGetToManyRelated]? = nil, limit: Int? = nil, include: [Include_scmRepositoriesGitReferencesGetToManyRelated]? = nil, apiConfiguration: ASCAPIConfiguration = ASCAPIConfiguration.shared) async throws(ErrorResponse) -> ScmGitReferencesResponse {
        return try await scmRepositoriesGitReferencesGetToManyRelatedWithRequestBuilder(id: id, fieldsScmGitReferences: fieldsScmGitReferences, fieldsScmRepositories: fieldsScmRepositories, limit: limit, include: include, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     - parameter urlString: next or first url from App Store Connect API
     - parameter apiConfiguration: The configuration for the http request.
     - returns: ScmGitReferencesResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func scmRepositoriesGitReferencesGetToManyRelated(urlString: String, apiConfiguration: ASCAPIConfiguration = ASCAPIConfiguration.shared) async throws(ErrorResponse) -> ScmGitReferencesResponse {
        return try await scmRepositoriesGitReferencesGetToManyRelatedWithRequestBuilder(urlString: urlString, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     - GET /v1/scmRepositories/{id}/gitReferences
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter id: (path) the id of the requested resource 
     - parameter fieldsScmGitReferences: (query) the fields to include for returned resources of type scmGitReferences (optional)
     - parameter fieldsScmRepositories: (query) the fields to include for returned resources of type scmRepositories (optional)
     - parameter limit: (query) maximum resources per page (optional)
     - parameter include: (query) comma-separated list of relationships to include (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<ScmGitReferencesResponse> 
     */
    open class func scmRepositoriesGitReferencesGetToManyRelatedWithRequestBuilder(id: String, fieldsScmGitReferences: [FieldsScmGitReferences_scmRepositoriesGitReferencesGetToManyRelated]? = nil, fieldsScmRepositories: [FieldsScmRepositories_scmRepositoriesGitReferencesGetToManyRelated]? = nil, limit: Int? = nil, include: [Include_scmRepositoriesGitReferencesGetToManyRelated]? = nil, apiConfiguration: ASCAPIConfiguration = ASCAPIConfiguration.shared) -> RequestBuilder<ScmGitReferencesResponse> {
        var localVariablePath = "/v1/scmRepositories/{id}/gitReferences"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "fields[scmGitReferences]": (wrappedValue: fieldsScmGitReferences?.encodeToJSON(codableHelper: apiConfiguration.codableHelper), isExplode: false),
            "fields[scmRepositories]": (wrappedValue: fieldsScmRepositories?.encodeToJSON(codableHelper: apiConfiguration.codableHelper), isExplode: false),
            "limit": (wrappedValue: limit?.encodeToJSON(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "include": (wrappedValue: include?.encodeToJSON(codableHelper: apiConfiguration.codableHelper), isExplode: false),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ScmGitReferencesResponse>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     - GET /v1/scmRepositories/{id}/gitReferences
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter urlString: next or first url from App Store Connect API
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<ScmGitReferencesResponse> 
     */
    open class func scmRepositoriesGitReferencesGetToManyRelatedWithRequestBuilder(urlString: String, apiConfiguration: ASCAPIConfiguration = ASCAPIConfiguration.shared) -> RequestBuilder<ScmGitReferencesResponse> {
        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ScmGitReferencesResponse>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: urlString, parameters: nil, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     * enum for parameter fieldsScmPullRequests
     */
    public enum FieldsScmPullRequests_scmRepositoriesPullRequestsGetToManyRelated: String, Sendable, CaseIterable {
        case title = "title"
        case number = "number"
        case weburl = "webUrl"
        case sourcerepositoryowner = "sourceRepositoryOwner"
        case sourcerepositoryname = "sourceRepositoryName"
        case sourcebranchname = "sourceBranchName"
        case destinationrepositoryowner = "destinationRepositoryOwner"
        case destinationrepositoryname = "destinationRepositoryName"
        case destinationbranchname = "destinationBranchName"
        case isclosed = "isClosed"
        case iscrossrepository = "isCrossRepository"
        case repository = "repository"
    }

    /**
     * enum for parameter fieldsScmRepositories
     */
    public enum FieldsScmRepositories_scmRepositoriesPullRequestsGetToManyRelated: String, Sendable, CaseIterable {
        case lastaccesseddate = "lastAccessedDate"
        case httpcloneurl = "httpCloneUrl"
        case sshcloneurl = "sshCloneUrl"
        case ownername = "ownerName"
        case repositoryname = "repositoryName"
        case scmprovider = "scmProvider"
        case defaultbranch = "defaultBranch"
        case gitreferences = "gitReferences"
        case pullrequests = "pullRequests"
    }

    /**
     * enum for parameter include
     */
    public enum Include_scmRepositoriesPullRequestsGetToManyRelated: String, Sendable, CaseIterable {
        case repository = "repository"
    }

    /**

     - parameter id: (path) the id of the requested resource 
     - parameter fieldsScmPullRequests: (query) the fields to include for returned resources of type scmPullRequests (optional)
     - parameter fieldsScmRepositories: (query) the fields to include for returned resources of type scmRepositories (optional)
     - parameter limit: (query) maximum resources per page (optional)
     - parameter include: (query) comma-separated list of relationships to include (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: ScmPullRequestsResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func scmRepositoriesPullRequestsGetToManyRelated(id: String, fieldsScmPullRequests: [FieldsScmPullRequests_scmRepositoriesPullRequestsGetToManyRelated]? = nil, fieldsScmRepositories: [FieldsScmRepositories_scmRepositoriesPullRequestsGetToManyRelated]? = nil, limit: Int? = nil, include: [Include_scmRepositoriesPullRequestsGetToManyRelated]? = nil, apiConfiguration: ASCAPIConfiguration = ASCAPIConfiguration.shared) async throws(ErrorResponse) -> ScmPullRequestsResponse {
        return try await scmRepositoriesPullRequestsGetToManyRelatedWithRequestBuilder(id: id, fieldsScmPullRequests: fieldsScmPullRequests, fieldsScmRepositories: fieldsScmRepositories, limit: limit, include: include, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     - parameter urlString: next or first url from App Store Connect API
     - parameter apiConfiguration: The configuration for the http request.
     - returns: ScmPullRequestsResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func scmRepositoriesPullRequestsGetToManyRelated(urlString: String, apiConfiguration: ASCAPIConfiguration = ASCAPIConfiguration.shared) async throws(ErrorResponse) -> ScmPullRequestsResponse {
        return try await scmRepositoriesPullRequestsGetToManyRelatedWithRequestBuilder(urlString: urlString, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     - GET /v1/scmRepositories/{id}/pullRequests
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter id: (path) the id of the requested resource 
     - parameter fieldsScmPullRequests: (query) the fields to include for returned resources of type scmPullRequests (optional)
     - parameter fieldsScmRepositories: (query) the fields to include for returned resources of type scmRepositories (optional)
     - parameter limit: (query) maximum resources per page (optional)
     - parameter include: (query) comma-separated list of relationships to include (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<ScmPullRequestsResponse> 
     */
    open class func scmRepositoriesPullRequestsGetToManyRelatedWithRequestBuilder(id: String, fieldsScmPullRequests: [FieldsScmPullRequests_scmRepositoriesPullRequestsGetToManyRelated]? = nil, fieldsScmRepositories: [FieldsScmRepositories_scmRepositoriesPullRequestsGetToManyRelated]? = nil, limit: Int? = nil, include: [Include_scmRepositoriesPullRequestsGetToManyRelated]? = nil, apiConfiguration: ASCAPIConfiguration = ASCAPIConfiguration.shared) -> RequestBuilder<ScmPullRequestsResponse> {
        var localVariablePath = "/v1/scmRepositories/{id}/pullRequests"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "fields[scmPullRequests]": (wrappedValue: fieldsScmPullRequests?.encodeToJSON(codableHelper: apiConfiguration.codableHelper), isExplode: false),
            "fields[scmRepositories]": (wrappedValue: fieldsScmRepositories?.encodeToJSON(codableHelper: apiConfiguration.codableHelper), isExplode: false),
            "limit": (wrappedValue: limit?.encodeToJSON(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "include": (wrappedValue: include?.encodeToJSON(codableHelper: apiConfiguration.codableHelper), isExplode: false),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ScmPullRequestsResponse>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     - GET /v1/scmRepositories/{id}/pullRequests
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter urlString: next or first url from App Store Connect API
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<ScmPullRequestsResponse> 
     */
    open class func scmRepositoriesPullRequestsGetToManyRelatedWithRequestBuilder(urlString: String, apiConfiguration: ASCAPIConfiguration = ASCAPIConfiguration.shared) -> RequestBuilder<ScmPullRequestsResponse> {
        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ScmPullRequestsResponse>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: urlString, parameters: nil, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }
}
