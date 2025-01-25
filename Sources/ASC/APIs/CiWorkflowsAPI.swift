//
// CiWorkflowsAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

open class CiWorkflowsAPI {

    /**
     * enum for parameter sort
     */
    public enum Sort_ciWorkflowsBuildRunsGetToManyRelated: String, CaseIterable {
        case number = "number"
        case number2 = "-number"
    }

    /**
     * enum for parameter fieldsCiBuildRuns
     */
    public enum FieldsCiBuildRuns_ciWorkflowsBuildRunsGetToManyRelated: String, CaseIterable {
        case number = "number"
        case createddate = "createdDate"
        case starteddate = "startedDate"
        case finisheddate = "finishedDate"
        case sourcecommit = "sourceCommit"
        case destinationcommit = "destinationCommit"
        case ispullrequestbuild = "isPullRequestBuild"
        case issuecounts = "issueCounts"
        case executionprogress = "executionProgress"
        case completionstatus = "completionStatus"
        case startreason = "startReason"
        case cancelreason = "cancelReason"
        case builds = "builds"
        case workflow = "workflow"
        case product = "product"
        case sourcebranchortag = "sourceBranchOrTag"
        case destinationbranch = "destinationBranch"
        case actions = "actions"
        case pullrequest = "pullRequest"
    }

    /**
     * enum for parameter fieldsBuilds
     */
    public enum FieldsBuilds_ciWorkflowsBuildRunsGetToManyRelated: String, CaseIterable {
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
     * enum for parameter fieldsCiWorkflows
     */
    public enum FieldsCiWorkflows_ciWorkflowsBuildRunsGetToManyRelated: String, CaseIterable {
        case name = "name"
        case description = "description"
        case branchstartcondition = "branchStartCondition"
        case tagstartcondition = "tagStartCondition"
        case pullrequeststartcondition = "pullRequestStartCondition"
        case scheduledstartcondition = "scheduledStartCondition"
        case manualbranchstartcondition = "manualBranchStartCondition"
        case manualtagstartcondition = "manualTagStartCondition"
        case manualpullrequeststartcondition = "manualPullRequestStartCondition"
        case actions = "actions"
        case isenabled = "isEnabled"
        case islockedforediting = "isLockedForEditing"
        case clean = "clean"
        case containerfilepath = "containerFilePath"
        case lastmodifieddate = "lastModifiedDate"
        case product = "product"
        case repository = "repository"
        case xcodeversion = "xcodeVersion"
        case macosversion = "macOsVersion"
        case buildruns = "buildRuns"
    }

    /**
     * enum for parameter fieldsCiProducts
     */
    public enum FieldsCiProducts_ciWorkflowsBuildRunsGetToManyRelated: String, CaseIterable {
        case name = "name"
        case createddate = "createdDate"
        case producttype = "productType"
        case app = "app"
        case bundleid = "bundleId"
        case workflows = "workflows"
        case primaryrepositories = "primaryRepositories"
        case additionalrepositories = "additionalRepositories"
        case buildruns = "buildRuns"
    }

    /**
     * enum for parameter fieldsScmGitReferences
     */
    public enum FieldsScmGitReferences_ciWorkflowsBuildRunsGetToManyRelated: String, CaseIterable {
        case name = "name"
        case canonicalname = "canonicalName"
        case isdeleted = "isDeleted"
        case kind = "kind"
        case repository = "repository"
    }

    /**
     * enum for parameter fieldsScmPullRequests
     */
    public enum FieldsScmPullRequests_ciWorkflowsBuildRunsGetToManyRelated: String, CaseIterable {
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
     * enum for parameter include
     */
    public enum Include_ciWorkflowsBuildRunsGetToManyRelated: String, CaseIterable {
        case builds = "builds"
        case workflow = "workflow"
        case product = "product"
        case sourcebranchortag = "sourceBranchOrTag"
        case destinationbranch = "destinationBranch"
        case pullrequest = "pullRequest"
    }

