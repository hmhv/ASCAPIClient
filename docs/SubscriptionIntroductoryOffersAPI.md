# SubscriptionIntroductoryOffersAPI

All URIs are relative to *https://api.appstoreconnect.apple.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**subscriptionIntroductoryOffersCreateInstance**](SubscriptionIntroductoryOffersAPI.md#subscriptionintroductoryofferscreateinstance) | **POST** /v1/subscriptionIntroductoryOffers | 
[**subscriptionIntroductoryOffersDeleteInstance**](SubscriptionIntroductoryOffersAPI.md#subscriptionintroductoryoffersdeleteinstance) | **DELETE** /v1/subscriptionIntroductoryOffers/{id} | 
[**subscriptionIntroductoryOffersUpdateInstance**](SubscriptionIntroductoryOffersAPI.md#subscriptionintroductoryoffersupdateinstance) | **PATCH** /v1/subscriptionIntroductoryOffers/{id} | 


# **subscriptionIntroductoryOffersCreateInstance**
```swift
    open class func subscriptionIntroductoryOffersCreateInstance(subscriptionIntroductoryOfferCreateRequest: SubscriptionIntroductoryOfferCreateRequest, completion: @escaping (_ data: SubscriptionIntroductoryOfferResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let subscriptionIntroductoryOfferCreateRequest = SubscriptionIntroductoryOfferCreateRequest(data: SubscriptionIntroductoryOfferCreateRequest_data(type: "type_example", attributes: SubscriptionIntroductoryOfferInlineCreate_attributes(startDate: Date(), endDate: Date(), duration: SubscriptionOfferDuration(), offerMode: SubscriptionOfferMode(), numberOfPeriods: 123), relationships: SubscriptionIntroductoryOfferCreateRequest_data_relationships(subscription: SubscriptionAppStoreReviewScreenshotCreateRequest_data_relationships_subscription(data: PromotedPurchase_relationships_subscription_data(type: "type_example", id: "id_example")), territory: AppPricePointV3_relationships_territory(data: AppPricePointV3_relationships_territory_data(type: "type_example", id: "id_example")), subscriptionPricePoint: SubscriptionIntroductoryOffer_relationships_subscriptionPricePoint(data: SubscriptionIntroductoryOffer_relationships_subscriptionPricePoint_data(type: "type_example", id: "id_example")))), included: [SubscriptionPricePointInlineCreate(type: "type_example", id: "id_example")]) // SubscriptionIntroductoryOfferCreateRequest | SubscriptionIntroductoryOffer representation

SubscriptionIntroductoryOffersAPI.subscriptionIntroductoryOffersCreateInstance(subscriptionIntroductoryOfferCreateRequest: subscriptionIntroductoryOfferCreateRequest) { (response, error) in
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
 **subscriptionIntroductoryOfferCreateRequest** | [**SubscriptionIntroductoryOfferCreateRequest**](SubscriptionIntroductoryOfferCreateRequest.md) | SubscriptionIntroductoryOffer representation | 

### Return type

[**SubscriptionIntroductoryOfferResponse**](SubscriptionIntroductoryOfferResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **subscriptionIntroductoryOffersDeleteInstance**
```swift
    open class func subscriptionIntroductoryOffersDeleteInstance(id: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource

SubscriptionIntroductoryOffersAPI.subscriptionIntroductoryOffersDeleteInstance(id: id) { (response, error) in
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

# **subscriptionIntroductoryOffersUpdateInstance**
```swift
    open class func subscriptionIntroductoryOffersUpdateInstance(id: String, subscriptionIntroductoryOfferUpdateRequest: SubscriptionIntroductoryOfferUpdateRequest, completion: @escaping (_ data: SubscriptionIntroductoryOfferResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let subscriptionIntroductoryOfferUpdateRequest = SubscriptionIntroductoryOfferUpdateRequest(data: SubscriptionIntroductoryOfferUpdateRequest_data(type: "type_example", id: "id_example", attributes: SubscriptionIntroductoryOfferUpdateRequest_data_attributes(endDate: Date()))) // SubscriptionIntroductoryOfferUpdateRequest | SubscriptionIntroductoryOffer representation

SubscriptionIntroductoryOffersAPI.subscriptionIntroductoryOffersUpdateInstance(id: id, subscriptionIntroductoryOfferUpdateRequest: subscriptionIntroductoryOfferUpdateRequest) { (response, error) in
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
 **subscriptionIntroductoryOfferUpdateRequest** | [**SubscriptionIntroductoryOfferUpdateRequest**](SubscriptionIntroductoryOfferUpdateRequest.md) | SubscriptionIntroductoryOffer representation | 

### Return type

[**SubscriptionIntroductoryOfferResponse**](SubscriptionIntroductoryOfferResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

