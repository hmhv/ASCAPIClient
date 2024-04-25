# AppScreenshotsAPI

All URIs are relative to *https://api.appstoreconnect.apple.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**appScreenshotsCreateInstance**](AppScreenshotsAPI.md#appscreenshotscreateinstance) | **POST** /v1/appScreenshots | 
[**appScreenshotsDeleteInstance**](AppScreenshotsAPI.md#appscreenshotsdeleteinstance) | **DELETE** /v1/appScreenshots/{id} | 
[**appScreenshotsGetInstance**](AppScreenshotsAPI.md#appscreenshotsgetinstance) | **GET** /v1/appScreenshots/{id} | 
[**appScreenshotsUpdateInstance**](AppScreenshotsAPI.md#appscreenshotsupdateinstance) | **PATCH** /v1/appScreenshots/{id} | 


# **appScreenshotsCreateInstance**
```swift
    open class func appScreenshotsCreateInstance(appScreenshotCreateRequest: AppScreenshotCreateRequest, completion: @escaping (_ data: AppScreenshotResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let appScreenshotCreateRequest = AppScreenshotCreateRequest(data: AppScreenshotCreateRequest_data(type: "type_example", attributes: AppClipAdvancedExperienceImageCreateRequest_data_attributes(fileSize: 123, fileName: "fileName_example"), relationships: AppScreenshotCreateRequest_data_relationships(appScreenshotSet: AppScreenshotCreateRequest_data_relationships_appScreenshotSet(data: AppCustomProductPageLocalization_relationships_appScreenshotSets_data_inner(type: "type_example", id: "id_example"))))) // AppScreenshotCreateRequest | AppScreenshot representation

AppScreenshotsAPI.appScreenshotsCreateInstance(appScreenshotCreateRequest: appScreenshotCreateRequest) { (response, error) in
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
 **appScreenshotCreateRequest** | [**AppScreenshotCreateRequest**](AppScreenshotCreateRequest.md) | AppScreenshot representation | 

### Return type

[**AppScreenshotResponse**](AppScreenshotResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **appScreenshotsDeleteInstance**
```swift
    open class func appScreenshotsDeleteInstance(id: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource

AppScreenshotsAPI.appScreenshotsDeleteInstance(id: id) { (response, error) in
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

# **appScreenshotsGetInstance**
```swift
    open class func appScreenshotsGetInstance(id: String, fieldsAppScreenshots: [FieldsAppScreenshots_appScreenshotsGetInstance]? = nil, include: [Include_appScreenshotsGetInstance]? = nil, completion: @escaping (_ data: AppScreenshotResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let fieldsAppScreenshots = ["fieldsAppScreenshots_example"] // [String] | the fields to include for returned resources of type appScreenshots (optional)
let include = ["include_example"] // [String] | comma-separated list of relationships to include (optional)

AppScreenshotsAPI.appScreenshotsGetInstance(id: id, fieldsAppScreenshots: fieldsAppScreenshots, include: include) { (response, error) in
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
 **fieldsAppScreenshots** | [**[String]**](String.md) | the fields to include for returned resources of type appScreenshots | [optional] 
 **include** | [**[String]**](String.md) | comma-separated list of relationships to include | [optional] 

### Return type

[**AppScreenshotResponse**](AppScreenshotResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **appScreenshotsUpdateInstance**
```swift
    open class func appScreenshotsUpdateInstance(id: String, appScreenshotUpdateRequest: AppScreenshotUpdateRequest, completion: @escaping (_ data: AppScreenshotResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let appScreenshotUpdateRequest = AppScreenshotUpdateRequest(data: AppScreenshotUpdateRequest_data(type: "type_example", id: "id_example", attributes: AppClipAdvancedExperienceImageUpdateRequest_data_attributes(sourceFileChecksum: "sourceFileChecksum_example", uploaded: false))) // AppScreenshotUpdateRequest | AppScreenshot representation

AppScreenshotsAPI.appScreenshotsUpdateInstance(id: id, appScreenshotUpdateRequest: appScreenshotUpdateRequest) { (response, error) in
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
 **appScreenshotUpdateRequest** | [**AppScreenshotUpdateRequest**](AppScreenshotUpdateRequest.md) | AppScreenshot representation | 

### Return type

[**AppScreenshotResponse**](AppScreenshotResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

