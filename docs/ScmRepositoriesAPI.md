# ScmRepositoriesAPI

All URIs are relative to *https://api.appstoreconnect.apple.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**scmRepositoriesGetCollection**](ScmRepositoriesAPI.md#scmrepositoriesgetcollection) | **GET** /v1/scmRepositories | 
[**scmRepositoriesGetInstance**](ScmRepositoriesAPI.md#scmrepositoriesgetinstance) | **GET** /v1/scmRepositories/{id} | 
[**scmRepositoriesGitReferencesGetToManyRelated**](ScmRepositoriesAPI.md#scmrepositoriesgitreferencesgettomanyrelated) | **GET** /v1/scmRepositories/{id}/gitReferences | 
[**scmRepositoriesPullRequestsGetToManyRelated**](ScmRepositoriesAPI.md#scmrepositoriespullrequestsgettomanyrelated) | **GET** /v1/scmRepositories/{id}/pullRequests | 


# **scmRepositoriesGetCollection**
```swift
    open class func scmRepositoriesGetCollection(filterId: [String]? = nil, fieldsScmRepositories: [FieldsScmRepositories_scmRepositoriesGetCollection]? = nil, limit: Int? = nil, include: [Include_scmRepositoriesGetCollection]? = nil, completion: @escaping (_ data: ScmRepositoriesResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let filterId = ["inner_example"] // [String] | filter by id(s) (optional)
let fieldsScmRepositories = ["fieldsScmRepositories_example"] // [String] | the fields to include for returned resources of type scmRepositories (optional)
let limit = 987 // Int | maximum resources per page (optional)
let include = ["include_example"] // [String] | comma-separated list of relationships to include (optional)

ScmRepositoriesAPI.scmRepositoriesGetCollection(filterId: filterId, fieldsScmRepositories: fieldsScmRepositories, limit: limit, include: include) { (response, error) in
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
 **filterId** | [**[String]**](String.md) | filter by id(s) | [optional] 
 **fieldsScmRepositories** | [**[String]**](String.md) | the fields to include for returned resources of type scmRepositories | [optional] 
 **limit** | **Int** | maximum resources per page | [optional] 
 **include** | [**[String]**](String.md) | comma-separated list of relationships to include | [optional] 

### Return type

[**ScmRepositoriesResponse**](ScmRepositoriesResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **scmRepositoriesGetInstance**
```swift
    open class func scmRepositoriesGetInstance(id: String, fieldsScmRepositories: [FieldsScmRepositories_scmRepositoriesGetInstance]? = nil, include: [Include_scmRepositoriesGetInstance]? = nil, completion: @escaping (_ data: ScmRepositoryResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let fieldsScmRepositories = ["fieldsScmRepositories_example"] // [String] | the fields to include for returned resources of type scmRepositories (optional)
let include = ["include_example"] // [String] | comma-separated list of relationships to include (optional)

ScmRepositoriesAPI.scmRepositoriesGetInstance(id: id, fieldsScmRepositories: fieldsScmRepositories, include: include) { (response, error) in
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

# **scmRepositoriesGitReferencesGetToManyRelated**
```swift
    open class func scmRepositoriesGitReferencesGetToManyRelated(id: String, fieldsScmGitReferences: [FieldsScmGitReferences_scmRepositoriesGitReferencesGetToManyRelated]? = nil, fieldsScmRepositories: [FieldsScmRepositories_scmRepositoriesGitReferencesGetToManyRelated]? = nil, limit: Int? = nil, include: [Include_scmRepositoriesGitReferencesGetToManyRelated]? = nil, completion: @escaping (_ data: ScmGitReferencesResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let fieldsScmGitReferences = ["fieldsScmGitReferences_example"] // [String] | the fields to include for returned resources of type scmGitReferences (optional)
let fieldsScmRepositories = ["fieldsScmRepositories_example"] // [String] | the fields to include for returned resources of type scmRepositories (optional)
let limit = 987 // Int | maximum resources per page (optional)
let include = ["include_example"] // [String] | comma-separated list of relationships to include (optional)

ScmRepositoriesAPI.scmRepositoriesGitReferencesGetToManyRelated(id: id, fieldsScmGitReferences: fieldsScmGitReferences, fieldsScmRepositories: fieldsScmRepositories, limit: limit, include: include) { (response, error) in
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
 **fieldsScmRepositories** | [**[String]**](String.md) | the fields to include for returned resources of type scmRepositories | [optional] 
 **limit** | **Int** | maximum resources per page | [optional] 
 **include** | [**[String]**](String.md) | comma-separated list of relationships to include | [optional] 

### Return type

[**ScmGitReferencesResponse**](ScmGitReferencesResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **scmRepositoriesPullRequestsGetToManyRelated**
```swift
    open class func scmRepositoriesPullRequestsGetToManyRelated(id: String, fieldsScmPullRequests: [FieldsScmPullRequests_scmRepositoriesPullRequestsGetToManyRelated]? = nil, fieldsScmRepositories: [FieldsScmRepositories_scmRepositoriesPullRequestsGetToManyRelated]? = nil, limit: Int? = nil, include: [Include_scmRepositoriesPullRequestsGetToManyRelated]? = nil, completion: @escaping (_ data: ScmPullRequestsResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let fieldsScmPullRequests = ["fieldsScmPullRequests_example"] // [String] | the fields to include for returned resources of type scmPullRequests (optional)
let fieldsScmRepositories = ["fieldsScmRepositories_example"] // [String] | the fields to include for returned resources of type scmRepositories (optional)
let limit = 987 // Int | maximum resources per page (optional)
let include = ["include_example"] // [String] | comma-separated list of relationships to include (optional)

ScmRepositoriesAPI.scmRepositoriesPullRequestsGetToManyRelated(id: id, fieldsScmPullRequests: fieldsScmPullRequests, fieldsScmRepositories: fieldsScmRepositories, limit: limit, include: include) { (response, error) in
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
 **fieldsScmPullRequests** | [**[String]**](String.md) | the fields to include for returned resources of type scmPullRequests | [optional] 
 **fieldsScmRepositories** | [**[String]**](String.md) | the fields to include for returned resources of type scmRepositories | [optional] 
 **limit** | **Int** | maximum resources per page | [optional] 
 **include** | [**[String]**](String.md) | comma-separated list of relationships to include | [optional] 

### Return type

[**ScmPullRequestsResponse**](ScmPullRequestsResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

