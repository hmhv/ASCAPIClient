# SubscriptionPricePointsAPI

All URIs are relative to *https://api.appstoreconnect.apple.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**subscriptionPricePointsEqualizationsGetToManyRelated**](SubscriptionPricePointsAPI.md#subscriptionpricepointsequalizationsgettomanyrelated) | **GET** /v1/subscriptionPricePoints/{id}/equalizations | 
[**subscriptionPricePointsGetInstance**](SubscriptionPricePointsAPI.md#subscriptionpricepointsgetinstance) | **GET** /v1/subscriptionPricePoints/{id} | 


# **subscriptionPricePointsEqualizationsGetToManyRelated**
```swift
    open class func subscriptionPricePointsEqualizationsGetToManyRelated(id: String, filterTerritory: [String]? = nil, filterSubscription: [String]? = nil, fieldsSubscriptionPricePoints: [FieldsSubscriptionPricePoints_subscriptionPricePointsEqualizationsGetToManyRelated]? = nil, fieldsTerritories: [FieldsTerritories_subscriptionPricePointsEqualizationsGetToManyRelated]? = nil, limit: Int? = nil, include: [Include_subscriptionPricePointsEqualizationsGetToManyRelated]? = nil, completion: @escaping (_ data: SubscriptionPricePointsResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let filterTerritory = ["inner_example"] // [String] | filter by id(s) of related 'territory' (optional)
let filterSubscription = ["inner_example"] // [String] | filter by id(s) of related 'subscription' (optional)
let fieldsSubscriptionPricePoints = ["fieldsSubscriptionPricePoints_example"] // [String] | the fields to include for returned resources of type subscriptionPricePoints (optional)
let fieldsTerritories = ["fieldsTerritories_example"] // [String] | the fields to include for returned resources of type territories (optional)
let limit = 987 // Int | maximum resources per page (optional)
let include = ["include_example"] // [String] | comma-separated list of relationships to include (optional)

SubscriptionPricePointsAPI.subscriptionPricePointsEqualizationsGetToManyRelated(id: id, filterTerritory: filterTerritory, filterSubscription: filterSubscription, fieldsSubscriptionPricePoints: fieldsSubscriptionPricePoints, fieldsTerritories: fieldsTerritories, limit: limit, include: include) { (response, error) in
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
 **filterSubscription** | [**[String]**](String.md) | filter by id(s) of related &#39;subscription&#39; | [optional] 
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

# **subscriptionPricePointsGetInstance**
```swift
    open class func subscriptionPricePointsGetInstance(id: String, fieldsSubscriptionPricePoints: [FieldsSubscriptionPricePoints_subscriptionPricePointsGetInstance]? = nil, include: [Include_subscriptionPricePointsGetInstance]? = nil, completion: @escaping (_ data: SubscriptionPricePointResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let fieldsSubscriptionPricePoints = ["fieldsSubscriptionPricePoints_example"] // [String] | the fields to include for returned resources of type subscriptionPricePoints (optional)
let include = ["include_example"] // [String] | comma-separated list of relationships to include (optional)

SubscriptionPricePointsAPI.subscriptionPricePointsGetInstance(id: id, fieldsSubscriptionPricePoints: fieldsSubscriptionPricePoints, include: include) { (response, error) in
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
 **fieldsSubscriptionPricePoints** | [**[String]**](String.md) | the fields to include for returned resources of type subscriptionPricePoints | [optional] 
 **include** | [**[String]**](String.md) | comma-separated list of relationships to include | [optional] 

### Return type

[**SubscriptionPricePointResponse**](SubscriptionPricePointResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

