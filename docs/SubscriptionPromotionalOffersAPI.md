# SubscriptionPromotionalOffersAPI

All URIs are relative to *https://api.appstoreconnect.apple.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**subscriptionPromotionalOffersCreateInstance**](SubscriptionPromotionalOffersAPI.md#subscriptionpromotionalofferscreateinstance) | **POST** /v1/subscriptionPromotionalOffers | 
[**subscriptionPromotionalOffersDeleteInstance**](SubscriptionPromotionalOffersAPI.md#subscriptionpromotionaloffersdeleteinstance) | **DELETE** /v1/subscriptionPromotionalOffers/{id} | 
[**subscriptionPromotionalOffersGetInstance**](SubscriptionPromotionalOffersAPI.md#subscriptionpromotionaloffersgetinstance) | **GET** /v1/subscriptionPromotionalOffers/{id} | 
[**subscriptionPromotionalOffersPricesGetToManyRelated**](SubscriptionPromotionalOffersAPI.md#subscriptionpromotionalofferspricesgettomanyrelated) | **GET** /v1/subscriptionPromotionalOffers/{id}/prices | 
[**subscriptionPromotionalOffersUpdateInstance**](SubscriptionPromotionalOffersAPI.md#subscriptionpromotionaloffersupdateinstance) | **PATCH** /v1/subscriptionPromotionalOffers/{id} | 


# **subscriptionPromotionalOffersCreateInstance**
```swift
    open class func subscriptionPromotionalOffersCreateInstance(subscriptionPromotionalOfferCreateRequest: SubscriptionPromotionalOfferCreateRequest, completion: @escaping (_ data: SubscriptionPromotionalOfferResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let subscriptionPromotionalOfferCreateRequest = SubscriptionPromotionalOfferCreateRequest(data: SubscriptionPromotionalOfferCreateRequest_data(type: "type_example", attributes: SubscriptionPromotionalOfferInlineCreate_attributes(name: "name_example", offerCode: "offerCode_example", duration: SubscriptionOfferDuration(), offerMode: SubscriptionOfferMode(), numberOfPeriods: 123), relationships: SubscriptionPromotionalOfferCreateRequest_data_relationships(subscription: SubscriptionAppStoreReviewScreenshotCreateRequest_data_relationships_subscription(data: PromotedPurchase_relationships_subscription_data(type: "type_example", id: "id_example")), prices: SubscriptionPromotionalOfferCreateRequest_data_relationships_prices(data: [SubscriptionPromotionalOffer_relationships_prices_data_inner(type: "type_example", id: "id_example")]))), included: [SubscriptionPromotionalOfferPriceInlineCreate(type: "type_example", id: "id_example", relationships: SubscriptionOfferCodePriceInlineCreate_relationships(territory: SubscriptionIntroductoryOfferInlineCreate_relationships_territory(data: AppAvailability_relationships_availableTerritories_data_inner(type: "type_example", id: "id_example")), subscriptionPricePoint: SubscriptionIntroductoryOfferInlineCreate_relationships_subscriptionPricePoint(data: SubscriptionIntroductoryOffer_relationships_subscriptionPricePoint_data(type: "type_example", id: "id_example"))))]) // SubscriptionPromotionalOfferCreateRequest | SubscriptionPromotionalOffer representation

SubscriptionPromotionalOffersAPI.subscriptionPromotionalOffersCreateInstance(subscriptionPromotionalOfferCreateRequest: subscriptionPromotionalOfferCreateRequest) { (response, error) in
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
 **subscriptionPromotionalOfferCreateRequest** | [**SubscriptionPromotionalOfferCreateRequest**](SubscriptionPromotionalOfferCreateRequest.md) | SubscriptionPromotionalOffer representation | 

### Return type

[**SubscriptionPromotionalOfferResponse**](SubscriptionPromotionalOfferResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **subscriptionPromotionalOffersDeleteInstance**
```swift
    open class func subscriptionPromotionalOffersDeleteInstance(id: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource

SubscriptionPromotionalOffersAPI.subscriptionPromotionalOffersDeleteInstance(id: id) { (response, error) in
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

# **subscriptionPromotionalOffersGetInstance**
```swift
    open class func subscriptionPromotionalOffersGetInstance(id: String, fieldsSubscriptionPromotionalOffers: [FieldsSubscriptionPromotionalOffers_subscriptionPromotionalOffersGetInstance]? = nil, include: [Include_subscriptionPromotionalOffersGetInstance]? = nil, fieldsSubscriptionPromotionalOfferPrices: [FieldsSubscriptionPromotionalOfferPrices_subscriptionPromotionalOffersGetInstance]? = nil, limitPrices: Int? = nil, completion: @escaping (_ data: SubscriptionPromotionalOfferResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let fieldsSubscriptionPromotionalOffers = ["fieldsSubscriptionPromotionalOffers_example"] // [String] | the fields to include for returned resources of type subscriptionPromotionalOffers (optional)
let include = ["include_example"] // [String] | comma-separated list of relationships to include (optional)
let fieldsSubscriptionPromotionalOfferPrices = ["fieldsSubscriptionPromotionalOfferPrices_example"] // [String] | the fields to include for returned resources of type subscriptionPromotionalOfferPrices (optional)
let limitPrices = 987 // Int | maximum number of related prices returned (when they are included) (optional)

SubscriptionPromotionalOffersAPI.subscriptionPromotionalOffersGetInstance(id: id, fieldsSubscriptionPromotionalOffers: fieldsSubscriptionPromotionalOffers, include: include, fieldsSubscriptionPromotionalOfferPrices: fieldsSubscriptionPromotionalOfferPrices, limitPrices: limitPrices) { (response, error) in
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
 **fieldsSubscriptionPromotionalOffers** | [**[String]**](String.md) | the fields to include for returned resources of type subscriptionPromotionalOffers | [optional] 
 **include** | [**[String]**](String.md) | comma-separated list of relationships to include | [optional] 
 **fieldsSubscriptionPromotionalOfferPrices** | [**[String]**](String.md) | the fields to include for returned resources of type subscriptionPromotionalOfferPrices | [optional] 
 **limitPrices** | **Int** | maximum number of related prices returned (when they are included) | [optional] 

### Return type

[**SubscriptionPromotionalOfferResponse**](SubscriptionPromotionalOfferResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **subscriptionPromotionalOffersPricesGetToManyRelated**
```swift
    open class func subscriptionPromotionalOffersPricesGetToManyRelated(id: String, filterTerritory: [String]? = nil, fieldsSubscriptionPricePoints: [FieldsSubscriptionPricePoints_subscriptionPromotionalOffersPricesGetToManyRelated]? = nil, fieldsTerritories: [FieldsTerritories_subscriptionPromotionalOffersPricesGetToManyRelated]? = nil, fieldsSubscriptionPromotionalOfferPrices: [FieldsSubscriptionPromotionalOfferPrices_subscriptionPromotionalOffersPricesGetToManyRelated]? = nil, limit: Int? = nil, include: [Include_subscriptionPromotionalOffersPricesGetToManyRelated]? = nil, completion: @escaping (_ data: SubscriptionPromotionalOfferPricesResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let filterTerritory = ["inner_example"] // [String] | filter by id(s) of related 'territory' (optional)
let fieldsSubscriptionPricePoints = ["fieldsSubscriptionPricePoints_example"] // [String] | the fields to include for returned resources of type subscriptionPricePoints (optional)
let fieldsTerritories = ["fieldsTerritories_example"] // [String] | the fields to include for returned resources of type territories (optional)
let fieldsSubscriptionPromotionalOfferPrices = ["fieldsSubscriptionPromotionalOfferPrices_example"] // [String] | the fields to include for returned resources of type subscriptionPromotionalOfferPrices (optional)
let limit = 987 // Int | maximum resources per page (optional)
let include = ["include_example"] // [String] | comma-separated list of relationships to include (optional)

SubscriptionPromotionalOffersAPI.subscriptionPromotionalOffersPricesGetToManyRelated(id: id, filterTerritory: filterTerritory, fieldsSubscriptionPricePoints: fieldsSubscriptionPricePoints, fieldsTerritories: fieldsTerritories, fieldsSubscriptionPromotionalOfferPrices: fieldsSubscriptionPromotionalOfferPrices, limit: limit, include: include) { (response, error) in
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
 **filterTerritory** | [**[String]**](String.md) | filter by id(s) of related &#39;territory&#39; | [optional] 
 **fieldsSubscriptionPricePoints** | [**[String]**](String.md) | the fields to include for returned resources of type subscriptionPricePoints | [optional] 
 **fieldsTerritories** | [**[String]**](String.md) | the fields to include for returned resources of type territories | [optional] 
 **fieldsSubscriptionPromotionalOfferPrices** | [**[String]**](String.md) | the fields to include for returned resources of type subscriptionPromotionalOfferPrices | [optional] 
 **limit** | **Int** | maximum resources per page | [optional] 
 **include** | [**[String]**](String.md) | comma-separated list of relationships to include | [optional] 

### Return type

[**SubscriptionPromotionalOfferPricesResponse**](SubscriptionPromotionalOfferPricesResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **subscriptionPromotionalOffersUpdateInstance**
```swift
    open class func subscriptionPromotionalOffersUpdateInstance(id: String, subscriptionPromotionalOfferUpdateRequest: SubscriptionPromotionalOfferUpdateRequest, completion: @escaping (_ data: SubscriptionPromotionalOfferResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let subscriptionPromotionalOfferUpdateRequest = SubscriptionPromotionalOfferUpdateRequest(data: SubscriptionPromotionalOfferUpdateRequest_data(type: "type_example", id: "id_example", relationships: SubscriptionPromotionalOfferUpdateRequest_data_relationships(prices: SubscriptionPromotionalOfferInlineCreate_relationships_prices(data: [SubscriptionPromotionalOffer_relationships_prices_data_inner(type: "type_example", id: "id_example")]))), included: [SubscriptionPromotionalOfferPriceInlineCreate(type: "type_example", id: "id_example", relationships: SubscriptionOfferCodePriceInlineCreate_relationships(territory: SubscriptionIntroductoryOfferInlineCreate_relationships_territory(data: AppAvailability_relationships_availableTerritories_data_inner(type: "type_example", id: "id_example")), subscriptionPricePoint: SubscriptionIntroductoryOfferInlineCreate_relationships_subscriptionPricePoint(data: SubscriptionIntroductoryOffer_relationships_subscriptionPricePoint_data(type: "type_example", id: "id_example"))))]) // SubscriptionPromotionalOfferUpdateRequest | SubscriptionPromotionalOffer representation

SubscriptionPromotionalOffersAPI.subscriptionPromotionalOffersUpdateInstance(id: id, subscriptionPromotionalOfferUpdateRequest: subscriptionPromotionalOfferUpdateRequest) { (response, error) in
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
 **subscriptionPromotionalOfferUpdateRequest** | [**SubscriptionPromotionalOfferUpdateRequest**](SubscriptionPromotionalOfferUpdateRequest.md) | SubscriptionPromotionalOffer representation | 

### Return type

[**SubscriptionPromotionalOfferResponse**](SubscriptionPromotionalOfferResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

