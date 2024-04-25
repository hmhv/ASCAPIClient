# SubscriptionOfferCodeCustomCodesAPI

All URIs are relative to *https://api.appstoreconnect.apple.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**subscriptionOfferCodeCustomCodesCreateInstance**](SubscriptionOfferCodeCustomCodesAPI.md#subscriptionoffercodecustomcodescreateinstance) | **POST** /v1/subscriptionOfferCodeCustomCodes | 
[**subscriptionOfferCodeCustomCodesGetInstance**](SubscriptionOfferCodeCustomCodesAPI.md#subscriptionoffercodecustomcodesgetinstance) | **GET** /v1/subscriptionOfferCodeCustomCodes/{id} | 
[**subscriptionOfferCodeCustomCodesUpdateInstance**](SubscriptionOfferCodeCustomCodesAPI.md#subscriptionoffercodecustomcodesupdateinstance) | **PATCH** /v1/subscriptionOfferCodeCustomCodes/{id} | 


# **subscriptionOfferCodeCustomCodesCreateInstance**
```swift
    open class func subscriptionOfferCodeCustomCodesCreateInstance(subscriptionOfferCodeCustomCodeCreateRequest: SubscriptionOfferCodeCustomCodeCreateRequest, completion: @escaping (_ data: SubscriptionOfferCodeCustomCodeResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let subscriptionOfferCodeCustomCodeCreateRequest = SubscriptionOfferCodeCustomCodeCreateRequest(data: SubscriptionOfferCodeCustomCodeCreateRequest_data(type: "type_example", attributes: SubscriptionOfferCodeCustomCodeCreateRequest_data_attributes(customCode: "customCode_example", numberOfCodes: 123, expirationDate: Date()), relationships: SubscriptionOfferCodeCustomCodeCreateRequest_data_relationships(offerCode: SubscriptionOfferCodeCustomCodeCreateRequest_data_relationships_offerCode(data: SubscriptionOfferCodeCustomCode_relationships_offerCode_data(type: "type_example", id: "id_example"))))) // SubscriptionOfferCodeCustomCodeCreateRequest | SubscriptionOfferCodeCustomCode representation

SubscriptionOfferCodeCustomCodesAPI.subscriptionOfferCodeCustomCodesCreateInstance(subscriptionOfferCodeCustomCodeCreateRequest: subscriptionOfferCodeCustomCodeCreateRequest) { (response, error) in
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
 **subscriptionOfferCodeCustomCodeCreateRequest** | [**SubscriptionOfferCodeCustomCodeCreateRequest**](SubscriptionOfferCodeCustomCodeCreateRequest.md) | SubscriptionOfferCodeCustomCode representation | 

### Return type

[**SubscriptionOfferCodeCustomCodeResponse**](SubscriptionOfferCodeCustomCodeResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **subscriptionOfferCodeCustomCodesGetInstance**
```swift
    open class func subscriptionOfferCodeCustomCodesGetInstance(id: String, fieldsSubscriptionOfferCodeCustomCodes: [FieldsSubscriptionOfferCodeCustomCodes_subscriptionOfferCodeCustomCodesGetInstance]? = nil, include: [Include_subscriptionOfferCodeCustomCodesGetInstance]? = nil, completion: @escaping (_ data: SubscriptionOfferCodeCustomCodeResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let fieldsSubscriptionOfferCodeCustomCodes = ["fieldsSubscriptionOfferCodeCustomCodes_example"] // [String] | the fields to include for returned resources of type subscriptionOfferCodeCustomCodes (optional)
let include = ["include_example"] // [String] | comma-separated list of relationships to include (optional)

SubscriptionOfferCodeCustomCodesAPI.subscriptionOfferCodeCustomCodesGetInstance(id: id, fieldsSubscriptionOfferCodeCustomCodes: fieldsSubscriptionOfferCodeCustomCodes, include: include) { (response, error) in
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
 **fieldsSubscriptionOfferCodeCustomCodes** | [**[String]**](String.md) | the fields to include for returned resources of type subscriptionOfferCodeCustomCodes | [optional] 
 **include** | [**[String]**](String.md) | comma-separated list of relationships to include | [optional] 

### Return type

[**SubscriptionOfferCodeCustomCodeResponse**](SubscriptionOfferCodeCustomCodeResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **subscriptionOfferCodeCustomCodesUpdateInstance**
```swift
    open class func subscriptionOfferCodeCustomCodesUpdateInstance(id: String, subscriptionOfferCodeCustomCodeUpdateRequest: SubscriptionOfferCodeCustomCodeUpdateRequest, completion: @escaping (_ data: SubscriptionOfferCodeCustomCodeResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let subscriptionOfferCodeCustomCodeUpdateRequest = SubscriptionOfferCodeCustomCodeUpdateRequest(data: SubscriptionOfferCodeCustomCodeUpdateRequest_data(type: "type_example", id: "id_example", attributes: SubscriptionOfferCodeCustomCodeUpdateRequest_data_attributes(active: false))) // SubscriptionOfferCodeCustomCodeUpdateRequest | SubscriptionOfferCodeCustomCode representation

SubscriptionOfferCodeCustomCodesAPI.subscriptionOfferCodeCustomCodesUpdateInstance(id: id, subscriptionOfferCodeCustomCodeUpdateRequest: subscriptionOfferCodeCustomCodeUpdateRequest) { (response, error) in
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
 **subscriptionOfferCodeCustomCodeUpdateRequest** | [**SubscriptionOfferCodeCustomCodeUpdateRequest**](SubscriptionOfferCodeCustomCodeUpdateRequest.md) | SubscriptionOfferCodeCustomCode representation | 

### Return type

[**SubscriptionOfferCodeCustomCodeResponse**](SubscriptionOfferCodeCustomCodeResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

