//
// ScmRepositoriesAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

open class ScmRepositoriesAPI {

    /**
     * enum for parameter fieldsScmRepositories
     */
    public enum FieldsScmRepositories_scmRepositoriesGetCollection: String, CaseIterable {
        case defaultbranch = "defaultBranch"
        case gitreferences = "gitReferences"
        case httpcloneurl = "httpCloneUrl"
        case lastaccesseddate = "lastAccessedDate"
        case ownername = "ownerName"
        case pullrequests = "pullRequests"
        case repositoryname = "repositoryName"
        case scmprovider = "scmProvider"
        case sshcloneurl = "sshCloneUrl"
    }

    /**
     * enum for parameter include
     */
    public enum Include_scmRepositoriesGetCollection: String, CaseIterable {
        case defaultbranch = "defaultBranch"
        case scmprovider = "scmProvider"
    }

    /**
     * enum for parameter fieldsScmGitReferences
     */
    public enum FieldsScmGitReferences_scmRepositoriesGetCollection: String, CaseIterable {
        case canonicalname = "canonicalName"
        case isdeleted = "isDeleted"
        case kind = "kind"
        case name = "name"
        case repository = "repository"
    }

    /**
     * enum for parameter fieldsScmPullRequests
     */
    public enum FieldsScmPullRequests_scmRepositoriesGetCollection: String, CaseIterable {
        case destinationbranchname = "destinationBranchName"
        case destinationrepositoryname = "destinationRepositoryName"
        case destinationrepositoryowner = "destinationRepositoryOwner"
        case isclosed = "isClosed"
        case iscrossrepository = "isCrossRepository"
        case number = "number"
        case repository = "repository"
        case sourcebranchname = "sourceBranchName"
        case sourcerepositoryname = "sourceRepositoryName"
        case sourcerepositoryowner = "sourceRepositoryOwner"
        case title = "title"
        case weburl = "webUrl"
    }

