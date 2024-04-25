# SubscriptionAppStoreReviewScreenshotsAPI

All URIs are relative to *https://api.appstoreconnect.apple.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**subscriptionAppStoreReviewScreenshotsCreateInstance**](SubscriptionAppStoreReviewScreenshotsAPI.md#subscriptionappstorereviewscreenshotscreateinstance) | **POST** /v1/subscriptionAppStoreReviewScreenshots | 
[**subscriptionAppStoreReviewScreenshotsDeleteInstance**](SubscriptionAppStoreReviewScreenshotsAPI.md#subscriptionappstorereviewscreenshotsdeleteinstance) | **DELETE** /v1/subscriptionAppStoreReviewScreenshots/{id} | 
[**subscriptionAppStoreReviewScreenshotsGetInstance**](SubscriptionAppStoreReviewScreenshotsAPI.md#subscriptionappstorereviewscreenshotsgetinstance) | **GET** /v1/subscriptionAppStoreReviewScreenshots/{id} | 
[**subscriptionAppStoreReviewScreenshotsUpdateInstance**](SubscriptionAppStoreReviewScreenshotsAPI.md#subscriptionappstorereviewscreenshotsupdateinstance) | **PATCH** /v1/subscriptionAppStoreReviewScreenshots/{id} | 


# **subscriptionAppStoreReviewScreenshotsCreateInstance**
```swift
    open class func subscriptionAppStoreReviewScreenshotsCreateInstance(subscriptionAppStoreReviewScreenshotCreateRequest: SubscriptionAppStoreReviewScreenshotCreateRequest, completion: @escaping (_ data: SubscriptionAppStoreReviewScreenshotResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let subscriptionAppStoreReviewScreenshotCreateRequest = SubscriptionAppStoreReviewScreenshotCreateRequest(data: SubscriptionAppStoreReviewScreenshotCreateRequest_data(type: "type_example", attributes: AppClipAdvancedExperienceImageCreateRequest_data_attributes(fileSize: 123, fileName: "fileName_example"), relationships: SubscriptionAppStoreReviewScreenshotCreateRequest_data_relationships(subscription: SubscriptionAppStoreReviewScreenshotCreateRequest_data_relationships_subscription(data: PromotedPurchase_relationships_subscription_data(type: "type_example", id: "id_example"))))) // SubscriptionAppStoreReviewScreenshotCreateRequest | SubscriptionAppStoreReviewScreenshot representation

SubscriptionAppStoreReviewScreenshotsAPI.subscriptionAppStoreReviewScreenshotsCreateInstance(subscriptionAppStoreReviewScreenshotCreateRequest: subscriptionAppStoreReviewScreenshotCreateRequest) { (response, error) in
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
 **subscriptionAppStoreReviewScreenshotCreateRequest** | [**SubscriptionAppStoreReviewScreenshotCreateRequest**](SubscriptionAppStoreReviewScreenshotCreateRequest.md) | SubscriptionAppStoreReviewScreenshot representation | 

### Return type

[**SubscriptionAppStoreReviewScreenshotResponse**](SubscriptionAppStoreReviewScreenshotResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **subscriptionAppStoreReviewScreenshotsDeleteInstance**
```swift
    open class func subscriptionAppStoreReviewScreenshotsDeleteInstance(id: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource

SubscriptionAppStoreReviewScreenshotsAPI.subscriptionAppStoreReviewScreenshotsDeleteInstance(id: id) { (response, error) in
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

# **subscriptionAppStoreReviewScreenshotsGetInstance**
```swift
    open class func subscriptionAppStoreReviewScreenshotsGetInstance(id: String, fieldsSubscriptionAppStoreReviewScreenshots: [FieldsSubscriptionAppStoreReviewScreenshots_subscriptionAppStoreReviewScreenshotsGetInstance]? = nil, include: [Include_subscriptionAppStoreReviewScreenshotsGetInstance]? = nil, completion: @escaping (_ data: SubscriptionAppStoreReviewScreenshotResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let fieldsSubscriptionAppStoreReviewScreenshots = ["fieldsSubscriptionAppStoreReviewScreenshots_example"] // [String] | the fields to include for returned resources of type subscriptionAppStoreReviewScreenshots (optional)
let include = ["include_example"] // [String] | comma-separated list of relationships to include (optional)

SubscriptionAppStoreReviewScreenshotsAPI.subscriptionAppStoreReviewScreenshotsGetInstance(id: id, fieldsSubscriptionAppStoreReviewScreenshots: fieldsSubscriptionAppStoreReviewScreenshots, include: include) { (response, error) in
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
 **fieldsSubscriptionAppStoreReviewScreenshots** | [**[String]**](String.md) | the fields to include for returned resources of type subscriptionAppStoreReviewScreenshots | [optional] 
 **include** | [**[String]**](String.md) | comma-separated list of relationships to include | [optional] 

### Return type

[**SubscriptionAppStoreReviewScreenshotResponse**](SubscriptionAppStoreReviewScreenshotResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **subscriptionAppStoreReviewScreenshotsUpdateInstance**
```swift
    open class func subscriptionAppStoreReviewScreenshotsUpdateInstance(id: String, subscriptionAppStoreReviewScreenshotUpdateRequest: SubscriptionAppStoreReviewScreenshotUpdateRequest, completion: @escaping (_ data: SubscriptionAppStoreReviewScreenshotResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let subscriptionAppStoreReviewScreenshotUpdateRequest = SubscriptionAppStoreReviewScreenshotUpdateRequest(data: SubscriptionAppStoreReviewScreenshotUpdateRequest_data(type: "type_example", id: "id_example", attributes: AppClipAdvancedExperienceImageUpdateRequest_data_attributes(sourceFileChecksum: "sourceFileChecksum_example", uploaded: false))) // SubscriptionAppStoreReviewScreenshotUpdateRequest | SubscriptionAppStoreReviewScreenshot representation

SubscriptionAppStoreReviewScreenshotsAPI.subscriptionAppStoreReviewScreenshotsUpdateInstance(id: id, subscriptionAppStoreReviewScreenshotUpdateRequest: subscriptionAppStoreReviewScreenshotUpdateRequest) { (response, error) in
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
 **subscriptionAppStoreReviewScreenshotUpdateRequest** | [**SubscriptionAppStoreReviewScreenshotUpdateRequest**](SubscriptionAppStoreReviewScreenshotUpdateRequest.md) | SubscriptionAppStoreReviewScreenshot representation | 

### Return type

[**SubscriptionAppStoreReviewScreenshotResponse**](SubscriptionAppStoreReviewScreenshotResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

