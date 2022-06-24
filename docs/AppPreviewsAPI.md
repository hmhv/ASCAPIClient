# AppPreviewsAPI

All URIs are relative to *https://api.appstoreconnect.apple.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**appPreviewsCreateInstance**](AppPreviewsAPI.md#apppreviewscreateinstance) | **POST** /v1/appPreviews | 
[**appPreviewsDeleteInstance**](AppPreviewsAPI.md#apppreviewsdeleteinstance) | **DELETE** /v1/appPreviews/{id} | 
[**appPreviewsGetInstance**](AppPreviewsAPI.md#apppreviewsgetinstance) | **GET** /v1/appPreviews/{id} | 
[**appPreviewsUpdateInstance**](AppPreviewsAPI.md#apppreviewsupdateinstance) | **PATCH** /v1/appPreviews/{id} | 


# **appPreviewsCreateInstance**
```swift
    open class func appPreviewsCreateInstance(appPreviewCreateRequest: AppPreviewCreateRequest, completion: @escaping (_ data: AppPreviewResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let appPreviewCreateRequest = AppPreviewCreateRequest(data: AppPreviewCreateRequest_data(type: "type_example", attributes: AppPreviewCreateRequest_data_attributes(fileSize: 123, fileName: "fileName_example", previewFrameTimeCode: "previewFrameTimeCode_example", mimeType: "mimeType_example"), relationships: AppPreviewCreateRequest_data_relationships(appPreviewSet: AppPreviewCreateRequest_data_relationships_appPreviewSet(data: AppCustomProductPageLocalization_relationships_appPreviewSets_data_inner(type: "type_example", id: "id_example"))))) // AppPreviewCreateRequest | AppPreview representation

AppPreviewsAPI.appPreviewsCreateInstance(appPreviewCreateRequest: appPreviewCreateRequest) { (response, error) in
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
 **appPreviewCreateRequest** | [**AppPreviewCreateRequest**](AppPreviewCreateRequest.md) | AppPreview representation | 

### Return type

[**AppPreviewResponse**](AppPreviewResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **appPreviewsDeleteInstance**
```swift
    open class func appPreviewsDeleteInstance(id: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource

AppPreviewsAPI.appPreviewsDeleteInstance(id: id) { (response, error) in
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

# **appPreviewsGetInstance**
```swift
    open class func appPreviewsGetInstance(id: String, fieldsAppPreviews: [FieldsAppPreviews_appPreviewsGetInstance]? = nil, include: [Include_appPreviewsGetInstance]? = nil, completion: @escaping (_ data: AppPreviewResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let fieldsAppPreviews = ["fieldsAppPreviews_example"] // [String] | the fields to include for returned resources of type appPreviews (optional)
let include = ["include_example"] // [String] | comma-separated list of relationships to include (optional)

AppPreviewsAPI.appPreviewsGetInstance(id: id, fieldsAppPreviews: fieldsAppPreviews, include: include) { (response, error) in
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
 **fieldsAppPreviews** | [**[String]**](String.md) | the fields to include for returned resources of type appPreviews | [optional] 
 **include** | [**[String]**](String.md) | comma-separated list of relationships to include | [optional] 

### Return type

[**AppPreviewResponse**](AppPreviewResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **appPreviewsUpdateInstance**
```swift
    open class func appPreviewsUpdateInstance(id: String, appPreviewUpdateRequest: AppPreviewUpdateRequest, completion: @escaping (_ data: AppPreviewResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let appPreviewUpdateRequest = AppPreviewUpdateRequest(data: AppPreviewUpdateRequest_data(type: "type_example", id: "id_example", attributes: AppPreviewUpdateRequest_data_attributes(sourceFileChecksum: "sourceFileChecksum_example", previewFrameTimeCode: "previewFrameTimeCode_example", uploaded: false))) // AppPreviewUpdateRequest | AppPreview representation

AppPreviewsAPI.appPreviewsUpdateInstance(id: id, appPreviewUpdateRequest: appPreviewUpdateRequest) { (response, error) in
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
 **appPreviewUpdateRequest** | [**AppPreviewUpdateRequest**](AppPreviewUpdateRequest.md) | AppPreview representation | 

### Return type

[**AppPreviewResponse**](AppPreviewResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

