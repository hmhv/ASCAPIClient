# AppEventVideoClipsAPI

All URIs are relative to *https://api.appstoreconnect.apple.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**appEventVideoClipsCreateInstance**](AppEventVideoClipsAPI.md#appeventvideoclipscreateinstance) | **POST** /v1/appEventVideoClips | 
[**appEventVideoClipsDeleteInstance**](AppEventVideoClipsAPI.md#appeventvideoclipsdeleteinstance) | **DELETE** /v1/appEventVideoClips/{id} | 
[**appEventVideoClipsGetInstance**](AppEventVideoClipsAPI.md#appeventvideoclipsgetinstance) | **GET** /v1/appEventVideoClips/{id} | 
[**appEventVideoClipsUpdateInstance**](AppEventVideoClipsAPI.md#appeventvideoclipsupdateinstance) | **PATCH** /v1/appEventVideoClips/{id} | 


# **appEventVideoClipsCreateInstance**
```swift
    open class func appEventVideoClipsCreateInstance(appEventVideoClipCreateRequest: AppEventVideoClipCreateRequest, completion: @escaping (_ data: AppEventVideoClipResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let appEventVideoClipCreateRequest = AppEventVideoClipCreateRequest(data: AppEventVideoClipCreateRequest_data(type: "type_example", attributes: AppEventVideoClipCreateRequest_data_attributes(fileSize: 123, fileName: "fileName_example", previewFrameTimeCode: "previewFrameTimeCode_example", appEventAssetType: AppEventAssetType()), relationships: AppEventScreenshotCreateRequest_data_relationships(appEventLocalization: AppEventScreenshotCreateRequest_data_relationships_appEventLocalization(data: AppEventScreenshot_relationships_appEventLocalization_data(type: "type_example", id: "id_example"))))) // AppEventVideoClipCreateRequest | AppEventVideoClip representation

AppEventVideoClipsAPI.appEventVideoClipsCreateInstance(appEventVideoClipCreateRequest: appEventVideoClipCreateRequest) { (response, error) in
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
 **appEventVideoClipCreateRequest** | [**AppEventVideoClipCreateRequest**](AppEventVideoClipCreateRequest.md) | AppEventVideoClip representation | 

### Return type

[**AppEventVideoClipResponse**](AppEventVideoClipResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **appEventVideoClipsDeleteInstance**
```swift
    open class func appEventVideoClipsDeleteInstance(id: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource

AppEventVideoClipsAPI.appEventVideoClipsDeleteInstance(id: id) { (response, error) in
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

# **appEventVideoClipsGetInstance**
```swift
    open class func appEventVideoClipsGetInstance(id: String, fieldsAppEventVideoClips: [FieldsAppEventVideoClips_appEventVideoClipsGetInstance]? = nil, include: [Include_appEventVideoClipsGetInstance]? = nil, completion: @escaping (_ data: AppEventVideoClipResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let fieldsAppEventVideoClips = ["fieldsAppEventVideoClips_example"] // [String] | the fields to include for returned resources of type appEventVideoClips (optional)
let include = ["include_example"] // [String] | comma-separated list of relationships to include (optional)

AppEventVideoClipsAPI.appEventVideoClipsGetInstance(id: id, fieldsAppEventVideoClips: fieldsAppEventVideoClips, include: include) { (response, error) in
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
 **fieldsAppEventVideoClips** | [**[String]**](String.md) | the fields to include for returned resources of type appEventVideoClips | [optional] 
 **include** | [**[String]**](String.md) | comma-separated list of relationships to include | [optional] 

### Return type

[**AppEventVideoClipResponse**](AppEventVideoClipResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **appEventVideoClipsUpdateInstance**
```swift
    open class func appEventVideoClipsUpdateInstance(id: String, appEventVideoClipUpdateRequest: AppEventVideoClipUpdateRequest, completion: @escaping (_ data: AppEventVideoClipResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let appEventVideoClipUpdateRequest = AppEventVideoClipUpdateRequest(data: AppEventVideoClipUpdateRequest_data(type: "type_example", id: "id_example", attributes: AppEventVideoClipUpdateRequest_data_attributes(previewFrameTimeCode: "previewFrameTimeCode_example", uploaded: false))) // AppEventVideoClipUpdateRequest | AppEventVideoClip representation

AppEventVideoClipsAPI.appEventVideoClipsUpdateInstance(id: id, appEventVideoClipUpdateRequest: appEventVideoClipUpdateRequest) { (response, error) in
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
 **appEventVideoClipUpdateRequest** | [**AppEventVideoClipUpdateRequest**](AppEventVideoClipUpdateRequest.md) | AppEventVideoClip representation | 

### Return type

[**AppEventVideoClipResponse**](AppEventVideoClipResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

