# SubscriptionsAPI

All URIs are relative to *https://api.appstoreconnect.apple.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**subscriptionsAppStoreReviewScreenshotGetToOneRelated**](SubscriptionsAPI.md#subscriptionsappstorereviewscreenshotgettoonerelated) | **GET** /v1/subscriptions/{id}/appStoreReviewScreenshot | 
[**subscriptionsCreateInstance**](SubscriptionsAPI.md#subscriptionscreateinstance) | **POST** /v1/subscriptions | 
[**subscriptionsDeleteInstance**](SubscriptionsAPI.md#subscriptionsdeleteinstance) | **DELETE** /v1/subscriptions/{id} | 
[**subscriptionsGetInstance**](SubscriptionsAPI.md#subscriptionsgetinstance) | **GET** /v1/subscriptions/{id} | 
[**subscriptionsIntroductoryOffersDeleteToManyRelationship**](SubscriptionsAPI.md#subscriptionsintroductoryoffersdeletetomanyrelationship) | **DELETE** /v1/subscriptions/{id}/relationships/introductoryOffers | 
[**subscriptionsIntroductoryOffersGetToManyRelated**](SubscriptionsAPI.md#subscriptionsintroductoryoffersgettomanyrelated) | **GET** /v1/subscriptions/{id}/introductoryOffers | 
[**subscriptionsIntroductoryOffersGetToManyRelationship**](SubscriptionsAPI.md#subscriptionsintroductoryoffersgettomanyrelationship) | **GET** /v1/subscriptions/{id}/relationships/introductoryOffers | 
[**subscriptionsOfferCodesGetToManyRelated**](SubscriptionsAPI.md#subscriptionsoffercodesgettomanyrelated) | **GET** /v1/subscriptions/{id}/offerCodes | 
[**subscriptionsPricePointsGetToManyRelated**](SubscriptionsAPI.md#subscriptionspricepointsgettomanyrelated) | **GET** /v1/subscriptions/{id}/pricePoints | 
[**subscriptionsPricesDeleteToManyRelationship**](SubscriptionsAPI.md#subscriptionspricesdeletetomanyrelationship) | **DELETE** /v1/subscriptions/{id}/relationships/prices | 
[**subscriptionsPricesGetToManyRelated**](SubscriptionsAPI.md#subscriptionspricesgettomanyrelated) | **GET** /v1/subscriptions/{id}/prices | 
[**subscriptionsPricesGetToManyRelationship**](SubscriptionsAPI.md#subscriptionspricesgettomanyrelationship) | **GET** /v1/subscriptions/{id}/relationships/prices | 
[**subscriptionsPromotedPurchaseGetToOneRelated**](SubscriptionsAPI.md#subscriptionspromotedpurchasegettoonerelated) | **GET** /v1/subscriptions/{id}/promotedPurchase | 
[**subscriptionsPromotionalOffersGetToManyRelated**](SubscriptionsAPI.md#subscriptionspromotionaloffersgettomanyrelated) | **GET** /v1/subscriptions/{id}/promotionalOffers | 
[**subscriptionsSubscriptionAvailabilityGetToOneRelated**](SubscriptionsAPI.md#subscriptionssubscriptionavailabilitygettoonerelated) | **GET** /v1/subscriptions/{id}/subscriptionAvailability | 
[**subscriptionsSubscriptionLocalizationsGetToManyRelated**](SubscriptionsAPI.md#subscriptionssubscriptionlocalizationsgettomanyrelated) | **GET** /v1/subscriptions/{id}/subscriptionLocalizations | 
[**subscriptionsUpdateInstance**](SubscriptionsAPI.md#subscriptionsupdateinstance) | **PATCH** /v1/subscriptions/{id} | 


# **subscriptionsAppStoreReviewScreenshotGetToOneRelated**
```swift
    open class func subscriptionsAppStoreReviewScreenshotGetToOneRelated(id: String, fieldsSubscriptionAppStoreReviewScreenshots: [FieldsSubscriptionAppStoreReviewScreenshots_subscriptionsAppStoreReviewScreenshotGetToOneRelated]? = nil, fieldsSubscriptions: [FieldsSubscriptions_subscriptionsAppStoreReviewScreenshotGetToOneRelated]? = nil, include: [Include_subscriptionsAppStoreReviewScreenshotGetToOneRelated]? = nil, completion: @escaping (_ data: SubscriptionAppStoreReviewScreenshotResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let fieldsSubscriptionAppStoreReviewScreenshots = ["fieldsSubscriptionAppStoreReviewScreenshots_example"] // [String] | the fields to include for returned resources of type subscriptionAppStoreReviewScreenshots (optional)
let fieldsSubscriptions = ["fieldsSubscriptions_example"] // [String] | the fields to include for returned resources of type subscriptions (optional)
let include = ["include_example"] // [String] | comma-separated list of relationships to include (optional)

SubscriptionsAPI.subscriptionsAppStoreReviewScreenshotGetToOneRelated(id: id, fieldsSubscriptionAppStoreReviewScreenshots: fieldsSubscriptionAppStoreReviewScreenshots, fieldsSubscriptions: fieldsSubscriptions, include: include) { (response, error) in
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
 **fieldsSubscriptions** | [**[String]**](String.md) | the fields to include for returned resources of type subscriptions | [optional] 
 **include** | [**[String]**](String.md) | comma-separated list of relationships to include | [optional] 

### Return type

[**SubscriptionAppStoreReviewScreenshotResponse**](SubscriptionAppStoreReviewScreenshotResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **subscriptionsCreateInstance**
```swift
    open class func subscriptionsCreateInstance(subscriptionCreateRequest: SubscriptionCreateRequest, completion: @escaping (_ data: SubscriptionResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let subscriptionCreateRequest = SubscriptionCreateRequest(data: SubscriptionCreateRequest_data(type: "type_example", attributes: SubscriptionCreateRequest_data_attributes(name: "name_example", productId: "productId_example", familySharable: false, subscriptionPeriod: "subscriptionPeriod_example", reviewNote: "reviewNote_example", groupLevel: 123), relationships: SubscriptionCreateRequest_data_relationships(group: SubscriptionGroupLocalizationCreateRequest_data_relationships_subscriptionGroup(data: App_relationships_subscriptionGroups_data_inner(type: "type_example", id: "id_example"))))) // SubscriptionCreateRequest | Subscription representation

SubscriptionsAPI.subscriptionsCreateInstance(subscriptionCreateRequest: subscriptionCreateRequest) { (response, error) in
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
 **subscriptionCreateRequest** | [**SubscriptionCreateRequest**](SubscriptionCreateRequest.md) | Subscription representation | 

### Return type

[**SubscriptionResponse**](SubscriptionResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **subscriptionsDeleteInstance**
```swift
    open class func subscriptionsDeleteInstance(id: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource

SubscriptionsAPI.subscriptionsDeleteInstance(id: id) { (response, error) in
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

# **subscriptionsGetInstance**
```swift
    open class func subscriptionsGetInstance(id: String, fieldsSubscriptions: [FieldsSubscriptions_subscriptionsGetInstance]? = nil, include: [Include_subscriptionsGetInstance]? = nil, fieldsPromotedPurchases: [FieldsPromotedPurchases_subscriptionsGetInstance]? = nil, fieldsSubscriptionPricePoints: [FieldsSubscriptionPricePoints_subscriptionsGetInstance]? = nil, fieldsSubscriptionPromotionalOffers: [FieldsSubscriptionPromotionalOffers_subscriptionsGetInstance]? = nil, fieldsSubscriptionOfferCodes: [FieldsSubscriptionOfferCodes_subscriptionsGetInstance]? = nil, fieldsSubscriptionAppStoreReviewScreenshots: [FieldsSubscriptionAppStoreReviewScreenshots_subscriptionsGetInstance]? = nil, fieldsSubscriptionAvailabilities: [FieldsSubscriptionAvailabilities_subscriptionsGetInstance]? = nil, fieldsSubscriptionPrices: [FieldsSubscriptionPrices_subscriptionsGetInstance]? = nil, fieldsSubscriptionIntroductoryOffers: [FieldsSubscriptionIntroductoryOffers_subscriptionsGetInstance]? = nil, fieldsSubscriptionLocalizations: [FieldsSubscriptionLocalizations_subscriptionsGetInstance]? = nil, limitIntroductoryOffers: Int? = nil, limitOfferCodes: Int? = nil, limitPrices: Int? = nil, limitPromotionalOffers: Int? = nil, limitSubscriptionLocalizations: Int? = nil, completion: @escaping (_ data: SubscriptionResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let fieldsSubscriptions = ["fieldsSubscriptions_example"] // [String] | the fields to include for returned resources of type subscriptions (optional)
let include = ["include_example"] // [String] | comma-separated list of relationships to include (optional)
let fieldsPromotedPurchases = ["fieldsPromotedPurchases_example"] // [String] | the fields to include for returned resources of type promotedPurchases (optional)
let fieldsSubscriptionPricePoints = ["fieldsSubscriptionPricePoints_example"] // [String] | the fields to include for returned resources of type subscriptionPricePoints (optional)
let fieldsSubscriptionPromotionalOffers = ["fieldsSubscriptionPromotionalOffers_example"] // [String] | the fields to include for returned resources of type subscriptionPromotionalOffers (optional)
let fieldsSubscriptionOfferCodes = ["fieldsSubscriptionOfferCodes_example"] // [String] | the fields to include for returned resources of type subscriptionOfferCodes (optional)
let fieldsSubscriptionAppStoreReviewScreenshots = ["fieldsSubscriptionAppStoreReviewScreenshots_example"] // [String] | the fields to include for returned resources of type subscriptionAppStoreReviewScreenshots (optional)
let fieldsSubscriptionAvailabilities = ["fieldsSubscriptionAvailabilities_example"] // [String] | the fields to include for returned resources of type subscriptionAvailabilities (optional)
let fieldsSubscriptionPrices = ["fieldsSubscriptionPrices_example"] // [String] | the fields to include for returned resources of type subscriptionPrices (optional)
let fieldsSubscriptionIntroductoryOffers = ["fieldsSubscriptionIntroductoryOffers_example"] // [String] | the fields to include for returned resources of type subscriptionIntroductoryOffers (optional)
let fieldsSubscriptionLocalizations = ["fieldsSubscriptionLocalizations_example"] // [String] | the fields to include for returned resources of type subscriptionLocalizations (optional)
let limitIntroductoryOffers = 987 // Int | maximum number of related introductoryOffers returned (when they are included) (optional)
let limitOfferCodes = 987 // Int | maximum number of related offerCodes returned (when they are included) (optional)
let limitPrices = 987 // Int | maximum number of related prices returned (when they are included) (optional)
let limitPromotionalOffers = 987 // Int | maximum number of related promotionalOffers returned (when they are included) (optional)
let limitSubscriptionLocalizations = 987 // Int | maximum number of related subscriptionLocalizations returned (when they are included) (optional)

SubscriptionsAPI.subscriptionsGetInstance(id: id, fieldsSubscriptions: fieldsSubscriptions, include: include, fieldsPromotedPurchases: fieldsPromotedPurchases, fieldsSubscriptionPricePoints: fieldsSubscriptionPricePoints, fieldsSubscriptionPromotionalOffers: fieldsSubscriptionPromotionalOffers, fieldsSubscriptionOfferCodes: fieldsSubscriptionOfferCodes, fieldsSubscriptionAppStoreReviewScreenshots: fieldsSubscriptionAppStoreReviewScreenshots, fieldsSubscriptionAvailabilities: fieldsSubscriptionAvailabilities, fieldsSubscriptionPrices: fieldsSubscriptionPrices, fieldsSubscriptionIntroductoryOffers: fieldsSubscriptionIntroductoryOffers, fieldsSubscriptionLocalizations: fieldsSubscriptionLocalizations, limitIntroductoryOffers: limitIntroductoryOffers, limitOfferCodes: limitOfferCodes, limitPrices: limitPrices, limitPromotionalOffers: limitPromotionalOffers, limitSubscriptionLocalizations: limitSubscriptionLocalizations) { (response, error) in
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
 **fieldsSubscriptions** | [**[String]**](String.md) | the fields to include for returned resources of type subscriptions | [optional] 
 **include** | [**[String]**](String.md) | comma-separated list of relationships to include | [optional] 
 **fieldsPromotedPurchases** | [**[String]**](String.md) | the fields to include for returned resources of type promotedPurchases | [optional] 
 **fieldsSubscriptionPricePoints** | [**[String]**](String.md) | the fields to include for returned resources of type subscriptionPricePoints | [optional] 
 **fieldsSubscriptionPromotionalOffers** | [**[String]**](String.md) | the fields to include for returned resources of type subscriptionPromotionalOffers | [optional] 
 **fieldsSubscriptionOfferCodes** | [**[String]**](String.md) | the fields to include for returned resources of type subscriptionOfferCodes | [optional] 
 **fieldsSubscriptionAppStoreReviewScreenshots** | [**[String]**](String.md) | the fields to include for returned resources of type subscriptionAppStoreReviewScreenshots | [optional] 
 **fieldsSubscriptionAvailabilities** | [**[String]**](String.md) | the fields to include for returned resources of type subscriptionAvailabilities | [optional] 
 **fieldsSubscriptionPrices** | [**[String]**](String.md) | the fields to include for returned resources of type subscriptionPrices | [optional] 
 **fieldsSubscriptionIntroductoryOffers** | [**[String]**](String.md) | the fields to include for returned resources of type subscriptionIntroductoryOffers | [optional] 
 **fieldsSubscriptionLocalizations** | [**[String]**](String.md) | the fields to include for returned resources of type subscriptionLocalizations | [optional] 
 **limitIntroductoryOffers** | **Int** | maximum number of related introductoryOffers returned (when they are included) | [optional] 
 **limitOfferCodes** | **Int** | maximum number of related offerCodes returned (when they are included) | [optional] 
 **limitPrices** | **Int** | maximum number of related prices returned (when they are included) | [optional] 
 **limitPromotionalOffers** | **Int** | maximum number of related promotionalOffers returned (when they are included) | [optional] 
 **limitSubscriptionLocalizations** | **Int** | maximum number of related subscriptionLocalizations returned (when they are included) | [optional] 

### Return type

[**SubscriptionResponse**](SubscriptionResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **subscriptionsIntroductoryOffersDeleteToManyRelationship**
```swift
    open class func subscriptionsIntroductoryOffersDeleteToManyRelationship(id: String, subscriptionIntroductoryOffersLinkagesRequest: SubscriptionIntroductoryOffersLinkagesRequest, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let subscriptionIntroductoryOffersLinkagesRequest = SubscriptionIntroductoryOffersLinkagesRequest(data: [Subscription_relationships_introductoryOffers_data_inner(type: "type_example", id: "id_example")]) // SubscriptionIntroductoryOffersLinkagesRequest | List of related linkages

SubscriptionsAPI.subscriptionsIntroductoryOffersDeleteToManyRelationship(id: id, subscriptionIntroductoryOffersLinkagesRequest: subscriptionIntroductoryOffersLinkagesRequest) { (response, error) in
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
 **subscriptionIntroductoryOffersLinkagesRequest** | [**SubscriptionIntroductoryOffersLinkagesRequest**](SubscriptionIntroductoryOffersLinkagesRequest.md) | List of related linkages | 

### Return type

Void (empty response body)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **subscriptionsIntroductoryOffersGetToManyRelated**
```swift
    open class func subscriptionsIntroductoryOffersGetToManyRelated(id: String, filterTerritory: [String]? = nil, fieldsSubscriptionPricePoints: [FieldsSubscriptionPricePoints_subscriptionsIntroductoryOffersGetToManyRelated]? = nil, fieldsSubscriptions: [FieldsSubscriptions_subscriptionsIntroductoryOffersGetToManyRelated]? = nil, fieldsSubscriptionIntroductoryOffers: [FieldsSubscriptionIntroductoryOffers_subscriptionsIntroductoryOffersGetToManyRelated]? = nil, fieldsTerritories: [FieldsTerritories_subscriptionsIntroductoryOffersGetToManyRelated]? = nil, limit: Int? = nil, include: [Include_subscriptionsIntroductoryOffersGetToManyRelated]? = nil, completion: @escaping (_ data: SubscriptionIntroductoryOffersResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let filterTerritory = ["inner_example"] // [String] | filter by id(s) of related 'territory' (optional)
let fieldsSubscriptionPricePoints = ["fieldsSubscriptionPricePoints_example"] // [String] | the fields to include for returned resources of type subscriptionPricePoints (optional)
let fieldsSubscriptions = ["fieldsSubscriptions_example"] // [String] | the fields to include for returned resources of type subscriptions (optional)
let fieldsSubscriptionIntroductoryOffers = ["fieldsSubscriptionIntroductoryOffers_example"] // [String] | the fields to include for returned resources of type subscriptionIntroductoryOffers (optional)
let fieldsTerritories = ["fieldsTerritories_example"] // [String] | the fields to include for returned resources of type territories (optional)
let limit = 987 // Int | maximum resources per page (optional)
let include = ["include_example"] // [String] | comma-separated list of relationships to include (optional)

SubscriptionsAPI.subscriptionsIntroductoryOffersGetToManyRelated(id: id, filterTerritory: filterTerritory, fieldsSubscriptionPricePoints: fieldsSubscriptionPricePoints, fieldsSubscriptions: fieldsSubscriptions, fieldsSubscriptionIntroductoryOffers: fieldsSubscriptionIntroductoryOffers, fieldsTerritories: fieldsTerritories, limit: limit, include: include) { (response, error) in
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
 **fieldsSubscriptions** | [**[String]**](String.md) | the fields to include for returned resources of type subscriptions | [optional] 
 **fieldsSubscriptionIntroductoryOffers** | [**[String]**](String.md) | the fields to include for returned resources of type subscriptionIntroductoryOffers | [optional] 
 **fieldsTerritories** | [**[String]**](String.md) | the fields to include for returned resources of type territories | [optional] 
 **limit** | **Int** | maximum resources per page | [optional] 
 **include** | [**[String]**](String.md) | comma-separated list of relationships to include | [optional] 

### Return type

[**SubscriptionIntroductoryOffersResponse**](SubscriptionIntroductoryOffersResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **subscriptionsIntroductoryOffersGetToManyRelationship**
```swift
    open class func subscriptionsIntroductoryOffersGetToManyRelationship(id: String, limit: Int? = nil, completion: @escaping (_ data: SubscriptionIntroductoryOffersLinkagesResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let limit = 987 // Int | maximum resources per page (optional)

SubscriptionsAPI.subscriptionsIntroductoryOffersGetToManyRelationship(id: id, limit: limit) { (response, error) in
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
 **limit** | **Int** | maximum resources per page | [optional] 

### Return type

[**SubscriptionIntroductoryOffersLinkagesResponse**](SubscriptionIntroductoryOffersLinkagesResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **subscriptionsOfferCodesGetToManyRelated**
```swift
    open class func subscriptionsOfferCodesGetToManyRelated(id: String, filterTerritory: [String]? = nil, fieldsSubscriptionOfferCodeCustomCodes: [FieldsSubscriptionOfferCodeCustomCodes_subscriptionsOfferCodesGetToManyRelated]? = nil, fieldsSubscriptionOfferCodes: [FieldsSubscriptionOfferCodes_subscriptionsOfferCodesGetToManyRelated]? = nil, fieldsSubscriptionOfferCodeOneTimeUseCodes: [FieldsSubscriptionOfferCodeOneTimeUseCodes_subscriptionsOfferCodesGetToManyRelated]? = nil, fieldsSubscriptions: [FieldsSubscriptions_subscriptionsOfferCodesGetToManyRelated]? = nil, fieldsSubscriptionOfferCodePrices: [FieldsSubscriptionOfferCodePrices_subscriptionsOfferCodesGetToManyRelated]? = nil, limit: Int? = nil, limitOneTimeUseCodes: Int? = nil, limitCustomCodes: Int? = nil, limitPrices: Int? = nil, include: [Include_subscriptionsOfferCodesGetToManyRelated]? = nil, completion: @escaping (_ data: SubscriptionOfferCodesResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let filterTerritory = ["inner_example"] // [String] | filter by territory (optional)
let fieldsSubscriptionOfferCodeCustomCodes = ["fieldsSubscriptionOfferCodeCustomCodes_example"] // [String] | the fields to include for returned resources of type subscriptionOfferCodeCustomCodes (optional)
let fieldsSubscriptionOfferCodes = ["fieldsSubscriptionOfferCodes_example"] // [String] | the fields to include for returned resources of type subscriptionOfferCodes (optional)
let fieldsSubscriptionOfferCodeOneTimeUseCodes = ["fieldsSubscriptionOfferCodeOneTimeUseCodes_example"] // [String] | the fields to include for returned resources of type subscriptionOfferCodeOneTimeUseCodes (optional)
let fieldsSubscriptions = ["fieldsSubscriptions_example"] // [String] | the fields to include for returned resources of type subscriptions (optional)
let fieldsSubscriptionOfferCodePrices = ["fieldsSubscriptionOfferCodePrices_example"] // [String] | the fields to include for returned resources of type subscriptionOfferCodePrices (optional)
let limit = 987 // Int | maximum resources per page (optional)
let limitOneTimeUseCodes = 987 // Int | maximum number of related oneTimeUseCodes returned (when they are included) (optional)
let limitCustomCodes = 987 // Int | maximum number of related customCodes returned (when they are included) (optional)
let limitPrices = 987 // Int | maximum number of related prices returned (when they are included) (optional)
let include = ["include_example"] // [String] | comma-separated list of relationships to include (optional)

SubscriptionsAPI.subscriptionsOfferCodesGetToManyRelated(id: id, filterTerritory: filterTerritory, fieldsSubscriptionOfferCodeCustomCodes: fieldsSubscriptionOfferCodeCustomCodes, fieldsSubscriptionOfferCodes: fieldsSubscriptionOfferCodes, fieldsSubscriptionOfferCodeOneTimeUseCodes: fieldsSubscriptionOfferCodeOneTimeUseCodes, fieldsSubscriptions: fieldsSubscriptions, fieldsSubscriptionOfferCodePrices: fieldsSubscriptionOfferCodePrices, limit: limit, limitOneTimeUseCodes: limitOneTimeUseCodes, limitCustomCodes: limitCustomCodes, limitPrices: limitPrices, include: include) { (response, error) in
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
 **filterTerritory** | [**[String]**](String.md) | filter by territory | [optional] 
 **fieldsSubscriptionOfferCodeCustomCodes** | [**[String]**](String.md) | the fields to include for returned resources of type subscriptionOfferCodeCustomCodes | [optional] 
 **fieldsSubscriptionOfferCodes** | [**[String]**](String.md) | the fields to include for returned resources of type subscriptionOfferCodes | [optional] 
 **fieldsSubscriptionOfferCodeOneTimeUseCodes** | [**[String]**](String.md) | the fields to include for returned resources of type subscriptionOfferCodeOneTimeUseCodes | [optional] 
 **fieldsSubscriptions** | [**[String]**](String.md) | the fields to include for returned resources of type subscriptions | [optional] 
 **fieldsSubscriptionOfferCodePrices** | [**[String]**](String.md) | the fields to include for returned resources of type subscriptionOfferCodePrices | [optional] 
 **limit** | **Int** | maximum resources per page | [optional] 
 **limitOneTimeUseCodes** | **Int** | maximum number of related oneTimeUseCodes returned (when they are included) | [optional] 
 **limitCustomCodes** | **Int** | maximum number of related customCodes returned (when they are included) | [optional] 
 **limitPrices** | **Int** | maximum number of related prices returned (when they are included) | [optional] 
 **include** | [**[String]**](String.md) | comma-separated list of relationships to include | [optional] 

### Return type

[**SubscriptionOfferCodesResponse**](SubscriptionOfferCodesResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **subscriptionsPricePointsGetToManyRelated**
```swift
    open class func subscriptionsPricePointsGetToManyRelated(id: String, filterTerritory: [String]? = nil, fieldsSubscriptionPricePoints: [FieldsSubscriptionPricePoints_subscriptionsPricePointsGetToManyRelated]? = nil, fieldsTerritories: [FieldsTerritories_subscriptionsPricePointsGetToManyRelated]? = nil, limit: Int? = nil, include: [Include_subscriptionsPricePointsGetToManyRelated]? = nil, completion: @escaping (_ data: SubscriptionPricePointsResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let filterTerritory = ["inner_example"] // [String] | filter by id(s) of related 'territory' (optional)
let fieldsSubscriptionPricePoints = ["fieldsSubscriptionPricePoints_example"] // [String] | the fields to include for returned resources of type subscriptionPricePoints (optional)
let fieldsTerritories = ["fieldsTerritories_example"] // [String] | the fields to include for returned resources of type territories (optional)
let limit = 987 // Int | maximum resources per page (optional)
let include = ["include_example"] // [String] | comma-separated list of relationships to include (optional)

SubscriptionsAPI.subscriptionsPricePointsGetToManyRelated(id: id, filterTerritory: filterTerritory, fieldsSubscriptionPricePoints: fieldsSubscriptionPricePoints, fieldsTerritories: fieldsTerritories, limit: limit, include: include) { (response, error) in
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
 **limit** | **Int** | maximum resources per page | [optional] 
 **include** | [**[String]**](String.md) | comma-separated list of relationships to include | [optional] 

### Return type

[**SubscriptionPricePointsResponse**](SubscriptionPricePointsResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/csv

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **subscriptionsPricesDeleteToManyRelationship**
```swift
    open class func subscriptionsPricesDeleteToManyRelationship(id: String, subscriptionPricesLinkagesRequest: SubscriptionPricesLinkagesRequest, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let subscriptionPricesLinkagesRequest = SubscriptionPricesLinkagesRequest(data: [Subscription_relationships_prices_data_inner(type: "type_example", id: "id_example")]) // SubscriptionPricesLinkagesRequest | List of related linkages

SubscriptionsAPI.subscriptionsPricesDeleteToManyRelationship(id: id, subscriptionPricesLinkagesRequest: subscriptionPricesLinkagesRequest) { (response, error) in
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
 **subscriptionPricesLinkagesRequest** | [**SubscriptionPricesLinkagesRequest**](SubscriptionPricesLinkagesRequest.md) | List of related linkages | 

### Return type

Void (empty response body)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **subscriptionsPricesGetToManyRelated**
```swift
    open class func subscriptionsPricesGetToManyRelated(id: String, filterSubscriptionPricePoint: [String]? = nil, filterTerritory: [String]? = nil, fieldsSubscriptionPricePoints: [FieldsSubscriptionPricePoints_subscriptionsPricesGetToManyRelated]? = nil, fieldsSubscriptionPrices: [FieldsSubscriptionPrices_subscriptionsPricesGetToManyRelated]? = nil, fieldsTerritories: [FieldsTerritories_subscriptionsPricesGetToManyRelated]? = nil, limit: Int? = nil, include: [Include_subscriptionsPricesGetToManyRelated]? = nil, completion: @escaping (_ data: SubscriptionPricesResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let filterSubscriptionPricePoint = ["inner_example"] // [String] | filter by id(s) of related 'subscriptionPricePoint' (optional)
let filterTerritory = ["inner_example"] // [String] | filter by id(s) of related 'territory' (optional)
let fieldsSubscriptionPricePoints = ["fieldsSubscriptionPricePoints_example"] // [String] | the fields to include for returned resources of type subscriptionPricePoints (optional)
let fieldsSubscriptionPrices = ["fieldsSubscriptionPrices_example"] // [String] | the fields to include for returned resources of type subscriptionPrices (optional)
let fieldsTerritories = ["fieldsTerritories_example"] // [String] | the fields to include for returned resources of type territories (optional)
let limit = 987 // Int | maximum resources per page (optional)
let include = ["include_example"] // [String] | comma-separated list of relationships to include (optional)

SubscriptionsAPI.subscriptionsPricesGetToManyRelated(id: id, filterSubscriptionPricePoint: filterSubscriptionPricePoint, filterTerritory: filterTerritory, fieldsSubscriptionPricePoints: fieldsSubscriptionPricePoints, fieldsSubscriptionPrices: fieldsSubscriptionPrices, fieldsTerritories: fieldsTerritories, limit: limit, include: include) { (response, error) in
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
 **filterSubscriptionPricePoint** | [**[String]**](String.md) | filter by id(s) of related &#39;subscriptionPricePoint&#39; | [optional] 
 **filterTerritory** | [**[String]**](String.md) | filter by id(s) of related &#39;territory&#39; | [optional] 
 **fieldsSubscriptionPricePoints** | [**[String]**](String.md) | the fields to include for returned resources of type subscriptionPricePoints | [optional] 
 **fieldsSubscriptionPrices** | [**[String]**](String.md) | the fields to include for returned resources of type subscriptionPrices | [optional] 
 **fieldsTerritories** | [**[String]**](String.md) | the fields to include for returned resources of type territories | [optional] 
 **limit** | **Int** | maximum resources per page | [optional] 
 **include** | [**[String]**](String.md) | comma-separated list of relationships to include | [optional] 

### Return type

[**SubscriptionPricesResponse**](SubscriptionPricesResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **subscriptionsPricesGetToManyRelationship**
```swift
    open class func subscriptionsPricesGetToManyRelationship(id: String, limit: Int? = nil, completion: @escaping (_ data: SubscriptionPricesLinkagesResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let limit = 987 // Int | maximum resources per page (optional)

SubscriptionsAPI.subscriptionsPricesGetToManyRelationship(id: id, limit: limit) { (response, error) in
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
 **limit** | **Int** | maximum resources per page | [optional] 

### Return type

[**SubscriptionPricesLinkagesResponse**](SubscriptionPricesLinkagesResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **subscriptionsPromotedPurchaseGetToOneRelated**
```swift
    open class func subscriptionsPromotedPurchaseGetToOneRelated(id: String, fieldsPromotedPurchases: [FieldsPromotedPurchases_subscriptionsPromotedPurchaseGetToOneRelated]? = nil, fieldsSubscriptions: [FieldsSubscriptions_subscriptionsPromotedPurchaseGetToOneRelated]? = nil, fieldsInAppPurchases: [FieldsInAppPurchases_subscriptionsPromotedPurchaseGetToOneRelated]? = nil, fieldsPromotedPurchaseImages: [FieldsPromotedPurchaseImages_subscriptionsPromotedPurchaseGetToOneRelated]? = nil, limitPromotionImages: Int? = nil, include: [Include_subscriptionsPromotedPurchaseGetToOneRelated]? = nil, completion: @escaping (_ data: PromotedPurchaseResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let fieldsPromotedPurchases = ["fieldsPromotedPurchases_example"] // [String] | the fields to include for returned resources of type promotedPurchases (optional)
let fieldsSubscriptions = ["fieldsSubscriptions_example"] // [String] | the fields to include for returned resources of type subscriptions (optional)
let fieldsInAppPurchases = ["fieldsInAppPurchases_example"] // [String] | the fields to include for returned resources of type inAppPurchases (optional)
let fieldsPromotedPurchaseImages = ["fieldsPromotedPurchaseImages_example"] // [String] | the fields to include for returned resources of type promotedPurchaseImages (optional)
let limitPromotionImages = 987 // Int | maximum number of related promotionImages returned (when they are included) (optional)
let include = ["include_example"] // [String] | comma-separated list of relationships to include (optional)

SubscriptionsAPI.subscriptionsPromotedPurchaseGetToOneRelated(id: id, fieldsPromotedPurchases: fieldsPromotedPurchases, fieldsSubscriptions: fieldsSubscriptions, fieldsInAppPurchases: fieldsInAppPurchases, fieldsPromotedPurchaseImages: fieldsPromotedPurchaseImages, limitPromotionImages: limitPromotionImages, include: include) { (response, error) in
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
 **fieldsPromotedPurchases** | [**[String]**](String.md) | the fields to include for returned resources of type promotedPurchases | [optional] 
 **fieldsSubscriptions** | [**[String]**](String.md) | the fields to include for returned resources of type subscriptions | [optional] 
 **fieldsInAppPurchases** | [**[String]**](String.md) | the fields to include for returned resources of type inAppPurchases | [optional] 
 **fieldsPromotedPurchaseImages** | [**[String]**](String.md) | the fields to include for returned resources of type promotedPurchaseImages | [optional] 
 **limitPromotionImages** | **Int** | maximum number of related promotionImages returned (when they are included) | [optional] 
 **include** | [**[String]**](String.md) | comma-separated list of relationships to include | [optional] 

### Return type

[**PromotedPurchaseResponse**](PromotedPurchaseResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **subscriptionsPromotionalOffersGetToManyRelated**
```swift
    open class func subscriptionsPromotionalOffersGetToManyRelated(id: String, filterTerritory: [String]? = nil, fieldsSubscriptionPromotionalOffers: [FieldsSubscriptionPromotionalOffers_subscriptionsPromotionalOffersGetToManyRelated]? = nil, fieldsSubscriptions: [FieldsSubscriptions_subscriptionsPromotionalOffersGetToManyRelated]? = nil, fieldsSubscriptionPromotionalOfferPrices: [FieldsSubscriptionPromotionalOfferPrices_subscriptionsPromotionalOffersGetToManyRelated]? = nil, limit: Int? = nil, limitPrices: Int? = nil, include: [Include_subscriptionsPromotionalOffersGetToManyRelated]? = nil, completion: @escaping (_ data: SubscriptionPromotionalOffersResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let filterTerritory = ["inner_example"] // [String] | filter by territory (optional)
let fieldsSubscriptionPromotionalOffers = ["fieldsSubscriptionPromotionalOffers_example"] // [String] | the fields to include for returned resources of type subscriptionPromotionalOffers (optional)
let fieldsSubscriptions = ["fieldsSubscriptions_example"] // [String] | the fields to include for returned resources of type subscriptions (optional)
let fieldsSubscriptionPromotionalOfferPrices = ["fieldsSubscriptionPromotionalOfferPrices_example"] // [String] | the fields to include for returned resources of type subscriptionPromotionalOfferPrices (optional)
let limit = 987 // Int | maximum resources per page (optional)
let limitPrices = 987 // Int | maximum number of related prices returned (when they are included) (optional)
let include = ["include_example"] // [String] | comma-separated list of relationships to include (optional)

SubscriptionsAPI.subscriptionsPromotionalOffersGetToManyRelated(id: id, filterTerritory: filterTerritory, fieldsSubscriptionPromotionalOffers: fieldsSubscriptionPromotionalOffers, fieldsSubscriptions: fieldsSubscriptions, fieldsSubscriptionPromotionalOfferPrices: fieldsSubscriptionPromotionalOfferPrices, limit: limit, limitPrices: limitPrices, include: include) { (response, error) in
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
 **filterTerritory** | [**[String]**](String.md) | filter by territory | [optional] 
 **fieldsSubscriptionPromotionalOffers** | [**[String]**](String.md) | the fields to include for returned resources of type subscriptionPromotionalOffers | [optional] 
 **fieldsSubscriptions** | [**[String]**](String.md) | the fields to include for returned resources of type subscriptions | [optional] 
 **fieldsSubscriptionPromotionalOfferPrices** | [**[String]**](String.md) | the fields to include for returned resources of type subscriptionPromotionalOfferPrices | [optional] 
 **limit** | **Int** | maximum resources per page | [optional] 
 **limitPrices** | **Int** | maximum number of related prices returned (when they are included) | [optional] 
 **include** | [**[String]**](String.md) | comma-separated list of relationships to include | [optional] 

### Return type

[**SubscriptionPromotionalOffersResponse**](SubscriptionPromotionalOffersResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **subscriptionsSubscriptionAvailabilityGetToOneRelated**
```swift
    open class func subscriptionsSubscriptionAvailabilityGetToOneRelated(id: String, fieldsSubscriptionAvailabilities: [FieldsSubscriptionAvailabilities_subscriptionsSubscriptionAvailabilityGetToOneRelated]? = nil, fieldsSubscriptions: [FieldsSubscriptions_subscriptionsSubscriptionAvailabilityGetToOneRelated]? = nil, fieldsTerritories: [FieldsTerritories_subscriptionsSubscriptionAvailabilityGetToOneRelated]? = nil, limitAvailableTerritories: Int? = nil, include: [Include_subscriptionsSubscriptionAvailabilityGetToOneRelated]? = nil, completion: @escaping (_ data: SubscriptionAvailabilityResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let fieldsSubscriptionAvailabilities = ["fieldsSubscriptionAvailabilities_example"] // [String] | the fields to include for returned resources of type subscriptionAvailabilities (optional)
let fieldsSubscriptions = ["fieldsSubscriptions_example"] // [String] | the fields to include for returned resources of type subscriptions (optional)
let fieldsTerritories = ["fieldsTerritories_example"] // [String] | the fields to include for returned resources of type territories (optional)
let limitAvailableTerritories = 987 // Int | maximum number of related availableTerritories returned (when they are included) (optional)
let include = ["include_example"] // [String] | comma-separated list of relationships to include (optional)

SubscriptionsAPI.subscriptionsSubscriptionAvailabilityGetToOneRelated(id: id, fieldsSubscriptionAvailabilities: fieldsSubscriptionAvailabilities, fieldsSubscriptions: fieldsSubscriptions, fieldsTerritories: fieldsTerritories, limitAvailableTerritories: limitAvailableTerritories, include: include) { (response, error) in
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
 **fieldsSubscriptionAvailabilities** | [**[String]**](String.md) | the fields to include for returned resources of type subscriptionAvailabilities | [optional] 
 **fieldsSubscriptions** | [**[String]**](String.md) | the fields to include for returned resources of type subscriptions | [optional] 
 **fieldsTerritories** | [**[String]**](String.md) | the fields to include for returned resources of type territories | [optional] 
 **limitAvailableTerritories** | **Int** | maximum number of related availableTerritories returned (when they are included) | [optional] 
 **include** | [**[String]**](String.md) | comma-separated list of relationships to include | [optional] 

### Return type

[**SubscriptionAvailabilityResponse**](SubscriptionAvailabilityResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **subscriptionsSubscriptionLocalizationsGetToManyRelated**
```swift
    open class func subscriptionsSubscriptionLocalizationsGetToManyRelated(id: String, fieldsSubscriptions: [FieldsSubscriptions_subscriptionsSubscriptionLocalizationsGetToManyRelated]? = nil, fieldsSubscriptionLocalizations: [FieldsSubscriptionLocalizations_subscriptionsSubscriptionLocalizationsGetToManyRelated]? = nil, limit: Int? = nil, include: [Include_subscriptionsSubscriptionLocalizationsGetToManyRelated]? = nil, completion: @escaping (_ data: SubscriptionLocalizationsResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let fieldsSubscriptions = ["fieldsSubscriptions_example"] // [String] | the fields to include for returned resources of type subscriptions (optional)
let fieldsSubscriptionLocalizations = ["fieldsSubscriptionLocalizations_example"] // [String] | the fields to include for returned resources of type subscriptionLocalizations (optional)
let limit = 987 // Int | maximum resources per page (optional)
let include = ["include_example"] // [String] | comma-separated list of relationships to include (optional)

SubscriptionsAPI.subscriptionsSubscriptionLocalizationsGetToManyRelated(id: id, fieldsSubscriptions: fieldsSubscriptions, fieldsSubscriptionLocalizations: fieldsSubscriptionLocalizations, limit: limit, include: include) { (response, error) in
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
 **fieldsSubscriptions** | [**[String]**](String.md) | the fields to include for returned resources of type subscriptions | [optional] 
 **fieldsSubscriptionLocalizations** | [**[String]**](String.md) | the fields to include for returned resources of type subscriptionLocalizations | [optional] 
 **limit** | **Int** | maximum resources per page | [optional] 
 **include** | [**[String]**](String.md) | comma-separated list of relationships to include | [optional] 

### Return type

[**SubscriptionLocalizationsResponse**](SubscriptionLocalizationsResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **subscriptionsUpdateInstance**
```swift
    open class func subscriptionsUpdateInstance(id: String, subscriptionUpdateRequest: SubscriptionUpdateRequest, completion: @escaping (_ data: SubscriptionResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let subscriptionUpdateRequest = SubscriptionUpdateRequest(data: SubscriptionUpdateRequest_data(type: "type_example", id: "id_example", attributes: SubscriptionUpdateRequest_data_attributes(name: "name_example", familySharable: false, subscriptionPeriod: "subscriptionPeriod_example", reviewNote: "reviewNote_example", groupLevel: 123), relationships: SubscriptionUpdateRequest_data_relationships(introductoryOffers: SubscriptionUpdateRequest_data_relationships_introductoryOffers(data: [Subscription_relationships_introductoryOffers_data_inner(type: "type_example", id: "id_example")]), promotionalOffers: SubscriptionUpdateRequest_data_relationships_promotionalOffers(data: [Subscription_relationships_promotionalOffers_data_inner(type: "type_example", id: "id_example")]), prices: SubscriptionUpdateRequest_data_relationships_prices(data: [Subscription_relationships_prices_data_inner(type: "type_example", id: "id_example")]))), included: [SubscriptionUpdateRequest_included_inner(type: "type_example", id: "id_example", attributes: SubscriptionIntroductoryOfferInlineCreate_attributes(startDate: Date(), endDate: Date(), duration: SubscriptionOfferDuration(), offerMode: SubscriptionOfferMode(), numberOfPeriods: 123), relationships: SubscriptionIntroductoryOfferInlineCreate_relationships(subscription: PromotedPurchaseCreateRequest_data_relationships_subscription(data: PromotedPurchase_relationships_subscription_data(type: "type_example", id: "id_example")), territory: SubscriptionIntroductoryOfferInlineCreate_relationships_territory(data: AppAvailability_relationships_availableTerritories_data_inner(type: "type_example", id: "id_example")), subscriptionPricePoint: SubscriptionIntroductoryOfferInlineCreate_relationships_subscriptionPricePoint(data: SubscriptionIntroductoryOffer_relationships_subscriptionPricePoint_data(type: "type_example", id: "id_example"))))]) // SubscriptionUpdateRequest | Subscription representation

SubscriptionsAPI.subscriptionsUpdateInstance(id: id, subscriptionUpdateRequest: subscriptionUpdateRequest) { (response, error) in
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
 **subscriptionUpdateRequest** | [**SubscriptionUpdateRequest**](SubscriptionUpdateRequest.md) | Subscription representation | 

### Return type

[**SubscriptionResponse**](SubscriptionResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

