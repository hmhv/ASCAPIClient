# EndAppAvailabilityPreOrdersAPI

All URIs are relative to *https://api.appstoreconnect.apple.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**endAppAvailabilityPreOrdersCreateInstance**](EndAppAvailabilityPreOrdersAPI.md#endappavailabilitypreorderscreateinstance) | **POST** /v1/endAppAvailabilityPreOrders | 


# **endAppAvailabilityPreOrdersCreateInstance**
```swift
    open class func endAppAvailabilityPreOrdersCreateInstance(endAppAvailabilityPreOrderCreateRequest: EndAppAvailabilityPreOrderCreateRequest, completion: @escaping (_ data: EndAppAvailabilityPreOrderResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let endAppAvailabilityPreOrderCreateRequest = EndAppAvailabilityPreOrderCreateRequest(data: EndAppAvailabilityPreOrderCreateRequest_data(type: "type_example", relationships: EndAppAvailabilityPreOrderCreateRequest_data_relationships(territoryAvailabilities: AppAvailabilityV2CreateRequest_data_relationships_territoryAvailabilities(data: [AppAvailabilityV2_relationships_territoryAvailabilities_data_inner(type: "type_example", id: "id_example")])))) // EndAppAvailabilityPreOrderCreateRequest | EndAppAvailabilityPreOrder representation

EndAppAvailabilityPreOrdersAPI.endAppAvailabilityPreOrdersCreateInstance(endAppAvailabilityPreOrderCreateRequest: endAppAvailabilityPreOrderCreateRequest) { (response, error) in
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
 **endAppAvailabilityPreOrderCreateRequest** | [**EndAppAvailabilityPreOrderCreateRequest**](EndAppAvailabilityPreOrderCreateRequest.md) | EndAppAvailabilityPreOrder representation | 

### Return type

[**EndAppAvailabilityPreOrderResponse**](EndAppAvailabilityPreOrderResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

