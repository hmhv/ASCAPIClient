# InAppPurchaseAppStoreReviewScreenshotsAPI

All URIs are relative to *https://api.appstoreconnect.apple.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**inAppPurchaseAppStoreReviewScreenshotsCreateInstance**](InAppPurchaseAppStoreReviewScreenshotsAPI.md#inapppurchaseappstorereviewscreenshotscreateinstance) | **POST** /v1/inAppPurchaseAppStoreReviewScreenshots | 
[**inAppPurchaseAppStoreReviewScreenshotsDeleteInstance**](InAppPurchaseAppStoreReviewScreenshotsAPI.md#inapppurchaseappstorereviewscreenshotsdeleteinstance) | **DELETE** /v1/inAppPurchaseAppStoreReviewScreenshots/{id} | 
[**inAppPurchaseAppStoreReviewScreenshotsGetInstance**](InAppPurchaseAppStoreReviewScreenshotsAPI.md#inapppurchaseappstorereviewscreenshotsgetinstance) | **GET** /v1/inAppPurchaseAppStoreReviewScreenshots/{id} | 
[**inAppPurchaseAppStoreReviewScreenshotsUpdateInstance**](InAppPurchaseAppStoreReviewScreenshotsAPI.md#inapppurchaseappstorereviewscreenshotsupdateinstance) | **PATCH** /v1/inAppPurchaseAppStoreReviewScreenshots/{id} | 


# **inAppPurchaseAppStoreReviewScreenshotsCreateInstance**
```swift
    open class func inAppPurchaseAppStoreReviewScreenshotsCreateInstance(inAppPurchaseAppStoreReviewScreenshotCreateRequest: InAppPurchaseAppStoreReviewScreenshotCreateRequest, completion: @escaping (_ data: InAppPurchaseAppStoreReviewScreenshotResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let inAppPurchaseAppStoreReviewScreenshotCreateRequest = InAppPurchaseAppStoreReviewScreenshotCreateRequest(data: InAppPurchaseAppStoreReviewScreenshotCreateRequest_data(type: "type_example", attributes: AppClipAdvancedExperienceImageCreateRequest_data_attributes(fileSize: 123, fileName: "fileName_example"), relationships: InAppPurchaseAppStoreReviewScreenshotCreateRequest_data_relationships(inAppPurchaseV2: InAppPurchaseAppStoreReviewScreenshotCreateRequest_data_relationships_inAppPurchaseV2(data: App_relationships_inAppPurchases_data_inner(type: "type_example", id: "id_example"))))) // InAppPurchaseAppStoreReviewScreenshotCreateRequest | InAppPurchaseAppStoreReviewScreenshot representation

InAppPurchaseAppStoreReviewScreenshotsAPI.inAppPurchaseAppStoreReviewScreenshotsCreateInstance(inAppPurchaseAppStoreReviewScreenshotCreateRequest: inAppPurchaseAppStoreReviewScreenshotCreateRequest) { (response, error) in
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
 **inAppPurchaseAppStoreReviewScreenshotCreateRequest** | [**InAppPurchaseAppStoreReviewScreenshotCreateRequest**](InAppPurchaseAppStoreReviewScreenshotCreateRequest.md) | InAppPurchaseAppStoreReviewScreenshot representation | 

### Return type

[**InAppPurchaseAppStoreReviewScreenshotResponse**](InAppPurchaseAppStoreReviewScreenshotResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **inAppPurchaseAppStoreReviewScreenshotsDeleteInstance**
```swift
    open class func inAppPurchaseAppStoreReviewScreenshotsDeleteInstance(id: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource

InAppPurchaseAppStoreReviewScreenshotsAPI.inAppPurchaseAppStoreReviewScreenshotsDeleteInstance(id: id) { (response, error) in
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

# **inAppPurchaseAppStoreReviewScreenshotsGetInstance**
```swift
    open class func inAppPurchaseAppStoreReviewScreenshotsGetInstance(id: String, fieldsInAppPurchaseAppStoreReviewScreenshots: [FieldsInAppPurchaseAppStoreReviewScreenshots_inAppPurchaseAppStoreReviewScreenshotsGetInstance]? = nil, include: [Include_inAppPurchaseAppStoreReviewScreenshotsGetInstance]? = nil, completion: @escaping (_ data: InAppPurchaseAppStoreReviewScreenshotResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let fieldsInAppPurchaseAppStoreReviewScreenshots = ["fieldsInAppPurchaseAppStoreReviewScreenshots_example"] // [String] | the fields to include for returned resources of type inAppPurchaseAppStoreReviewScreenshots (optional)
let include = ["include_example"] // [String] | comma-separated list of relationships to include (optional)

InAppPurchaseAppStoreReviewScreenshotsAPI.inAppPurchaseAppStoreReviewScreenshotsGetInstance(id: id, fieldsInAppPurchaseAppStoreReviewScreenshots: fieldsInAppPurchaseAppStoreReviewScreenshots, include: include) { (response, error) in
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
 **fieldsInAppPurchaseAppStoreReviewScreenshots** | [**[String]**](String.md) | the fields to include for returned resources of type inAppPurchaseAppStoreReviewScreenshots | [optional] 
 **include** | [**[String]**](String.md) | comma-separated list of relationships to include | [optional] 

### Return type

[**InAppPurchaseAppStoreReviewScreenshotResponse**](InAppPurchaseAppStoreReviewScreenshotResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **inAppPurchaseAppStoreReviewScreenshotsUpdateInstance**
```swift
    open class func inAppPurchaseAppStoreReviewScreenshotsUpdateInstance(id: String, inAppPurchaseAppStoreReviewScreenshotUpdateRequest: InAppPurchaseAppStoreReviewScreenshotUpdateRequest, completion: @escaping (_ data: InAppPurchaseAppStoreReviewScreenshotResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let inAppPurchaseAppStoreReviewScreenshotUpdateRequest = InAppPurchaseAppStoreReviewScreenshotUpdateRequest(data: InAppPurchaseAppStoreReviewScreenshotUpdateRequest_data(type: "type_example", id: "id_example", attributes: AppClipAdvancedExperienceImageUpdateRequest_data_attributes(sourceFileChecksum: "sourceFileChecksum_example", uploaded: false))) // InAppPurchaseAppStoreReviewScreenshotUpdateRequest | InAppPurchaseAppStoreReviewScreenshot representation

InAppPurchaseAppStoreReviewScreenshotsAPI.inAppPurchaseAppStoreReviewScreenshotsUpdateInstance(id: id, inAppPurchaseAppStoreReviewScreenshotUpdateRequest: inAppPurchaseAppStoreReviewScreenshotUpdateRequest) { (response, error) in
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
 **inAppPurchaseAppStoreReviewScreenshotUpdateRequest** | [**InAppPurchaseAppStoreReviewScreenshotUpdateRequest**](InAppPurchaseAppStoreReviewScreenshotUpdateRequest.md) | InAppPurchaseAppStoreReviewScreenshot representation | 

### Return type

[**InAppPurchaseAppStoreReviewScreenshotResponse**](InAppPurchaseAppStoreReviewScreenshotResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

