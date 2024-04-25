# SubscriptionPricesAPI

All URIs are relative to *https://api.appstoreconnect.apple.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**subscriptionPricesCreateInstance**](SubscriptionPricesAPI.md#subscriptionpricescreateinstance) | **POST** /v1/subscriptionPrices | 
[**subscriptionPricesDeleteInstance**](SubscriptionPricesAPI.md#subscriptionpricesdeleteinstance) | **DELETE** /v1/subscriptionPrices/{id} | 


# **subscriptionPricesCreateInstance**
```swift
    open class func subscriptionPricesCreateInstance(subscriptionPriceCreateRequest: SubscriptionPriceCreateRequest, completion: @escaping (_ data: SubscriptionPriceResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let subscriptionPriceCreateRequest = SubscriptionPriceCreateRequest(data: SubscriptionPriceCreateRequest_data(type: "type_example", attributes: SubscriptionPriceInlineCreate_attributes(startDate: Date(), preserveCurrentPrice: false), relationships: SubscriptionPriceCreateRequest_data_relationships(subscription: SubscriptionAppStoreReviewScreenshotCreateRequest_data_relationships_subscription(data: PromotedPurchase_relationships_subscription_data(type: "type_example", id: "id_example")), territory: SubscriptionIntroductoryOfferInlineCreate_relationships_territory(data: AppAvailability_relationships_availableTerritories_data_inner(type: "type_example", id: "id_example")), subscriptionPricePoint: SubscriptionPriceCreateRequest_data_relationships_subscriptionPricePoint(data: SubscriptionIntroductoryOffer_relationships_subscriptionPricePoint_data(type: "type_example", id: "id_example"))))) // SubscriptionPriceCreateRequest | SubscriptionPrice representation

SubscriptionPricesAPI.subscriptionPricesCreateInstance(subscriptionPriceCreateRequest: subscriptionPriceCreateRequest) { (response, error) in
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
 **subscriptionPriceCreateRequest** | [**SubscriptionPriceCreateRequest**](SubscriptionPriceCreateRequest.md) | SubscriptionPrice representation | 

### Return type

[**SubscriptionPriceResponse**](SubscriptionPriceResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **subscriptionPricesDeleteInstance**
```swift
    open class func subscriptionPricesDeleteInstance(id: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource

SubscriptionPricesAPI.subscriptionPricesDeleteInstance(id: id) { (response, error) in
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

