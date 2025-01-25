# InAppPurchaseImagesAPI

All URIs are relative to *https://api.appstoreconnect.apple.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**inAppPurchaseImagesCreateInstance**](InAppPurchaseImagesAPI.md#inapppurchaseimagescreateinstance) | **POST** /v1/inAppPurchaseImages | 
[**inAppPurchaseImagesDeleteInstance**](InAppPurchaseImagesAPI.md#inapppurchaseimagesdeleteinstance) | **DELETE** /v1/inAppPurchaseImages/{id} | 
[**inAppPurchaseImagesGetInstance**](InAppPurchaseImagesAPI.md#inapppurchaseimagesgetinstance) | **GET** /v1/inAppPurchaseImages/{id} | 
[**inAppPurchaseImagesUpdateInstance**](InAppPurchaseImagesAPI.md#inapppurchaseimagesupdateinstance) | **PATCH** /v1/inAppPurchaseImages/{id} | 


# **inAppPurchaseImagesCreateInstance**
```swift
    open class func inAppPurchaseImagesCreateInstance(inAppPurchaseImageCreateRequest: InAppPurchaseImageCreateRequest, completion: @escaping (_ data: InAppPurchaseImageResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let inAppPurchaseImageCreateRequest = InAppPurchaseImageCreateRequest(data: InAppPurchaseImageCreateRequest_data(type: "type_example", attributes: AppClipAdvancedExperienceImageCreateRequest_data_attributes(fileSize: 123, fileName: "fileName_example"), relationships: InAppPurchaseImageCreateRequest_data_relationships(inAppPurchase: InAppPurchaseAppStoreReviewScreenshotCreateRequest_data_relationships_inAppPurchaseV2(data: App_relationships_inAppPurchases_data_inner(type: "type_example", id: "id_example"))))) // InAppPurchaseImageCreateRequest | InAppPurchaseImage representation

InAppPurchaseImagesAPI.inAppPurchaseImagesCreateInstance(inAppPurchaseImageCreateRequest: inAppPurchaseImageCreateRequest) { (response, error) in
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
 **inAppPurchaseImageCreateRequest** | [**InAppPurchaseImageCreateRequest**](InAppPurchaseImageCreateRequest.md) | InAppPurchaseImage representation | 

### Return type

[**InAppPurchaseImageResponse**](InAppPurchaseImageResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **inAppPurchaseImagesDeleteInstance**
```swift
    open class func inAppPurchaseImagesDeleteInstance(id: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource

InAppPurchaseImagesAPI.inAppPurchaseImagesDeleteInstance(id: id) { (response, error) in
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

# **inAppPurchaseImagesGetInstance**
```swift
    open class func inAppPurchaseImagesGetInstance(id: String, fieldsInAppPurchaseImages: [FieldsInAppPurchaseImages_inAppPurchaseImagesGetInstance]? = nil, include: [Include_inAppPurchaseImagesGetInstance]? = nil, completion: @escaping (_ data: InAppPurchaseImageResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let fieldsInAppPurchaseImages = ["fieldsInAppPurchaseImages_example"] // [String] | the fields to include for returned resources of type inAppPurchaseImages (optional)
let include = ["include_example"] // [String] | comma-separated list of relationships to include (optional)

InAppPurchaseImagesAPI.inAppPurchaseImagesGetInstance(id: id, fieldsInAppPurchaseImages: fieldsInAppPurchaseImages, include: include) { (response, error) in
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
 **fieldsInAppPurchaseImages** | [**[String]**](String.md) | the fields to include for returned resources of type inAppPurchaseImages | [optional] 
 **include** | [**[String]**](String.md) | comma-separated list of relationships to include | [optional] 

### Return type

[**InAppPurchaseImageResponse**](InAppPurchaseImageResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **inAppPurchaseImagesUpdateInstance**
```swift
    open class func inAppPurchaseImagesUpdateInstance(id: String, inAppPurchaseImageUpdateRequest: InAppPurchaseImageUpdateRequest, completion: @escaping (_ data: InAppPurchaseImageResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let inAppPurchaseImageUpdateRequest = InAppPurchaseImageUpdateRequest(data: InAppPurchaseImageUpdateRequest_data(type: "type_example", id: "id_example", attributes: AppClipAdvancedExperienceImageUpdateRequest_data_attributes(sourceFileChecksum: "sourceFileChecksum_example", uploaded: false))) // InAppPurchaseImageUpdateRequest | InAppPurchaseImage representation

InAppPurchaseImagesAPI.inAppPurchaseImagesUpdateInstance(id: id, inAppPurchaseImageUpdateRequest: inAppPurchaseImageUpdateRequest) { (response, error) in
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
 **inAppPurchaseImageUpdateRequest** | [**InAppPurchaseImageUpdateRequest**](InAppPurchaseImageUpdateRequest.md) | InAppPurchaseImage representation | 

### Return type

[**InAppPurchaseImageResponse**](InAppPurchaseImageResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

