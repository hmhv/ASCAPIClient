# SubscriptionImagesAPI

All URIs are relative to *https://api.appstoreconnect.apple.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**subscriptionImagesCreateInstance**](SubscriptionImagesAPI.md#subscriptionimagescreateinstance) | **POST** /v1/subscriptionImages | 
[**subscriptionImagesDeleteInstance**](SubscriptionImagesAPI.md#subscriptionimagesdeleteinstance) | **DELETE** /v1/subscriptionImages/{id} | 
[**subscriptionImagesGetInstance**](SubscriptionImagesAPI.md#subscriptionimagesgetinstance) | **GET** /v1/subscriptionImages/{id} | 
[**subscriptionImagesUpdateInstance**](SubscriptionImagesAPI.md#subscriptionimagesupdateinstance) | **PATCH** /v1/subscriptionImages/{id} | 


# **subscriptionImagesCreateInstance**
```swift
    open class func subscriptionImagesCreateInstance(subscriptionImageCreateRequest: SubscriptionImageCreateRequest, completion: @escaping (_ data: SubscriptionImageResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let subscriptionImageCreateRequest = SubscriptionImageCreateRequest(data: SubscriptionImageCreateRequest_data(type: "type_example", attributes: AppClipAdvancedExperienceImageCreateRequest_data_attributes(fileSize: 123, fileName: "fileName_example"), relationships: SubscriptionAppStoreReviewScreenshotCreateRequest_data_relationships(subscription: SubscriptionAppStoreReviewScreenshotCreateRequest_data_relationships_subscription(data: PromotedPurchase_relationships_subscription_data(type: "type_example", id: "id_example"))))) // SubscriptionImageCreateRequest | SubscriptionImage representation

SubscriptionImagesAPI.subscriptionImagesCreateInstance(subscriptionImageCreateRequest: subscriptionImageCreateRequest) { (response, error) in
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
 **subscriptionImageCreateRequest** | [**SubscriptionImageCreateRequest**](SubscriptionImageCreateRequest.md) | SubscriptionImage representation | 

### Return type

[**SubscriptionImageResponse**](SubscriptionImageResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **subscriptionImagesDeleteInstance**
```swift
    open class func subscriptionImagesDeleteInstance(id: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource

SubscriptionImagesAPI.subscriptionImagesDeleteInstance(id: id) { (response, error) in
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

# **subscriptionImagesGetInstance**
```swift
    open class func subscriptionImagesGetInstance(id: String, fieldsSubscriptionImages: [FieldsSubscriptionImages_subscriptionImagesGetInstance]? = nil, include: [Include_subscriptionImagesGetInstance]? = nil, completion: @escaping (_ data: SubscriptionImageResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let fieldsSubscriptionImages = ["fieldsSubscriptionImages_example"] // [String] | the fields to include for returned resources of type subscriptionImages (optional)
let include = ["include_example"] // [String] | comma-separated list of relationships to include (optional)

SubscriptionImagesAPI.subscriptionImagesGetInstance(id: id, fieldsSubscriptionImages: fieldsSubscriptionImages, include: include) { (response, error) in
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
 **fieldsSubscriptionImages** | [**[String]**](String.md) | the fields to include for returned resources of type subscriptionImages | [optional] 
 **include** | [**[String]**](String.md) | comma-separated list of relationships to include | [optional] 

### Return type

[**SubscriptionImageResponse**](SubscriptionImageResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **subscriptionImagesUpdateInstance**
```swift
    open class func subscriptionImagesUpdateInstance(id: String, subscriptionImageUpdateRequest: SubscriptionImageUpdateRequest, completion: @escaping (_ data: SubscriptionImageResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let subscriptionImageUpdateRequest = SubscriptionImageUpdateRequest(data: SubscriptionImageUpdateRequest_data(type: "type_example", id: "id_example", attributes: AppClipAdvancedExperienceImageUpdateRequest_data_attributes(sourceFileChecksum: "sourceFileChecksum_example", uploaded: false))) // SubscriptionImageUpdateRequest | SubscriptionImage representation

SubscriptionImagesAPI.subscriptionImagesUpdateInstance(id: id, subscriptionImageUpdateRequest: subscriptionImageUpdateRequest) { (response, error) in
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
 **subscriptionImageUpdateRequest** | [**SubscriptionImageUpdateRequest**](SubscriptionImageUpdateRequest.md) | SubscriptionImage representation | 

### Return type

[**SubscriptionImageResponse**](SubscriptionImageResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