    /**

     - parameter filterId: (query) filter by id(s) (optional)
     - parameter fieldsScmRepositories: (query) the fields to include for returned resources of type scmRepositories (optional)
     - parameter limit: (query) maximum resources per page (optional)
     - parameter include: (query) comma-separated list of relationships to include (optional)
     - parameter fieldsScmGitReferences: (query) the fields to include for returned resources of type scmGitReferences (optional)
     - parameter fieldsScmPullRequests: (query) the fields to include for returned resources of type scmPullRequests (optional)
     - returns: ScmRepositoriesResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func scmRepositoriesGetCollection(filterId: [String]? = nil, fieldsScmRepositories: [FieldsScmRepositories_scmRepositoriesGetCollection]? = nil, limit: Int? = nil, include: [Include_scmRepositoriesGetCollection]? = nil, fieldsScmGitReferences: [FieldsScmGitReferences_scmRepositoriesGetCollection]? = nil, fieldsScmPullRequests: [FieldsScmPullRequests_scmRepositoriesGetCollection]? = nil) async throws -> ScmRepositoriesResponse {
        return try await scmRepositoriesGetCollectionWithRequestBuilder(filterId: filterId, fieldsScmRepositories: fieldsScmRepositories, limit: limit, include: include, fieldsScmGitReferences: fieldsScmGitReferences, fieldsScmPullRequests: fieldsScmPullRequests).execute().body
    }

    /**
     - parameter urlString: next or first url from App Store Connect API
     - returns: ScmRepositoriesResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func scmRepositoriesGetCollection(urlString: String) async throws -> ScmRepositoriesResponse {
        return try await scmRepositoriesGetCollectionWithRequestBuilder(urlString: urlString).execute().body
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
     - parameter fieldsScmGitReferences: (query) the fields to include for returned resources of type scmGitReferences (optional)
     - parameter fieldsScmPullRequests: (query) the fields to include for returned resources of type scmPullRequests (optional)
     - returns: RequestBuilder<ScmRepositoriesResponse> 
     */
    open class func scmRepositoriesGetCollectionWithRequestBuilder(filterId: [String]? = nil, fieldsScmRepositories: [FieldsScmRepositories_scmRepositoriesGetCollection]? = nil, limit: Int? = nil, include: [Include_scmRepositoriesGetCollection]? = nil, fieldsScmGitReferences: [FieldsScmGitReferences_scmRepositoriesGetCollection]? = nil, fieldsScmPullRequests: [FieldsScmPullRequests_scmRepositoriesGetCollection]? = nil) -> RequestBuilder<ScmRepositoriesResponse> {
        let localVariablePath = "/v1/scmRepositories"
        let localVariableURLString = ASCAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "filter[id]": (wrappedValue: filterId?.encodeToJSON(), isExplode: false),
            "fields[scmRepositories]": (wrappedValue: fieldsScmRepositories?.encodeToJSON(), isExplode: false),
            "limit": (wrappedValue: limit?.encodeToJSON(), isExplode: true),
            "include": (wrappedValue: include?.encodeToJSON(), isExplode: false),
            "fields[scmGitReferences]": (wrappedValue: fieldsScmGitReferences?.encodeToJSON(), isExplode: false),
            "fields[scmPullRequests]": (wrappedValue: fieldsScmPullRequests?.encodeToJSON(), isExplode: false),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ScmRepositoriesResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     - GET /v1/scmRepositories
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter urlString: next or first url from App Store Connect API
     - returns: RequestBuilder<ScmRepositoriesResponse> 
     */
    open class func scmRepositoriesGetCollectionWithRequestBuilder(urlString: String) -> RequestBuilder<ScmRepositoriesResponse> {
        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ScmRepositoriesResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: urlString, parameters: nil, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     * enum for parameter fieldsScmRepositories
     */
    public enum FieldsScmRepositories_scmRepositoriesGetInstance: String, CaseIterable {
        case defaultbranch = "defaultBranch"
        case gitreferences = "gitReferences"
        case httpcloneurl = "httpCloneUrl"
        case lastaccesseddate = "lastAccessedDate"
        case ownername = "ownerName"
        case pullrequests = "pullRequests"
        case repositoryname = "repositoryName"
        case scmprovider = "scmProvider"
        case sshcloneurl = "sshCloneUrl"
    }

    /**
     * enum for parameter include
     */
    public enum Include_scmRepositoriesGetInstance: String, CaseIterable {
        case defaultbranch = "defaultBranch"
        case scmprovider = "scmProvider"
    }

    /**
     * enum for parameter fieldsScmGitReferences
     */
    public enum FieldsScmGitReferences_scmRepositoriesGetInstance: String, CaseIterable {
        case canonicalname = "canonicalName"
        case isdeleted = "isDeleted"
        case kind = "kind"
        case name = "name"
        case repository = "repository"
    }

    /**
     * enum for parameter fieldsScmPullRequests
     */
    public enum FieldsScmPullRequests_scmRepositoriesGetInstance: String, CaseIterable {
        case destinationbranchname = "destinationBranchName"
        case destinationrepositoryname = "destinationRepositoryName"
        case destinationrepositoryowner = "destinationRepositoryOwner"
        case isclosed = "isClosed"
        case iscrossrepository = "isCrossRepository"
        case number = "number"
        case repository = "repository"
        case sourcebranchname = "sourceBranchName"
        case sourcerepositoryname = "sourceRepositoryName"
        case sourcerepositoryowner = "sourceRepositoryOwner"
        case title = "title"
        case weburl = "webUrl"
    }

