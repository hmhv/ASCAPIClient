# MarketplaceDomainsAPI

All URIs are relative to *https://api.appstoreconnect.apple.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**marketplaceDomainsCreateInstance**](MarketplaceDomainsAPI.md#marketplacedomainscreateinstance) | **POST** /v1/marketplaceDomains | 
[**marketplaceDomainsDeleteInstance**](MarketplaceDomainsAPI.md#marketplacedomainsdeleteinstance) | **DELETE** /v1/marketplaceDomains/{id} | 
[**marketplaceDomainsGetCollection**](MarketplaceDomainsAPI.md#marketplacedomainsgetcollection) | **GET** /v1/marketplaceDomains | 
[**marketplaceDomainsGetInstance**](MarketplaceDomainsAPI.md#marketplacedomainsgetinstance) | **GET** /v1/marketplaceDomains/{id} | 


# **marketplaceDomainsCreateInstance**
```swift
    open class func marketplaceDomainsCreateInstance(marketplaceDomainCreateRequest: MarketplaceDomainCreateRequest, completion: @escaping (_ data: MarketplaceDomainResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let marketplaceDomainCreateRequest = MarketplaceDomainCreateRequest(data: MarketplaceDomainCreateRequest_data(type: "type_example", attributes: AlternativeDistributionDomainCreateRequest_data_attributes(domain: "domain_example", referenceName: "referenceName_example"))) // MarketplaceDomainCreateRequest | MarketplaceDomain representation

MarketplaceDomainsAPI.marketplaceDomainsCreateInstance(marketplaceDomainCreateRequest: marketplaceDomainCreateRequest) { (response, error) in
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
 **marketplaceDomainCreateRequest** | [**MarketplaceDomainCreateRequest**](MarketplaceDomainCreateRequest.md) | MarketplaceDomain representation | 

### Return type

[**MarketplaceDomainResponse**](MarketplaceDomainResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **marketplaceDomainsDeleteInstance**
```swift
    open class func marketplaceDomainsDeleteInstance(id: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource

MarketplaceDomainsAPI.marketplaceDomainsDeleteInstance(id: id) { (response, error) in
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

# **marketplaceDomainsGetCollection**
```swift
    open class func marketplaceDomainsGetCollection(fieldsMarketplaceDomains: [FieldsMarketplaceDomains_marketplaceDomainsGetCollection]? = nil, limit: Int? = nil, completion: @escaping (_ data: MarketplaceDomainsResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let fieldsMarketplaceDomains = ["fieldsMarketplaceDomains_example"] // [String] | the fields to include for returned resources of type marketplaceDomains (optional)
let limit = 987 // Int | maximum resources per page (optional)

MarketplaceDomainsAPI.marketplaceDomainsGetCollection(fieldsMarketplaceDomains: fieldsMarketplaceDomains, limit: limit) { (response, error) in
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
 **fieldsMarketplaceDomains** | [**[String]**](String.md) | the fields to include for returned resources of type marketplaceDomains | [optional] 
 **limit** | **Int** | maximum resources per page | [optional] 

### Return type

[**MarketplaceDomainsResponse**](MarketplaceDomainsResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **marketplaceDomainsGetInstance**
```swift
    open class func marketplaceDomainsGetInstance(id: String, fieldsMarketplaceDomains: [FieldsMarketplaceDomains_marketplaceDomainsGetInstance]? = nil, completion: @escaping (_ data: MarketplaceDomainResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let fieldsMarketplaceDomains = ["fieldsMarketplaceDomains_example"] // [String] | the fields to include for returned resources of type marketplaceDomains (optional)

MarketplaceDomainsAPI.marketplaceDomainsGetInstance(id: id, fieldsMarketplaceDomains: fieldsMarketplaceDomains) { (response, error) in
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
 **fieldsMarketplaceDomains** | [**[String]**](String.md) | the fields to include for returned resources of type marketplaceDomains | [optional] 

### Return type

[**MarketplaceDomainResponse**](MarketplaceDomainResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

