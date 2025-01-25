# SubscriptionGroupsAPI

All URIs are relative to *https://api.appstoreconnect.apple.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**subscriptionGroupsCreateInstance**](SubscriptionGroupsAPI.md#subscriptiongroupscreateinstance) | **POST** /v1/subscriptionGroups | 
[**subscriptionGroupsDeleteInstance**](SubscriptionGroupsAPI.md#subscriptiongroupsdeleteinstance) | **DELETE** /v1/subscriptionGroups/{id} | 
[**subscriptionGroupsGetInstance**](SubscriptionGroupsAPI.md#subscriptiongroupsgetinstance) | **GET** /v1/subscriptionGroups/{id} | 
[**subscriptionGroupsSubscriptionGroupLocalizationsGetToManyRelated**](SubscriptionGroupsAPI.md#subscriptiongroupssubscriptiongrouplocalizationsgettomanyrelated) | **GET** /v1/subscriptionGroups/{id}/subscriptionGroupLocalizations | 
[**subscriptionGroupsSubscriptionsGetToManyRelated**](SubscriptionGroupsAPI.md#subscriptiongroupssubscriptionsgettomanyrelated) | **GET** /v1/subscriptionGroups/{id}/subscriptions | 
[**subscriptionGroupsUpdateInstance**](SubscriptionGroupsAPI.md#subscriptiongroupsupdateinstance) | **PATCH** /v1/subscriptionGroups/{id} | 


# **subscriptionGroupsCreateInstance**
```swift
    open class func subscriptionGroupsCreateInstance(subscriptionGroupCreateRequest: SubscriptionGroupCreateRequest, completion: @escaping (_ data: SubscriptionGroupResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let subscriptionGroupCreateRequest = SubscriptionGroupCreateRequest(data: SubscriptionGroupCreateRequest_data(type: "type_example", attributes: SubscriptionGroupCreateRequest_data_attributes(referenceName: "referenceName_example"), relationships: AnalyticsReportRequestCreateRequest_data_relationships(app: AnalyticsReportRequestCreateRequest_data_relationships_app(data: AlternativeDistributionKeyCreateRequest_data_relationships_app_data(type: "type_example", id: "id_example"))))) // SubscriptionGroupCreateRequest | SubscriptionGroup representation

SubscriptionGroupsAPI.subscriptionGroupsCreateInstance(subscriptionGroupCreateRequest: subscriptionGroupCreateRequest) { (response, error) in
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
 **subscriptionGroupCreateRequest** | [**SubscriptionGroupCreateRequest**](SubscriptionGroupCreateRequest.md) | SubscriptionGroup representation | 

### Return type

[**SubscriptionGroupResponse**](SubscriptionGroupResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **subscriptionGroupsDeleteInstance**
```swift
    open class func subscriptionGroupsDeleteInstance(id: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource

SubscriptionGroupsAPI.subscriptionGroupsDeleteInstance(id: id) { (response, error) in
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

# **subscriptionGroupsGetInstance**
```swift
    open class func subscriptionGroupsGetInstance(id: String, fieldsSubscriptionGroups: [FieldsSubscriptionGroups_subscriptionGroupsGetInstance]? = nil, fieldsSubscriptions: [FieldsSubscriptions_subscriptionGroupsGetInstance]? = nil, fieldsSubscriptionGroupLocalizations: [FieldsSubscriptionGroupLocalizations_subscriptionGroupsGetInstance]? = nil, include: [Include_subscriptionGroupsGetInstance]? = nil, limitSubscriptionGroupLocalizations: Int? = nil, limitSubscriptions: Int? = nil, completion: @escaping (_ data: SubscriptionGroupResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let fieldsSubscriptionGroups = ["fieldsSubscriptionGroups_example"] // [String] | the fields to include for returned resources of type subscriptionGroups (optional)
let fieldsSubscriptions = ["fieldsSubscriptions_example"] // [String] | the fields to include for returned resources of type subscriptions (optional)
let fieldsSubscriptionGroupLocalizations = ["fieldsSubscriptionGroupLocalizations_example"] // [String] | the fields to include for returned resources of type subscriptionGroupLocalizations (optional)
let include = ["include_example"] // [String] | comma-separated list of relationships to include (optional)
let limitSubscriptionGroupLocalizations = 987 // Int | maximum number of related subscriptionGroupLocalizations returned (when they are included) (optional)
let limitSubscriptions = 987 // Int | maximum number of related subscriptions returned (when they are included) (optional)

SubscriptionGroupsAPI.subscriptionGroupsGetInstance(id: id, fieldsSubscriptionGroups: fieldsSubscriptionGroups, fieldsSubscriptions: fieldsSubscriptions, fieldsSubscriptionGroupLocalizations: fieldsSubscriptionGroupLocalizations, include: include, limitSubscriptionGroupLocalizations: limitSubscriptionGroupLocalizations, limitSubscriptions: limitSubscriptions) { (response, error) in
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
 **fieldsSubscriptionGroups** | [**[String]**](String.md) | the fields to include for returned resources of type subscriptionGroups | [optional] 
 **fieldsSubscriptions** | [**[String]**](String.md) | the fields to include for returned resources of type subscriptions | [optional] 
 **fieldsSubscriptionGroupLocalizations** | [**[String]**](String.md) | the fields to include for returned resources of type subscriptionGroupLocalizations | [optional] 
 **include** | [**[String]**](String.md) | comma-separated list of relationships to include | [optional] 
 **limitSubscriptionGroupLocalizations** | **Int** | maximum number of related subscriptionGroupLocalizations returned (when they are included) | [optional] 
 **limitSubscriptions** | **Int** | maximum number of related subscriptions returned (when they are included) | [optional] 

### Return type

[**SubscriptionGroupResponse**](SubscriptionGroupResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **subscriptionGroupsSubscriptionGroupLocalizationsGetToManyRelated**
```swift
    open class func subscriptionGroupsSubscriptionGroupLocalizationsGetToManyRelated(id: String, fieldsSubscriptionGroupLocalizations: [FieldsSubscriptionGroupLocalizations_subscriptionGroupsSubscriptionGroupLocalizationsGetToManyRelated]? = nil, fieldsSubscriptionGroups: [FieldsSubscriptionGroups_subscriptionGroupsSubscriptionGroupLocalizationsGetToManyRelated]? = nil, limit: Int? = nil, include: [Include_subscriptionGroupsSubscriptionGroupLocalizationsGetToManyRelated]? = nil, completion: @escaping (_ data: SubscriptionGroupLocalizationsResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let fieldsSubscriptionGroupLocalizations = ["fieldsSubscriptionGroupLocalizations_example"] // [String] | the fields to include for returned resources of type subscriptionGroupLocalizations (optional)
let fieldsSubscriptionGroups = ["fieldsSubscriptionGroups_example"] // [String] | the fields to include for returned resources of type subscriptionGroups (optional)
let limit = 987 // Int | maximum resources per page (optional)
let include = ["include_example"] // [String] | comma-separated list of relationships to include (optional)

SubscriptionGroupsAPI.subscriptionGroupsSubscriptionGroupLocalizationsGetToManyRelated(id: id, fieldsSubscriptionGroupLocalizations: fieldsSubscriptionGroupLocalizations, fieldsSubscriptionGroups: fieldsSubscriptionGroups, limit: limit, include: include) { (response, error) in
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
 **fieldsSubscriptionGroupLocalizations** | [**[String]**](String.md) | the fields to include for returned resources of type subscriptionGroupLocalizations | [optional] 
 **fieldsSubscriptionGroups** | [**[String]**](String.md) | the fields to include for returned resources of type subscriptionGroups | [optional] 
 **limit** | **Int** | maximum resources per page | [optional] 
 **include** | [**[String]**](String.md) | comma-separated list of relationships to include | [optional] 

### Return type

[**SubscriptionGroupLocalizationsResponse**](SubscriptionGroupLocalizationsResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **subscriptionGroupsSubscriptionsGetToManyRelated**
```swift
    open class func subscriptionGroupsSubscriptionsGetToManyRelated(id: String, filterProductId: [String]? = nil, filterName: [String]? = nil, filterState: [FilterState_subscriptionGroupsSubscriptionsGetToManyRelated]? = nil, sort: [Sort_subscriptionGroupsSubscriptionsGetToManyRelated]? = nil, fieldsSubscriptions: [FieldsSubscriptions_subscriptionGroupsSubscriptionsGetToManyRelated]? = nil, fieldsSubscriptionLocalizations: [FieldsSubscriptionLocalizations_subscriptionGroupsSubscriptionsGetToManyRelated]? = nil, fieldsSubscriptionAppStoreReviewScreenshots: [FieldsSubscriptionAppStoreReviewScreenshots_subscriptionGroupsSubscriptionsGetToManyRelated]? = nil, fieldsSubscriptionGroups: [FieldsSubscriptionGroups_subscriptionGroupsSubscriptionsGetToManyRelated]? = nil, fieldsSubscriptionIntroductoryOffers: [FieldsSubscriptionIntroductoryOffers_subscriptionGroupsSubscriptionsGetToManyRelated]? = nil, fieldsSubscriptionPromotionalOffers: [FieldsSubscriptionPromotionalOffers_subscriptionGroupsSubscriptionsGetToManyRelated]? = nil, fieldsSubscriptionOfferCodes: [FieldsSubscriptionOfferCodes_subscriptionGroupsSubscriptionsGetToManyRelated]? = nil, fieldsSubscriptionPrices: [FieldsSubscriptionPrices_subscriptionGroupsSubscriptionsGetToManyRelated]? = nil, fieldsPromotedPurchases: [FieldsPromotedPurchases_subscriptionGroupsSubscriptionsGetToManyRelated]? = nil, fieldsSubscriptionAvailabilities: [FieldsSubscriptionAvailabilities_subscriptionGroupsSubscriptionsGetToManyRelated]? = nil, fieldsWinBackOffers: [FieldsWinBackOffers_subscriptionGroupsSubscriptionsGetToManyRelated]? = nil, fieldsSubscriptionImages: [FieldsSubscriptionImages_subscriptionGroupsSubscriptionsGetToManyRelated]? = nil, limit: Int? = nil, include: [Include_subscriptionGroupsSubscriptionsGetToManyRelated]? = nil, limitSubscriptionLocalizations: Int? = nil, limitIntroductoryOffers: Int? = nil, limitPromotionalOffers: Int? = nil, limitOfferCodes: Int? = nil, limitPrices: Int? = nil, limitWinBackOffers: Int? = nil, limitImages: Int? = nil, completion: @escaping (_ data: SubscriptionsResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let filterProductId = ["inner_example"] // [String] | filter by attribute 'productId' (optional)
let filterName = ["inner_example"] // [String] | filter by attribute 'name' (optional)
let filterState = ["filterState_example"] // [String] | filter by attribute 'state' (optional)
let sort = ["sort_example"] // [String] | comma-separated list of sort expressions; resources will be sorted as specified (optional)
let fieldsSubscriptions = ["fieldsSubscriptions_example"] // [String] | the fields to include for returned resources of type subscriptions (optional)
let fieldsSubscriptionLocalizations = ["fieldsSubscriptionLocalizations_example"] // [String] | the fields to include for returned resources of type subscriptionLocalizations (optional)
let fieldsSubscriptionAppStoreReviewScreenshots = ["fieldsSubscriptionAppStoreReviewScreenshots_example"] // [String] | the fields to include for returned resources of type subscriptionAppStoreReviewScreenshots (optional)
let fieldsSubscriptionGroups = ["fieldsSubscriptionGroups_example"] // [String] | the fields to include for returned resources of type subscriptionGroups (optional)
let fieldsSubscriptionIntroductoryOffers = ["fieldsSubscriptionIntroductoryOffers_example"] // [String] | the fields to include for returned resources of type subscriptionIntroductoryOffers (optional)
let fieldsSubscriptionPromotionalOffers = ["fieldsSubscriptionPromotionalOffers_example"] // [String] | the fields to include for returned resources of type subscriptionPromotionalOffers (optional)
let fieldsSubscriptionOfferCodes = ["fieldsSubscriptionOfferCodes_example"] // [String] | the fields to include for returned resources of type subscriptionOfferCodes (optional)
let fieldsSubscriptionPrices = ["fieldsSubscriptionPrices_example"] // [String] | the fields to include for returned resources of type subscriptionPrices (optional)
let fieldsPromotedPurchases = ["fieldsPromotedPurchases_example"] // [String] | the fields to include for returned resources of type promotedPurchases (optional)
let fieldsSubscriptionAvailabilities = ["fieldsSubscriptionAvailabilities_example"] // [String] | the fields to include for returned resources of type subscriptionAvailabilities (optional)
let fieldsWinBackOffers = ["fieldsWinBackOffers_example"] // [String] | the fields to include for returned resources of type winBackOffers (optional)
let fieldsSubscriptionImages = ["fieldsSubscriptionImages_example"] // [String] | the fields to include for returned resources of type subscriptionImages (optional)
let limit = 987 // Int | maximum resources per page (optional)
let include = ["include_example"] // [String] | comma-separated list of relationships to include (optional)
let limitSubscriptionLocalizations = 987 // Int | maximum number of related subscriptionLocalizations returned (when they are included) (optional)
let limitIntroductoryOffers = 987 // Int | maximum number of related introductoryOffers returned (when they are included) (optional)
let limitPromotionalOffers = 987 // Int | maximum number of related promotionalOffers returned (when they are included) (optional)
let limitOfferCodes = 987 // Int | maximum number of related offerCodes returned (when they are included) (optional)
let limitPrices = 987 // Int | maximum number of related prices returned (when they are included) (optional)
let limitWinBackOffers = 987 // Int | maximum number of related winBackOffers returned (when they are included) (optional)
let limitImages = 987 // Int | maximum number of related images returned (when they are included) (optional)

SubscriptionGroupsAPI.subscriptionGroupsSubscriptionsGetToManyRelated(id: id, filterProductId: filterProductId, filterName: filterName, filterState: filterState, sort: sort, fieldsSubscriptions: fieldsSubscriptions, fieldsSubscriptionLocalizations: fieldsSubscriptionLocalizations, fieldsSubscriptionAppStoreReviewScreenshots: fieldsSubscriptionAppStoreReviewScreenshots, fieldsSubscriptionGroups: fieldsSubscriptionGroups, fieldsSubscriptionIntroductoryOffers: fieldsSubscriptionIntroductoryOffers, fieldsSubscriptionPromotionalOffers: fieldsSubscriptionPromotionalOffers, fieldsSubscriptionOfferCodes: fieldsSubscriptionOfferCodes, fieldsSubscriptionPrices: fieldsSubscriptionPrices, fieldsPromotedPurchases: fieldsPromotedPurchases, fieldsSubscriptionAvailabilities: fieldsSubscriptionAvailabilities, fieldsWinBackOffers: fieldsWinBackOffers, fieldsSubscriptionImages: fieldsSubscriptionImages, limit: limit, include: include, limitSubscriptionLocalizations: limitSubscriptionLocalizations, limitIntroductoryOffers: limitIntroductoryOffers, limitPromotionalOffers: limitPromotionalOffers, limitOfferCodes: limitOfferCodes, limitPrices: limitPrices, limitWinBackOffers: limitWinBackOffers, limitImages: limitImages) { (response, error) in
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
 **filterProductId** | [**[String]**](String.md) | filter by attribute &#39;productId&#39; | [optional] 
 **filterName** | [**[String]**](String.md) | filter by attribute &#39;name&#39; | [optional] 
 **filterState** | [**[String]**](String.md) | filter by attribute &#39;state&#39; | [optional] 
 **sort** | [**[String]**](String.md) | comma-separated list of sort expressions; resources will be sorted as specified | [optional] 
 **fieldsSubscriptions** | [**[String]**](String.md) | the fields to include for returned resources of type subscriptions | [optional] 
 **fieldsSubscriptionLocalizations** | [**[String]**](String.md) | the fields to include for returned resources of type subscriptionLocalizations | [optional] 
 **fieldsSubscriptionAppStoreReviewScreenshots** | [**[String]**](String.md) | the fields to include for returned resources of type subscriptionAppStoreReviewScreenshots | [optional] 
 **fieldsSubscriptionGroups** | [**[String]**](String.md) | the fields to include for returned resources of type subscriptionGroups | [optional] 
 **fieldsSubscriptionIntroductoryOffers** | [**[String]**](String.md) | the fields to include for returned resources of type subscriptionIntroductoryOffers | [optional] 
 **fieldsSubscriptionPromotionalOffers** | [**[String]**](String.md) | the fields to include for returned resources of type subscriptionPromotionalOffers | [optional] 
 **fieldsSubscriptionOfferCodes** | [**[String]**](String.md) | the fields to include for returned resources of type subscriptionOfferCodes | [optional] 
 **fieldsSubscriptionPrices** | [**[String]**](String.md) | the fields to include for returned resources of type subscriptionPrices | [optional] 
 **fieldsPromotedPurchases** | [**[String]**](String.md) | the fields to include for returned resources of type promotedPurchases | [optional] 
 **fieldsSubscriptionAvailabilities** | [**[String]**](String.md) | the fields to include for returned resources of type subscriptionAvailabilities | [optional] 
 **fieldsWinBackOffers** | [**[String]**](String.md) | the fields to include for returned resources of type winBackOffers | [optional] 
 **fieldsSubscriptionImages** | [**[String]**](String.md) | the fields to include for returned resources of type subscriptionImages | [optional] 
 **limit** | **Int** | maximum resources per page | [optional] 
 **include** | [**[String]**](String.md) | comma-separated list of relationships to include | [optional] 
 **limitSubscriptionLocalizations** | **Int** | maximum number of related subscriptionLocalizations returned (when they are included) | [optional] 
 **limitIntroductoryOffers** | **Int** | maximum number of related introductoryOffers returned (when they are included) | [optional] 
 **limitPromotionalOffers** | **Int** | maximum number of related promotionalOffers returned (when they are included) | [optional] 
 **limitOfferCodes** | **Int** | maximum number of related offerCodes returned (when they are included) | [optional] 
 **limitPrices** | **Int** | maximum number of related prices returned (when they are included) | [optional] 
 **limitWinBackOffers** | **Int** | maximum number of related winBackOffers returned (when they are included) | [optional] 
 **limitImages** | **Int** | maximum number of related images returned (when they are included) | [optional] 

### Return type

[**SubscriptionsResponse**](SubscriptionsResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **subscriptionGroupsUpdateInstance**
```swift
    open class func subscriptionGroupsUpdateInstance(id: String, subscriptionGroupUpdateRequest: SubscriptionGroupUpdateRequest, completion: @escaping (_ data: SubscriptionGroupResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let subscriptionGroupUpdateRequest = SubscriptionGroupUpdateRequest(data: SubscriptionGroupUpdateRequest_data(type: "type_example", id: "id_example", attributes: GameCenterGroup_attributes(referenceName: "referenceName_example"))) // SubscriptionGroupUpdateRequest | SubscriptionGroup representation

SubscriptionGroupsAPI.subscriptionGroupsUpdateInstance(id: id, subscriptionGroupUpdateRequest: subscriptionGroupUpdateRequest) { (response, error) in
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
 **subscriptionGroupUpdateRequest** | [**SubscriptionGroupUpdateRequest**](SubscriptionGroupUpdateRequest.md) | SubscriptionGroup representation | 

### Return type

[**SubscriptionGroupResponse**](SubscriptionGroupResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

