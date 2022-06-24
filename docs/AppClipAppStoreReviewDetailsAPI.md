# AppClipAppStoreReviewDetailsAPI

All URIs are relative to *https://api.appstoreconnect.apple.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**appClipAppStoreReviewDetailsCreateInstance**](AppClipAppStoreReviewDetailsAPI.md#appclipappstorereviewdetailscreateinstance) | **POST** /v1/appClipAppStoreReviewDetails | 
[**appClipAppStoreReviewDetailsGetInstance**](AppClipAppStoreReviewDetailsAPI.md#appclipappstorereviewdetailsgetinstance) | **GET** /v1/appClipAppStoreReviewDetails/{id} | 
[**appClipAppStoreReviewDetailsUpdateInstance**](AppClipAppStoreReviewDetailsAPI.md#appclipappstorereviewdetailsupdateinstance) | **PATCH** /v1/appClipAppStoreReviewDetails/{id} | 


# **appClipAppStoreReviewDetailsCreateInstance**
```swift
    open class func appClipAppStoreReviewDetailsCreateInstance(appClipAppStoreReviewDetailCreateRequest: AppClipAppStoreReviewDetailCreateRequest, completion: @escaping (_ data: AppClipAppStoreReviewDetailResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let appClipAppStoreReviewDetailCreateRequest = AppClipAppStoreReviewDetailCreateRequest(data: AppClipAppStoreReviewDetailCreateRequest_data(type: "type_example", attributes: AppClipAppStoreReviewDetail_attributes(invocationUrls: ["invocationUrls_example"]), relationships: AppClipAppStoreReviewDetailCreateRequest_data_relationships(appClipDefaultExperience: AppClipAppStoreReviewDetailCreateRequest_data_relationships_appClipDefaultExperience(data: AppClipAppStoreReviewDetail_relationships_appClipDefaultExperience_data(type: "type_example", id: "id_example"))))) // AppClipAppStoreReviewDetailCreateRequest | AppClipAppStoreReviewDetail representation

AppClipAppStoreReviewDetailsAPI.appClipAppStoreReviewDetailsCreateInstance(appClipAppStoreReviewDetailCreateRequest: appClipAppStoreReviewDetailCreateRequest) { (response, error) in
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
 **appClipAppStoreReviewDetailCreateRequest** | [**AppClipAppStoreReviewDetailCreateRequest**](AppClipAppStoreReviewDetailCreateRequest.md) | AppClipAppStoreReviewDetail representation | 

### Return type

[**AppClipAppStoreReviewDetailResponse**](AppClipAppStoreReviewDetailResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **appClipAppStoreReviewDetailsGetInstance**
```swift
    open class func appClipAppStoreReviewDetailsGetInstance(id: String, fieldsAppClipAppStoreReviewDetails: [FieldsAppClipAppStoreReviewDetails_appClipAppStoreReviewDetailsGetInstance]? = nil, include: [Include_appClipAppStoreReviewDetailsGetInstance]? = nil, completion: @escaping (_ data: AppClipAppStoreReviewDetailResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let fieldsAppClipAppStoreReviewDetails = ["fieldsAppClipAppStoreReviewDetails_example"] // [String] | the fields to include for returned resources of type appClipAppStoreReviewDetails (optional)
let include = ["include_example"] // [String] | comma-separated list of relationships to include (optional)

AppClipAppStoreReviewDetailsAPI.appClipAppStoreReviewDetailsGetInstance(id: id, fieldsAppClipAppStoreReviewDetails: fieldsAppClipAppStoreReviewDetails, include: include) { (response, error) in
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
 **fieldsAppClipAppStoreReviewDetails** | [**[String]**](String.md) | the fields to include for returned resources of type appClipAppStoreReviewDetails | [optional] 
 **include** | [**[String]**](String.md) | comma-separated list of relationships to include | [optional] 

### Return type

[**AppClipAppStoreReviewDetailResponse**](AppClipAppStoreReviewDetailResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **appClipAppStoreReviewDetailsUpdateInstance**
```swift
    open class func appClipAppStoreReviewDetailsUpdateInstance(id: String, appClipAppStoreReviewDetailUpdateRequest: AppClipAppStoreReviewDetailUpdateRequest, completion: @escaping (_ data: AppClipAppStoreReviewDetailResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let appClipAppStoreReviewDetailUpdateRequest = AppClipAppStoreReviewDetailUpdateRequest(data: AppClipAppStoreReviewDetailUpdateRequest_data(type: "type_example", id: "id_example", attributes: AppClipAppStoreReviewDetail_attributes(invocationUrls: ["invocationUrls_example"]))) // AppClipAppStoreReviewDetailUpdateRequest | AppClipAppStoreReviewDetail representation

AppClipAppStoreReviewDetailsAPI.appClipAppStoreReviewDetailsUpdateInstance(id: id, appClipAppStoreReviewDetailUpdateRequest: appClipAppStoreReviewDetailUpdateRequest) { (response, error) in
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
 **appClipAppStoreReviewDetailUpdateRequest** | [**AppClipAppStoreReviewDetailUpdateRequest**](AppClipAppStoreReviewDetailUpdateRequest.md) | AppClipAppStoreReviewDetail representation | 

### Return type

[**AppClipAppStoreReviewDetailResponse**](AppClipAppStoreReviewDetailResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

