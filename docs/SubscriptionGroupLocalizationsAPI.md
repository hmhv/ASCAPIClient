# SubscriptionGroupLocalizationsAPI

All URIs are relative to *https://api.appstoreconnect.apple.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**subscriptionGroupLocalizationsCreateInstance**](SubscriptionGroupLocalizationsAPI.md#subscriptiongrouplocalizationscreateinstance) | **POST** /v1/subscriptionGroupLocalizations | 
[**subscriptionGroupLocalizationsDeleteInstance**](SubscriptionGroupLocalizationsAPI.md#subscriptiongrouplocalizationsdeleteinstance) | **DELETE** /v1/subscriptionGroupLocalizations/{id} | 
[**subscriptionGroupLocalizationsGetInstance**](SubscriptionGroupLocalizationsAPI.md#subscriptiongrouplocalizationsgetinstance) | **GET** /v1/subscriptionGroupLocalizations/{id} | 
[**subscriptionGroupLocalizationsUpdateInstance**](SubscriptionGroupLocalizationsAPI.md#subscriptiongrouplocalizationsupdateinstance) | **PATCH** /v1/subscriptionGroupLocalizations/{id} | 


# **subscriptionGroupLocalizationsCreateInstance**
```swift
    open class func subscriptionGroupLocalizationsCreateInstance(subscriptionGroupLocalizationCreateRequest: SubscriptionGroupLocalizationCreateRequest, completion: @escaping (_ data: SubscriptionGroupLocalizationResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let subscriptionGroupLocalizationCreateRequest = SubscriptionGroupLocalizationCreateRequest(data: SubscriptionGroupLocalizationCreateRequest_data(type: "type_example", attributes: SubscriptionGroupLocalizationCreateRequest_data_attributes(name: "name_example", customAppName: "customAppName_example", locale: "locale_example"), relationships: SubscriptionGroupLocalizationCreateRequest_data_relationships(subscriptionGroup: SubscriptionGroupLocalizationCreateRequest_data_relationships_subscriptionGroup(data: App_relationships_subscriptionGroups_data_inner(type: "type_example", id: "id_example"))))) // SubscriptionGroupLocalizationCreateRequest | SubscriptionGroupLocalization representation

SubscriptionGroupLocalizationsAPI.subscriptionGroupLocalizationsCreateInstance(subscriptionGroupLocalizationCreateRequest: subscriptionGroupLocalizationCreateRequest) { (response, error) in
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
 **subscriptionGroupLocalizationCreateRequest** | [**SubscriptionGroupLocalizationCreateRequest**](SubscriptionGroupLocalizationCreateRequest.md) | SubscriptionGroupLocalization representation | 

### Return type

[**SubscriptionGroupLocalizationResponse**](SubscriptionGroupLocalizationResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **subscriptionGroupLocalizationsDeleteInstance**
```swift
    open class func subscriptionGroupLocalizationsDeleteInstance(id: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource

SubscriptionGroupLocalizationsAPI.subscriptionGroupLocalizationsDeleteInstance(id: id) { (response, error) in
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

# **subscriptionGroupLocalizationsGetInstance**
```swift
    open class func subscriptionGroupLocalizationsGetInstance(id: String, fieldsSubscriptionGroupLocalizations: [FieldsSubscriptionGroupLocalizations_subscriptionGroupLocalizationsGetInstance]? = nil, include: [Include_subscriptionGroupLocalizationsGetInstance]? = nil, completion: @escaping (_ data: SubscriptionGroupLocalizationResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let fieldsSubscriptionGroupLocalizations = ["fieldsSubscriptionGroupLocalizations_example"] // [String] | the fields to include for returned resources of type subscriptionGroupLocalizations (optional)
let include = ["include_example"] // [String] | comma-separated list of relationships to include (optional)

SubscriptionGroupLocalizationsAPI.subscriptionGroupLocalizationsGetInstance(id: id, fieldsSubscriptionGroupLocalizations: fieldsSubscriptionGroupLocalizations, include: include) { (response, error) in
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
 **include** | [**[String]**](String.md) | comma-separated list of relationships to include | [optional] 

### Return type

[**SubscriptionGroupLocalizationResponse**](SubscriptionGroupLocalizationResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **subscriptionGroupLocalizationsUpdateInstance**
```swift
    open class func subscriptionGroupLocalizationsUpdateInstance(id: String, subscriptionGroupLocalizationUpdateRequest: SubscriptionGroupLocalizationUpdateRequest, completion: @escaping (_ data: SubscriptionGroupLocalizationResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let subscriptionGroupLocalizationUpdateRequest = SubscriptionGroupLocalizationUpdateRequest(data: SubscriptionGroupLocalizationUpdateRequest_data(type: "type_example", id: "id_example", attributes: SubscriptionGroupLocalizationUpdateRequest_data_attributes(name: "name_example", customAppName: "customAppName_example"))) // SubscriptionGroupLocalizationUpdateRequest | SubscriptionGroupLocalization representation

SubscriptionGroupLocalizationsAPI.subscriptionGroupLocalizationsUpdateInstance(id: id, subscriptionGroupLocalizationUpdateRequest: subscriptionGroupLocalizationUpdateRequest) { (response, error) in
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
 **subscriptionGroupLocalizationUpdateRequest** | [**SubscriptionGroupLocalizationUpdateRequest**](SubscriptionGroupLocalizationUpdateRequest.md) | SubscriptionGroupLocalization representation | 

### Return type

[**SubscriptionGroupLocalizationResponse**](SubscriptionGroupLocalizationResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

