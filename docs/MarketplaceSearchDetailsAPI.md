# MarketplaceSearchDetailsAPI

All URIs are relative to *https://api.appstoreconnect.apple.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**marketplaceSearchDetailsCreateInstance**](MarketplaceSearchDetailsAPI.md#marketplacesearchdetailscreateinstance) | **POST** /v1/marketplaceSearchDetails | 
[**marketplaceSearchDetailsDeleteInstance**](MarketplaceSearchDetailsAPI.md#marketplacesearchdetailsdeleteinstance) | **DELETE** /v1/marketplaceSearchDetails/{id} | 
[**marketplaceSearchDetailsUpdateInstance**](MarketplaceSearchDetailsAPI.md#marketplacesearchdetailsupdateinstance) | **PATCH** /v1/marketplaceSearchDetails/{id} | 


# **marketplaceSearchDetailsCreateInstance**
```swift
    open class func marketplaceSearchDetailsCreateInstance(marketplaceSearchDetailCreateRequest: MarketplaceSearchDetailCreateRequest, completion: @escaping (_ data: MarketplaceSearchDetailResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let marketplaceSearchDetailCreateRequest = MarketplaceSearchDetailCreateRequest(data: MarketplaceSearchDetailCreateRequest_data(type: "type_example", attributes: MarketplaceSearchDetailCreateRequest_data_attributes(catalogUrl: "catalogUrl_example"), relationships: AnalyticsReportRequestCreateRequest_data_relationships(app: AnalyticsReportRequestCreateRequest_data_relationships_app(data: AlternativeDistributionKeyCreateRequest_data_relationships_app_data(type: "type_example", id: "id_example"))))) // MarketplaceSearchDetailCreateRequest | MarketplaceSearchDetail representation

MarketplaceSearchDetailsAPI.marketplaceSearchDetailsCreateInstance(marketplaceSearchDetailCreateRequest: marketplaceSearchDetailCreateRequest) { (response, error) in
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
 **marketplaceSearchDetailCreateRequest** | [**MarketplaceSearchDetailCreateRequest**](MarketplaceSearchDetailCreateRequest.md) | MarketplaceSearchDetail representation | 

### Return type

[**MarketplaceSearchDetailResponse**](MarketplaceSearchDetailResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **marketplaceSearchDetailsDeleteInstance**
```swift
    open class func marketplaceSearchDetailsDeleteInstance(id: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource

MarketplaceSearchDetailsAPI.marketplaceSearchDetailsDeleteInstance(id: id) { (response, error) in
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

# **marketplaceSearchDetailsUpdateInstance**
```swift
    open class func marketplaceSearchDetailsUpdateInstance(id: String, marketplaceSearchDetailUpdateRequest: MarketplaceSearchDetailUpdateRequest, completion: @escaping (_ data: MarketplaceSearchDetailResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let marketplaceSearchDetailUpdateRequest = MarketplaceSearchDetailUpdateRequest(data: MarketplaceSearchDetailUpdateRequest_data(type: "type_example", id: "id_example", attributes: MarketplaceSearchDetail_attributes(catalogUrl: "catalogUrl_example"))) // MarketplaceSearchDetailUpdateRequest | MarketplaceSearchDetail representation

MarketplaceSearchDetailsAPI.marketplaceSearchDetailsUpdateInstance(id: id, marketplaceSearchDetailUpdateRequest: marketplaceSearchDetailUpdateRequest) { (response, error) in
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
 **marketplaceSearchDetailUpdateRequest** | [**MarketplaceSearchDetailUpdateRequest**](MarketplaceSearchDetailUpdateRequest.md) | MarketplaceSearchDetail representation | 

### Return type

[**MarketplaceSearchDetailResponse**](MarketplaceSearchDetailResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

