# WinBackOffersAPI

All URIs are relative to *https://api.appstoreconnect.apple.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**winBackOffersCreateInstance**](WinBackOffersAPI.md#winbackofferscreateinstance) | **POST** /v1/winBackOffers | 
[**winBackOffersDeleteInstance**](WinBackOffersAPI.md#winbackoffersdeleteinstance) | **DELETE** /v1/winBackOffers/{id} | 
[**winBackOffersGetInstance**](WinBackOffersAPI.md#winbackoffersgetinstance) | **GET** /v1/winBackOffers/{id} | 
[**winBackOffersPricesGetToManyRelated**](WinBackOffersAPI.md#winbackofferspricesgettomanyrelated) | **GET** /v1/winBackOffers/{id}/prices | 
[**winBackOffersUpdateInstance**](WinBackOffersAPI.md#winbackoffersupdateinstance) | **PATCH** /v1/winBackOffers/{id} | 


# **winBackOffersCreateInstance**
```swift
    open class func winBackOffersCreateInstance(winBackOfferCreateRequest: WinBackOfferCreateRequest, completion: @escaping (_ data: WinBackOfferResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let winBackOfferCreateRequest = WinBackOfferCreateRequest(data: WinBackOfferCreateRequest_data(type: "type_example", attributes: WinBackOfferCreateRequest_data_attributes(referenceName: "referenceName_example", offerId: "offerId_example", duration: SubscriptionOfferDuration(), offerMode: SubscriptionOfferMode(), periodCount: 123, customerEligibilityPaidSubscriptionDurationInMonths: 123, customerEligibilityTimeSinceLastSubscribedInMonths: IntegerRange(minimum: 123, maximum: 123), customerEligibilityWaitBetweenOffersInMonths: 123, startDate: Date(), endDate: Date(), priority: "priority_example", promotionIntent: "promotionIntent_example"), relationships: WinBackOfferCreateRequest_data_relationships(subscription: SubscriptionAppStoreReviewScreenshotCreateRequest_data_relationships_subscription(data: PromotedPurchase_relationships_subscription_data(type: "type_example", id: "id_example")), prices: WinBackOfferCreateRequest_data_relationships_prices(data: [WinBackOffer_relationships_prices_data_inner(type: "type_example", id: "id_example")]))), included: [WinBackOfferPriceInlineCreate(type: "type_example", id: "id_example")]) // WinBackOfferCreateRequest | WinBackOffer representation

WinBackOffersAPI.winBackOffersCreateInstance(winBackOfferCreateRequest: winBackOfferCreateRequest) { (response, error) in
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
 **winBackOfferCreateRequest** | [**WinBackOfferCreateRequest**](WinBackOfferCreateRequest.md) | WinBackOffer representation | 

### Return type

[**WinBackOfferResponse**](WinBackOfferResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **winBackOffersDeleteInstance**
```swift
    open class func winBackOffersDeleteInstance(id: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource

WinBackOffersAPI.winBackOffersDeleteInstance(id: id) { (response, error) in
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

# **winBackOffersGetInstance**
```swift
    open class func winBackOffersGetInstance(id: String, fieldsWinBackOffers: [FieldsWinBackOffers_winBackOffersGetInstance]? = nil, fieldsWinBackOfferPrices: [FieldsWinBackOfferPrices_winBackOffersGetInstance]? = nil, include: [Include_winBackOffersGetInstance]? = nil, limitPrices: Int? = nil, completion: @escaping (_ data: WinBackOfferResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let fieldsWinBackOffers = ["fieldsWinBackOffers_example"] // [String] | the fields to include for returned resources of type winBackOffers (optional)
let fieldsWinBackOfferPrices = ["fieldsWinBackOfferPrices_example"] // [String] | the fields to include for returned resources of type winBackOfferPrices (optional)
let include = ["include_example"] // [String] | comma-separated list of relationships to include (optional)
let limitPrices = 987 // Int | maximum number of related prices returned (when they are included) (optional)

WinBackOffersAPI.winBackOffersGetInstance(id: id, fieldsWinBackOffers: fieldsWinBackOffers, fieldsWinBackOfferPrices: fieldsWinBackOfferPrices, include: include, limitPrices: limitPrices) { (response, error) in
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
 **fieldsWinBackOffers** | [**[String]**](String.md) | the fields to include for returned resources of type winBackOffers | [optional] 
 **fieldsWinBackOfferPrices** | [**[String]**](String.md) | the fields to include for returned resources of type winBackOfferPrices | [optional] 
 **include** | [**[String]**](String.md) | comma-separated list of relationships to include | [optional] 
 **limitPrices** | **Int** | maximum number of related prices returned (when they are included) | [optional] 

### Return type

[**WinBackOfferResponse**](WinBackOfferResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **winBackOffersPricesGetToManyRelated**
```swift
    open class func winBackOffersPricesGetToManyRelated(id: String, filterTerritory: [String]? = nil, fieldsWinBackOfferPrices: [FieldsWinBackOfferPrices_winBackOffersPricesGetToManyRelated]? = nil, fieldsTerritories: [FieldsTerritories_winBackOffersPricesGetToManyRelated]? = nil, fieldsSubscriptionPricePoints: [FieldsSubscriptionPricePoints_winBackOffersPricesGetToManyRelated]? = nil, limit: Int? = nil, include: [Include_winBackOffersPricesGetToManyRelated]? = nil, completion: @escaping (_ data: WinBackOfferPricesResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let filterTerritory = ["inner_example"] // [String] | filter by id(s) of related 'territory' (optional)
let fieldsWinBackOfferPrices = ["fieldsWinBackOfferPrices_example"] // [String] | the fields to include for returned resources of type winBackOfferPrices (optional)
let fieldsTerritories = ["fieldsTerritories_example"] // [String] | the fields to include for returned resources of type territories (optional)
let fieldsSubscriptionPricePoints = ["fieldsSubscriptionPricePoints_example"] // [String] | the fields to include for returned resources of type subscriptionPricePoints (optional)
let limit = 987 // Int | maximum resources per page (optional)
let include = ["include_example"] // [String] | comma-separated list of relationships to include (optional)

WinBackOffersAPI.winBackOffersPricesGetToManyRelated(id: id, filterTerritory: filterTerritory, fieldsWinBackOfferPrices: fieldsWinBackOfferPrices, fieldsTerritories: fieldsTerritories, fieldsSubscriptionPricePoints: fieldsSubscriptionPricePoints, limit: limit, include: include) { (response, error) in
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
 **fieldsWinBackOfferPrices** | [**[String]**](String.md) | the fields to include for returned resources of type winBackOfferPrices | [optional] 
 **fieldsTerritories** | [**[String]**](String.md) | the fields to include for returned resources of type territories | [optional] 
 **fieldsSubscriptionPricePoints** | [**[String]**](String.md) | the fields to include for returned resources of type subscriptionPricePoints | [optional] 
 **limit** | **Int** | maximum resources per page | [optional] 
 **include** | [**[String]**](String.md) | comma-separated list of relationships to include | [optional] 

### Return type

[**WinBackOfferPricesResponse**](WinBackOfferPricesResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **winBackOffersUpdateInstance**
```swift
    open class func winBackOffersUpdateInstance(id: String, winBackOfferUpdateRequest: WinBackOfferUpdateRequest, completion: @escaping (_ data: WinBackOfferResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let winBackOfferUpdateRequest = WinBackOfferUpdateRequest(data: WinBackOfferUpdateRequest_data(type: "type_example", id: "id_example", attributes: WinBackOfferUpdateRequest_data_attributes(customerEligibilityPaidSubscriptionDurationInMonths: 123, customerEligibilityTimeSinceLastSubscribedInMonths: IntegerRange(minimum: 123, maximum: 123), customerEligibilityWaitBetweenOffersInMonths: 123, startDate: Date(), endDate: Date(), priority: "priority_example", promotionIntent: "promotionIntent_example"))) // WinBackOfferUpdateRequest | WinBackOffer representation

WinBackOffersAPI.winBackOffersUpdateInstance(id: id, winBackOfferUpdateRequest: winBackOfferUpdateRequest) { (response, error) in
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
 **winBackOfferUpdateRequest** | [**WinBackOfferUpdateRequest**](WinBackOfferUpdateRequest.md) | WinBackOffer representation | 

### Return type

[**WinBackOfferResponse**](WinBackOfferResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

