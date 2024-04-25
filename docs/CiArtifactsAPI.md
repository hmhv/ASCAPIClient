# CiArtifactsAPI

All URIs are relative to *https://api.appstoreconnect.apple.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**ciArtifactsGetInstance**](CiArtifactsAPI.md#ciartifactsgetinstance) | **GET** /v1/ciArtifacts/{id} | 


# **ciArtifactsGetInstance**
```swift
    open class func ciArtifactsGetInstance(id: String, fieldsCiArtifacts: [FieldsCiArtifacts_ciArtifactsGetInstance]? = nil, completion: @escaping (_ data: CiArtifactResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let fieldsCiArtifacts = ["fieldsCiArtifacts_example"] // [String] | the fields to include for returned resources of type ciArtifacts (optional)

CiArtifactsAPI.ciArtifactsGetInstance(id: id, fieldsCiArtifacts: fieldsCiArtifacts) { (response, error) in
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

### Return type

[**CiArtifactResponse**](CiArtifactResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

