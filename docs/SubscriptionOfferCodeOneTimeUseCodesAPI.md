# SubscriptionOfferCodeOneTimeUseCodesAPI

All URIs are relative to *https://api.appstoreconnect.apple.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**subscriptionOfferCodeOneTimeUseCodesCreateInstance**](SubscriptionOfferCodeOneTimeUseCodesAPI.md#subscriptionoffercodeonetimeusecodescreateinstance) | **POST** /v1/subscriptionOfferCodeOneTimeUseCodes | 
[**subscriptionOfferCodeOneTimeUseCodesGetInstance**](SubscriptionOfferCodeOneTimeUseCodesAPI.md#subscriptionoffercodeonetimeusecodesgetinstance) | **GET** /v1/subscriptionOfferCodeOneTimeUseCodes/{id} | 
[**subscriptionOfferCodeOneTimeUseCodesUpdateInstance**](SubscriptionOfferCodeOneTimeUseCodesAPI.md#subscriptionoffercodeonetimeusecodesupdateinstance) | **PATCH** /v1/subscriptionOfferCodeOneTimeUseCodes/{id} | 
[**subscriptionOfferCodeOneTimeUseCodesValuesGetToOneRelated**](SubscriptionOfferCodeOneTimeUseCodesAPI.md#subscriptionoffercodeonetimeusecodesvaluesgettoonerelated) | **GET** /v1/subscriptionOfferCodeOneTimeUseCodes/{id}/values | 


# **subscriptionOfferCodeOneTimeUseCodesCreateInstance**
```swift
    open class func subscriptionOfferCodeOneTimeUseCodesCreateInstance(subscriptionOfferCodeOneTimeUseCodeCreateRequest: SubscriptionOfferCodeOneTimeUseCodeCreateRequest, completion: @escaping (_ data: SubscriptionOfferCodeOneTimeUseCodeResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let subscriptionOfferCodeOneTimeUseCodeCreateRequest = SubscriptionOfferCodeOneTimeUseCodeCreateRequest(data: SubscriptionOfferCodeOneTimeUseCodeCreateRequest_data(type: "type_example", attributes: SubscriptionOfferCodeOneTimeUseCodeCreateRequest_data_attributes(numberOfCodes: 123, expirationDate: Date()), relationships: SubscriptionOfferCodeCustomCodeCreateRequest_data_relationships(offerCode: SubscriptionOfferCodeCustomCodeCreateRequest_data_relationships_offerCode(data: SubscriptionOfferCodeCustomCode_relationships_offerCode_data(type: "type_example", id: "id_example"))))) // SubscriptionOfferCodeOneTimeUseCodeCreateRequest | SubscriptionOfferCodeOneTimeUseCode representation

SubscriptionOfferCodeOneTimeUseCodesAPI.subscriptionOfferCodeOneTimeUseCodesCreateInstance(subscriptionOfferCodeOneTimeUseCodeCreateRequest: subscriptionOfferCodeOneTimeUseCodeCreateRequest) { (response, error) in
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
 **subscriptionOfferCodeOneTimeUseCodeCreateRequest** | [**SubscriptionOfferCodeOneTimeUseCodeCreateRequest**](SubscriptionOfferCodeOneTimeUseCodeCreateRequest.md) | SubscriptionOfferCodeOneTimeUseCode representation | 

### Return type

[**SubscriptionOfferCodeOneTimeUseCodeResponse**](SubscriptionOfferCodeOneTimeUseCodeResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **subscriptionOfferCodeOneTimeUseCodesGetInstance**
```swift
    open class func subscriptionOfferCodeOneTimeUseCodesGetInstance(id: String, fieldsSubscriptionOfferCodeOneTimeUseCodes: [FieldsSubscriptionOfferCodeOneTimeUseCodes_subscriptionOfferCodeOneTimeUseCodesGetInstance]? = nil, include: [Include_subscriptionOfferCodeOneTimeUseCodesGetInstance]? = nil, completion: @escaping (_ data: SubscriptionOfferCodeOneTimeUseCodeResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let fieldsSubscriptionOfferCodeOneTimeUseCodes = ["fieldsSubscriptionOfferCodeOneTimeUseCodes_example"] // [String] | the fields to include for returned resources of type subscriptionOfferCodeOneTimeUseCodes (optional)
let include = ["include_example"] // [String] | comma-separated list of relationships to include (optional)

SubscriptionOfferCodeOneTimeUseCodesAPI.subscriptionOfferCodeOneTimeUseCodesGetInstance(id: id, fieldsSubscriptionOfferCodeOneTimeUseCodes: fieldsSubscriptionOfferCodeOneTimeUseCodes, include: include) { (response, error) in
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
 **fieldsSubscriptionOfferCodeOneTimeUseCodes** | [**[String]**](String.md) | the fields to include for returned resources of type subscriptionOfferCodeOneTimeUseCodes | [optional] 
 **include** | [**[String]**](String.md) | comma-separated list of relationships to include | [optional] 

### Return type

[**SubscriptionOfferCodeOneTimeUseCodeResponse**](SubscriptionOfferCodeOneTimeUseCodeResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **subscriptionOfferCodeOneTimeUseCodesUpdateInstance**
```swift
    open class func subscriptionOfferCodeOneTimeUseCodesUpdateInstance(id: String, subscriptionOfferCodeOneTimeUseCodeUpdateRequest: SubscriptionOfferCodeOneTimeUseCodeUpdateRequest, completion: @escaping (_ data: SubscriptionOfferCodeOneTimeUseCodeResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let subscriptionOfferCodeOneTimeUseCodeUpdateRequest = SubscriptionOfferCodeOneTimeUseCodeUpdateRequest(data: SubscriptionOfferCodeOneTimeUseCodeUpdateRequest_data(type: "type_example", id: "id_example", attributes: SubscriptionOfferCodeCustomCodeUpdateRequest_data_attributes(active: false))) // SubscriptionOfferCodeOneTimeUseCodeUpdateRequest | SubscriptionOfferCodeOneTimeUseCode representation

SubscriptionOfferCodeOneTimeUseCodesAPI.subscriptionOfferCodeOneTimeUseCodesUpdateInstance(id: id, subscriptionOfferCodeOneTimeUseCodeUpdateRequest: subscriptionOfferCodeOneTimeUseCodeUpdateRequest) { (response, error) in
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
 **subscriptionOfferCodeOneTimeUseCodeUpdateRequest** | [**SubscriptionOfferCodeOneTimeUseCodeUpdateRequest**](SubscriptionOfferCodeOneTimeUseCodeUpdateRequest.md) | SubscriptionOfferCodeOneTimeUseCode representation | 

### Return type

[**SubscriptionOfferCodeOneTimeUseCodeResponse**](SubscriptionOfferCodeOneTimeUseCodeResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **subscriptionOfferCodeOneTimeUseCodesValuesGetToOneRelated**
```swift
    open class func subscriptionOfferCodeOneTimeUseCodesValuesGetToOneRelated(id: String, completion: @escaping (_ data: String?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource

SubscriptionOfferCodeOneTimeUseCodesAPI.subscriptionOfferCodeOneTimeUseCodesValuesGetToOneRelated(id: id) { (response, error) in
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

**String**

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/csv

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

