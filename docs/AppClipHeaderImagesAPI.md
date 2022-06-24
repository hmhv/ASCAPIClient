# AppClipHeaderImagesAPI

All URIs are relative to *https://api.appstoreconnect.apple.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**appClipHeaderImagesCreateInstance**](AppClipHeaderImagesAPI.md#appclipheaderimagescreateinstance) | **POST** /v1/appClipHeaderImages | 
[**appClipHeaderImagesDeleteInstance**](AppClipHeaderImagesAPI.md#appclipheaderimagesdeleteinstance) | **DELETE** /v1/appClipHeaderImages/{id} | 
[**appClipHeaderImagesGetInstance**](AppClipHeaderImagesAPI.md#appclipheaderimagesgetinstance) | **GET** /v1/appClipHeaderImages/{id} | 
[**appClipHeaderImagesUpdateInstance**](AppClipHeaderImagesAPI.md#appclipheaderimagesupdateinstance) | **PATCH** /v1/appClipHeaderImages/{id} | 


# **appClipHeaderImagesCreateInstance**
```swift
    open class func appClipHeaderImagesCreateInstance(appClipHeaderImageCreateRequest: AppClipHeaderImageCreateRequest, completion: @escaping (_ data: AppClipHeaderImageResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let appClipHeaderImageCreateRequest = AppClipHeaderImageCreateRequest(data: AppClipHeaderImageCreateRequest_data(type: "type_example", attributes: AppClipAdvancedExperienceImageCreateRequest_data_attributes(fileSize: 123, fileName: "fileName_example"), relationships: AppClipHeaderImageCreateRequest_data_relationships(appClipDefaultExperienceLocalization: AppClipHeaderImageCreateRequest_data_relationships_appClipDefaultExperienceLocalization(data: AppClipDefaultExperience_relationships_appClipDefaultExperienceLocalizations_data_inner(type: "type_example", id: "id_example"))))) // AppClipHeaderImageCreateRequest | AppClipHeaderImage representation

AppClipHeaderImagesAPI.appClipHeaderImagesCreateInstance(appClipHeaderImageCreateRequest: appClipHeaderImageCreateRequest) { (response, error) in
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
 **appClipHeaderImageCreateRequest** | [**AppClipHeaderImageCreateRequest**](AppClipHeaderImageCreateRequest.md) | AppClipHeaderImage representation | 

### Return type

[**AppClipHeaderImageResponse**](AppClipHeaderImageResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **appClipHeaderImagesDeleteInstance**
```swift
    open class func appClipHeaderImagesDeleteInstance(id: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource

AppClipHeaderImagesAPI.appClipHeaderImagesDeleteInstance(id: id) { (response, error) in
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

# **appClipHeaderImagesGetInstance**
```swift
    open class func appClipHeaderImagesGetInstance(id: String, fieldsAppClipHeaderImages: [FieldsAppClipHeaderImages_appClipHeaderImagesGetInstance]? = nil, include: [Include_appClipHeaderImagesGetInstance]? = nil, completion: @escaping (_ data: AppClipHeaderImageResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let fieldsAppClipHeaderImages = ["fieldsAppClipHeaderImages_example"] // [String] | the fields to include for returned resources of type appClipHeaderImages (optional)
let include = ["include_example"] // [String] | comma-separated list of relationships to include (optional)

AppClipHeaderImagesAPI.appClipHeaderImagesGetInstance(id: id, fieldsAppClipHeaderImages: fieldsAppClipHeaderImages, include: include) { (response, error) in
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
 **fieldsAppClipHeaderImages** | [**[String]**](String.md) | the fields to include for returned resources of type appClipHeaderImages | [optional] 
 **include** | [**[String]**](String.md) | comma-separated list of relationships to include | [optional] 

### Return type

[**AppClipHeaderImageResponse**](AppClipHeaderImageResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **appClipHeaderImagesUpdateInstance**
```swift
    open class func appClipHeaderImagesUpdateInstance(id: String, appClipHeaderImageUpdateRequest: AppClipHeaderImageUpdateRequest, completion: @escaping (_ data: AppClipHeaderImageResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let appClipHeaderImageUpdateRequest = AppClipHeaderImageUpdateRequest(data: AppClipHeaderImageUpdateRequest_data(type: "type_example", id: "id_example", attributes: AppClipAdvancedExperienceImageUpdateRequest_data_attributes(sourceFileChecksum: "sourceFileChecksum_example", uploaded: false))) // AppClipHeaderImageUpdateRequest | AppClipHeaderImage representation

AppClipHeaderImagesAPI.appClipHeaderImagesUpdateInstance(id: id, appClipHeaderImageUpdateRequest: appClipHeaderImageUpdateRequest) { (response, error) in
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
 **appClipHeaderImageUpdateRequest** | [**AppClipHeaderImageUpdateRequest**](AppClipHeaderImageUpdateRequest.md) | AppClipHeaderImage representation | 

### Return type

[**AppClipHeaderImageResponse**](AppClipHeaderImageResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