    /**

     - parameter id: (path) the id of the requested resource 
     - parameter fieldsScmRepositories: (query) the fields to include for returned resources of type scmRepositories (optional)
     - parameter include: (query) comma-separated list of relationships to include (optional)
     - parameter fieldsScmGitReferences: (query) the fields to include for returned resources of type scmGitReferences (optional)
     - parameter fieldsScmPullRequests: (query) the fields to include for returned resources of type scmPullRequests (optional)
     - returns: ScmRepositoryResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func scmRepositoriesGetInstance(id: String, fieldsScmRepositories: [FieldsScmRepositories_scmRepositoriesGetInstance]? = nil, include: [Include_scmRepositoriesGetInstance]? = nil, fieldsScmGitReferences: [FieldsScmGitReferences_scmRepositoriesGetInstance]? = nil, fieldsScmPullRequests: [FieldsScmPullRequests_scmRepositoriesGetInstance]? = nil) async throws -> ScmRepositoryResponse {
        return try await scmRepositoriesGetInstanceWithRequestBuilder(id: id, fieldsScmRepositories: fieldsScmRepositories, include: include, fieldsScmGitReferences: fieldsScmGitReferences, fieldsScmPullRequests: fieldsScmPullRequests).execute().body
    }

    /**
     - parameter urlString: next or first url from App Store Connect API
     - returns: ScmRepositoryResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func scmRepositoriesGetInstance(urlString: String) async throws -> ScmRepositoryResponse {
        return try await scmRepositoriesGetInstanceWithRequestBuilder(urlString: urlString).execute().body
    }

    /**
     - GET /v1/scmRepositories/{id}
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter id: (path) the id of the requested resource 
     - parameter fieldsScmRepositories: (query) the fields to include for returned resources of type scmRepositories (optional)
     - parameter include: (query) comma-separated list of relationships to include (optional)
     - parameter fieldsScmGitReferences: (query) the fields to include for returned resources of type scmGitReferences (optional)
     - parameter fieldsScmPullRequests: (query) the fields to include for returned resources of type scmPullRequests (optional)
     - returns: RequestBuilder<ScmRepositoryResponse> 
     */
    open class func scmRepositoriesGetInstanceWithRequestBuilder(id: String, fieldsScmRepositories: [FieldsScmRepositories_scmRepositoriesGetInstance]? = nil, include: [Include_scmRepositoriesGetInstance]? = nil, fieldsScmGitReferences: [FieldsScmGitReferences_scmRepositoriesGetInstance]? = nil, fieldsScmPullRequests: [FieldsScmPullRequests_scmRepositoriesGetInstance]? = nil) -> RequestBuilder<ScmRepositoryResponse> {
        var localVariablePath = "/v1/scmRepositories/{id}"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = ASCAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "fields[scmRepositories]": (wrappedValue: fieldsScmRepositories?.encodeToJSON(), isExplode: false),
            "include": (wrappedValue: include?.encodeToJSON(), isExplode: false),
            "fields[scmGitReferences]": (wrappedValue: fieldsScmGitReferences?.encodeToJSON(), isExplode: false),
            "fields[scmPullRequests]": (wrappedValue: fieldsScmPullRequests?.encodeToJSON(), isExplode: false),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ScmRepositoryResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     - GET /v1/scmRepositories/{id}
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter urlString: next or first url from App Store Connect API
     - returns: RequestBuilder<ScmRepositoryResponse> 
     */
    open class func scmRepositoriesGetInstanceWithRequestBuilder(urlString: String) -> RequestBuilder<ScmRepositoryResponse> {
        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ScmRepositoryResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: urlString, parameters: nil, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     * enum for parameter fieldsScmGitReferences
     */
    public enum FieldsScmGitReferences_scmRepositoriesGitReferencesGetToManyRelated: String, CaseIterable {
        case canonicalname = "canonicalName"
        case isdeleted = "isDeleted"
        case kind = "kind"
        case name = "name"
        case repository = "repository"
    }

    /**
     * enum for parameter fieldsScmRepositories
     */
    public enum FieldsScmRepositories_scmRepositoriesGitReferencesGetToManyRelated: String, CaseIterable {
        case defaultbranch = "defaultBranch"
        case gitreferences = "gitReferences"
        case httpcloneurl = "httpCloneUrl"
        case lastaccesseddate = "lastAccessedDate"
        case ownername = "ownerName"
        case pullrequests = "pullRequests"
        case repositoryname = "repositoryName"
        case scmprovider = "scmProvider"
        case sshcloneurl = "sshCloneUrl"
    }

