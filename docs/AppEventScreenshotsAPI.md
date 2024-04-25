# AppEventScreenshotsAPI

All URIs are relative to *https://api.appstoreconnect.apple.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**appEventScreenshotsCreateInstance**](AppEventScreenshotsAPI.md#appeventscreenshotscreateinstance) | **POST** /v1/appEventScreenshots | 
[**appEventScreenshotsDeleteInstance**](AppEventScreenshotsAPI.md#appeventscreenshotsdeleteinstance) | **DELETE** /v1/appEventScreenshots/{id} | 
[**appEventScreenshotsGetInstance**](AppEventScreenshotsAPI.md#appeventscreenshotsgetinstance) | **GET** /v1/appEventScreenshots/{id} | 
[**appEventScreenshotsUpdateInstance**](AppEventScreenshotsAPI.md#appeventscreenshotsupdateinstance) | **PATCH** /v1/appEventScreenshots/{id} | 


# **appEventScreenshotsCreateInstance**
```swift
    open class func appEventScreenshotsCreateInstance(appEventScreenshotCreateRequest: AppEventScreenshotCreateRequest, completion: @escaping (_ data: AppEventScreenshotResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let appEventScreenshotCreateRequest = AppEventScreenshotCreateRequest(data: AppEventScreenshotCreateRequest_data(type: "type_example", attributes: AppEventScreenshotCreateRequest_data_attributes(fileSize: 123, fileName: "fileName_example", appEventAssetType: AppEventAssetType()), relationships: AppEventScreenshotCreateRequest_data_relationships(appEventLocalization: AppEventScreenshotCreateRequest_data_relationships_appEventLocalization(data: AppEventScreenshot_relationships_appEventLocalization_data(type: "type_example", id: "id_example"))))) // AppEventScreenshotCreateRequest | AppEventScreenshot representation

AppEventScreenshotsAPI.appEventScreenshotsCreateInstance(appEventScreenshotCreateRequest: appEventScreenshotCreateRequest) { (response, error) in
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
 **appEventScreenshotCreateRequest** | [**AppEventScreenshotCreateRequest**](AppEventScreenshotCreateRequest.md) | AppEventScreenshot representation | 

### Return type

[**AppEventScreenshotResponse**](AppEventScreenshotResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **appEventScreenshotsDeleteInstance**
```swift
    open class func appEventScreenshotsDeleteInstance(id: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource

AppEventScreenshotsAPI.appEventScreenshotsDeleteInstance(id: id) { (response, error) in
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

# **appEventScreenshotsGetInstance**
```swift
    open class func appEventScreenshotsGetInstance(id: String, fieldsAppEventScreenshots: [FieldsAppEventScreenshots_appEventScreenshotsGetInstance]? = nil, include: [Include_appEventScreenshotsGetInstance]? = nil, completion: @escaping (_ data: AppEventScreenshotResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let fieldsAppEventScreenshots = ["fieldsAppEventScreenshots_example"] // [String] | the fields to include for returned resources of type appEventScreenshots (optional)
let include = ["include_example"] // [String] | comma-separated list of relationships to include (optional)

AppEventScreenshotsAPI.appEventScreenshotsGetInstance(id: id, fieldsAppEventScreenshots: fieldsAppEventScreenshots, include: include) { (response, error) in
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
 **fieldsAppEventScreenshots** | [**[String]**](String.md) | the fields to include for returned resources of type appEventScreenshots | [optional] 
 **include** | [**[String]**](String.md) | comma-separated list of relationships to include | [optional] 

### Return type

[**AppEventScreenshotResponse**](AppEventScreenshotResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **appEventScreenshotsUpdateInstance**
```swift
    open class func appEventScreenshotsUpdateInstance(id: String, appEventScreenshotUpdateRequest: AppEventScreenshotUpdateRequest, completion: @escaping (_ data: AppEventScreenshotResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let appEventScreenshotUpdateRequest = AppEventScreenshotUpdateRequest(data: AppEventScreenshotUpdateRequest_data(type: "type_example", id: "id_example", attributes: AppEventScreenshotUpdateRequest_data_attributes(uploaded: false))) // AppEventScreenshotUpdateRequest | AppEventScreenshot representation

AppEventScreenshotsAPI.appEventScreenshotsUpdateInstance(id: id, appEventScreenshotUpdateRequest: appEventScreenshotUpdateRequest) { (response, error) in
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
 **appEventScreenshotUpdateRequest** | [**AppEventScreenshotUpdateRequest**](AppEventScreenshotUpdateRequest.md) | AppEventScreenshot representation | 

### Return type

[**AppEventScreenshotResponse**](AppEventScreenshotResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

