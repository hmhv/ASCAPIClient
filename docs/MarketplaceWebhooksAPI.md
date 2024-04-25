# MarketplaceWebhooksAPI

All URIs are relative to *https://api.appstoreconnect.apple.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**marketplaceWebhooksCreateInstance**](MarketplaceWebhooksAPI.md#marketplacewebhookscreateinstance) | **POST** /v1/marketplaceWebhooks | 
[**marketplaceWebhooksDeleteInstance**](MarketplaceWebhooksAPI.md#marketplacewebhooksdeleteinstance) | **DELETE** /v1/marketplaceWebhooks/{id} | 
[**marketplaceWebhooksGetCollection**](MarketplaceWebhooksAPI.md#marketplacewebhooksgetcollection) | **GET** /v1/marketplaceWebhooks | 
[**marketplaceWebhooksUpdateInstance**](MarketplaceWebhooksAPI.md#marketplacewebhooksupdateinstance) | **PATCH** /v1/marketplaceWebhooks/{id} | 


# **marketplaceWebhooksCreateInstance**
```swift
    open class func marketplaceWebhooksCreateInstance(marketplaceWebhookCreateRequest: MarketplaceWebhookCreateRequest, completion: @escaping (_ data: MarketplaceWebhookResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let marketplaceWebhookCreateRequest = MarketplaceWebhookCreateRequest(data: MarketplaceWebhookCreateRequest_data(type: "type_example", attributes: MarketplaceWebhookCreateRequest_data_attributes(endpointUrl: "endpointUrl_example", secret: "secret_example"))) // MarketplaceWebhookCreateRequest | MarketplaceWebhook representation

MarketplaceWebhooksAPI.marketplaceWebhooksCreateInstance(marketplaceWebhookCreateRequest: marketplaceWebhookCreateRequest) { (response, error) in
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
 **marketplaceWebhookCreateRequest** | [**MarketplaceWebhookCreateRequest**](MarketplaceWebhookCreateRequest.md) | MarketplaceWebhook representation | 

### Return type

[**MarketplaceWebhookResponse**](MarketplaceWebhookResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **marketplaceWebhooksDeleteInstance**
```swift
    open class func marketplaceWebhooksDeleteInstance(id: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource

MarketplaceWebhooksAPI.marketplaceWebhooksDeleteInstance(id: id) { (response, error) in
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

# **marketplaceWebhooksGetCollection**
```swift
    open class func marketplaceWebhooksGetCollection(fieldsMarketplaceWebhooks: [FieldsMarketplaceWebhooks_marketplaceWebhooksGetCollection]? = nil, limit: Int? = nil, completion: @escaping (_ data: MarketplaceWebhooksResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let fieldsMarketplaceWebhooks = ["fieldsMarketplaceWebhooks_example"] // [String] | the fields to include for returned resources of type marketplaceWebhooks (optional)
let limit = 987 // Int | maximum resources per page (optional)

MarketplaceWebhooksAPI.marketplaceWebhooksGetCollection(fieldsMarketplaceWebhooks: fieldsMarketplaceWebhooks, limit: limit) { (response, error) in
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
 **fieldsMarketplaceWebhooks** | [**[String]**](String.md) | the fields to include for returned resources of type marketplaceWebhooks | [optional] 
 **limit** | **Int** | maximum resources per page | [optional] 

### Return type

[**MarketplaceWebhooksResponse**](MarketplaceWebhooksResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **marketplaceWebhooksUpdateInstance**
```swift
    open class func marketplaceWebhooksUpdateInstance(id: String, marketplaceWebhookUpdateRequest: MarketplaceWebhookUpdateRequest, completion: @escaping (_ data: MarketplaceWebhookResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let marketplaceWebhookUpdateRequest = MarketplaceWebhookUpdateRequest(data: MarketplaceWebhookUpdateRequest_data(type: "type_example", id: "id_example", attributes: MarketplaceWebhookUpdateRequest_data_attributes(endpointUrl: "endpointUrl_example", secret: "secret_example"))) // MarketplaceWebhookUpdateRequest | MarketplaceWebhook representation

MarketplaceWebhooksAPI.marketplaceWebhooksUpdateInstance(id: id, marketplaceWebhookUpdateRequest: marketplaceWebhookUpdateRequest) { (response, error) in
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
 **marketplaceWebhookUpdateRequest** | [**MarketplaceWebhookUpdateRequest**](MarketplaceWebhookUpdateRequest.md) | MarketplaceWebhook representation | 

### Return type

[**MarketplaceWebhookResponse**](MarketplaceWebhookResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

