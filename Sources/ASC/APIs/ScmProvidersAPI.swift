//
// ScmProvidersAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

open class ScmProvidersAPI {

    /**
     * enum for parameter fieldsScmProviders
     */
    public enum FieldsScmProviders_scmProvidersGetCollection: String, CaseIterable {
        case repositories = "repositories"
        case scmprovidertype = "scmProviderType"
        case url = "url"
    }

    /**
     * enum for parameter fieldsScmRepositories
     */
    public enum FieldsScmRepositories_scmProvidersGetCollection: String, CaseIterable {
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

     - parameter fieldsScmProviders: (query) the fields to include for returned resources of type scmProviders (optional)
     - parameter limit: (query) maximum resources per page (optional)
     - parameter fieldsScmRepositories: (query) the fields to include for returned resources of type scmRepositories (optional)
     - returns: ScmProvidersResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func scmProvidersGetCollection(fieldsScmProviders: [FieldsScmProviders_scmProvidersGetCollection]? = nil, limit: Int? = nil, fieldsScmRepositories: [FieldsScmRepositories_scmProvidersGetCollection]? = nil) async throws -> ScmProvidersResponse {
        return try await scmProvidersGetCollectionWithRequestBuilder(fieldsScmProviders: fieldsScmProviders, limit: limit, fieldsScmRepositories: fieldsScmRepositories).execute().body
    }

    /**
     - parameter urlString: next or first url from App Store Connect API
     - returns: ScmProvidersResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func scmProvidersGetCollection(urlString: String) async throws -> ScmProvidersResponse {
        return try await scmProvidersGetCollectionWithRequestBuilder(urlString: urlString).execute().body
    }

    /**
     - GET /v1/scmProviders
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter fieldsScmProviders: (query) the fields to include for returned resources of type scmProviders (optional)
     - parameter limit: (query) maximum resources per page (optional)
     - parameter fieldsScmRepositories: (query) the fields to include for returned resources of type scmRepositories (optional)
     - returns: RequestBuilder<ScmProvidersResponse> 
     */
    open class func scmProvidersGetCollectionWithRequestBuilder(fieldsScmProviders: [FieldsScmProviders_scmProvidersGetCollection]? = nil, limit: Int? = nil, fieldsScmRepositories: [FieldsScmRepositories_scmProvidersGetCollection]? = nil) -> RequestBuilder<ScmProvidersResponse> {
        let localVariablePath = "/v1/scmProviders"
        let localVariableURLString = ASCAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "fields[scmProviders]": (wrappedValue: fieldsScmProviders?.encodeToJSON(), isExplode: false),
            "limit": (wrappedValue: limit?.encodeToJSON(), isExplode: true),
            "fields[scmRepositories]": (wrappedValue: fieldsScmRepositories?.encodeToJSON(), isExplode: false),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ScmProvidersResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     - GET /v1/scmProviders
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter urlString: next or first url from App Store Connect API
     - returns: RequestBuilder<ScmProvidersResponse> 
     */
    open class func scmProvidersGetCollectionWithRequestBuilder(urlString: String) -> RequestBuilder<ScmProvidersResponse> {
        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ScmProvidersResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: urlString, parameters: nil, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     * enum for parameter fieldsScmProviders
     */
    public enum FieldsScmProviders_scmProvidersGetInstance: String, CaseIterable {
        case repositories = "repositories"
        case scmprovidertype = "scmProviderType"
        case url = "url"
    }

    /**
     * enum for parameter fieldsScmRepositories
     */
    public enum FieldsScmRepositories_scmProvidersGetInstance: String, CaseIterable {
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

     - parameter id: (path) the id of the requested resource 
     - parameter fieldsScmProviders: (query) the fields to include for returned resources of type scmProviders (optional)
     - parameter fieldsScmRepositories: (query) the fields to include for returned resources of type scmRepositories (optional)
     - returns: ScmProviderResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func scmProvidersGetInstance(id: String, fieldsScmProviders: [FieldsScmProviders_scmProvidersGetInstance]? = nil, fieldsScmRepositories: [FieldsScmRepositories_scmProvidersGetInstance]? = nil) async throws -> ScmProviderResponse {
        return try await scmProvidersGetInstanceWithRequestBuilder(id: id, fieldsScmProviders: fieldsScmProviders, fieldsScmRepositories: fieldsScmRepositories).execute().body
    }

    /**
     - parameter urlString: next or first url from App Store Connect API
     - returns: ScmProviderResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func scmProvidersGetInstance(urlString: String) async throws -> ScmProviderResponse {
        return try await scmProvidersGetInstanceWithRequestBuilder(urlString: urlString).execute().body
    }

    /**
     - GET /v1/scmProviders/{id}
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter id: (path) the id of the requested resource 
     - parameter fieldsScmProviders: (query) the fields to include for returned resources of type scmProviders (optional)
     - parameter fieldsScmRepositories: (query) the fields to include for returned resources of type scmRepositories (optional)
     - returns: RequestBuilder<ScmProviderResponse> 
     */
    open class func scmProvidersGetInstanceWithRequestBuilder(id: String, fieldsScmProviders: [FieldsScmProviders_scmProvidersGetInstance]? = nil, fieldsScmRepositories: [FieldsScmRepositories_scmProvidersGetInstance]? = nil) -> RequestBuilder<ScmProviderResponse> {
        var localVariablePath = "/v1/scmProviders/{id}"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = ASCAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "fields[scmProviders]": (wrappedValue: fieldsScmProviders?.encodeToJSON(), isExplode: false),
            "fields[scmRepositories]": (wrappedValue: fieldsScmRepositories?.encodeToJSON(), isExplode: false),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ScmProviderResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     - GET /v1/scmProviders/{id}
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter urlString: next or first url from App Store Connect API
     - returns: RequestBuilder<ScmProviderResponse> 
     */
    open class func scmProvidersGetInstanceWithRequestBuilder(urlString: String) -> RequestBuilder<ScmProviderResponse> {
        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ScmProviderResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: urlString, parameters: nil, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     * enum for parameter fieldsScmGitReferences
     */
    public enum FieldsScmGitReferences_scmProvidersRepositoriesGetToManyRelated: String, CaseIterable {
        case canonicalname = "canonicalName"
        case isdeleted = "isDeleted"
        case kind = "kind"
        case name = "name"
        case repository = "repository"
    }

