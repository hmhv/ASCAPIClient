# InAppPurchaseContentsAPI

All URIs are relative to *https://api.appstoreconnect.apple.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**inAppPurchaseContentsGetInstance**](InAppPurchaseContentsAPI.md#inapppurchasecontentsgetinstance) | **GET** /v1/inAppPurchaseContents/{id} | 


# **inAppPurchaseContentsGetInstance**
```swift
    open class func inAppPurchaseContentsGetInstance(id: String, fieldsInAppPurchaseContents: [FieldsInAppPurchaseContents_inAppPurchaseContentsGetInstance]? = nil, include: [Include_inAppPurchaseContentsGetInstance]? = nil, completion: @escaping (_ data: InAppPurchaseContentResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let fieldsInAppPurchaseContents = ["fieldsInAppPurchaseContents_example"] // [String] | the fields to include for returned resources of type inAppPurchaseContents (optional)
let include = ["include_example"] // [String] | comma-separated list of relationships to include (optional)

InAppPurchaseContentsAPI.inAppPurchaseContentsGetInstance(id: id, fieldsInAppPurchaseContents: fieldsInAppPurchaseContents, include: include) { (response, error) in
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
 **fieldsInAppPurchaseContents** | [**[String]**](String.md) | the fields to include for returned resources of type inAppPurchaseContents | [optional] 
 **include** | [**[String]**](String.md) | comma-separated list of relationships to include | [optional] 

### Return type

[**InAppPurchaseContentResponse**](InAppPurchaseContentResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

