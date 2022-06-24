# InAppPurchasesAPI

All URIs are relative to *https://api.appstoreconnect.apple.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**inAppPurchasesGetInstance**](InAppPurchasesAPI.md#inapppurchasesgetinstance) | **GET** /v1/inAppPurchases/{id} | 


# **inAppPurchasesGetInstance**
```swift
    open class func inAppPurchasesGetInstance(id: String, fieldsInAppPurchases: [FieldsInAppPurchases_inAppPurchasesGetInstance]? = nil, include: [Include_inAppPurchasesGetInstance]? = nil, limitApps: Int? = nil, completion: @escaping (_ data: InAppPurchaseResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let fieldsInAppPurchases = ["fieldsInAppPurchases_example"] // [String] | the fields to include for returned resources of type inAppPurchases (optional)
let include = ["include_example"] // [String] | comma-separated list of relationships to include (optional)
let limitApps = 987 // Int | maximum number of related apps returned (when they are included) (optional)

InAppPurchasesAPI.inAppPurchasesGetInstance(id: id, fieldsInAppPurchases: fieldsInAppPurchases, include: include, limitApps: limitApps) { (response, error) in
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
 **fieldsInAppPurchases** | [**[String]**](String.md) | the fields to include for returned resources of type inAppPurchases | [optional] 
 **include** | [**[String]**](String.md) | comma-separated list of relationships to include | [optional] 
 **limitApps** | **Int** | maximum number of related apps returned (when they are included) | [optional] 

### Return type

[**InAppPurchaseResponse**](InAppPurchaseResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

