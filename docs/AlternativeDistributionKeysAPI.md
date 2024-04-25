# AlternativeDistributionKeysAPI

All URIs are relative to *https://api.appstoreconnect.apple.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**alternativeDistributionKeysCreateInstance**](AlternativeDistributionKeysAPI.md#alternativedistributionkeyscreateinstance) | **POST** /v1/alternativeDistributionKeys | 
[**alternativeDistributionKeysDeleteInstance**](AlternativeDistributionKeysAPI.md#alternativedistributionkeysdeleteinstance) | **DELETE** /v1/alternativeDistributionKeys/{id} | 
[**alternativeDistributionKeysGetInstance**](AlternativeDistributionKeysAPI.md#alternativedistributionkeysgetinstance) | **GET** /v1/alternativeDistributionKeys/{id} | 


# **alternativeDistributionKeysCreateInstance**
```swift
    open class func alternativeDistributionKeysCreateInstance(alternativeDistributionKeyCreateRequest: AlternativeDistributionKeyCreateRequest, completion: @escaping (_ data: AlternativeDistributionKeyResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let alternativeDistributionKeyCreateRequest = AlternativeDistributionKeyCreateRequest(data: AlternativeDistributionKeyCreateRequest_data(type: "type_example", attributes: AlternativeDistributionKeyCreateRequest_data_attributes(publicKey: "publicKey_example"), relationships: AlternativeDistributionKeyCreateRequest_data_relationships(app: AlternativeDistributionKeyCreateRequest_data_relationships_app(data: AlternativeDistributionKeyCreateRequest_data_relationships_app_data(type: "type_example", id: "id_example"))))) // AlternativeDistributionKeyCreateRequest | AlternativeDistributionKey representation

AlternativeDistributionKeysAPI.alternativeDistributionKeysCreateInstance(alternativeDistributionKeyCreateRequest: alternativeDistributionKeyCreateRequest) { (response, error) in
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
 **alternativeDistributionKeyCreateRequest** | [**AlternativeDistributionKeyCreateRequest**](AlternativeDistributionKeyCreateRequest.md) | AlternativeDistributionKey representation | 

### Return type

[**AlternativeDistributionKeyResponse**](AlternativeDistributionKeyResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **alternativeDistributionKeysDeleteInstance**
```swift
    open class func alternativeDistributionKeysDeleteInstance(id: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource

AlternativeDistributionKeysAPI.alternativeDistributionKeysDeleteInstance(id: id) { (response, error) in
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

# **alternativeDistributionKeysGetInstance**
```swift
    open class func alternativeDistributionKeysGetInstance(id: String, fieldsAlternativeDistributionKeys: [FieldsAlternativeDistributionKeys_alternativeDistributionKeysGetInstance]? = nil, completion: @escaping (_ data: AlternativeDistributionKeyResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let fieldsAlternativeDistributionKeys = ["fieldsAlternativeDistributionKeys_example"] // [String] | the fields to include for returned resources of type alternativeDistributionKeys (optional)

AlternativeDistributionKeysAPI.alternativeDistributionKeysGetInstance(id: id, fieldsAlternativeDistributionKeys: fieldsAlternativeDistributionKeys) { (response, error) in
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
 **fieldsAlternativeDistributionKeys** | [**[String]**](String.md) | the fields to include for returned resources of type alternativeDistributionKeys | [optional] 

### Return type

[**AlternativeDistributionKeyResponse**](AlternativeDistributionKeyResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