    /**

     - parameter id: (path) the id of the requested resource 
     - parameter filterBuilds: (query) filter by id(s) of related &#39;builds&#39; (optional)
     - parameter sort: (query) comma-separated list of sort expressions; resources will be sorted as specified (optional)
     - parameter fieldsCiBuildRuns: (query) the fields to include for returned resources of type ciBuildRuns (optional)
     - parameter fieldsBuilds: (query) the fields to include for returned resources of type builds (optional)
     - parameter fieldsCiWorkflows: (query) the fields to include for returned resources of type ciWorkflows (optional)
     - parameter fieldsCiProducts: (query) the fields to include for returned resources of type ciProducts (optional)
     - parameter fieldsScmGitReferences: (query) the fields to include for returned resources of type scmGitReferences (optional)
     - parameter fieldsScmPullRequests: (query) the fields to include for returned resources of type scmPullRequests (optional)
     - parameter limit: (query) maximum resources per page (optional)
     - parameter include: (query) comma-separated list of relationships to include (optional)
     - parameter limitBuilds: (query) maximum number of related builds returned (when they are included) (optional)
     - returns: CiBuildRunsResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func ciWorkflowsBuildRunsGetToManyRelated(id: String, filterBuilds: [String]? = nil, sort: [Sort_ciWorkflowsBuildRunsGetToManyRelated]? = nil, fieldsCiBuildRuns: [FieldsCiBuildRuns_ciWorkflowsBuildRunsGetToManyRelated]? = nil, fieldsBuilds: [FieldsBuilds_ciWorkflowsBuildRunsGetToManyRelated]? = nil, fieldsCiWorkflows: [FieldsCiWorkflows_ciWorkflowsBuildRunsGetToManyRelated]? = nil, fieldsCiProducts: [FieldsCiProducts_ciWorkflowsBuildRunsGetToManyRelated]? = nil, fieldsScmGitReferences: [FieldsScmGitReferences_ciWorkflowsBuildRunsGetToManyRelated]? = nil, fieldsScmPullRequests: [FieldsScmPullRequests_ciWorkflowsBuildRunsGetToManyRelated]? = nil, limit: Int? = nil, include: [Include_ciWorkflowsBuildRunsGetToManyRelated]? = nil, limitBuilds: Int? = nil) async throws -> CiBuildRunsResponse {
        return try await ciWorkflowsBuildRunsGetToManyRelatedWithRequestBuilder(id: id, filterBuilds: filterBuilds, sort: sort, fieldsCiBuildRuns: fieldsCiBuildRuns, fieldsBuilds: fieldsBuilds, fieldsCiWorkflows: fieldsCiWorkflows, fieldsCiProducts: fieldsCiProducts, fieldsScmGitReferences: fieldsScmGitReferences, fieldsScmPullRequests: fieldsScmPullRequests, limit: limit, include: include, limitBuilds: limitBuilds).execute().body
    }

    /**
     - parameter urlString: next or first url from App Store Connect API
     - returns: CiBuildRunsResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func ciWorkflowsBuildRunsGetToManyRelated(urlString: String) async throws -> CiBuildRunsResponse {
        return try await ciWorkflowsBuildRunsGetToManyRelatedWithRequestBuilder(urlString: urlString).execute().body
    }

    /**
     - GET /v1/ciWorkflows/{id}/buildRuns
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter id: (path) the id of the requested resource 
     - parameter filterBuilds: (query) filter by id(s) of related &#39;builds&#39; (optional)
     - parameter sort: (query) comma-separated list of sort expressions; resources will be sorted as specified (optional)
     - parameter fieldsCiBuildRuns: (query) the fields to include for returned resources of type ciBuildRuns (optional)
     - parameter fieldsBuilds: (query) the fields to include for returned resources of type builds (optional)
     - parameter fieldsCiWorkflows: (query) the fields to include for returned resources of type ciWorkflows (optional)
     - parameter fieldsCiProducts: (query) the fields to include for returned resources of type ciProducts (optional)
     - parameter fieldsScmGitReferences: (query) the fields to include for returned resources of type scmGitReferences (optional)
     - parameter fieldsScmPullRequests: (query) the fields to include for returned resources of type scmPullRequests (optional)
     - parameter limit: (query) maximum resources per page (optional)
     - parameter include: (query) comma-separated list of relationships to include (optional)
     - parameter limitBuilds: (query) maximum number of related builds returned (when they are included) (optional)
     - returns: RequestBuilder<CiBuildRunsResponse> 
     */
    open class func ciWorkflowsBuildRunsGetToManyRelatedWithRequestBuilder(id: String, filterBuilds: [String]? = nil, sort: [Sort_ciWorkflowsBuildRunsGetToManyRelated]? = nil, fieldsCiBuildRuns: [FieldsCiBuildRuns_ciWorkflowsBuildRunsGetToManyRelated]? = nil, fieldsBuilds: [FieldsBuilds_ciWorkflowsBuildRunsGetToManyRelated]? = nil, fieldsCiWorkflows: [FieldsCiWorkflows_ciWorkflowsBuildRunsGetToManyRelated]? = nil, fieldsCiProducts: [FieldsCiProducts_ciWorkflowsBuildRunsGetToManyRelated]? = nil, fieldsScmGitReferences: [FieldsScmGitReferences_ciWorkflowsBuildRunsGetToManyRelated]? = nil, fieldsScmPullRequests: [FieldsScmPullRequests_ciWorkflowsBuildRunsGetToManyRelated]? = nil, limit: Int? = nil, include: [Include_ciWorkflowsBuildRunsGetToManyRelated]? = nil, limitBuilds: Int? = nil) -> RequestBuilder<CiBuildRunsResponse> {
        var localVariablePath = "/v1/ciWorkflows/{id}/buildRuns"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = ASCAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "filter[builds]": (wrappedValue: filterBuilds?.encodeToJSON(), isExplode: false),
            "sort": (wrappedValue: sort?.encodeToJSON(), isExplode: false),
            "fields[ciBuildRuns]": (wrappedValue: fieldsCiBuildRuns?.encodeToJSON(), isExplode: false),
            "fields[builds]": (wrappedValue: fieldsBuilds?.encodeToJSON(), isExplode: false),
            "fields[ciWorkflows]": (wrappedValue: fieldsCiWorkflows?.encodeToJSON(), isExplode: false),
            "fields[ciProducts]": (wrappedValue: fieldsCiProducts?.encodeToJSON(), isExplode: false),
            "fields[scmGitReferences]": (wrappedValue: fieldsScmGitReferences?.encodeToJSON(), isExplode: false),
            "fields[scmPullRequests]": (wrappedValue: fieldsScmPullRequests?.encodeToJSON(), isExplode: false),
            "limit": (wrappedValue: limit?.encodeToJSON(), isExplode: true),
            "include": (wrappedValue: include?.encodeToJSON(), isExplode: false),
            "limit[builds]": (wrappedValue: limitBuilds?.encodeToJSON(), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<CiBuildRunsResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     - GET /v1/ciWorkflows/{id}/buildRuns
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter urlString: next or first url from App Store Connect API
     - returns: RequestBuilder<CiBuildRunsResponse> 
     */
    open class func ciWorkflowsBuildRunsGetToManyRelatedWithRequestBuilder(urlString: String) -> RequestBuilder<CiBuildRunsResponse> {
        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<CiBuildRunsResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: urlString, parameters: nil, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**

     - parameter ciWorkflowCreateRequest: (body) CiWorkflow representation 
     - returns: CiWorkflowResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func ciWorkflowsCreateInstance(ciWorkflowCreateRequest: CiWorkflowCreateRequest) async throws -> CiWorkflowResponse {
        return try await ciWorkflowsCreateInstanceWithRequestBuilder(ciWorkflowCreateRequest: ciWorkflowCreateRequest).execute().body
    }

    /**
     - parameter urlString: next or first url from App Store Connect API
     - returns: CiWorkflowResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func ciWorkflowsCreateInstance(urlString: String) async throws -> CiWorkflowResponse {
        return try await ciWorkflowsCreateInstanceWithRequestBuilder(urlString: urlString).execute().body
    }

    /**
     - POST /v1/ciWorkflows
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter ciWorkflowCreateRequest: (body) CiWorkflow representation 
     - returns: RequestBuilder<CiWorkflowResponse> 
     */
    open class func ciWorkflowsCreateInstanceWithRequestBuilder(ciWorkflowCreateRequest: CiWorkflowCreateRequest) -> RequestBuilder<CiWorkflowResponse> {
        let localVariablePath = "/v1/ciWorkflows"
        let localVariableURLString = ASCAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: ciWorkflowCreateRequest)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            "Content-Type": "application/json",
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<CiWorkflowResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     - POST /v1/ciWorkflows
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter urlString: next or first url from App Store Connect API
     - returns: RequestBuilder<CiWorkflowResponse> 
     */
    open class func ciWorkflowsCreateInstanceWithRequestBuilder(urlString: String) -> RequestBuilder<CiWorkflowResponse> {
        let localVariableNillableHeaders: [String: Any?] = [
            "Content-Type": "application/json",
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<CiWorkflowResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: urlString, parameters: nil, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**

     - parameter id: (path) the id of the requested resource 
     - returns: Void
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func ciWorkflowsDeleteInstance(id: String) async throws {
        return try await ciWorkflowsDeleteInstanceWithRequestBuilder(id: id).execute().body
    }

    /**
     - parameter urlString: next or first url from App Store Connect API
     - returns: Void
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func ciWorkflowsDeleteInstance(urlString: String) async throws {
        return try await ciWorkflowsDeleteInstanceWithRequestBuilder(urlString: urlString).execute().body
    }

    /**
     - DELETE /v1/ciWorkflows/{id}
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter id: (path) the id of the requested resource 
     - returns: RequestBuilder<Void> 
     */
    open class func ciWorkflowsDeleteInstanceWithRequestBuilder(id: String) -> RequestBuilder<Void> {
        var localVariablePath = "/v1/ciWorkflows/{id}"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = ASCAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Void>.Type = ASCAPI.requestBuilderFactory.getNonDecodableBuilder()

        return localVariableRequestBuilder.init(method: "DELETE", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     - DELETE /v1/ciWorkflows/{id}
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter urlString: next or first url from App Store Connect API
     - returns: RequestBuilder<Void> 
     */
    open class func ciWorkflowsDeleteInstanceWithRequestBuilder(urlString: String) -> RequestBuilder<Void> {
        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Void>.Type = ASCAPI.requestBuilderFactory.getNonDecodableBuilder()

        return localVariableRequestBuilder.init(method: "DELETE", URLString: urlString, parameters: nil, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     * enum for parameter fieldsCiWorkflows
     */
    public enum FieldsCiWorkflows_ciWorkflowsGetInstance: String, CaseIterable {
        case name = "name"
        case description = "description"
        case branchstartcondition = "branchStartCondition"
        case tagstartcondition = "tagStartCondition"
        case pullrequeststartcondition = "pullRequestStartCondition"
        case scheduledstartcondition = "scheduledStartCondition"
        case manualbranchstartcondition = "manualBranchStartCondition"
        case manualtagstartcondition = "manualTagStartCondition"
        case manualpullrequeststartcondition = "manualPullRequestStartCondition"
        case actions = "actions"
        case isenabled = "isEnabled"
        case islockedforediting = "isLockedForEditing"
        case clean = "clean"
        case containerfilepath = "containerFilePath"
        case lastmodifieddate = "lastModifiedDate"
        case product = "product"
        case repository = "repository"
        case xcodeversion = "xcodeVersion"
        case macosversion = "macOsVersion"
        case buildruns = "buildRuns"
    }

    /**
     * enum for parameter fieldsScmRepositories
     */
    public enum FieldsScmRepositories_ciWorkflowsGetInstance: String, CaseIterable {
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
    public enum Include_ciWorkflowsGetInstance: String, CaseIterable {
        case product = "product"
        case repository = "repository"
        case xcodeversion = "xcodeVersion"
        case macosversion = "macOsVersion"
    }

    /**

     - parameter id: (path) the id of the requested resource 
     - parameter fieldsCiWorkflows: (query) the fields to include for returned resources of type ciWorkflows (optional)
     - parameter fieldsScmRepositories: (query) the fields to include for returned resources of type scmRepositories (optional)
     - parameter include: (query) comma-separated list of relationships to include (optional)
     - returns: CiWorkflowResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func ciWorkflowsGetInstance(id: String, fieldsCiWorkflows: [FieldsCiWorkflows_ciWorkflowsGetInstance]? = nil, fieldsScmRepositories: [FieldsScmRepositories_ciWorkflowsGetInstance]? = nil, include: [Include_ciWorkflowsGetInstance]? = nil) async throws -> CiWorkflowResponse {
        return try await ciWorkflowsGetInstanceWithRequestBuilder(id: id, fieldsCiWorkflows: fieldsCiWorkflows, fieldsScmRepositories: fieldsScmRepositories, include: include).execute().body
    }

    /**
     - parameter urlString: next or first url from App Store Connect API
     - returns: CiWorkflowResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func ciWorkflowsGetInstance(urlString: String) async throws -> CiWorkflowResponse {
        return try await ciWorkflowsGetInstanceWithRequestBuilder(urlString: urlString).execute().body
    }

    /**
     - GET /v1/ciWorkflows/{id}
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter id: (path) the id of the requested resource 
     - parameter fieldsCiWorkflows: (query) the fields to include for returned resources of type ciWorkflows (optional)
     - parameter fieldsScmRepositories: (query) the fields to include for returned resources of type scmRepositories (optional)
     - parameter include: (query) comma-separated list of relationships to include (optional)
     - returns: RequestBuilder<CiWorkflowResponse> 
     */
    open class func ciWorkflowsGetInstanceWithRequestBuilder(id: String, fieldsCiWorkflows: [FieldsCiWorkflows_ciWorkflowsGetInstance]? = nil, fieldsScmRepositories: [FieldsScmRepositories_ciWorkflowsGetInstance]? = nil, include: [Include_ciWorkflowsGetInstance]? = nil) -> RequestBuilder<CiWorkflowResponse> {
        var localVariablePath = "/v1/ciWorkflows/{id}"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = ASCAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "fields[ciWorkflows]": (wrappedValue: fieldsCiWorkflows?.encodeToJSON(), isExplode: false),
            "fields[scmRepositories]": (wrappedValue: fieldsScmRepositories?.encodeToJSON(), isExplode: false),
            "include": (wrappedValue: include?.encodeToJSON(), isExplode: false),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<CiWorkflowResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     - GET /v1/ciWorkflows/{id}
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter urlString: next or first url from App Store Connect API
     - returns: RequestBuilder<CiWorkflowResponse> 
     */
    open class func ciWorkflowsGetInstanceWithRequestBuilder(urlString: String) -> RequestBuilder<CiWorkflowResponse> {
        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<CiWorkflowResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: urlString, parameters: nil, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     * enum for parameter fieldsScmRepositories
     */
    public enum FieldsScmRepositories_ciWorkflowsRepositoryGetToOneRelated: String, CaseIterable {
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
     * enum for parameter fieldsScmProviders
     */
    public enum FieldsScmProviders_ciWorkflowsRepositoryGetToOneRelated: String, CaseIterable {
        case scmprovidertype = "scmProviderType"
        case url = "url"
        case repositories = "repositories"
    }

    /**
     * enum for parameter fieldsScmGitReferences
     */
    public enum FieldsScmGitReferences_ciWorkflowsRepositoryGetToOneRelated: String, CaseIterable {
        case name = "name"
        case canonicalname = "canonicalName"
        case isdeleted = "isDeleted"
        case kind = "kind"
        case repository = "repository"
    }

    /**
     * enum for parameter include
     */
    public enum Include_ciWorkflowsRepositoryGetToOneRelated: String, CaseIterable {
        case scmprovider = "scmProvider"
        case defaultbranch = "defaultBranch"
    }

    /**

     - parameter id: (path) the id of the requested resource 
     - parameter fieldsScmRepositories: (query) the fields to include for returned resources of type scmRepositories (optional)
     - parameter fieldsScmProviders: (query) the fields to include for returned resources of type scmProviders (optional)
     - parameter fieldsScmGitReferences: (query) the fields to include for returned resources of type scmGitReferences (optional)
     - parameter include: (query) comma-separated list of relationships to include (optional)
     - returns: ScmRepositoryResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func ciWorkflowsRepositoryGetToOneRelated(id: String, fieldsScmRepositories: [FieldsScmRepositories_ciWorkflowsRepositoryGetToOneRelated]? = nil, fieldsScmProviders: [FieldsScmProviders_ciWorkflowsRepositoryGetToOneRelated]? = nil, fieldsScmGitReferences: [FieldsScmGitReferences_ciWorkflowsRepositoryGetToOneRelated]? = nil, include: [Include_ciWorkflowsRepositoryGetToOneRelated]? = nil) async throws -> ScmRepositoryResponse {
        return try await ciWorkflowsRepositoryGetToOneRelatedWithRequestBuilder(id: id, fieldsScmRepositories: fieldsScmRepositories, fieldsScmProviders: fieldsScmProviders, fieldsScmGitReferences: fieldsScmGitReferences, include: include).execute().body
    }

    /**
     - parameter urlString: next or first url from App Store Connect API
     - returns: ScmRepositoryResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func ciWorkflowsRepositoryGetToOneRelated(urlString: String) async throws -> ScmRepositoryResponse {
        return try await ciWorkflowsRepositoryGetToOneRelatedWithRequestBuilder(urlString: urlString).execute().body
    }

    /**
     - GET /v1/ciWorkflows/{id}/repository
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter id: (path) the id of the requested resource 
     - parameter fieldsScmRepositories: (query) the fields to include for returned resources of type scmRepositories (optional)
     - parameter fieldsScmProviders: (query) the fields to include for returned resources of type scmProviders (optional)
     - parameter fieldsScmGitReferences: (query) the fields to include for returned resources of type scmGitReferences (optional)
     - parameter include: (query) comma-separated list of relationships to include (optional)
     - returns: RequestBuilder<ScmRepositoryResponse> 
     */
    open class func ciWorkflowsRepositoryGetToOneRelatedWithRequestBuilder(id: String, fieldsScmRepositories: [FieldsScmRepositories_ciWorkflowsRepositoryGetToOneRelated]? = nil, fieldsScmProviders: [FieldsScmProviders_ciWorkflowsRepositoryGetToOneRelated]? = nil, fieldsScmGitReferences: [FieldsScmGitReferences_ciWorkflowsRepositoryGetToOneRelated]? = nil, include: [Include_ciWorkflowsRepositoryGetToOneRelated]? = nil) -> RequestBuilder<ScmRepositoryResponse> {
        var localVariablePath = "/v1/ciWorkflows/{id}/repository"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = ASCAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "fields[scmRepositories]": (wrappedValue: fieldsScmRepositories?.encodeToJSON(), isExplode: false),
            "fields[scmProviders]": (wrappedValue: fieldsScmProviders?.encodeToJSON(), isExplode: false),
            "fields[scmGitReferences]": (wrappedValue: fieldsScmGitReferences?.encodeToJSON(), isExplode: false),
            "include": (wrappedValue: include?.encodeToJSON(), isExplode: false),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ScmRepositoryResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     - GET /v1/ciWorkflows/{id}/repository
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter urlString: next or first url from App Store Connect API
     - returns: RequestBuilder<ScmRepositoryResponse> 
     */
    open class func ciWorkflowsRepositoryGetToOneRelatedWithRequestBuilder(urlString: String) -> RequestBuilder<ScmRepositoryResponse> {
        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ScmRepositoryResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: urlString, parameters: nil, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**

     - parameter id: (path) the id of the requested resource 
     - parameter ciWorkflowUpdateRequest: (body) CiWorkflow representation 
     - returns: CiWorkflowResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func ciWorkflowsUpdateInstance(id: String, ciWorkflowUpdateRequest: CiWorkflowUpdateRequest) async throws -> CiWorkflowResponse {
        return try await ciWorkflowsUpdateInstanceWithRequestBuilder(id: id, ciWorkflowUpdateRequest: ciWorkflowUpdateRequest).execute().body
    }

    /**
     - parameter urlString: next or first url from App Store Connect API
     - returns: CiWorkflowResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func ciWorkflowsUpdateInstance(urlString: String) async throws -> CiWorkflowResponse {
        return try await ciWorkflowsUpdateInstanceWithRequestBuilder(urlString: urlString).execute().body
    }

    /**
     - PATCH /v1/ciWorkflows/{id}
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter id: (path) the id of the requested resource 
     - parameter ciWorkflowUpdateRequest: (body) CiWorkflow representation 
     - returns: RequestBuilder<CiWorkflowResponse> 
     */
    open class func ciWorkflowsUpdateInstanceWithRequestBuilder(id: String, ciWorkflowUpdateRequest: CiWorkflowUpdateRequest) -> RequestBuilder<CiWorkflowResponse> {
        var localVariablePath = "/v1/ciWorkflows/{id}"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = ASCAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: ciWorkflowUpdateRequest)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            "Content-Type": "application/json",
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<CiWorkflowResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PATCH", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     - PATCH /v1/ciWorkflows/{id}
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter urlString: next or first url from App Store Connect API
     - returns: RequestBuilder<CiWorkflowResponse> 
     */
    open class func ciWorkflowsUpdateInstanceWithRequestBuilder(urlString: String) -> RequestBuilder<CiWorkflowResponse> {
        let localVariableNillableHeaders: [String: Any?] = [
            "Content-Type": "application/json",
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<CiWorkflowResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PATCH", URLString: urlString, parameters: nil, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }
}
