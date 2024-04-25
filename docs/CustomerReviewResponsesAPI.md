# CustomerReviewResponsesAPI

All URIs are relative to *https://api.appstoreconnect.apple.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**customerReviewResponsesCreateInstance**](CustomerReviewResponsesAPI.md#customerreviewresponsescreateinstance) | **POST** /v1/customerReviewResponses | 
[**customerReviewResponsesDeleteInstance**](CustomerReviewResponsesAPI.md#customerreviewresponsesdeleteinstance) | **DELETE** /v1/customerReviewResponses/{id} | 
[**customerReviewResponsesGetInstance**](CustomerReviewResponsesAPI.md#customerreviewresponsesgetinstance) | **GET** /v1/customerReviewResponses/{id} | 


# **customerReviewResponsesCreateInstance**
```swift
    open class func customerReviewResponsesCreateInstance(customerReviewResponseV1CreateRequest: CustomerReviewResponseV1CreateRequest, completion: @escaping (_ data: CustomerReviewResponseV1Response?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let customerReviewResponseV1CreateRequest = CustomerReviewResponseV1CreateRequest(data: CustomerReviewResponseV1CreateRequest_data(type: "type_example", attributes: CustomerReviewResponseV1CreateRequest_data_attributes(responseBody: "responseBody_example"), relationships: CustomerReviewResponseV1CreateRequest_data_relationships(review: CustomerReviewResponseV1CreateRequest_data_relationships_review(data: CustomerReviewResponseV1_relationships_review_data(type: "type_example", id: "id_example"))))) // CustomerReviewResponseV1CreateRequest | CustomerReviewResponse representation

CustomerReviewResponsesAPI.customerReviewResponsesCreateInstance(customerReviewResponseV1CreateRequest: customerReviewResponseV1CreateRequest) { (response, error) in
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
 **customerReviewResponseV1CreateRequest** | [**CustomerReviewResponseV1CreateRequest**](CustomerReviewResponseV1CreateRequest.md) | CustomerReviewResponse representation | 

### Return type

[**CustomerReviewResponseV1Response**](CustomerReviewResponseV1Response.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **customerReviewResponsesDeleteInstance**
```swift
    open class func customerReviewResponsesDeleteInstance(id: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource

CustomerReviewResponsesAPI.customerReviewResponsesDeleteInstance(id: id) { (response, error) in
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

# **customerReviewResponsesGetInstance**
```swift
    open class func customerReviewResponsesGetInstance(id: String, fieldsCustomerReviewResponses: [FieldsCustomerReviewResponses_customerReviewResponsesGetInstance]? = nil, include: [Include_customerReviewResponsesGetInstance]? = nil, completion: @escaping (_ data: CustomerReviewResponseV1Response?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let fieldsCustomerReviewResponses = ["fieldsCustomerReviewResponses_example"] // [String] | the fields to include for returned resources of type customerReviewResponses (optional)
let include = ["include_example"] // [String] | comma-separated list of relationships to include (optional)

CustomerReviewResponsesAPI.customerReviewResponsesGetInstance(id: id, fieldsCustomerReviewResponses: fieldsCustomerReviewResponses, include: include) { (response, error) in
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
 **fieldsCustomerReviewResponses** | [**[String]**](String.md) | the fields to include for returned resources of type customerReviewResponses | [optional] 
 **include** | [**[String]**](String.md) | comma-separated list of relationships to include | [optional] 

### Return type

[**CustomerReviewResponseV1Response**](CustomerReviewResponseV1Response.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