    /**
     * enum for parameter include
     */
    public enum Include_scmRepositoriesGitReferencesGetToManyRelated: String, CaseIterable {
        case repository = "repository"
    }

    /**

     - parameter id: (path) the id of the requested resource 
     - parameter fieldsScmGitReferences: (query) the fields to include for returned resources of type scmGitReferences (optional)
     - parameter fieldsScmRepositories: (query) the fields to include for returned resources of type scmRepositories (optional)
     - parameter limit: (query) maximum resources per page (optional)
     - parameter include: (query) comma-separated list of relationships to include (optional)
     - returns: ScmGitReferencesResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func scmRepositoriesGitReferencesGetToManyRelated(id: String, fieldsScmGitReferences: [FieldsScmGitReferences_scmRepositoriesGitReferencesGetToManyRelated]? = nil, fieldsScmRepositories: [FieldsScmRepositories_scmRepositoriesGitReferencesGetToManyRelated]? = nil, limit: Int? = nil, include: [Include_scmRepositoriesGitReferencesGetToManyRelated]? = nil) async throws -> ScmGitReferencesResponse {
        return try await scmRepositoriesGitReferencesGetToManyRelatedWithRequestBuilder(id: id, fieldsScmGitReferences: fieldsScmGitReferences, fieldsScmRepositories: fieldsScmRepositories, limit: limit, include: include).execute().body
    }

    /**
     - parameter urlString: next or first url from App Store Connect API
     - returns: ScmGitReferencesResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func scmRepositoriesGitReferencesGetToManyRelated(urlString: String) async throws -> ScmGitReferencesResponse {
        return try await scmRepositoriesGitReferencesGetToManyRelatedWithRequestBuilder(urlString: urlString).execute().body
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
     - returns: RequestBuilder<ScmGitReferencesResponse> 
     */
    open class func scmRepositoriesGitReferencesGetToManyRelatedWithRequestBuilder(id: String, fieldsScmGitReferences: [FieldsScmGitReferences_scmRepositoriesGitReferencesGetToManyRelated]? = nil, fieldsScmRepositories: [FieldsScmRepositories_scmRepositoriesGitReferencesGetToManyRelated]? = nil, limit: Int? = nil, include: [Include_scmRepositoriesGitReferencesGetToManyRelated]? = nil) -> RequestBuilder<ScmGitReferencesResponse> {
        var localVariablePath = "/v1/scmRepositories/{id}/gitReferences"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = ASCAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "fields[scmGitReferences]": (wrappedValue: fieldsScmGitReferences?.encodeToJSON(), isExplode: false),
            "fields[scmRepositories]": (wrappedValue: fieldsScmRepositories?.encodeToJSON(), isExplode: false),
            "limit": (wrappedValue: limit?.encodeToJSON(), isExplode: true),
            "include": (wrappedValue: include?.encodeToJSON(), isExplode: false),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ScmGitReferencesResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     - GET /v1/scmRepositories/{id}/gitReferences
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter urlString: next or first url from App Store Connect API
     - returns: RequestBuilder<ScmGitReferencesResponse> 
     */
    open class func scmRepositoriesGitReferencesGetToManyRelatedWithRequestBuilder(urlString: String) -> RequestBuilder<ScmGitReferencesResponse> {
        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ScmGitReferencesResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: urlString, parameters: nil, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     * enum for parameter fieldsScmPullRequests
     */
    public enum FieldsScmPullRequests_scmRepositoriesPullRequestsGetToManyRelated: String, CaseIterable {
        case destinationbranchname = "destinationBranchName"
        case destinationrepositoryname = "destinationRepositoryName"
        case destinationrepositoryowner = "destinationRepositoryOwner"
        case isclosed = "isClosed"
        case iscrossrepository = "isCrossRepository"
        case number = "number"
        case repository = "repository"
        case sourcebranchname = "sourceBranchName"
        case sourcerepositoryname = "sourceRepositoryName"
        case sourcerepositoryowner = "sourceRepositoryOwner"
        case title = "title"
        case weburl = "webUrl"
    }