    /**
     * enum for parameter fieldsScmProviders
     */
    public enum FieldsScmProviders_scmProvidersRepositoriesGetToManyRelated: String, CaseIterable {
        case repositories = "repositories"
        case scmprovidertype = "scmProviderType"
        case url = "url"
    }

    /**
     * enum for parameter fieldsScmRepositories
     */
    public enum FieldsScmRepositories_scmProvidersRepositoriesGetToManyRelated: String, CaseIterable {
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
    public enum Include_scmProvidersRepositoriesGetToManyRelated: String, CaseIterable {
        case defaultbranch = "defaultBranch"
        case scmprovider = "scmProvider"
    }

    /**

     - parameter id: (path) the id of the requested resource 
     - parameter filterId: (query) filter by id(s) (optional)
     - parameter fieldsScmGitReferences: (query) the fields to include for returned resources of type scmGitReferences (optional)
     - parameter fieldsScmProviders: (query) the fields to include for returned resources of type scmProviders (optional)
     - parameter fieldsScmRepositories: (query) the fields to include for returned resources of type scmRepositories (optional)
     - parameter limit: (query) maximum resources per page (optional)
     - parameter include: (query) comma-separated list of relationships to include (optional)
     - returns: ScmRepositoriesResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func scmProvidersRepositoriesGetToManyRelated(id: String, filterId: [String]? = nil, fieldsScmGitReferences: [FieldsScmGitReferences_scmProvidersRepositoriesGetToManyRelated]? = nil, fieldsScmProviders: [FieldsScmProviders_scmProvidersRepositoriesGetToManyRelated]? = nil, fieldsScmRepositories: [FieldsScmRepositories_scmProvidersRepositoriesGetToManyRelated]? = nil, limit: Int? = nil, include: [Include_scmProvidersRepositoriesGetToManyRelated]? = nil) async throws -> ScmRepositoriesResponse {
        return try await scmProvidersRepositoriesGetToManyRelatedWithRequestBuilder(id: id, filterId: filterId, fieldsScmGitReferences: fieldsScmGitReferences, fieldsScmProviders: fieldsScmProviders, fieldsScmRepositories: fieldsScmRepositories, limit: limit, include: include).execute().body
    }

    /**
     - parameter urlString: next or first url from App Store Connect API
     - returns: ScmRepositoriesResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func scmProvidersRepositoriesGetToManyRelated(urlString: String) async throws -> ScmRepositoriesResponse {
        return try await scmProvidersRepositoriesGetToManyRelatedWithRequestBuilder(urlString: urlString).execute().body
    }

    /**
     - GET /v1/scmProviders/{id}/repositories
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter id: (path) the id of the requested resource 
     - parameter filterId: (query) filter by id(s) (optional)
     - parameter fieldsScmGitReferences: (query) the fields to include for returned resources of type scmGitReferences (optional)
     - parameter fieldsScmProviders: (query) the fields to include for returned resources of type scmProviders (optional)
     - parameter fieldsScmRepositories: (query) the fields to include for returned resources of type scmRepositories (optional)
     - parameter limit: (query) maximum resources per page (optional)
     - parameter include: (query) comma-separated list of relationships to include (optional)
     - returns: RequestBuilder<ScmRepositoriesResponse> 
     */
    open class func scmProvidersRepositoriesGetToManyRelatedWithRequestBuilder(id: String, filterId: [String]? = nil, fieldsScmGitReferences: [FieldsScmGitReferences_scmProvidersRepositoriesGetToManyRelated]? = nil, fieldsScmProviders: [FieldsScmProviders_scmProvidersRepositoriesGetToManyRelated]? = nil, fieldsScmRepositories: [FieldsScmRepositories_scmProvidersRepositoriesGetToManyRelated]? = nil, limit: Int? = nil, include: [Include_scmProvidersRepositoriesGetToManyRelated]? = nil) -> RequestBuilder<ScmRepositoriesResponse> {
        var localVariablePath = "/v1/scmProviders/{id}/repositories"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = ASCAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "filter[id]": (wrappedValue: filterId?.encodeToJSON(), isExplode: false),
            "fields[scmGitReferences]": (wrappedValue: fieldsScmGitReferences?.encodeToJSON(), isExplode: false),
            "fields[scmProviders]": (wrappedValue: fieldsScmProviders?.encodeToJSON(), isExplode: false),
            "fields[scmRepositories]": (wrappedValue: fieldsScmRepositories?.encodeToJSON(), isExplode: false),
            "limit": (wrappedValue: limit?.encodeToJSON(), isExplode: true),
            "include": (wrappedValue: include?.encodeToJSON(), isExplode: false),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ScmRepositoriesResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     - GET /v1/scmProviders/{id}/repositories
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter urlString: next or first url from App Store Connect API
     - returns: RequestBuilder<ScmRepositoriesResponse> 
     */
    open class func scmProvidersRepositoriesGetToManyRelatedWithRequestBuilder(urlString: String) -> RequestBuilder<ScmRepositoriesResponse> {
        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ScmRepositoriesResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: urlString, parameters: nil, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }
}
