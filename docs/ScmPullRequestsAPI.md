# ScmPullRequestsAPI

All URIs are relative to *https://api.appstoreconnect.apple.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**scmPullRequestsGetInstance**](ScmPullRequestsAPI.md#scmpullrequestsgetinstance) | **GET** /v1/scmPullRequests/{id} | 


# **scmPullRequestsGetInstance**
```swift
    open class func scmPullRequestsGetInstance(id: String, fieldsScmPullRequests: [FieldsScmPullRequests_scmPullRequestsGetInstance]? = nil, include: [Include_scmPullRequestsGetInstance]? = nil, completion: @escaping (_ data: ScmPullRequestResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let fieldsScmPullRequests = ["fieldsScmPullRequests_example"] // [String] | the fields to include for returned resources of type scmPullRequests (optional)
let include = ["include_example"] // [String] | comma-separated list of relationships to include (optional)

ScmPullRequestsAPI.scmPullRequestsGetInstance(id: id, fieldsScmPullRequests: fieldsScmPullRequests, include: include) { (response, error) in
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
 **include** | [**[String]**](String.md) | comma-separated list of relationships to include | [optional] 

### Return type

[**ScmPullRequestResponse**](ScmPullRequestResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

