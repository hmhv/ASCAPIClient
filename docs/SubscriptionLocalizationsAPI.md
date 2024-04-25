# SubscriptionLocalizationsAPI

All URIs are relative to *https://api.appstoreconnect.apple.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**subscriptionLocalizationsCreateInstance**](SubscriptionLocalizationsAPI.md#subscriptionlocalizationscreateinstance) | **POST** /v1/subscriptionLocalizations | 
[**subscriptionLocalizationsDeleteInstance**](SubscriptionLocalizationsAPI.md#subscriptionlocalizationsdeleteinstance) | **DELETE** /v1/subscriptionLocalizations/{id} | 
[**subscriptionLocalizationsGetInstance**](SubscriptionLocalizationsAPI.md#subscriptionlocalizationsgetinstance) | **GET** /v1/subscriptionLocalizations/{id} | 
[**subscriptionLocalizationsUpdateInstance**](SubscriptionLocalizationsAPI.md#subscriptionlocalizationsupdateinstance) | **PATCH** /v1/subscriptionLocalizations/{id} | 


# **subscriptionLocalizationsCreateInstance**
```swift
    open class func subscriptionLocalizationsCreateInstance(subscriptionLocalizationCreateRequest: SubscriptionLocalizationCreateRequest, completion: @escaping (_ data: SubscriptionLocalizationResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let subscriptionLocalizationCreateRequest = SubscriptionLocalizationCreateRequest(data: SubscriptionLocalizationCreateRequest_data(type: "type_example", attributes: InAppPurchaseLocalizationCreateRequest_data_attributes(name: "name_example", locale: "locale_example", description: "description_example"), relationships: SubscriptionAppStoreReviewScreenshotCreateRequest_data_relationships(subscription: SubscriptionAppStoreReviewScreenshotCreateRequest_data_relationships_subscription(data: PromotedPurchase_relationships_subscription_data(type: "type_example", id: "id_example"))))) // SubscriptionLocalizationCreateRequest | SubscriptionLocalization representation

SubscriptionLocalizationsAPI.subscriptionLocalizationsCreateInstance(subscriptionLocalizationCreateRequest: subscriptionLocalizationCreateRequest) { (response, error) in
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
 **subscriptionLocalizationCreateRequest** | [**SubscriptionLocalizationCreateRequest**](SubscriptionLocalizationCreateRequest.md) | SubscriptionLocalization representation | 

### Return type

[**SubscriptionLocalizationResponse**](SubscriptionLocalizationResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **subscriptionLocalizationsDeleteInstance**
```swift
    open class func subscriptionLocalizationsDeleteInstance(id: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource

SubscriptionLocalizationsAPI.subscriptionLocalizationsDeleteInstance(id: id) { (response, error) in
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

# **subscriptionLocalizationsGetInstance**
```swift
    open class func subscriptionLocalizationsGetInstance(id: String, fieldsSubscriptionLocalizations: [FieldsSubscriptionLocalizations_subscriptionLocalizationsGetInstance]? = nil, include: [Include_subscriptionLocalizationsGetInstance]? = nil, completion: @escaping (_ data: SubscriptionLocalizationResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let fieldsSubscriptionLocalizations = ["fieldsSubscriptionLocalizations_example"] // [String] | the fields to include for returned resources of type subscriptionLocalizations (optional)
let include = ["include_example"] // [String] | comma-separated list of relationships to include (optional)

SubscriptionLocalizationsAPI.subscriptionLocalizationsGetInstance(id: id, fieldsSubscriptionLocalizations: fieldsSubscriptionLocalizations, include: include) { (response, error) in
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
 **fieldsSubscriptionLocalizations** | [**[String]**](String.md) | the fields to include for returned resources of type subscriptionLocalizations | [optional] 
 **include** | [**[String]**](String.md) | comma-separated list of relationships to include | [optional] 

### Return type

[**SubscriptionLocalizationResponse**](SubscriptionLocalizationResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **subscriptionLocalizationsUpdateInstance**
```swift
    open class func subscriptionLocalizationsUpdateInstance(id: String, subscriptionLocalizationUpdateRequest: SubscriptionLocalizationUpdateRequest, completion: @escaping (_ data: SubscriptionLocalizationResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let subscriptionLocalizationUpdateRequest = SubscriptionLocalizationUpdateRequest(data: SubscriptionLocalizationUpdateRequest_data(type: "type_example", id: "id_example", attributes: InAppPurchaseLocalizationUpdateRequest_data_attributes(name: "name_example", description: "description_example"))) // SubscriptionLocalizationUpdateRequest | SubscriptionLocalization representation

SubscriptionLocalizationsAPI.subscriptionLocalizationsUpdateInstance(id: id, subscriptionLocalizationUpdateRequest: subscriptionLocalizationUpdateRequest) { (response, error) in
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
 **subscriptionLocalizationUpdateRequest** | [**SubscriptionLocalizationUpdateRequest**](SubscriptionLocalizationUpdateRequest.md) | SubscriptionLocalization representation | 

### Return type

[**SubscriptionLocalizationResponse**](SubscriptionLocalizationResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

