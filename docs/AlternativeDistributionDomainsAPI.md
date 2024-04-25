# AlternativeDistributionDomainsAPI

All URIs are relative to *https://api.appstoreconnect.apple.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**alternativeDistributionDomainsCreateInstance**](AlternativeDistributionDomainsAPI.md#alternativedistributiondomainscreateinstance) | **POST** /v1/alternativeDistributionDomains | 
[**alternativeDistributionDomainsDeleteInstance**](AlternativeDistributionDomainsAPI.md#alternativedistributiondomainsdeleteinstance) | **DELETE** /v1/alternativeDistributionDomains/{id} | 
[**alternativeDistributionDomainsGetCollection**](AlternativeDistributionDomainsAPI.md#alternativedistributiondomainsgetcollection) | **GET** /v1/alternativeDistributionDomains | 
[**alternativeDistributionDomainsGetInstance**](AlternativeDistributionDomainsAPI.md#alternativedistributiondomainsgetinstance) | **GET** /v1/alternativeDistributionDomains/{id} | 


# **alternativeDistributionDomainsCreateInstance**
```swift
    open class func alternativeDistributionDomainsCreateInstance(alternativeDistributionDomainCreateRequest: AlternativeDistributionDomainCreateRequest, completion: @escaping (_ data: AlternativeDistributionDomainResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let alternativeDistributionDomainCreateRequest = AlternativeDistributionDomainCreateRequest(data: AlternativeDistributionDomainCreateRequest_data(type: "type_example", attributes: AlternativeDistributionDomainCreateRequest_data_attributes(domain: "domain_example", referenceName: "referenceName_example"))) // AlternativeDistributionDomainCreateRequest | AlternativeDistributionDomain representation

AlternativeDistributionDomainsAPI.alternativeDistributionDomainsCreateInstance(alternativeDistributionDomainCreateRequest: alternativeDistributionDomainCreateRequest) { (response, error) in
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
 **alternativeDistributionDomainCreateRequest** | [**AlternativeDistributionDomainCreateRequest**](AlternativeDistributionDomainCreateRequest.md) | AlternativeDistributionDomain representation | 

### Return type

[**AlternativeDistributionDomainResponse**](AlternativeDistributionDomainResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **alternativeDistributionDomainsDeleteInstance**
```swift
    open class func alternativeDistributionDomainsDeleteInstance(id: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource

AlternativeDistributionDomainsAPI.alternativeDistributionDomainsDeleteInstance(id: id) { (response, error) in
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

# **alternativeDistributionDomainsGetCollection**
```swift
    open class func alternativeDistributionDomainsGetCollection(fieldsAlternativeDistributionDomains: [FieldsAlternativeDistributionDomains_alternativeDistributionDomainsGetCollection]? = nil, limit: Int? = nil, completion: @escaping (_ data: AlternativeDistributionDomainsResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let fieldsAlternativeDistributionDomains = ["fieldsAlternativeDistributionDomains_example"] // [String] | the fields to include for returned resources of type alternativeDistributionDomains (optional)
let limit = 987 // Int | maximum resources per page (optional)

AlternativeDistributionDomainsAPI.alternativeDistributionDomainsGetCollection(fieldsAlternativeDistributionDomains: fieldsAlternativeDistributionDomains, limit: limit) { (response, error) in
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
 **fieldsAlternativeDistributionDomains** | [**[String]**](String.md) | the fields to include for returned resources of type alternativeDistributionDomains | [optional] 
 **limit** | **Int** | maximum resources per page | [optional] 

### Return type

[**AlternativeDistributionDomainsResponse**](AlternativeDistributionDomainsResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **alternativeDistributionDomainsGetInstance**
```swift
    open class func alternativeDistributionDomainsGetInstance(id: String, fieldsAlternativeDistributionDomains: [FieldsAlternativeDistributionDomains_alternativeDistributionDomainsGetInstance]? = nil, completion: @escaping (_ data: AlternativeDistributionDomainResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let fieldsAlternativeDistributionDomains = ["fieldsAlternativeDistributionDomains_example"] // [String] | the fields to include for returned resources of type alternativeDistributionDomains (optional)

AlternativeDistributionDomainsAPI.alternativeDistributionDomainsGetInstance(id: id, fieldsAlternativeDistributionDomains: fieldsAlternativeDistributionDomains) { (response, error) in
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
 **fieldsAlternativeDistributionDomains** | [**[String]**](String.md) | the fields to include for returned resources of type alternativeDistributionDomains | [optional] 

### Return type

[**AlternativeDistributionDomainResponse**](AlternativeDistributionDomainResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

