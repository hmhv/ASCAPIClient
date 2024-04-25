# SubscriptionAvailabilitiesAPI

All URIs are relative to *https://api.appstoreconnect.apple.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**subscriptionAvailabilitiesAvailableTerritoriesGetToManyRelated**](SubscriptionAvailabilitiesAPI.md#subscriptionavailabilitiesavailableterritoriesgettomanyrelated) | **GET** /v1/subscriptionAvailabilities/{id}/availableTerritories | 
[**subscriptionAvailabilitiesCreateInstance**](SubscriptionAvailabilitiesAPI.md#subscriptionavailabilitiescreateinstance) | **POST** /v1/subscriptionAvailabilities | 
[**subscriptionAvailabilitiesGetInstance**](SubscriptionAvailabilitiesAPI.md#subscriptionavailabilitiesgetinstance) | **GET** /v1/subscriptionAvailabilities/{id} | 


# **subscriptionAvailabilitiesAvailableTerritoriesGetToManyRelated**
```swift
    open class func subscriptionAvailabilitiesAvailableTerritoriesGetToManyRelated(id: String, fieldsTerritories: [FieldsTerritories_subscriptionAvailabilitiesAvailableTerritoriesGetToManyRelated]? = nil, limit: Int? = nil, completion: @escaping (_ data: TerritoriesResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let fieldsTerritories = ["fieldsTerritories_example"] // [String] | the fields to include for returned resources of type territories (optional)
let limit = 987 // Int | maximum resources per page (optional)

SubscriptionAvailabilitiesAPI.subscriptionAvailabilitiesAvailableTerritoriesGetToManyRelated(id: id, fieldsTerritories: fieldsTerritories, limit: limit) { (response, error) in
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
 **fieldsTerritories** | [**[String]**](String.md) | the fields to include for returned resources of type territories | [optional] 
 **limit** | **Int** | maximum resources per page | [optional] 

### Return type

[**TerritoriesResponse**](TerritoriesResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **subscriptionAvailabilitiesCreateInstance**
```swift
    open class func subscriptionAvailabilitiesCreateInstance(subscriptionAvailabilityCreateRequest: SubscriptionAvailabilityCreateRequest, completion: @escaping (_ data: SubscriptionAvailabilityResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let subscriptionAvailabilityCreateRequest = SubscriptionAvailabilityCreateRequest(data: SubscriptionAvailabilityCreateRequest_data(type: "type_example", attributes: AppAvailabilityV2CreateRequest_data_attributes(availableInNewTerritories: false), relationships: SubscriptionAvailabilityCreateRequest_data_relationships(subscription: SubscriptionAppStoreReviewScreenshotCreateRequest_data_relationships_subscription(data: PromotedPurchase_relationships_subscription_data(type: "type_example", id: "id_example")), availableTerritories: AppAvailabilityCreateRequest_data_relationships_availableTerritories(data: [AppAvailability_relationships_availableTerritories_data_inner(type: "type_example", id: "id_example")])))) // SubscriptionAvailabilityCreateRequest | SubscriptionAvailability representation

SubscriptionAvailabilitiesAPI.subscriptionAvailabilitiesCreateInstance(subscriptionAvailabilityCreateRequest: subscriptionAvailabilityCreateRequest) { (response, error) in
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
 **subscriptionAvailabilityCreateRequest** | [**SubscriptionAvailabilityCreateRequest**](SubscriptionAvailabilityCreateRequest.md) | SubscriptionAvailability representation | 

### Return type

[**SubscriptionAvailabilityResponse**](SubscriptionAvailabilityResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **subscriptionAvailabilitiesGetInstance**
```swift
    open class func subscriptionAvailabilitiesGetInstance(id: String, fieldsSubscriptionAvailabilities: [FieldsSubscriptionAvailabilities_subscriptionAvailabilitiesGetInstance]? = nil, include: [Include_subscriptionAvailabilitiesGetInstance]? = nil, fieldsTerritories: [FieldsTerritories_subscriptionAvailabilitiesGetInstance]? = nil, limitAvailableTerritories: Int? = nil, completion: @escaping (_ data: SubscriptionAvailabilityResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let fieldsSubscriptionAvailabilities = ["fieldsSubscriptionAvailabilities_example"] // [String] | the fields to include for returned resources of type subscriptionAvailabilities (optional)
let include = ["include_example"] // [String] | comma-separated list of relationships to include (optional)
let fieldsTerritories = ["fieldsTerritories_example"] // [String] | the fields to include for returned resources of type territories (optional)
let limitAvailableTerritories = 987 // Int | maximum number of related availableTerritories returned (when they are included) (optional)

SubscriptionAvailabilitiesAPI.subscriptionAvailabilitiesGetInstance(id: id, fieldsSubscriptionAvailabilities: fieldsSubscriptionAvailabilities, include: include, fieldsTerritories: fieldsTerritories, limitAvailableTerritories: limitAvailableTerritories) { (response, error) in
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
 **include** | [**[String]**](String.md) | comma-separated list of relationships to include | [optional] 
 **fieldsTerritories** | [**[String]**](String.md) | the fields to include for returned resources of type territories | [optional] 
 **limitAvailableTerritories** | **Int** | maximum number of related availableTerritories returned (when they are included) | [optional] 

### Return type

[**SubscriptionAvailabilityResponse**](SubscriptionAvailabilityResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

