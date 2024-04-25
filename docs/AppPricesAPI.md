# AppPricesAPI

All URIs are relative to *https://api.appstoreconnect.apple.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**appPricesGetInstance**](AppPricesAPI.md#apppricesgetinstance) | **GET** /v1/appPrices/{id} | 


# **appPricesGetInstance**
```swift
    open class func appPricesGetInstance(id: String, fieldsAppPrices: [FieldsAppPrices_appPricesGetInstance]? = nil, include: [Include_appPricesGetInstance]? = nil, completion: @escaping (_ data: AppPriceResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let fieldsAppPrices = ["fieldsAppPrices_example"] // [String] | the fields to include for returned resources of type appPrices (optional)
let include = ["include_example"] // [String] | comma-separated list of relationships to include (optional)

AppPricesAPI.appPricesGetInstance(id: id, fieldsAppPrices: fieldsAppPrices, include: include) { (response, error) in
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
 **fieldsAppPrices** | [**[String]**](String.md) | the fields to include for returned resources of type appPrices | [optional] 
 **include** | [**[String]**](String.md) | comma-separated list of relationships to include | [optional] 

### Return type

[**AppPriceResponse**](AppPriceResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

