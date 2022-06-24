# ScmProvidersAPI

All URIs are relative to *https://api.appstoreconnect.apple.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**scmProvidersGetCollection**](ScmProvidersAPI.md#scmprovidersgetcollection) | **GET** /v1/scmProviders | 
[**scmProvidersGetInstance**](ScmProvidersAPI.md#scmprovidersgetinstance) | **GET** /v1/scmProviders/{id} | 
[**scmProvidersRepositoriesGetToManyRelated**](ScmProvidersAPI.md#scmprovidersrepositoriesgettomanyrelated) | **GET** /v1/scmProviders/{id}/repositories | 


# **scmProvidersGetCollection**
```swift
    open class func scmProvidersGetCollection(fieldsScmProviders: [FieldsScmProviders_scmProvidersGetCollection]? = nil, limit: Int? = nil, fieldsScmRepositories: [FieldsScmRepositories_scmProvidersGetCollection]? = nil, completion: @escaping (_ data: ScmProvidersResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let fieldsScmProviders = ["fieldsScmProviders_example"] // [String] | the fields to include for returned resources of type scmProviders (optional)
let limit = 987 // Int | maximum resources per page (optional)
let fieldsScmRepositories = ["fieldsScmRepositories_example"] // [String] | the fields to include for returned resources of type scmRepositories (optional)

ScmProvidersAPI.scmProvidersGetCollection(fieldsScmProviders: fieldsScmProviders, limit: limit, fieldsScmRepositories: fieldsScmRepositories) { (response, error) in
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
 **fieldsScmProviders** | [**[String]**](String.md) | the fields to include for returned resources of type scmProviders | [optional] 
 **limit** | **Int** | maximum resources per page | [optional] 
 **fieldsScmRepositories** | [**[String]**](String.md) | the fields to include for returned resources of type scmRepositories | [optional] 

### Return type

[**ScmProvidersResponse**](ScmProvidersResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **scmProvidersGetInstance**
```swift
    open class func scmProvidersGetInstance(id: String, fieldsScmProviders: [FieldsScmProviders_scmProvidersGetInstance]? = nil, fieldsScmRepositories: [FieldsScmRepositories_scmProvidersGetInstance]? = nil, completion: @escaping (_ data: ScmProviderResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let fieldsScmProviders = ["fieldsScmProviders_example"] // [String] | the fields to include for returned resources of type scmProviders (optional)
let fieldsScmRepositories = ["fieldsScmRepositories_example"] // [String] | the fields to include for returned resources of type scmRepositories (optional)

ScmProvidersAPI.scmProvidersGetInstance(id: id, fieldsScmProviders: fieldsScmProviders, fieldsScmRepositories: fieldsScmRepositories) { (response, error) in
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
 **fieldsScmProviders** | [**[String]**](String.md) | the fields to include for returned resources of type scmProviders | [optional] 
 **fieldsScmRepositories** | [**[String]**](String.md) | the fields to include for returned resources of type scmRepositories | [optional] 

### Return type

[**ScmProviderResponse**](ScmProviderResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **scmProvidersRepositoriesGetToManyRelated**
```swift
    open class func scmProvidersRepositoriesGetToManyRelated(id: String, filterId: [String]? = nil, fieldsScmGitReferences: [FieldsScmGitReferences_scmProvidersRepositoriesGetToManyRelated]? = nil, fieldsScmProviders: [FieldsScmProviders_scmProvidersRepositoriesGetToManyRelated]? = nil, fieldsScmRepositories: [FieldsScmRepositories_scmProvidersRepositoriesGetToManyRelated]? = nil, limit: Int? = nil, include: [Include_scmProvidersRepositoriesGetToManyRelated]? = nil, completion: @escaping (_ data: ScmRepositoriesResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let filterId = ["inner_example"] // [String] | filter by id(s) (optional)
let fieldsScmGitReferences = ["fieldsScmGitReferences_example"] // [String] | the fields to include for returned resources of type scmGitReferences (optional)
let fieldsScmProviders = ["fieldsScmProviders_example"] // [String] | the fields to include for returned resources of type scmProviders (optional)
let fieldsScmRepositories = ["fieldsScmRepositories_example"] // [String] | the fields to include for returned resources of type scmRepositories (optional)
let limit = 987 // Int | maximum resources per page (optional)
let include = ["include_example"] // [String] | comma-separated list of relationships to include (optional)

ScmProvidersAPI.scmProvidersRepositoriesGetToManyRelated(id: id, filterId: filterId, fieldsScmGitReferences: fieldsScmGitReferences, fieldsScmProviders: fieldsScmProviders, fieldsScmRepositories: fieldsScmRepositories, limit: limit, include: include) { (response, error) in
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
 **filterId** | [**[String]**](String.md) | filter by id(s) | [optional] 
 **fieldsScmGitReferences** | [**[String]**](String.md) | the fields to include for returned resources of type scmGitReferences | [optional] 
 **fieldsScmProviders** | [**[String]**](String.md) | the fields to include for returned resources of type scmProviders | [optional] 
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

