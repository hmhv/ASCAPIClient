# SandboxTestersAPI

All URIs are relative to *https://api.appstoreconnect.apple.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**sandboxTestersV2GetCollection**](SandboxTestersAPI.md#sandboxtestersv2getcollection) | **GET** /v2/sandboxTesters | 
[**sandboxTestersV2UpdateInstance**](SandboxTestersAPI.md#sandboxtestersv2updateinstance) | **PATCH** /v2/sandboxTesters/{id} | 


# **sandboxTestersV2GetCollection**
```swift
    open class func sandboxTestersV2GetCollection(fieldsSandboxTesters: [FieldsSandboxTesters_sandboxTestersV2GetCollection]? = nil, limit: Int? = nil, completion: @escaping (_ data: SandboxTestersV2Response?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let fieldsSandboxTesters = ["fieldsSandboxTesters_example"] // [String] | the fields to include for returned resources of type sandboxTesters (optional)
let limit = 987 // Int | maximum resources per page (optional)

SandboxTestersAPI.sandboxTestersV2GetCollection(fieldsSandboxTesters: fieldsSandboxTesters, limit: limit) { (response, error) in
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
 **fieldsSandboxTesters** | [**[String]**](String.md) | the fields to include for returned resources of type sandboxTesters | [optional] 
 **limit** | **Int** | maximum resources per page | [optional] 

### Return type

[**SandboxTestersV2Response**](SandboxTestersV2Response.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sandboxTestersV2UpdateInstance**
```swift
    open class func sandboxTestersV2UpdateInstance(id: String, sandboxTesterV2UpdateRequest: SandboxTesterV2UpdateRequest, completion: @escaping (_ data: SandboxTesterV2Response?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let sandboxTesterV2UpdateRequest = SandboxTesterV2UpdateRequest(data: SandboxTesterV2UpdateRequest_data(type: "type_example", id: "id_example", attributes: SandboxTesterV2UpdateRequest_data_attributes(territory: TerritoryCode(), interruptPurchases: false, subscriptionRenewalRate: "subscriptionRenewalRate_example"))) // SandboxTesterV2UpdateRequest | SandboxTester representation

SandboxTestersAPI.sandboxTestersV2UpdateInstance(id: id, sandboxTesterV2UpdateRequest: sandboxTesterV2UpdateRequest) { (response, error) in
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
 **sandboxTesterV2UpdateRequest** | [**SandboxTesterV2UpdateRequest**](SandboxTesterV2UpdateRequest.md) | SandboxTester representation | 

### Return type

[**SandboxTesterV2Response**](SandboxTesterV2Response.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

