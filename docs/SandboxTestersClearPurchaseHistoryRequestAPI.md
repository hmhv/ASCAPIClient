# SandboxTestersClearPurchaseHistoryRequestAPI

All URIs are relative to *https://api.appstoreconnect.apple.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**sandboxTestersClearPurchaseHistoryRequestV2CreateInstance**](SandboxTestersClearPurchaseHistoryRequestAPI.md#sandboxtestersclearpurchasehistoryrequestv2createinstance) | **POST** /v2/sandboxTestersClearPurchaseHistoryRequest | 


# **sandboxTestersClearPurchaseHistoryRequestV2CreateInstance**
```swift
    open class func sandboxTestersClearPurchaseHistoryRequestV2CreateInstance(sandboxTestersClearPurchaseHistoryRequestV2CreateRequest: SandboxTestersClearPurchaseHistoryRequestV2CreateRequest, completion: @escaping (_ data: SandboxTestersClearPurchaseHistoryRequestV2Response?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let sandboxTestersClearPurchaseHistoryRequestV2CreateRequest = SandboxTestersClearPurchaseHistoryRequestV2CreateRequest(data: SandboxTestersClearPurchaseHistoryRequestV2CreateRequest_data(type: "type_example", relationships: SandboxTestersClearPurchaseHistoryRequestV2CreateRequest_data_relationships(sandboxTesters: SandboxTestersClearPurchaseHistoryRequestV2CreateRequest_data_relationships_sandboxTesters(data: [SandboxTestersClearPurchaseHistoryRequestV2CreateRequest_data_relationships_sandboxTesters_data_inner(type: "type_example", id: "id_example")])))) // SandboxTestersClearPurchaseHistoryRequestV2CreateRequest | SandboxTestersClearPurchaseHistoryRequest representation

SandboxTestersClearPurchaseHistoryRequestAPI.sandboxTestersClearPurchaseHistoryRequestV2CreateInstance(sandboxTestersClearPurchaseHistoryRequestV2CreateRequest: sandboxTestersClearPurchaseHistoryRequestV2CreateRequest) { (response, error) in
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
 **sandboxTestersClearPurchaseHistoryRequestV2CreateRequest** | [**SandboxTestersClearPurchaseHistoryRequestV2CreateRequest**](SandboxTestersClearPurchaseHistoryRequestV2CreateRequest.md) | SandboxTestersClearPurchaseHistoryRequest representation | 

### Return type

[**SandboxTestersClearPurchaseHistoryRequestV2Response**](SandboxTestersClearPurchaseHistoryRequestV2Response.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

