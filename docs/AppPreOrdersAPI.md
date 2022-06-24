# AppPreOrdersAPI

All URIs are relative to *https://api.appstoreconnect.apple.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**appPreOrdersCreateInstance**](AppPreOrdersAPI.md#apppreorderscreateinstance) | **POST** /v1/appPreOrders | 
[**appPreOrdersDeleteInstance**](AppPreOrdersAPI.md#apppreordersdeleteinstance) | **DELETE** /v1/appPreOrders/{id} | 
[**appPreOrdersGetInstance**](AppPreOrdersAPI.md#apppreordersgetinstance) | **GET** /v1/appPreOrders/{id} | 
[**appPreOrdersUpdateInstance**](AppPreOrdersAPI.md#apppreordersupdateinstance) | **PATCH** /v1/appPreOrders/{id} | 


# **appPreOrdersCreateInstance**
```swift
    open class func appPreOrdersCreateInstance(appPreOrderCreateRequest: AppPreOrderCreateRequest, completion: @escaping (_ data: AppPreOrderResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let appPreOrderCreateRequest = AppPreOrderCreateRequest(data: AppPreOrderCreateRequest_data(type: "type_example", attributes: AppPreOrderCreateRequest_data_attributes(appReleaseDate: Date()), relationships: AppEventCreateRequest_data_relationships(app: AppCustomProductPageCreateRequest_data_relationships_app(data: AppClip_relationships_app_data(type: "type_example", id: "id_example"))))) // AppPreOrderCreateRequest | AppPreOrder representation

AppPreOrdersAPI.appPreOrdersCreateInstance(appPreOrderCreateRequest: appPreOrderCreateRequest) { (response, error) in
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
 **appPreOrderCreateRequest** | [**AppPreOrderCreateRequest**](AppPreOrderCreateRequest.md) | AppPreOrder representation | 

### Return type

[**AppPreOrderResponse**](AppPreOrderResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **appPreOrdersDeleteInstance**
```swift
    open class func appPreOrdersDeleteInstance(id: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource

AppPreOrdersAPI.appPreOrdersDeleteInstance(id: id) { (response, error) in
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

### Return type

Void (empty response body)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **appPreOrdersGetInstance**
```swift
    open class func appPreOrdersGetInstance(id: String, fieldsAppPreOrders: [FieldsAppPreOrders_appPreOrdersGetInstance]? = nil, include: [Include_appPreOrdersGetInstance]? = nil, completion: @escaping (_ data: AppPreOrderResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let fieldsAppPreOrders = ["fieldsAppPreOrders_example"] // [String] | the fields to include for returned resources of type appPreOrders (optional)
let include = ["include_example"] // [String] | comma-separated list of relationships to include (optional)

AppPreOrdersAPI.appPreOrdersGetInstance(id: id, fieldsAppPreOrders: fieldsAppPreOrders, include: include) { (response, error) in
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
 **fieldsAppPreOrders** | [**[String]**](String.md) | the fields to include for returned resources of type appPreOrders | [optional] 
 **include** | [**[String]**](String.md) | comma-separated list of relationships to include | [optional] 

### Return type

[**AppPreOrderResponse**](AppPreOrderResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **appPreOrdersUpdateInstance**
```swift
    open class func appPreOrdersUpdateInstance(id: String, appPreOrderUpdateRequest: AppPreOrderUpdateRequest, completion: @escaping (_ data: AppPreOrderResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let appPreOrderUpdateRequest = AppPreOrderUpdateRequest(data: AppPreOrderUpdateRequest_data(type: "type_example", id: "id_example", attributes: AppPreOrderCreateRequest_data_attributes(appReleaseDate: Date()))) // AppPreOrderUpdateRequest | AppPreOrder representation

AppPreOrdersAPI.appPreOrdersUpdateInstance(id: id, appPreOrderUpdateRequest: appPreOrderUpdateRequest) { (response, error) in
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
 **appPreOrderUpdateRequest** | [**AppPreOrderUpdateRequest**](AppPreOrderUpdateRequest.md) | AppPreOrder representation | 

### Return type

[**AppPreOrderResponse**](AppPreOrderResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

