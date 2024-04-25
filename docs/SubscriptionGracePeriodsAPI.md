# SubscriptionGracePeriodsAPI

All URIs are relative to *https://api.appstoreconnect.apple.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**subscriptionGracePeriodsGetInstance**](SubscriptionGracePeriodsAPI.md#subscriptiongraceperiodsgetinstance) | **GET** /v1/subscriptionGracePeriods/{id} | 
[**subscriptionGracePeriodsUpdateInstance**](SubscriptionGracePeriodsAPI.md#subscriptiongraceperiodsupdateinstance) | **PATCH** /v1/subscriptionGracePeriods/{id} | 


# **subscriptionGracePeriodsGetInstance**
```swift
    open class func subscriptionGracePeriodsGetInstance(id: String, fieldsSubscriptionGracePeriods: [FieldsSubscriptionGracePeriods_subscriptionGracePeriodsGetInstance]? = nil, completion: @escaping (_ data: SubscriptionGracePeriodResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let fieldsSubscriptionGracePeriods = ["fieldsSubscriptionGracePeriods_example"] // [String] | the fields to include for returned resources of type subscriptionGracePeriods (optional)

SubscriptionGracePeriodsAPI.subscriptionGracePeriodsGetInstance(id: id, fieldsSubscriptionGracePeriods: fieldsSubscriptionGracePeriods) { (response, error) in
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
 **fieldsSubscriptionGracePeriods** | [**[String]**](String.md) | the fields to include for returned resources of type subscriptionGracePeriods | [optional] 

### Return type

[**SubscriptionGracePeriodResponse**](SubscriptionGracePeriodResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **subscriptionGracePeriodsUpdateInstance**
```swift
    open class func subscriptionGracePeriodsUpdateInstance(id: String, subscriptionGracePeriodUpdateRequest: SubscriptionGracePeriodUpdateRequest, completion: @escaping (_ data: SubscriptionGracePeriodResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let subscriptionGracePeriodUpdateRequest = SubscriptionGracePeriodUpdateRequest(data: SubscriptionGracePeriodUpdateRequest_data(type: "type_example", id: "id_example", attributes: SubscriptionGracePeriod_attributes(optIn: false, sandboxOptIn: false, duration: SubscriptionGracePeriodDuration(), renewalType: "renewalType_example"))) // SubscriptionGracePeriodUpdateRequest | SubscriptionGracePeriod representation

SubscriptionGracePeriodsAPI.subscriptionGracePeriodsUpdateInstance(id: id, subscriptionGracePeriodUpdateRequest: subscriptionGracePeriodUpdateRequest) { (response, error) in
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
 **subscriptionGracePeriodUpdateRequest** | [**SubscriptionGracePeriodUpdateRequest**](SubscriptionGracePeriodUpdateRequest.md) | SubscriptionGracePeriod representation | 

### Return type

[**SubscriptionGracePeriodResponse**](SubscriptionGracePeriodResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

