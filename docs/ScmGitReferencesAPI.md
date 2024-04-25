# ScmGitReferencesAPI

All URIs are relative to *https://api.appstoreconnect.apple.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**scmGitReferencesGetInstance**](ScmGitReferencesAPI.md#scmgitreferencesgetinstance) | **GET** /v1/scmGitReferences/{id} | 


# **scmGitReferencesGetInstance**
```swift
    open class func scmGitReferencesGetInstance(id: String, fieldsScmGitReferences: [FieldsScmGitReferences_scmGitReferencesGetInstance]? = nil, include: [Include_scmGitReferencesGetInstance]? = nil, completion: @escaping (_ data: ScmGitReferenceResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let fieldsScmGitReferences = ["fieldsScmGitReferences_example"] // [String] | the fields to include for returned resources of type scmGitReferences (optional)
let include = ["include_example"] // [String] | comma-separated list of relationships to include (optional)

ScmGitReferencesAPI.scmGitReferencesGetInstance(id: id, fieldsScmGitReferences: fieldsScmGitReferences, include: include) { (response, error) in
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
 **include** | [**[String]**](String.md) | comma-separated list of relationships to include | [optional] 

### Return type

[**ScmGitReferenceResponse**](ScmGitReferenceResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

