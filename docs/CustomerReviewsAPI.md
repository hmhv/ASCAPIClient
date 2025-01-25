# CustomerReviewsAPI

All URIs are relative to *https://api.appstoreconnect.apple.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**customerReviewsGetInstance**](CustomerReviewsAPI.md#customerreviewsgetinstance) | **GET** /v1/customerReviews/{id} | 
[**customerReviewsResponseGetToOneRelated**](CustomerReviewsAPI.md#customerreviewsresponsegettoonerelated) | **GET** /v1/customerReviews/{id}/response | 


# **customerReviewsGetInstance**
```swift
    open class func customerReviewsGetInstance(id: String, fieldsCustomerReviews: [FieldsCustomerReviews_customerReviewsGetInstance]? = nil, fieldsCustomerReviewResponses: [FieldsCustomerReviewResponses_customerReviewsGetInstance]? = nil, include: [Include_customerReviewsGetInstance]? = nil, completion: @escaping (_ data: CustomerReviewResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let fieldsCustomerReviews = ["fieldsCustomerReviews_example"] // [String] | the fields to include for returned resources of type customerReviews (optional)
let fieldsCustomerReviewResponses = ["fieldsCustomerReviewResponses_example"] // [String] | the fields to include for returned resources of type customerReviewResponses (optional)
let include = ["include_example"] // [String] | comma-separated list of relationships to include (optional)

CustomerReviewsAPI.customerReviewsGetInstance(id: id, fieldsCustomerReviews: fieldsCustomerReviews, fieldsCustomerReviewResponses: fieldsCustomerReviewResponses, include: include) { (response, error) in
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
 **fieldsCustomerReviews** | [**[String]**](String.md) | the fields to include for returned resources of type customerReviews | [optional] 
 **fieldsCustomerReviewResponses** | [**[String]**](String.md) | the fields to include for returned resources of type customerReviewResponses | [optional] 
 **include** | [**[String]**](String.md) | comma-separated list of relationships to include | [optional] 

### Return type

[**CustomerReviewResponse**](CustomerReviewResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **customerReviewsResponseGetToOneRelated**
```swift
    open class func customerReviewsResponseGetToOneRelated(id: String, fieldsCustomerReviewResponses: [FieldsCustomerReviewResponses_customerReviewsResponseGetToOneRelated]? = nil, fieldsCustomerReviews: [FieldsCustomerReviews_customerReviewsResponseGetToOneRelated]? = nil, include: [Include_customerReviewsResponseGetToOneRelated]? = nil, completion: @escaping (_ data: CustomerReviewResponseV1Response?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let fieldsCustomerReviewResponses = ["fieldsCustomerReviewResponses_example"] // [String] | the fields to include for returned resources of type customerReviewResponses (optional)
let fieldsCustomerReviews = ["fieldsCustomerReviews_example"] // [String] | the fields to include for returned resources of type customerReviews (optional)
let include = ["include_example"] // [String] | comma-separated list of relationships to include (optional)

CustomerReviewsAPI.customerReviewsResponseGetToOneRelated(id: id, fieldsCustomerReviewResponses: fieldsCustomerReviewResponses, fieldsCustomerReviews: fieldsCustomerReviews, include: include) { (response, error) in
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
 **fieldsCustomerReviews** | [**[String]**](String.md) | the fields to include for returned resources of type customerReviews | [optional] 
 **include** | [**[String]**](String.md) | comma-separated list of relationships to include | [optional] 

### Return type

[**CustomerReviewResponseV1Response**](CustomerReviewResponseV1Response.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

