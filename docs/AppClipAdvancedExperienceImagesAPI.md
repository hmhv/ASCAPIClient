# AppClipAdvancedExperienceImagesAPI

All URIs are relative to *https://api.appstoreconnect.apple.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**appClipAdvancedExperienceImagesCreateInstance**](AppClipAdvancedExperienceImagesAPI.md#appclipadvancedexperienceimagescreateinstance) | **POST** /v1/appClipAdvancedExperienceImages | 
[**appClipAdvancedExperienceImagesGetInstance**](AppClipAdvancedExperienceImagesAPI.md#appclipadvancedexperienceimagesgetinstance) | **GET** /v1/appClipAdvancedExperienceImages/{id} | 
[**appClipAdvancedExperienceImagesUpdateInstance**](AppClipAdvancedExperienceImagesAPI.md#appclipadvancedexperienceimagesupdateinstance) | **PATCH** /v1/appClipAdvancedExperienceImages/{id} | 


# **appClipAdvancedExperienceImagesCreateInstance**
```swift
    open class func appClipAdvancedExperienceImagesCreateInstance(appClipAdvancedExperienceImageCreateRequest: AppClipAdvancedExperienceImageCreateRequest, completion: @escaping (_ data: AppClipAdvancedExperienceImageResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let appClipAdvancedExperienceImageCreateRequest = AppClipAdvancedExperienceImageCreateRequest(data: AppClipAdvancedExperienceImageCreateRequest_data(type: "type_example", attributes: AppClipAdvancedExperienceImageCreateRequest_data_attributes(fileSize: 123, fileName: "fileName_example"))) // AppClipAdvancedExperienceImageCreateRequest | AppClipAdvancedExperienceImage representation

AppClipAdvancedExperienceImagesAPI.appClipAdvancedExperienceImagesCreateInstance(appClipAdvancedExperienceImageCreateRequest: appClipAdvancedExperienceImageCreateRequest) { (response, error) in
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
 **appClipAdvancedExperienceImageCreateRequest** | [**AppClipAdvancedExperienceImageCreateRequest**](AppClipAdvancedExperienceImageCreateRequest.md) | AppClipAdvancedExperienceImage representation | 

### Return type

[**AppClipAdvancedExperienceImageResponse**](AppClipAdvancedExperienceImageResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **appClipAdvancedExperienceImagesGetInstance**
```swift
    open class func appClipAdvancedExperienceImagesGetInstance(id: String, fieldsAppClipAdvancedExperienceImages: [FieldsAppClipAdvancedExperienceImages_appClipAdvancedExperienceImagesGetInstance]? = nil, completion: @escaping (_ data: AppClipAdvancedExperienceImageResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let fieldsAppClipAdvancedExperienceImages = ["fieldsAppClipAdvancedExperienceImages_example"] // [String] | the fields to include for returned resources of type appClipAdvancedExperienceImages (optional)

AppClipAdvancedExperienceImagesAPI.appClipAdvancedExperienceImagesGetInstance(id: id, fieldsAppClipAdvancedExperienceImages: fieldsAppClipAdvancedExperienceImages) { (response, error) in
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
 **fieldsAppClipAdvancedExperienceImages** | [**[String]**](String.md) | the fields to include for returned resources of type appClipAdvancedExperienceImages | [optional] 

### Return type

[**AppClipAdvancedExperienceImageResponse**](AppClipAdvancedExperienceImageResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **appClipAdvancedExperienceImagesUpdateInstance**
```swift
    open class func appClipAdvancedExperienceImagesUpdateInstance(id: String, appClipAdvancedExperienceImageUpdateRequest: AppClipAdvancedExperienceImageUpdateRequest, completion: @escaping (_ data: AppClipAdvancedExperienceImageResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let appClipAdvancedExperienceImageUpdateRequest = AppClipAdvancedExperienceImageUpdateRequest(data: AppClipAdvancedExperienceImageUpdateRequest_data(type: "type_example", id: "id_example", attributes: AppClipAdvancedExperienceImageUpdateRequest_data_attributes(sourceFileChecksum: "sourceFileChecksum_example", uploaded: false))) // AppClipAdvancedExperienceImageUpdateRequest | AppClipAdvancedExperienceImage representation

AppClipAdvancedExperienceImagesAPI.appClipAdvancedExperienceImagesUpdateInstance(id: id, appClipAdvancedExperienceImageUpdateRequest: appClipAdvancedExperienceImageUpdateRequest) { (response, error) in
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
 **appClipAdvancedExperienceImageUpdateRequest** | [**AppClipAdvancedExperienceImageUpdateRequest**](AppClipAdvancedExperienceImageUpdateRequest.md) | AppClipAdvancedExperienceImage representation | 

### Return type

[**AppClipAdvancedExperienceImageResponse**](AppClipAdvancedExperienceImageResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