    /**
     * enum for parameter fieldsScmRepositories
     */
    public enum FieldsScmRepositories_scmRepositoriesPullRequestsGetToManyRelated: String, CaseIterable {
        case defaultbranch = "defaultBranch"
        case gitreferences = "gitReferences"
        case httpcloneurl = "httpCloneUrl"
        case lastaccesseddate = "lastAccessedDate"
        case ownername = "ownerName"
        case pullrequests = "pullRequests"
        case repositoryname = "repositoryName"
        case scmprovider = "scmProvider"
        case sshcloneurl = "sshCloneUrl"
    }

    /**
     * enum for parameter include
     */
    public enum Include_scmRepositoriesPullRequestsGetToManyRelated: String, CaseIterable {
        case repository = "repository"
    }

    /**

     - parameter id: (path) the id of the requested resource 
     - parameter fieldsScmPullRequests: (query) the fields to include for returned resources of type scmPullRequests (optional)
     - parameter fieldsScmRepositories: (query) the fields to include for returned resources of type scmRepositories (optional)
     - parameter limit: (query) maximum resources per page (optional)
     - parameter include: (query) comma-separated list of relationships to include (optional)
     - returns: ScmPullRequestsResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func scmRepositoriesPullRequestsGetToManyRelated(id: String, fieldsScmPullRequests: [FieldsScmPullRequests_scmRepositoriesPullRequestsGetToManyRelated]? = nil, fieldsScmRepositories: [FieldsScmRepositories_scmRepositoriesPullRequestsGetToManyRelated]? = nil, limit: Int? = nil, include: [Include_scmRepositoriesPullRequestsGetToManyRelated]? = nil) async throws -> ScmPullRequestsResponse {
        return try await scmRepositoriesPullRequestsGetToManyRelatedWithRequestBuilder(id: id, fieldsScmPullRequests: fieldsScmPullRequests, fieldsScmRepositories: fieldsScmRepositories, limit: limit, include: include).execute().body
    }

    /**
     - parameter urlString: next or first url from App Store Connect API
     - returns: ScmPullRequestsResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func scmRepositoriesPullRequestsGetToManyRelated(urlString: String) async throws -> ScmPullRequestsResponse {
        return try await scmRepositoriesPullRequestsGetToManyRelatedWithRequestBuilder(urlString: urlString).execute().body
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
     - returns: RequestBuilder<ScmPullRequestsResponse> 
     */
    open class func scmRepositoriesPullRequestsGetToManyRelatedWithRequestBuilder(id: String, fieldsScmPullRequests: [FieldsScmPullRequests_scmRepositoriesPullRequestsGetToManyRelated]? = nil, fieldsScmRepositories: [FieldsScmRepositories_scmRepositoriesPullRequestsGetToManyRelated]? = nil, limit: Int? = nil, include: [Include_scmRepositoriesPullRequestsGetToManyRelated]? = nil) -> RequestBuilder<ScmPullRequestsResponse> {
        var localVariablePath = "/v1/scmRepositories/{id}/pullRequests"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = ASCAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "fields[scmPullRequests]": (wrappedValue: fieldsScmPullRequests?.encodeToJSON(), isExplode: false),
            "fields[scmRepositories]": (wrappedValue: fieldsScmRepositories?.encodeToJSON(), isExplode: false),
            "limit": (wrappedValue: limit?.encodeToJSON(), isExplode: true),
            "include": (wrappedValue: include?.encodeToJSON(), isExplode: false),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ScmPullRequestsResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     - GET /v1/scmRepositories/{id}/pullRequests
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter urlString: next or first url from App Store Connect API
     - returns: RequestBuilder<ScmPullRequestsResponse> 
     */
    open class func scmRepositoriesPullRequestsGetToManyRelatedWithRequestBuilder(urlString: String) -> RequestBuilder<ScmPullRequestsResponse> {
        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ScmPullRequestsResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: urlString, parameters: nil, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }
}
