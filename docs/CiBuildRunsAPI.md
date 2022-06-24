# CiBuildRunsAPI

All URIs are relative to *https://api.appstoreconnect.apple.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**ciBuildRunsActionsGetToManyRelated**](CiBuildRunsAPI.md#cibuildrunsactionsgettomanyrelated) | **GET** /v1/ciBuildRuns/{id}/actions | 
[**ciBuildRunsBuildsGetToManyRelated**](CiBuildRunsAPI.md#cibuildrunsbuildsgettomanyrelated) | **GET** /v1/ciBuildRuns/{id}/builds | 
[**ciBuildRunsCreateInstance**](CiBuildRunsAPI.md#cibuildrunscreateinstance) | **POST** /v1/ciBuildRuns | 
[**ciBuildRunsGetInstance**](CiBuildRunsAPI.md#cibuildrunsgetinstance) | **GET** /v1/ciBuildRuns/{id} | 


# **ciBuildRunsActionsGetToManyRelated**
```swift
    open class func ciBuildRunsActionsGetToManyRelated(id: String, fieldsCiBuildRuns: [FieldsCiBuildRuns_ciBuildRunsActionsGetToManyRelated]? = nil, fieldsCiBuildActions: [FieldsCiBuildActions_ciBuildRunsActionsGetToManyRelated]? = nil, limit: Int? = nil, include: [Include_ciBuildRunsActionsGetToManyRelated]? = nil, completion: @escaping (_ data: CiBuildActionsResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let fieldsCiBuildRuns = ["fieldsCiBuildRuns_example"] // [String] | the fields to include for returned resources of type ciBuildRuns (optional)
let fieldsCiBuildActions = ["fieldsCiBuildActions_example"] // [String] | the fields to include for returned resources of type ciBuildActions (optional)
let limit = 987 // Int | maximum resources per page (optional)
let include = ["include_example"] // [String] | comma-separated list of relationships to include (optional)

CiBuildRunsAPI.ciBuildRunsActionsGetToManyRelated(id: id, fieldsCiBuildRuns: fieldsCiBuildRuns, fieldsCiBuildActions: fieldsCiBuildActions, limit: limit, include: include) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String** | the id of the requested resource | 
 **fieldsCiBuildRuns** | [**[String]**](String.md) | the fields to include for returned resources of type ciBuildRuns | [optional] 
 **fieldsCiBuildActions** | [**[String]**](String.md) | the fields to include for returned resources of type ciBuildActions | [optional] 
 **limit** | **Int** | maximum resources per page | [optional] 
 **include** | [**[String]**](String.md) | comma-separated list of relationships to include | [optional] 

### Return type

[**CiBuildActionsResponse**](CiBuildActionsResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ciBuildRunsBuildsGetToManyRelated**
```swift
    open class func ciBuildRunsBuildsGetToManyRelated(id: String, filterBetaAppReviewSubmissionBetaReviewState: [FilterBetaAppReviewSubmissionBetaReviewState_ciBuildRunsBuildsGetToManyRelated]? = nil, filterBuildAudienceType: [FilterBuildAudienceType_ciBuildRunsBuildsGetToManyRelated]? = nil, filterExpired: [String]? = nil, filterPreReleaseVersionPlatform: [FilterPreReleaseVersionPlatform_ciBuildRunsBuildsGetToManyRelated]? = nil, filterPreReleaseVersionVersion: [String]? = nil, filterProcessingState: [FilterProcessingState_ciBuildRunsBuildsGetToManyRelated]? = nil, filterUsesNonExemptEncryption: [String]? = nil, filterVersion: [String]? = nil, filterApp: [String]? = nil, filterAppStoreVersion: [String]? = nil, filterBetaGroups: [String]? = nil, filterPreReleaseVersion: [String]? = nil, filterId: [String]? = nil, sort: [Sort_ciBuildRunsBuildsGetToManyRelated]? = nil, fieldsBuildBundles: [FieldsBuildBundles_ciBuildRunsBuildsGetToManyRelated]? = nil, fieldsBuildIcons: [FieldsBuildIcons_ciBuildRunsBuildsGetToManyRelated]? = nil, fieldsBetaAppReviewSubmissions: [FieldsBetaAppReviewSubmissions_ciBuildRunsBuildsGetToManyRelated]? = nil, fieldsBuildBetaDetails: [FieldsBuildBetaDetails_ciBuildRunsBuildsGetToManyRelated]? = nil, fieldsBetaTesters: [FieldsBetaTesters_ciBuildRunsBuildsGetToManyRelated]? = nil, fieldsPreReleaseVersions: [FieldsPreReleaseVersions_ciBuildRunsBuildsGetToManyRelated]? = nil, fieldsBetaBuildLocalizations: [FieldsBetaBuildLocalizations_ciBuildRunsBuildsGetToManyRelated]? = nil, fieldsAppStoreVersions: [FieldsAppStoreVersions_ciBuildRunsBuildsGetToManyRelated]? = nil, fieldsAppEncryptionDeclarations: [FieldsAppEncryptionDeclarations_ciBuildRunsBuildsGetToManyRelated]? = nil, fieldsApps: [FieldsApps_ciBuildRunsBuildsGetToManyRelated]? = nil, fieldsBuilds: [FieldsBuilds_ciBuildRunsBuildsGetToManyRelated]? = nil, fieldsBetaGroups: [FieldsBetaGroups_ciBuildRunsBuildsGetToManyRelated]? = nil, limit: Int? = nil, limitIndividualTesters: Int? = nil, limitBetaGroups: Int? = nil, limitBetaBuildLocalizations: Int? = nil, limitIcons: Int? = nil, limitBuildBundles: Int? = nil, include: [Include_ciBuildRunsBuildsGetToManyRelated]? = nil, completion: @escaping (_ data: BuildsResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let filterBetaAppReviewSubmissionBetaReviewState = ["filterBetaAppReviewSubmissionBetaReviewState_example"] // [String] | filter by attribute 'betaAppReviewSubmission.betaReviewState' (optional)
let filterBuildAudienceType = ["filterBuildAudienceType_example"] // [String] | filter by attribute 'buildAudienceType' (optional)
let filterExpired = ["inner_example"] // [String] | filter by attribute 'expired' (optional)
let filterPreReleaseVersionPlatform = ["filterPreReleaseVersionPlatform_example"] // [String] | filter by attribute 'preReleaseVersion.platform' (optional)
let filterPreReleaseVersionVersion = ["inner_example"] // [String] | filter by attribute 'preReleaseVersion.version' (optional)
let filterProcessingState = ["filterProcessingState_example"] // [String] | filter by attribute 'processingState' (optional)
let filterUsesNonExemptEncryption = ["inner_example"] // [String] | filter by attribute 'usesNonExemptEncryption' (optional)
let filterVersion = ["inner_example"] // [String] | filter by attribute 'version' (optional)
let filterApp = ["inner_example"] // [String] | filter by id(s) of related 'app' (optional)
let filterAppStoreVersion = ["inner_example"] // [String] | filter by id(s) of related 'appStoreVersion' (optional)
let filterBetaGroups = ["inner_example"] // [String] | filter by id(s) of related 'betaGroups' (optional)
let filterPreReleaseVersion = ["inner_example"] // [String] | filter by id(s) of related 'preReleaseVersion' (optional)
let filterId = ["inner_example"] // [String] | filter by id(s) (optional)
let sort = ["sort_example"] // [String] | comma-separated list of sort expressions; resources will be sorted as specified (optional)
let fieldsBuildBundles = ["fieldsBuildBundles_example"] // [String] | the fields to include for returned resources of type buildBundles (optional)
let fieldsBuildIcons = ["fieldsBuildIcons_example"] // [String] | the fields to include for returned resources of type buildIcons (optional)
let fieldsBetaAppReviewSubmissions = ["fieldsBetaAppReviewSubmissions_example"] // [String] | the fields to include for returned resources of type betaAppReviewSubmissions (optional)
let fieldsBuildBetaDetails = ["fieldsBuildBetaDetails_example"] // [String] | the fields to include for returned resources of type buildBetaDetails (optional)
let fieldsBetaTesters = ["fieldsBetaTesters_example"] // [String] | the fields to include for returned resources of type betaTesters (optional)
let fieldsPreReleaseVersions = ["fieldsPreReleaseVersions_example"] // [String] | the fields to include for returned resources of type preReleaseVersions (optional)
let fieldsBetaBuildLocalizations = ["fieldsBetaBuildLocalizations_example"] // [String] | the fields to include for returned resources of type betaBuildLocalizations (optional)
let fieldsAppStoreVersions = ["fieldsAppStoreVersions_example"] // [String] | the fields to include for returned resources of type appStoreVersions (optional)
let fieldsAppEncryptionDeclarations = ["fieldsAppEncryptionDeclarations_example"] // [String] | the fields to include for returned resources of type appEncryptionDeclarations (optional)
let fieldsApps = ["fieldsApps_example"] // [String] | the fields to include for returned resources of type apps (optional)
let fieldsBuilds = ["fieldsBuilds_example"] // [String] | the fields to include for returned resources of type builds (optional)
let fieldsBetaGroups = ["fieldsBetaGroups_example"] // [String] | the fields to include for returned resources of type betaGroups (optional)
let limit = 987 // Int | maximum resources per page (optional)
let limitIndividualTesters = 987 // Int | maximum number of related individualTesters returned (when they are included) (optional)
let limitBetaGroups = 987 // Int | maximum number of related betaGroups returned (when they are included) (optional)
let limitBetaBuildLocalizations = 987 // Int | maximum number of related betaBuildLocalizations returned (when they are included) (optional)
let limitIcons = 987 // Int | maximum number of related icons returned (when they are included) (optional)
let limitBuildBundles = 987 // Int | maximum number of related buildBundles returned (when they are included) (optional)
let include = ["include_example"] // [String] | comma-separated list of relationships to include (optional)

CiBuildRunsAPI.ciBuildRunsBuildsGetToManyRelated(id: id, filterBetaAppReviewSubmissionBetaReviewState: filterBetaAppReviewSubmissionBetaReviewState, filterBuildAudienceType: filterBuildAudienceType, filterExpired: filterExpired, filterPreReleaseVersionPlatform: filterPreReleaseVersionPlatform, filterPreReleaseVersionVersion: filterPreReleaseVersionVersion, filterProcessingState: filterProcessingState, filterUsesNonExemptEncryption: filterUsesNonExemptEncryption, filterVersion: filterVersion, filterApp: filterApp, filterAppStoreVersion: filterAppStoreVersion, filterBetaGroups: filterBetaGroups, filterPreReleaseVersion: filterPreReleaseVersion, filterId: filterId, sort: sort, fieldsBuildBundles: fieldsBuildBundles, fieldsBuildIcons: fieldsBuildIcons, fieldsBetaAppReviewSubmissions: fieldsBetaAppReviewSubmissions, fieldsBuildBetaDetails: fieldsBuildBetaDetails, fieldsBetaTesters: fieldsBetaTesters, fieldsPreReleaseVersions: fieldsPreReleaseVersions, fieldsBetaBuildLocalizations: fieldsBetaBuildLocalizations, fieldsAppStoreVersions: fieldsAppStoreVersions, fieldsAppEncryptionDeclarations: fieldsAppEncryptionDeclarations, fieldsApps: fieldsApps, fieldsBuilds: fieldsBuilds, fieldsBetaGroups: fieldsBetaGroups, limit: limit, limitIndividualTesters: limitIndividualTesters, limitBetaGroups: limitBetaGroups, limitBetaBuildLocalizations: limitBetaBuildLocalizations, limitIcons: limitIcons, limitBuildBundles: limitBuildBundles, include: include) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String** | the id of the requested resource | 
 **filterBetaAppReviewSubmissionBetaReviewState** | [**[String]**](String.md) | filter by attribute &#39;betaAppReviewSubmission.betaReviewState&#39; | [optional] 
 **filterBuildAudienceType** | [**[String]**](String.md) | filter by attribute &#39;buildAudienceType&#39; | [optional] 
 **filterExpired** | [**[String]**](String.md) | filter by attribute &#39;expired&#39; | [optional] 
 **filterPreReleaseVersionPlatform** | [**[String]**](String.md) | filter by attribute &#39;preReleaseVersion.platform&#39; | [optional] 
 **filterPreReleaseVersionVersion** | [**[String]**](String.md) | filter by attribute &#39;preReleaseVersion.version&#39; | [optional] 
 **filterProcessingState** | [**[String]**](String.md) | filter by attribute &#39;processingState&#39; | [optional] 
 **filterUsesNonExemptEncryption** | [**[String]**](String.md) | filter by attribute &#39;usesNonExemptEncryption&#39; | [optional] 
 **filterVersion** | [**[String]**](String.md) | filter by attribute &#39;version&#39; | [optional] 
 **filterApp** | [**[String]**](String.md) | filter by id(s) of related &#39;app&#39; | [optional] 
 **filterAppStoreVersion** | [**[String]**](String.md) | filter by id(s) of related &#39;appStoreVersion&#39; | [optional] 
 **filterBetaGroups** | [**[String]**](String.md) | filter by id(s) of related &#39;betaGroups&#39; | [optional] 
 **filterPreReleaseVersion** | [**[String]**](String.md) | filter by id(s) of related &#39;preReleaseVersion&#39; | [optional] 
 **filterId** | [**[String]**](String.md) | filter by id(s) | [optional] 
 **sort** | [**[String]**](String.md) | comma-separated list of sort expressions; resources will be sorted as specified | [optional] 
 **fieldsBuildBundles** | [**[String]**](String.md) | the fields to include for returned resources of type buildBundles | [optional] 
 **fieldsBuildIcons** | [**[String]**](String.md) | the fields to include for returned resources of type buildIcons | [optional] 
 **fieldsBetaAppReviewSubmissions** | [**[String]**](String.md) | the fields to include for returned resources of type betaAppReviewSubmissions | [optional] 
 **fieldsBuildBetaDetails** | [**[String]**](String.md) | the fields to include for returned resources of type buildBetaDetails | [optional] 
 **fieldsBetaTesters** | [**[String]**](String.md) | the fields to include for returned resources of type betaTesters | [optional] 
 **fieldsPreReleaseVersions** | [**[String]**](String.md) | the fields to include for returned resources of type preReleaseVersions | [optional] 
 **fieldsBetaBuildLocalizations** | [**[String]**](String.md) | the fields to include for returned resources of type betaBuildLocalizations | [optional] 
 **fieldsAppStoreVersions** | [**[String]**](String.md) | the fields to include for returned resources of type appStoreVersions | [optional] 
 **fieldsAppEncryptionDeclarations** | [**[String]**](String.md) | the fields to include for returned resources of type appEncryptionDeclarations | [optional] 
 **fieldsApps** | [**[String]**](String.md) | the fields to include for returned resources of type apps | [optional] 
 **fieldsBuilds** | [**[String]**](String.md) | the fields to include for returned resources of type builds | [optional] 
 **fieldsBetaGroups** | [**[String]**](String.md) | the fields to include for returned resources of type betaGroups | [optional] 
 **limit** | **Int** | maximum resources per page | [optional] 
 **limitIndividualTesters** | **Int** | maximum number of related individualTesters returned (when they are included) | [optional] 
 **limitBetaGroups** | **Int** | maximum number of related betaGroups returned (when they are included) | [optional] 
 **limitBetaBuildLocalizations** | **Int** | maximum number of related betaBuildLocalizations returned (when they are included) | [optional] 
 **limitIcons** | **Int** | maximum number of related icons returned (when they are included) | [optional] 
 **limitBuildBundles** | **Int** | maximum number of related buildBundles returned (when they are included) | [optional] 
 **include** | [**[String]**](String.md) | comma-separated list of relationships to include | [optional] 

### Return type

[**BuildsResponse**](BuildsResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ciBuildRunsCreateInstance**
```swift
    open class func ciBuildRunsCreateInstance(ciBuildRunCreateRequest: CiBuildRunCreateRequest, completion: @escaping (_ data: CiBuildRunResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let ciBuildRunCreateRequest = CiBuildRunCreateRequest(data: CiBuildRunCreateRequest_data(type: "type_example", attributes: CiBuildRunCreateRequest_data_attributes(clean: false), relationships: CiBuildRunCreateRequest_data_relationships(buildRun: CiBuildRunCreateRequest_data_relationships_buildRun(data: CiBuildAction_relationships_buildRun_data(type: "type_example", id: "id_example")), workflow: CiBuildRunCreateRequest_data_relationships_workflow(data: CiBuildRun_relationships_workflow_data(type: "type_example", id: "id_example")), sourceBranchOrTag: CiBuildRunCreateRequest_data_relationships_sourceBranchOrTag(data: CiBuildRun_relationships_sourceBranchOrTag_data(type: "type_example", id: "id_example")), pullRequest: CiBuildRunCreateRequest_data_relationships_pullRequest(data: CiBuildRun_relationships_pullRequest_data(type: "type_example", id: "id_example"))))) // CiBuildRunCreateRequest | CiBuildRun representation

CiBuildRunsAPI.ciBuildRunsCreateInstance(ciBuildRunCreateRequest: ciBuildRunCreateRequest) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ciBuildRunCreateRequest** | [**CiBuildRunCreateRequest**](CiBuildRunCreateRequest.md) | CiBuildRun representation | 

### Return type

[**CiBuildRunResponse**](CiBuildRunResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ciBuildRunsGetInstance**
```swift
    open class func ciBuildRunsGetInstance(id: String, fieldsCiBuildRuns: [FieldsCiBuildRuns_ciBuildRunsGetInstance]? = nil, include: [Include_ciBuildRunsGetInstance]? = nil, fieldsCiBuildActions: [FieldsCiBuildActions_ciBuildRunsGetInstance]? = nil, fieldsBuilds: [FieldsBuilds_ciBuildRunsGetInstance]? = nil, limitBuilds: Int? = nil, completion: @escaping (_ data: CiBuildRunResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let fieldsCiBuildRuns = ["fieldsCiBuildRuns_example"] // [String] | the fields to include for returned resources of type ciBuildRuns (optional)
let include = ["include_example"] // [String] | comma-separated list of relationships to include (optional)
let fieldsCiBuildActions = ["fieldsCiBuildActions_example"] // [String] | the fields to include for returned resources of type ciBuildActions (optional)
let fieldsBuilds = ["fieldsBuilds_example"] // [String] | the fields to include for returned resources of type builds (optional)
let limitBuilds = 987 // Int | maximum number of related builds returned (when they are included) (optional)

CiBuildRunsAPI.ciBuildRunsGetInstance(id: id, fieldsCiBuildRuns: fieldsCiBuildRuns, include: include, fieldsCiBuildActions: fieldsCiBuildActions, fieldsBuilds: fieldsBuilds, limitBuilds: limitBuilds) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String** | the id of the requested resource | 
 **fieldsCiBuildRuns** | [**[String]**](String.md) | the fields to include for returned resources of type ciBuildRuns | [optional] 
 **include** | [**[String]**](String.md) | comma-separated list of relationships to include | [optional] 
 **fieldsCiBuildActions** | [**[String]**](String.md) | the fields to include for returned resources of type ciBuildActions | [optional] 
 **fieldsBuilds** | [**[String]**](String.md) | the fields to include for returned resources of type builds | [optional] 
 **limitBuilds** | **Int** | maximum number of related builds returned (when they are included) | [optional] 

### Return type

[**CiBuildRunResponse**](CiBuildRunResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

