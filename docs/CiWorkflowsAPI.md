# CiWorkflowsAPI

All URIs are relative to *https://api.appstoreconnect.apple.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**ciWorkflowsBuildRunsGetToManyRelated**](CiWorkflowsAPI.md#ciworkflowsbuildrunsgettomanyrelated) | **GET** /v1/ciWorkflows/{id}/buildRuns | 
[**ciWorkflowsCreateInstance**](CiWorkflowsAPI.md#ciworkflowscreateinstance) | **POST** /v1/ciWorkflows | 
[**ciWorkflowsDeleteInstance**](CiWorkflowsAPI.md#ciworkflowsdeleteinstance) | **DELETE** /v1/ciWorkflows/{id} | 
[**ciWorkflowsGetInstance**](CiWorkflowsAPI.md#ciworkflowsgetinstance) | **GET** /v1/ciWorkflows/{id} | 
[**ciWorkflowsRepositoryGetToOneRelated**](CiWorkflowsAPI.md#ciworkflowsrepositorygettoonerelated) | **GET** /v1/ciWorkflows/{id}/repository | 
[**ciWorkflowsUpdateInstance**](CiWorkflowsAPI.md#ciworkflowsupdateinstance) | **PATCH** /v1/ciWorkflows/{id} | 


# **ciWorkflowsBuildRunsGetToManyRelated**
```swift
    open class func ciWorkflowsBuildRunsGetToManyRelated(id: String, filterBuilds: [String]? = nil, fieldsScmGitReferences: [FieldsScmGitReferences_ciWorkflowsBuildRunsGetToManyRelated]? = nil, fieldsCiBuildRuns: [FieldsCiBuildRuns_ciWorkflowsBuildRunsGetToManyRelated]? = nil, fieldsCiWorkflows: [FieldsCiWorkflows_ciWorkflowsBuildRunsGetToManyRelated]? = nil, fieldsScmPullRequests: [FieldsScmPullRequests_ciWorkflowsBuildRunsGetToManyRelated]? = nil, fieldsCiProducts: [FieldsCiProducts_ciWorkflowsBuildRunsGetToManyRelated]? = nil, fieldsBuilds: [FieldsBuilds_ciWorkflowsBuildRunsGetToManyRelated]? = nil, limit: Int? = nil, limitBuilds: Int? = nil, include: [Include_ciWorkflowsBuildRunsGetToManyRelated]? = nil, completion: @escaping (_ data: CiBuildRunsResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let filterBuilds = ["inner_example"] // [String] | filter by id(s) of related 'builds' (optional)
let fieldsScmGitReferences = ["fieldsScmGitReferences_example"] // [String] | the fields to include for returned resources of type scmGitReferences (optional)
let fieldsCiBuildRuns = ["fieldsCiBuildRuns_example"] // [String] | the fields to include for returned resources of type ciBuildRuns (optional)
let fieldsCiWorkflows = ["fieldsCiWorkflows_example"] // [String] | the fields to include for returned resources of type ciWorkflows (optional)
let fieldsScmPullRequests = ["fieldsScmPullRequests_example"] // [String] | the fields to include for returned resources of type scmPullRequests (optional)
let fieldsCiProducts = ["fieldsCiProducts_example"] // [String] | the fields to include for returned resources of type ciProducts (optional)
let fieldsBuilds = ["fieldsBuilds_example"] // [String] | the fields to include for returned resources of type builds (optional)
let limit = 987 // Int | maximum resources per page (optional)
let limitBuilds = 987 // Int | maximum number of related builds returned (when they are included) (optional)
let include = ["include_example"] // [String] | comma-separated list of relationships to include (optional)

CiWorkflowsAPI.ciWorkflowsBuildRunsGetToManyRelated(id: id, filterBuilds: filterBuilds, fieldsScmGitReferences: fieldsScmGitReferences, fieldsCiBuildRuns: fieldsCiBuildRuns, fieldsCiWorkflows: fieldsCiWorkflows, fieldsScmPullRequests: fieldsScmPullRequests, fieldsCiProducts: fieldsCiProducts, fieldsBuilds: fieldsBuilds, limit: limit, limitBuilds: limitBuilds, include: include) { (response, error) in
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
 **filterBuilds** | [**[String]**](String.md) | filter by id(s) of related &#39;builds&#39; | [optional] 
 **fieldsScmGitReferences** | [**[String]**](String.md) | the fields to include for returned resources of type scmGitReferences | [optional] 
 **fieldsCiBuildRuns** | [**[String]**](String.md) | the fields to include for returned resources of type ciBuildRuns | [optional] 
 **fieldsCiWorkflows** | [**[String]**](String.md) | the fields to include for returned resources of type ciWorkflows | [optional] 
 **fieldsScmPullRequests** | [**[String]**](String.md) | the fields to include for returned resources of type scmPullRequests | [optional] 
 **fieldsCiProducts** | [**[String]**](String.md) | the fields to include for returned resources of type ciProducts | [optional] 
 **fieldsBuilds** | [**[String]**](String.md) | the fields to include for returned resources of type builds | [optional] 
 **limit** | **Int** | maximum resources per page | [optional] 
 **limitBuilds** | **Int** | maximum number of related builds returned (when they are included) | [optional] 
 **include** | [**[String]**](String.md) | comma-separated list of relationships to include | [optional] 

### Return type

[**CiBuildRunsResponse**](CiBuildRunsResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ciWorkflowsCreateInstance**
```swift
    open class func ciWorkflowsCreateInstance(ciWorkflowCreateRequest: CiWorkflowCreateRequest, completion: @escaping (_ data: CiWorkflowResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let ciWorkflowCreateRequest = CiWorkflowCreateRequest(data: CiWorkflowCreateRequest_data(type: "type_example", attributes: CiWorkflowCreateRequest_data_attributes(name: "name_example", description: "description_example", branchStartCondition: CiBranchStartCondition(source: CiBranchPatterns(isAllMatch: false, patterns: [CiBranchPatterns_patterns_inner(pattern: "pattern_example", isPrefix: false)]), filesAndFoldersRule: CiFilesAndFoldersRule(mode: "mode_example", matchers: [CiStartConditionFileMatcher(directory: "directory_example", fileExtension: "fileExtension_example", fileName: "fileName_example")]), autoCancel: false), tagStartCondition: CiTagStartCondition(source: CiTagPatterns(isAllMatch: false, patterns: [nil]), filesAndFoldersRule: nil, autoCancel: false), pullRequestStartCondition: CiPullRequestStartCondition(source: nil, destination: nil, filesAndFoldersRule: nil, autoCancel: false), scheduledStartCondition: CiScheduledStartCondition(source: nil, schedule: CiScheduledStartCondition_schedule(frequency: "frequency_example", days: ["days_example"], hour: 123, minute: 123, timezone: "timezone_example")), actions: [CiAction(name: "name_example", actionType: CiActionType(), destination: "destination_example", buildDistributionAudience: BuildAudienceType(), testConfiguration: CiAction_testConfiguration(kind: "kind_example", testPlanName: "testPlanName_example", testDestinations: [CiTestDestination(deviceTypeName: "deviceTypeName_example", deviceTypeIdentifier: "deviceTypeIdentifier_example", runtimeName: "runtimeName_example", runtimeIdentifier: "runtimeIdentifier_example", kind: CiTestDestinationKind())]), scheme: "scheme_example", platform: "platform_example", isRequiredToPass: false)], isEnabled: false, isLockedForEditing: false, clean: false, containerFilePath: "containerFilePath_example"), relationships: CiWorkflowCreateRequest_data_relationships(product: CiWorkflowCreateRequest_data_relationships_product(data: App_relationships_ciProduct_data(type: "type_example", id: "id_example")), repository: CiWorkflowCreateRequest_data_relationships_repository(data: CiProduct_relationships_primaryRepositories_data_inner(type: "type_example", id: "id_example")), xcodeVersion: CiWorkflowCreateRequest_data_relationships_xcodeVersion(data: CiMacOsVersion_relationships_xcodeVersions_data_inner(type: "type_example", id: "id_example")), macOsVersion: CiWorkflowCreateRequest_data_relationships_macOsVersion(data: CiWorkflow_relationships_macOsVersion_data(type: "type_example", id: "id_example"))))) // CiWorkflowCreateRequest | CiWorkflow representation

CiWorkflowsAPI.ciWorkflowsCreateInstance(ciWorkflowCreateRequest: ciWorkflowCreateRequest) { (response, error) in
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
 **ciWorkflowCreateRequest** | [**CiWorkflowCreateRequest**](CiWorkflowCreateRequest.md) | CiWorkflow representation | 

### Return type

[**CiWorkflowResponse**](CiWorkflowResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ciWorkflowsDeleteInstance**
```swift
    open class func ciWorkflowsDeleteInstance(id: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource

CiWorkflowsAPI.ciWorkflowsDeleteInstance(id: id) { (response, error) in
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

### Return type

Void (empty response body)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ciWorkflowsGetInstance**
```swift
    open class func ciWorkflowsGetInstance(id: String, fieldsCiWorkflows: [FieldsCiWorkflows_ciWorkflowsGetInstance]? = nil, include: [Include_ciWorkflowsGetInstance]? = nil, fieldsCiBuildRuns: [FieldsCiBuildRuns_ciWorkflowsGetInstance]? = nil, fieldsScmRepositories: [FieldsScmRepositories_ciWorkflowsGetInstance]? = nil, completion: @escaping (_ data: CiWorkflowResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let fieldsCiWorkflows = ["fieldsCiWorkflows_example"] // [String] | the fields to include for returned resources of type ciWorkflows (optional)
let include = ["include_example"] // [String] | comma-separated list of relationships to include (optional)
let fieldsCiBuildRuns = ["fieldsCiBuildRuns_example"] // [String] | the fields to include for returned resources of type ciBuildRuns (optional)
let fieldsScmRepositories = ["fieldsScmRepositories_example"] // [String] | the fields to include for returned resources of type scmRepositories (optional)

CiWorkflowsAPI.ciWorkflowsGetInstance(id: id, fieldsCiWorkflows: fieldsCiWorkflows, include: include, fieldsCiBuildRuns: fieldsCiBuildRuns, fieldsScmRepositories: fieldsScmRepositories) { (response, error) in
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
 **fieldsCiWorkflows** | [**[String]**](String.md) | the fields to include for returned resources of type ciWorkflows | [optional] 
 **include** | [**[String]**](String.md) | comma-separated list of relationships to include | [optional] 
 **fieldsCiBuildRuns** | [**[String]**](String.md) | the fields to include for returned resources of type ciBuildRuns | [optional] 
 **fieldsScmRepositories** | [**[String]**](String.md) | the fields to include for returned resources of type scmRepositories | [optional] 

### Return type

[**CiWorkflowResponse**](CiWorkflowResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ciWorkflowsRepositoryGetToOneRelated**
```swift
    open class func ciWorkflowsRepositoryGetToOneRelated(id: String, fieldsScmGitReferences: [FieldsScmGitReferences_ciWorkflowsRepositoryGetToOneRelated]? = nil, fieldsScmProviders: [FieldsScmProviders_ciWorkflowsRepositoryGetToOneRelated]? = nil, fieldsScmRepositories: [FieldsScmRepositories_ciWorkflowsRepositoryGetToOneRelated]? = nil, include: [Include_ciWorkflowsRepositoryGetToOneRelated]? = nil, completion: @escaping (_ data: ScmRepositoryResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let fieldsScmGitReferences = ["fieldsScmGitReferences_example"] // [String] | the fields to include for returned resources of type scmGitReferences (optional)
let fieldsScmProviders = ["fieldsScmProviders_example"] // [String] | the fields to include for returned resources of type scmProviders (optional)
let fieldsScmRepositories = ["fieldsScmRepositories_example"] // [String] | the fields to include for returned resources of type scmRepositories (optional)
let include = ["include_example"] // [String] | comma-separated list of relationships to include (optional)

CiWorkflowsAPI.ciWorkflowsRepositoryGetToOneRelated(id: id, fieldsScmGitReferences: fieldsScmGitReferences, fieldsScmProviders: fieldsScmProviders, fieldsScmRepositories: fieldsScmRepositories, include: include) { (response, error) in
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
 **fieldsScmGitReferences** | [**[String]**](String.md) | the fields to include for returned resources of type scmGitReferences | [optional] 
 **fieldsScmProviders** | [**[String]**](String.md) | the fields to include for returned resources of type scmProviders | [optional] 
 **fieldsScmRepositories** | [**[String]**](String.md) | the fields to include for returned resources of type scmRepositories | [optional] 
 **include** | [**[String]**](String.md) | comma-separated list of relationships to include | [optional] 

### Return type

[**ScmRepositoryResponse**](ScmRepositoryResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ciWorkflowsUpdateInstance**
```swift
    open class func ciWorkflowsUpdateInstance(id: String, ciWorkflowUpdateRequest: CiWorkflowUpdateRequest, completion: @escaping (_ data: CiWorkflowResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let ciWorkflowUpdateRequest = CiWorkflowUpdateRequest(data: CiWorkflowUpdateRequest_data(type: "type_example", id: "id_example", attributes: CiWorkflowUpdateRequest_data_attributes(name: "name_example", description: "description_example", branchStartCondition: CiBranchStartCondition(source: CiBranchPatterns(isAllMatch: false, patterns: [CiBranchPatterns_patterns_inner(pattern: "pattern_example", isPrefix: false)]), filesAndFoldersRule: CiFilesAndFoldersRule(mode: "mode_example", matchers: [CiStartConditionFileMatcher(directory: "directory_example", fileExtension: "fileExtension_example", fileName: "fileName_example")]), autoCancel: false), tagStartCondition: CiTagStartCondition(source: CiTagPatterns(isAllMatch: false, patterns: [nil]), filesAndFoldersRule: nil, autoCancel: false), pullRequestStartCondition: CiPullRequestStartCondition(source: nil, destination: nil, filesAndFoldersRule: nil, autoCancel: false), scheduledStartCondition: CiScheduledStartCondition(source: nil, schedule: CiScheduledStartCondition_schedule(frequency: "frequency_example", days: ["days_example"], hour: 123, minute: 123, timezone: "timezone_example")), actions: [CiAction(name: "name_example", actionType: CiActionType(), destination: "destination_example", buildDistributionAudience: BuildAudienceType(), testConfiguration: CiAction_testConfiguration(kind: "kind_example", testPlanName: "testPlanName_example", testDestinations: [CiTestDestination(deviceTypeName: "deviceTypeName_example", deviceTypeIdentifier: "deviceTypeIdentifier_example", runtimeName: "runtimeName_example", runtimeIdentifier: "runtimeIdentifier_example", kind: CiTestDestinationKind())]), scheme: "scheme_example", platform: "platform_example", isRequiredToPass: false)], isEnabled: false, isLockedForEditing: false, clean: false, containerFilePath: "containerFilePath_example"), relationships: CiWorkflowUpdateRequest_data_relationships(xcodeVersion: CiWorkflowUpdateRequest_data_relationships_xcodeVersion(data: CiMacOsVersion_relationships_xcodeVersions_data_inner(type: "type_example", id: "id_example")), macOsVersion: CiWorkflowUpdateRequest_data_relationships_macOsVersion(data: CiWorkflow_relationships_macOsVersion_data(type: "type_example", id: "id_example"))))) // CiWorkflowUpdateRequest | CiWorkflow representation

CiWorkflowsAPI.ciWorkflowsUpdateInstance(id: id, ciWorkflowUpdateRequest: ciWorkflowUpdateRequest) { (response, error) in
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
 **ciWorkflowUpdateRequest** | [**CiWorkflowUpdateRequest**](CiWorkflowUpdateRequest.md) | CiWorkflow representation | 

### Return type

[**CiWorkflowResponse**](CiWorkflowResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

