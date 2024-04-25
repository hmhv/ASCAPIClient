# CiIssuesAPI

All URIs are relative to *https://api.appstoreconnect.apple.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**ciIssuesGetInstance**](CiIssuesAPI.md#ciissuesgetinstance) | **GET** /v1/ciIssues/{id} | 


# **ciIssuesGetInstance**
```swift
    open class func ciIssuesGetInstance(id: String, fieldsCiIssues: [FieldsCiIssues_ciIssuesGetInstance]? = nil, completion: @escaping (_ data: CiIssueResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let fieldsCiIssues = ["fieldsCiIssues_example"] // [String] | the fields to include for returned resources of type ciIssues (optional)

CiIssuesAPI.ciIssuesGetInstance(id: id, fieldsCiIssues: fieldsCiIssues) { (response, error) in
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

### Return type

[**CiIssueResponse**](CiIssueResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

