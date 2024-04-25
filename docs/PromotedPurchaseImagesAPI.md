# PromotedPurchaseImagesAPI

All URIs are relative to *https://api.appstoreconnect.apple.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**promotedPurchaseImagesCreateInstance**](PromotedPurchaseImagesAPI.md#promotedpurchaseimagescreateinstance) | **POST** /v1/promotedPurchaseImages | 
[**promotedPurchaseImagesDeleteInstance**](PromotedPurchaseImagesAPI.md#promotedpurchaseimagesdeleteinstance) | **DELETE** /v1/promotedPurchaseImages/{id} | 
[**promotedPurchaseImagesGetInstance**](PromotedPurchaseImagesAPI.md#promotedpurchaseimagesgetinstance) | **GET** /v1/promotedPurchaseImages/{id} | 
[**promotedPurchaseImagesUpdateInstance**](PromotedPurchaseImagesAPI.md#promotedpurchaseimagesupdateinstance) | **PATCH** /v1/promotedPurchaseImages/{id} | 


# **promotedPurchaseImagesCreateInstance**
```swift
    open class func promotedPurchaseImagesCreateInstance(promotedPurchaseImageCreateRequest: PromotedPurchaseImageCreateRequest, completion: @escaping (_ data: PromotedPurchaseImageResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let promotedPurchaseImageCreateRequest = PromotedPurchaseImageCreateRequest(data: PromotedPurchaseImageCreateRequest_data(type: "type_example", attributes: AppClipAdvancedExperienceImageCreateRequest_data_attributes(fileSize: 123, fileName: "fileName_example"), relationships: PromotedPurchaseImageCreateRequest_data_relationships(promotedPurchase: PromotedPurchaseImageCreateRequest_data_relationships_promotedPurchase(data: App_relationships_promotedPurchases_data_inner(type: "type_example", id: "id_example"))))) // PromotedPurchaseImageCreateRequest | PromotedPurchaseImage representation

PromotedPurchaseImagesAPI.promotedPurchaseImagesCreateInstance(promotedPurchaseImageCreateRequest: promotedPurchaseImageCreateRequest) { (response, error) in
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
 **promotedPurchaseImageCreateRequest** | [**PromotedPurchaseImageCreateRequest**](PromotedPurchaseImageCreateRequest.md) | PromotedPurchaseImage representation | 

### Return type

[**PromotedPurchaseImageResponse**](PromotedPurchaseImageResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **promotedPurchaseImagesDeleteInstance**
```swift
    open class func promotedPurchaseImagesDeleteInstance(id: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource

PromotedPurchaseImagesAPI.promotedPurchaseImagesDeleteInstance(id: id) { (response, error) in
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

# **promotedPurchaseImagesGetInstance**
```swift
    open class func promotedPurchaseImagesGetInstance(id: String, fieldsPromotedPurchaseImages: [FieldsPromotedPurchaseImages_promotedPurchaseImagesGetInstance]? = nil, include: [Include_promotedPurchaseImagesGetInstance]? = nil, completion: @escaping (_ data: PromotedPurchaseImageResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let fieldsPromotedPurchaseImages = ["fieldsPromotedPurchaseImages_example"] // [String] | the fields to include for returned resources of type promotedPurchaseImages (optional)
let include = ["include_example"] // [String] | comma-separated list of relationships to include (optional)

PromotedPurchaseImagesAPI.promotedPurchaseImagesGetInstance(id: id, fieldsPromotedPurchaseImages: fieldsPromotedPurchaseImages, include: include) { (response, error) in
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
 **fieldsPromotedPurchaseImages** | [**[String]**](String.md) | the fields to include for returned resources of type promotedPurchaseImages | [optional] 
 **include** | [**[String]**](String.md) | comma-separated list of relationships to include | [optional] 

### Return type

[**PromotedPurchaseImageResponse**](PromotedPurchaseImageResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **promotedPurchaseImagesUpdateInstance**
```swift
    open class func promotedPurchaseImagesUpdateInstance(id: String, promotedPurchaseImageUpdateRequest: PromotedPurchaseImageUpdateRequest, completion: @escaping (_ data: PromotedPurchaseImageResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let promotedPurchaseImageUpdateRequest = PromotedPurchaseImageUpdateRequest(data: PromotedPurchaseImageUpdateRequest_data(type: "type_example", id: "id_example", attributes: AppClipAdvancedExperienceImageUpdateRequest_data_attributes(sourceFileChecksum: "sourceFileChecksum_example", uploaded: false))) // PromotedPurchaseImageUpdateRequest | PromotedPurchaseImage representation

PromotedPurchaseImagesAPI.promotedPurchaseImagesUpdateInstance(id: id, promotedPurchaseImageUpdateRequest: promotedPurchaseImageUpdateRequest) { (response, error) in
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
 **promotedPurchaseImageUpdateRequest** | [**PromotedPurchaseImageUpdateRequest**](PromotedPurchaseImageUpdateRequest.md) | PromotedPurchaseImage representation | 

### Return type

[**PromotedPurchaseImageResponse**](PromotedPurchaseImageResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

