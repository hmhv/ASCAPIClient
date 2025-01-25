# CiBuildActionsAPI

All URIs are relative to *https://api.appstoreconnect.apple.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**ciBuildActionsArtifactsGetToManyRelated**](CiBuildActionsAPI.md#cibuildactionsartifactsgettomanyrelated) | **GET** /v1/ciBuildActions/{id}/artifacts | 
[**ciBuildActionsBuildRunGetToOneRelated**](CiBuildActionsAPI.md#cibuildactionsbuildrungettoonerelated) | **GET** /v1/ciBuildActions/{id}/buildRun | 
[**ciBuildActionsGetInstance**](CiBuildActionsAPI.md#cibuildactionsgetinstance) | **GET** /v1/ciBuildActions/{id} | 
[**ciBuildActionsIssuesGetToManyRelated**](CiBuildActionsAPI.md#cibuildactionsissuesgettomanyrelated) | **GET** /v1/ciBuildActions/{id}/issues | 
[**ciBuildActionsTestResultsGetToManyRelated**](CiBuildActionsAPI.md#cibuildactionstestresultsgettomanyrelated) | **GET** /v1/ciBuildActions/{id}/testResults | 


# **ciBuildActionsArtifactsGetToManyRelated**
```swift
    open class func ciBuildActionsArtifactsGetToManyRelated(id: String, fieldsCiArtifacts: [FieldsCiArtifacts_ciBuildActionsArtifactsGetToManyRelated]? = nil, limit: Int? = nil, completion: @escaping (_ data: CiArtifactsResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let fieldsCiArtifacts = ["fieldsCiArtifacts_example"] // [String] | the fields to include for returned resources of type ciArtifacts (optional)
let limit = 987 // Int | maximum resources per page (optional)

CiBuildActionsAPI.ciBuildActionsArtifactsGetToManyRelated(id: id, fieldsCiArtifacts: fieldsCiArtifacts, limit: limit) { (response, error) in
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
 **fieldsCiArtifacts** | [**[String]**](String.md) | the fields to include for returned resources of type ciArtifacts | [optional] 
 **limit** | **Int** | maximum resources per page | [optional] 

### Return type

[**CiArtifactsResponse**](CiArtifactsResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ciBuildActionsBuildRunGetToOneRelated**
```swift
    open class func ciBuildActionsBuildRunGetToOneRelated(id: String, fieldsCiBuildRuns: [FieldsCiBuildRuns_ciBuildActionsBuildRunGetToOneRelated]? = nil, fieldsBuilds: [FieldsBuilds_ciBuildActionsBuildRunGetToOneRelated]? = nil, fieldsCiWorkflows: [FieldsCiWorkflows_ciBuildActionsBuildRunGetToOneRelated]? = nil, fieldsCiProducts: [FieldsCiProducts_ciBuildActionsBuildRunGetToOneRelated]? = nil, fieldsScmGitReferences: [FieldsScmGitReferences_ciBuildActionsBuildRunGetToOneRelated]? = nil, fieldsScmPullRequests: [FieldsScmPullRequests_ciBuildActionsBuildRunGetToOneRelated]? = nil, include: [Include_ciBuildActionsBuildRunGetToOneRelated]? = nil, limitBuilds: Int? = nil, completion: @escaping (_ data: CiBuildRunResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let fieldsCiBuildRuns = ["fieldsCiBuildRuns_example"] // [String] | the fields to include for returned resources of type ciBuildRuns (optional)
let fieldsBuilds = ["fieldsBuilds_example"] // [String] | the fields to include for returned resources of type builds (optional)
let fieldsCiWorkflows = ["fieldsCiWorkflows_example"] // [String] | the fields to include for returned resources of type ciWorkflows (optional)
let fieldsCiProducts = ["fieldsCiProducts_example"] // [String] | the fields to include for returned resources of type ciProducts (optional)
let fieldsScmGitReferences = ["fieldsScmGitReferences_example"] // [String] | the fields to include for returned resources of type scmGitReferences (optional)
let fieldsScmPullRequests = ["fieldsScmPullRequests_example"] // [String] | the fields to include for returned resources of type scmPullRequests (optional)
let include = ["include_example"] // [String] | comma-separated list of relationships to include (optional)
let limitBuilds = 987 // Int | maximum number of related builds returned (when they are included) (optional)

CiBuildActionsAPI.ciBuildActionsBuildRunGetToOneRelated(id: id, fieldsCiBuildRuns: fieldsCiBuildRuns, fieldsBuilds: fieldsBuilds, fieldsCiWorkflows: fieldsCiWorkflows, fieldsCiProducts: fieldsCiProducts, fieldsScmGitReferences: fieldsScmGitReferences, fieldsScmPullRequests: fieldsScmPullRequests, include: include, limitBuilds: limitBuilds) { (response, error) in
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
 **fieldsBuilds** | [**[String]**](String.md) | the fields to include for returned resources of type builds | [optional] 
 **fieldsCiWorkflows** | [**[String]**](String.md) | the fields to include for returned resources of type ciWorkflows | [optional] 
 **fieldsCiProducts** | [**[String]**](String.md) | the fields to include for returned resources of type ciProducts | [optional] 
 **fieldsScmGitReferences** | [**[String]**](String.md) | the fields to include for returned resources of type scmGitReferences | [optional] 
 **fieldsScmPullRequests** | [**[String]**](String.md) | the fields to include for returned resources of type scmPullRequests | [optional] 
 **include** | [**[String]**](String.md) | comma-separated list of relationships to include | [optional] 
 **limitBuilds** | **Int** | maximum number of related builds returned (when they are included) | [optional] 

### Return type

[**CiBuildRunResponse**](CiBuildRunResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ciBuildActionsGetInstance**
```swift
    open class func ciBuildActionsGetInstance(id: String, fieldsCiBuildActions: [FieldsCiBuildActions_ciBuildActionsGetInstance]? = nil, fieldsCiBuildRuns: [FieldsCiBuildRuns_ciBuildActionsGetInstance]? = nil, include: [Include_ciBuildActionsGetInstance]? = nil, completion: @escaping (_ data: CiBuildActionResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let fieldsCiBuildActions = ["fieldsCiBuildActions_example"] // [String] | the fields to include for returned resources of type ciBuildActions (optional)
let fieldsCiBuildRuns = ["fieldsCiBuildRuns_example"] // [String] | the fields to include for returned resources of type ciBuildRuns (optional)
let include = ["include_example"] // [String] | comma-separated list of relationships to include (optional)

CiBuildActionsAPI.ciBuildActionsGetInstance(id: id, fieldsCiBuildActions: fieldsCiBuildActions, fieldsCiBuildRuns: fieldsCiBuildRuns, include: include) { (response, error) in
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
 **fieldsCiBuildActions** | [**[String]**](String.md) | the fields to include for returned resources of type ciBuildActions | [optional] 
 **fieldsCiBuildRuns** | [**[String]**](String.md) | the fields to include for returned resources of type ciBuildRuns | [optional] 
 **include** | [**[String]**](String.md) | comma-separated list of relationships to include | [optional] 

### Return type

[**CiBuildActionResponse**](CiBuildActionResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ciBuildActionsIssuesGetToManyRelated**
```swift
    open class func ciBuildActionsIssuesGetToManyRelated(id: String, fieldsCiIssues: [FieldsCiIssues_ciBuildActionsIssuesGetToManyRelated]? = nil, limit: Int? = nil, completion: @escaping (_ data: CiIssuesResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let fieldsCiIssues = ["fieldsCiIssues_example"] // [String] | the fields to include for returned resources of type ciIssues (optional)
let limit = 987 // Int | maximum resources per page (optional)

CiBuildActionsAPI.ciBuildActionsIssuesGetToManyRelated(id: id, fieldsCiIssues: fieldsCiIssues, limit: limit) { (response, error) in
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
 **fieldsCiIssues** | [**[String]**](String.md) | the fields to include for returned resources of type ciIssues | [optional] 
 **limit** | **Int** | maximum resources per page | [optional] 

### Return type

[**CiIssuesResponse**](CiIssuesResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ciBuildActionsTestResultsGetToManyRelated**
```swift
    open class func ciBuildActionsTestResultsGetToManyRelated(id: String, fieldsCiTestResults: [FieldsCiTestResults_ciBuildActionsTestResultsGetToManyRelated]? = nil, limit: Int? = nil, completion: @escaping (_ data: CiTestResultsResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let fieldsCiTestResults = ["fieldsCiTestResults_example"] // [String] | the fields to include for returned resources of type ciTestResults (optional)
let limit = 987 // Int | maximum resources per page (optional)

CiBuildActionsAPI.ciBuildActionsTestResultsGetToManyRelated(id: id, fieldsCiTestResults: fieldsCiTestResults, limit: limit) { (response, error) in
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
 **fieldsCiTestResults** | [**[String]**](String.md) | the fields to include for returned resources of type ciTestResults | [optional] 
 **limit** | **Int** | maximum resources per page | [optional] 

### Return type

[**CiTestResultsResponse**](CiTestResultsResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

