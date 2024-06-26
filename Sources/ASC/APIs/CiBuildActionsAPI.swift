//
// CiBuildActionsAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

open class CiBuildActionsAPI {

    /**
     * enum for parameter fieldsCiArtifacts
     */
    public enum FieldsCiArtifacts_ciBuildActionsArtifactsGetToManyRelated: String, CaseIterable {
        case downloadurl = "downloadUrl"
        case filename = "fileName"
        case filesize = "fileSize"
        case filetype = "fileType"
    }

    /**

     - parameter id: (path) the id of the requested resource 
     - parameter fieldsCiArtifacts: (query) the fields to include for returned resources of type ciArtifacts (optional)
     - parameter limit: (query) maximum resources per page (optional)
     - returns: CiArtifactsResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func ciBuildActionsArtifactsGetToManyRelated(id: String, fieldsCiArtifacts: [FieldsCiArtifacts_ciBuildActionsArtifactsGetToManyRelated]? = nil, limit: Int? = nil) async throws -> CiArtifactsResponse {
        return try await ciBuildActionsArtifactsGetToManyRelatedWithRequestBuilder(id: id, fieldsCiArtifacts: fieldsCiArtifacts, limit: limit).execute().body
    }

    /**
     - parameter urlString: next or first url from App Store Connect API
     - returns: CiArtifactsResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func ciBuildActionsArtifactsGetToManyRelated(urlString: String) async throws -> CiArtifactsResponse {
        return try await ciBuildActionsArtifactsGetToManyRelatedWithRequestBuilder(urlString: urlString).execute().body
    }

    /**
     - GET /v1/ciBuildActions/{id}/artifacts
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter id: (path) the id of the requested resource 
     - parameter fieldsCiArtifacts: (query) the fields to include for returned resources of type ciArtifacts (optional)
     - parameter limit: (query) maximum resources per page (optional)
     - returns: RequestBuilder<CiArtifactsResponse> 
     */
    open class func ciBuildActionsArtifactsGetToManyRelatedWithRequestBuilder(id: String, fieldsCiArtifacts: [FieldsCiArtifacts_ciBuildActionsArtifactsGetToManyRelated]? = nil, limit: Int? = nil) -> RequestBuilder<CiArtifactsResponse> {
        var localVariablePath = "/v1/ciBuildActions/{id}/artifacts"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = ASCAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "fields[ciArtifacts]": (wrappedValue: fieldsCiArtifacts?.encodeToJSON(), isExplode: false),
            "limit": (wrappedValue: limit?.encodeToJSON(), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<CiArtifactsResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     - GET /v1/ciBuildActions/{id}/artifacts
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter urlString: next or first url from App Store Connect API
     - returns: RequestBuilder<CiArtifactsResponse> 
     */
    open class func ciBuildActionsArtifactsGetToManyRelatedWithRequestBuilder(urlString: String) -> RequestBuilder<CiArtifactsResponse> {
        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<CiArtifactsResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: urlString, parameters: nil, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     * enum for parameter fieldsScmGitReferences
     */
    public enum FieldsScmGitReferences_ciBuildActionsBuildRunGetToOneRelated: String, CaseIterable {
        case canonicalname = "canonicalName"
        case isdeleted = "isDeleted"
        case kind = "kind"
        case name = "name"
        case repository = "repository"
    }

    /**
     * enum for parameter fieldsCiBuildRuns
     */
    public enum FieldsCiBuildRuns_ciBuildActionsBuildRunGetToOneRelated: String, CaseIterable {
        case actions = "actions"
        case buildrun = "buildRun"
        case builds = "builds"
        case cancelreason = "cancelReason"
        case clean = "clean"
        case completionstatus = "completionStatus"
        case createddate = "createdDate"
        case destinationbranch = "destinationBranch"
        case destinationcommit = "destinationCommit"
        case executionprogress = "executionProgress"
        case finisheddate = "finishedDate"
        case ispullrequestbuild = "isPullRequestBuild"
        case issuecounts = "issueCounts"
        case number = "number"
        case product = "product"
        case pullrequest = "pullRequest"
        case sourcebranchortag = "sourceBranchOrTag"
        case sourcecommit = "sourceCommit"
        case startreason = "startReason"
        case starteddate = "startedDate"
        case workflow = "workflow"
    }

    /**
     * enum for parameter fieldsCiWorkflows
     */
    public enum FieldsCiWorkflows_ciBuildActionsBuildRunGetToOneRelated: String, CaseIterable {
        case actions = "actions"
        case branchstartcondition = "branchStartCondition"
        case buildruns = "buildRuns"
        case clean = "clean"
        case containerfilepath = "containerFilePath"
        case description = "description"
        case isenabled = "isEnabled"
        case islockedforediting = "isLockedForEditing"
        case lastmodifieddate = "lastModifiedDate"
        case macosversion = "macOsVersion"
        case manualbranchstartcondition = "manualBranchStartCondition"
        case manualpullrequeststartcondition = "manualPullRequestStartCondition"
        case manualtagstartcondition = "manualTagStartCondition"
        case name = "name"
        case product = "product"
        case pullrequeststartcondition = "pullRequestStartCondition"
        case repository = "repository"
        case scheduledstartcondition = "scheduledStartCondition"
        case tagstartcondition = "tagStartCondition"
        case xcodeversion = "xcodeVersion"
    }

    /**
     * enum for parameter fieldsScmPullRequests
     */
    public enum FieldsScmPullRequests_ciBuildActionsBuildRunGetToOneRelated: String, CaseIterable {
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
     * enum for parameter fieldsCiProducts
     */
    public enum FieldsCiProducts_ciBuildActionsBuildRunGetToOneRelated: String, CaseIterable {
        case additionalrepositories = "additionalRepositories"
        case app = "app"
        case buildruns = "buildRuns"
        case bundleid = "bundleId"
        case createddate = "createdDate"
        case name = "name"
        case primaryrepositories = "primaryRepositories"
        case producttype = "productType"
        case workflows = "workflows"
    }

    /**
     * enum for parameter fieldsBuilds
     */
    public enum FieldsBuilds_ciBuildActionsBuildRunGetToOneRelated: String, CaseIterable {
        case app = "app"
        case appencryptiondeclaration = "appEncryptionDeclaration"
        case appstoreversion = "appStoreVersion"
        case betaappreviewsubmission = "betaAppReviewSubmission"
        case betabuildlocalizations = "betaBuildLocalizations"
        case betagroups = "betaGroups"
        case buildaudiencetype = "buildAudienceType"
        case buildbetadetail = "buildBetaDetail"
        case buildbundles = "buildBundles"
        case computedminmacosversion = "computedMinMacOsVersion"
        case diagnosticsignatures = "diagnosticSignatures"
        case expirationdate = "expirationDate"
        case expired = "expired"
        case iconassettoken = "iconAssetToken"
        case icons = "icons"
        case individualtesters = "individualTesters"
        case lsminimumsystemversion = "lsMinimumSystemVersion"
        case minosversion = "minOsVersion"
        case perfpowermetrics = "perfPowerMetrics"
        case prereleaseversion = "preReleaseVersion"
        case processingstate = "processingState"
        case uploadeddate = "uploadedDate"
        case usesnonexemptencryption = "usesNonExemptEncryption"
        case version = "version"
    }

    /**
     * enum for parameter include
     */
    public enum Include_ciBuildActionsBuildRunGetToOneRelated: String, CaseIterable {
        case builds = "builds"
        case destinationbranch = "destinationBranch"
        case product = "product"
        case pullrequest = "pullRequest"
        case sourcebranchortag = "sourceBranchOrTag"
        case workflow = "workflow"
    }

    /**

     - parameter id: (path) the id of the requested resource 
     - parameter fieldsScmGitReferences: (query) the fields to include for returned resources of type scmGitReferences (optional)
     - parameter fieldsCiBuildRuns: (query) the fields to include for returned resources of type ciBuildRuns (optional)
     - parameter fieldsCiWorkflows: (query) the fields to include for returned resources of type ciWorkflows (optional)
     - parameter fieldsScmPullRequests: (query) the fields to include for returned resources of type scmPullRequests (optional)
     - parameter fieldsCiProducts: (query) the fields to include for returned resources of type ciProducts (optional)
     - parameter fieldsBuilds: (query) the fields to include for returned resources of type builds (optional)
     - parameter limitBuilds: (query) maximum number of related builds returned (when they are included) (optional)
     - parameter include: (query) comma-separated list of relationships to include (optional)
     - returns: CiBuildRunResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func ciBuildActionsBuildRunGetToOneRelated(id: String, fieldsScmGitReferences: [FieldsScmGitReferences_ciBuildActionsBuildRunGetToOneRelated]? = nil, fieldsCiBuildRuns: [FieldsCiBuildRuns_ciBuildActionsBuildRunGetToOneRelated]? = nil, fieldsCiWorkflows: [FieldsCiWorkflows_ciBuildActionsBuildRunGetToOneRelated]? = nil, fieldsScmPullRequests: [FieldsScmPullRequests_ciBuildActionsBuildRunGetToOneRelated]? = nil, fieldsCiProducts: [FieldsCiProducts_ciBuildActionsBuildRunGetToOneRelated]? = nil, fieldsBuilds: [FieldsBuilds_ciBuildActionsBuildRunGetToOneRelated]? = nil, limitBuilds: Int? = nil, include: [Include_ciBuildActionsBuildRunGetToOneRelated]? = nil) async throws -> CiBuildRunResponse {
        return try await ciBuildActionsBuildRunGetToOneRelatedWithRequestBuilder(id: id, fieldsScmGitReferences: fieldsScmGitReferences, fieldsCiBuildRuns: fieldsCiBuildRuns, fieldsCiWorkflows: fieldsCiWorkflows, fieldsScmPullRequests: fieldsScmPullRequests, fieldsCiProducts: fieldsCiProducts, fieldsBuilds: fieldsBuilds, limitBuilds: limitBuilds, include: include).execute().body
    }

    /**
     - parameter urlString: next or first url from App Store Connect API
     - returns: CiBuildRunResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func ciBuildActionsBuildRunGetToOneRelated(urlString: String) async throws -> CiBuildRunResponse {
        return try await ciBuildActionsBuildRunGetToOneRelatedWithRequestBuilder(urlString: urlString).execute().body
    }

    /**
     - GET /v1/ciBuildActions/{id}/buildRun
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter id: (path) the id of the requested resource 
     - parameter fieldsScmGitReferences: (query) the fields to include for returned resources of type scmGitReferences (optional)
     - parameter fieldsCiBuildRuns: (query) the fields to include for returned resources of type ciBuildRuns (optional)
     - parameter fieldsCiWorkflows: (query) the fields to include for returned resources of type ciWorkflows (optional)
     - parameter fieldsScmPullRequests: (query) the fields to include for returned resources of type scmPullRequests (optional)
     - parameter fieldsCiProducts: (query) the fields to include for returned resources of type ciProducts (optional)
     - parameter fieldsBuilds: (query) the fields to include for returned resources of type builds (optional)
     - parameter limitBuilds: (query) maximum number of related builds returned (when they are included) (optional)
     - parameter include: (query) comma-separated list of relationships to include (optional)
     - returns: RequestBuilder<CiBuildRunResponse> 
     */
    open class func ciBuildActionsBuildRunGetToOneRelatedWithRequestBuilder(id: String, fieldsScmGitReferences: [FieldsScmGitReferences_ciBuildActionsBuildRunGetToOneRelated]? = nil, fieldsCiBuildRuns: [FieldsCiBuildRuns_ciBuildActionsBuildRunGetToOneRelated]? = nil, fieldsCiWorkflows: [FieldsCiWorkflows_ciBuildActionsBuildRunGetToOneRelated]? = nil, fieldsScmPullRequests: [FieldsScmPullRequests_ciBuildActionsBuildRunGetToOneRelated]? = nil, fieldsCiProducts: [FieldsCiProducts_ciBuildActionsBuildRunGetToOneRelated]? = nil, fieldsBuilds: [FieldsBuilds_ciBuildActionsBuildRunGetToOneRelated]? = nil, limitBuilds: Int? = nil, include: [Include_ciBuildActionsBuildRunGetToOneRelated]? = nil) -> RequestBuilder<CiBuildRunResponse> {
        var localVariablePath = "/v1/ciBuildActions/{id}/buildRun"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = ASCAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "fields[scmGitReferences]": (wrappedValue: fieldsScmGitReferences?.encodeToJSON(), isExplode: false),
            "fields[ciBuildRuns]": (wrappedValue: fieldsCiBuildRuns?.encodeToJSON(), isExplode: false),
            "fields[ciWorkflows]": (wrappedValue: fieldsCiWorkflows?.encodeToJSON(), isExplode: false),
            "fields[scmPullRequests]": (wrappedValue: fieldsScmPullRequests?.encodeToJSON(), isExplode: false),
            "fields[ciProducts]": (wrappedValue: fieldsCiProducts?.encodeToJSON(), isExplode: false),
            "fields[builds]": (wrappedValue: fieldsBuilds?.encodeToJSON(), isExplode: false),
            "limit[builds]": (wrappedValue: limitBuilds?.encodeToJSON(), isExplode: true),
            "include": (wrappedValue: include?.encodeToJSON(), isExplode: false),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<CiBuildRunResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     - GET /v1/ciBuildActions/{id}/buildRun
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter urlString: next or first url from App Store Connect API
     - returns: RequestBuilder<CiBuildRunResponse> 
     */
    open class func ciBuildActionsBuildRunGetToOneRelatedWithRequestBuilder(urlString: String) -> RequestBuilder<CiBuildRunResponse> {
        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<CiBuildRunResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: urlString, parameters: nil, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     * enum for parameter fieldsCiBuildActions
     */
    public enum FieldsCiBuildActions_ciBuildActionsGetInstance: String, CaseIterable {
        case actiontype = "actionType"
        case artifacts = "artifacts"
        case buildrun = "buildRun"
        case completionstatus = "completionStatus"
        case executionprogress = "executionProgress"
        case finisheddate = "finishedDate"
        case isrequiredtopass = "isRequiredToPass"
        case issuecounts = "issueCounts"
        case issues = "issues"
        case name = "name"
        case starteddate = "startedDate"
        case testresults = "testResults"
    }

    /**
     * enum for parameter include
     */
    public enum Include_ciBuildActionsGetInstance: String, CaseIterable {
        case buildrun = "buildRun"
    }

    /**
     * enum for parameter fieldsCiIssues
     */
    public enum FieldsCiIssues_ciBuildActionsGetInstance: String, CaseIterable {
        case category = "category"
        case filesource = "fileSource"
        case issuetype = "issueType"
        case message = "message"
    }

    /**
     * enum for parameter fieldsCiBuildRuns
     */
    public enum FieldsCiBuildRuns_ciBuildActionsGetInstance: String, CaseIterable {
        case actions = "actions"
        case buildrun = "buildRun"
        case builds = "builds"
        case cancelreason = "cancelReason"
        case clean = "clean"
        case completionstatus = "completionStatus"
        case createddate = "createdDate"
        case destinationbranch = "destinationBranch"
        case destinationcommit = "destinationCommit"
        case executionprogress = "executionProgress"
        case finisheddate = "finishedDate"
        case ispullrequestbuild = "isPullRequestBuild"
        case issuecounts = "issueCounts"
        case number = "number"
        case product = "product"
        case pullrequest = "pullRequest"
        case sourcebranchortag = "sourceBranchOrTag"
        case sourcecommit = "sourceCommit"
        case startreason = "startReason"
        case starteddate = "startedDate"
        case workflow = "workflow"
    }

    /**
     * enum for parameter fieldsCiTestResults
     */
    public enum FieldsCiTestResults_ciBuildActionsGetInstance: String, CaseIterable {
        case classname = "className"
        case destinationtestresults = "destinationTestResults"
        case filesource = "fileSource"
        case message = "message"
        case name = "name"
        case status = "status"
    }

    /**
     * enum for parameter fieldsCiArtifacts
     */
    public enum FieldsCiArtifacts_ciBuildActionsGetInstance: String, CaseIterable {
        case downloadurl = "downloadUrl"
        case filename = "fileName"
        case filesize = "fileSize"
        case filetype = "fileType"
    }

    /**

     - parameter id: (path) the id of the requested resource 
     - parameter fieldsCiBuildActions: (query) the fields to include for returned resources of type ciBuildActions (optional)
     - parameter include: (query) comma-separated list of relationships to include (optional)
     - parameter fieldsCiIssues: (query) the fields to include for returned resources of type ciIssues (optional)
     - parameter fieldsCiBuildRuns: (query) the fields to include for returned resources of type ciBuildRuns (optional)
     - parameter fieldsCiTestResults: (query) the fields to include for returned resources of type ciTestResults (optional)
     - parameter fieldsCiArtifacts: (query) the fields to include for returned resources of type ciArtifacts (optional)
     - returns: CiBuildActionResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func ciBuildActionsGetInstance(id: String, fieldsCiBuildActions: [FieldsCiBuildActions_ciBuildActionsGetInstance]? = nil, include: [Include_ciBuildActionsGetInstance]? = nil, fieldsCiIssues: [FieldsCiIssues_ciBuildActionsGetInstance]? = nil, fieldsCiBuildRuns: [FieldsCiBuildRuns_ciBuildActionsGetInstance]? = nil, fieldsCiTestResults: [FieldsCiTestResults_ciBuildActionsGetInstance]? = nil, fieldsCiArtifacts: [FieldsCiArtifacts_ciBuildActionsGetInstance]? = nil) async throws -> CiBuildActionResponse {
        return try await ciBuildActionsGetInstanceWithRequestBuilder(id: id, fieldsCiBuildActions: fieldsCiBuildActions, include: include, fieldsCiIssues: fieldsCiIssues, fieldsCiBuildRuns: fieldsCiBuildRuns, fieldsCiTestResults: fieldsCiTestResults, fieldsCiArtifacts: fieldsCiArtifacts).execute().body
    }

    /**
     - parameter urlString: next or first url from App Store Connect API
     - returns: CiBuildActionResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func ciBuildActionsGetInstance(urlString: String) async throws -> CiBuildActionResponse {
        return try await ciBuildActionsGetInstanceWithRequestBuilder(urlString: urlString).execute().body
    }

    /**
     - GET /v1/ciBuildActions/{id}
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter id: (path) the id of the requested resource 
     - parameter fieldsCiBuildActions: (query) the fields to include for returned resources of type ciBuildActions (optional)
     - parameter include: (query) comma-separated list of relationships to include (optional)
     - parameter fieldsCiIssues: (query) the fields to include for returned resources of type ciIssues (optional)
     - parameter fieldsCiBuildRuns: (query) the fields to include for returned resources of type ciBuildRuns (optional)
     - parameter fieldsCiTestResults: (query) the fields to include for returned resources of type ciTestResults (optional)
     - parameter fieldsCiArtifacts: (query) the fields to include for returned resources of type ciArtifacts (optional)
     - returns: RequestBuilder<CiBuildActionResponse> 
     */
    open class func ciBuildActionsGetInstanceWithRequestBuilder(id: String, fieldsCiBuildActions: [FieldsCiBuildActions_ciBuildActionsGetInstance]? = nil, include: [Include_ciBuildActionsGetInstance]? = nil, fieldsCiIssues: [FieldsCiIssues_ciBuildActionsGetInstance]? = nil, fieldsCiBuildRuns: [FieldsCiBuildRuns_ciBuildActionsGetInstance]? = nil, fieldsCiTestResults: [FieldsCiTestResults_ciBuildActionsGetInstance]? = nil, fieldsCiArtifacts: [FieldsCiArtifacts_ciBuildActionsGetInstance]? = nil) -> RequestBuilder<CiBuildActionResponse> {
        var localVariablePath = "/v1/ciBuildActions/{id}"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = ASCAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "fields[ciBuildActions]": (wrappedValue: fieldsCiBuildActions?.encodeToJSON(), isExplode: false),
            "include": (wrappedValue: include?.encodeToJSON(), isExplode: false),
            "fields[ciIssues]": (wrappedValue: fieldsCiIssues?.encodeToJSON(), isExplode: false),
            "fields[ciBuildRuns]": (wrappedValue: fieldsCiBuildRuns?.encodeToJSON(), isExplode: false),
            "fields[ciTestResults]": (wrappedValue: fieldsCiTestResults?.encodeToJSON(), isExplode: false),
            "fields[ciArtifacts]": (wrappedValue: fieldsCiArtifacts?.encodeToJSON(), isExplode: false),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<CiBuildActionResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     - GET /v1/ciBuildActions/{id}
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter urlString: next or first url from App Store Connect API
     - returns: RequestBuilder<CiBuildActionResponse> 
     */
    open class func ciBuildActionsGetInstanceWithRequestBuilder(urlString: String) -> RequestBuilder<CiBuildActionResponse> {
        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<CiBuildActionResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: urlString, parameters: nil, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     * enum for parameter fieldsCiIssues
     */
    public enum FieldsCiIssues_ciBuildActionsIssuesGetToManyRelated: String, CaseIterable {
        case category = "category"
        case filesource = "fileSource"
        case issuetype = "issueType"
        case message = "message"
    }

    /**

     - parameter id: (path) the id of the requested resource 
     - parameter fieldsCiIssues: (query) the fields to include for returned resources of type ciIssues (optional)
     - parameter limit: (query) maximum resources per page (optional)
     - returns: CiIssuesResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func ciBuildActionsIssuesGetToManyRelated(id: String, fieldsCiIssues: [FieldsCiIssues_ciBuildActionsIssuesGetToManyRelated]? = nil, limit: Int? = nil) async throws -> CiIssuesResponse {
        return try await ciBuildActionsIssuesGetToManyRelatedWithRequestBuilder(id: id, fieldsCiIssues: fieldsCiIssues, limit: limit).execute().body
    }

    /**
     - parameter urlString: next or first url from App Store Connect API
     - returns: CiIssuesResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func ciBuildActionsIssuesGetToManyRelated(urlString: String) async throws -> CiIssuesResponse {
        return try await ciBuildActionsIssuesGetToManyRelatedWithRequestBuilder(urlString: urlString).execute().body
    }

    /**
     - GET /v1/ciBuildActions/{id}/issues
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter id: (path) the id of the requested resource 
     - parameter fieldsCiIssues: (query) the fields to include for returned resources of type ciIssues (optional)
     - parameter limit: (query) maximum resources per page (optional)
     - returns: RequestBuilder<CiIssuesResponse> 
     */
    open class func ciBuildActionsIssuesGetToManyRelatedWithRequestBuilder(id: String, fieldsCiIssues: [FieldsCiIssues_ciBuildActionsIssuesGetToManyRelated]? = nil, limit: Int? = nil) -> RequestBuilder<CiIssuesResponse> {
        var localVariablePath = "/v1/ciBuildActions/{id}/issues"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = ASCAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "fields[ciIssues]": (wrappedValue: fieldsCiIssues?.encodeToJSON(), isExplode: false),
            "limit": (wrappedValue: limit?.encodeToJSON(), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<CiIssuesResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     - GET /v1/ciBuildActions/{id}/issues
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter urlString: next or first url from App Store Connect API
     - returns: RequestBuilder<CiIssuesResponse> 
     */
    open class func ciBuildActionsIssuesGetToManyRelatedWithRequestBuilder(urlString: String) -> RequestBuilder<CiIssuesResponse> {
        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<CiIssuesResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: urlString, parameters: nil, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     * enum for parameter fieldsCiTestResults
     */
    public enum FieldsCiTestResults_ciBuildActionsTestResultsGetToManyRelated: String, CaseIterable {
        case classname = "className"
        case destinationtestresults = "destinationTestResults"
        case filesource = "fileSource"
        case message = "message"
        case name = "name"
        case status = "status"
    }

    /**

     - parameter id: (path) the id of the requested resource 
     - parameter fieldsCiTestResults: (query) the fields to include for returned resources of type ciTestResults (optional)
     - parameter limit: (query) maximum resources per page (optional)
     - returns: CiTestResultsResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func ciBuildActionsTestResultsGetToManyRelated(id: String, fieldsCiTestResults: [FieldsCiTestResults_ciBuildActionsTestResultsGetToManyRelated]? = nil, limit: Int? = nil) async throws -> CiTestResultsResponse {
        return try await ciBuildActionsTestResultsGetToManyRelatedWithRequestBuilder(id: id, fieldsCiTestResults: fieldsCiTestResults, limit: limit).execute().body
    }

    /**
     - parameter urlString: next or first url from App Store Connect API
     - returns: CiTestResultsResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func ciBuildActionsTestResultsGetToManyRelated(urlString: String) async throws -> CiTestResultsResponse {
        return try await ciBuildActionsTestResultsGetToManyRelatedWithRequestBuilder(urlString: urlString).execute().body
    }

    /**
     - GET /v1/ciBuildActions/{id}/testResults
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter id: (path) the id of the requested resource 
     - parameter fieldsCiTestResults: (query) the fields to include for returned resources of type ciTestResults (optional)
     - parameter limit: (query) maximum resources per page (optional)
     - returns: RequestBuilder<CiTestResultsResponse> 
     */
    open class func ciBuildActionsTestResultsGetToManyRelatedWithRequestBuilder(id: String, fieldsCiTestResults: [FieldsCiTestResults_ciBuildActionsTestResultsGetToManyRelated]? = nil, limit: Int? = nil) -> RequestBuilder<CiTestResultsResponse> {
        var localVariablePath = "/v1/ciBuildActions/{id}/testResults"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = ASCAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "fields[ciTestResults]": (wrappedValue: fieldsCiTestResults?.encodeToJSON(), isExplode: false),
            "limit": (wrappedValue: limit?.encodeToJSON(), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<CiTestResultsResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     - GET /v1/ciBuildActions/{id}/testResults
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter urlString: next or first url from App Store Connect API
     - returns: RequestBuilder<CiTestResultsResponse> 
     */
    open class func ciBuildActionsTestResultsGetToManyRelatedWithRequestBuilder(urlString: String) -> RequestBuilder<CiTestResultsResponse> {
        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<CiTestResultsResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: urlString, parameters: nil, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }
}
