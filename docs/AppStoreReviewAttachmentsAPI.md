# AppStoreReviewAttachmentsAPI

All URIs are relative to *https://api.appstoreconnect.apple.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**appStoreReviewAttachmentsCreateInstance**](AppStoreReviewAttachmentsAPI.md#appstorereviewattachmentscreateinstance) | **POST** /v1/appStoreReviewAttachments | 
[**appStoreReviewAttachmentsDeleteInstance**](AppStoreReviewAttachmentsAPI.md#appstorereviewattachmentsdeleteinstance) | **DELETE** /v1/appStoreReviewAttachments/{id} | 
[**appStoreReviewAttachmentsGetInstance**](AppStoreReviewAttachmentsAPI.md#appstorereviewattachmentsgetinstance) | **GET** /v1/appStoreReviewAttachments/{id} | 
[**appStoreReviewAttachmentsUpdateInstance**](AppStoreReviewAttachmentsAPI.md#appstorereviewattachmentsupdateinstance) | **PATCH** /v1/appStoreReviewAttachments/{id} | 


# **appStoreReviewAttachmentsCreateInstance**
```swift
    open class func appStoreReviewAttachmentsCreateInstance(appStoreReviewAttachmentCreateRequest: AppStoreReviewAttachmentCreateRequest, completion: @escaping (_ data: AppStoreReviewAttachmentResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let appStoreReviewAttachmentCreateRequest = AppStoreReviewAttachmentCreateRequest(data: AppStoreReviewAttachmentCreateRequest_data(type: "type_example", attributes: AppClipAdvancedExperienceImageCreateRequest_data_attributes(fileSize: 123, fileName: "fileName_example"), relationships: AppStoreReviewAttachmentCreateRequest_data_relationships(appStoreReviewDetail: AppStoreReviewAttachmentCreateRequest_data_relationships_appStoreReviewDetail(data: AppStoreReviewAttachment_relationships_appStoreReviewDetail_data(type: "type_example", id: "id_example"))))) // AppStoreReviewAttachmentCreateRequest | AppStoreReviewAttachment representation

AppStoreReviewAttachmentsAPI.appStoreReviewAttachmentsCreateInstance(appStoreReviewAttachmentCreateRequest: appStoreReviewAttachmentCreateRequest) { (response, error) in
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
 **appStoreReviewAttachmentCreateRequest** | [**AppStoreReviewAttachmentCreateRequest**](AppStoreReviewAttachmentCreateRequest.md) | AppStoreReviewAttachment representation | 

### Return type

[**AppStoreReviewAttachmentResponse**](AppStoreReviewAttachmentResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **appStoreReviewAttachmentsDeleteInstance**
```swift
    open class func appStoreReviewAttachmentsDeleteInstance(id: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource

AppStoreReviewAttachmentsAPI.appStoreReviewAttachmentsDeleteInstance(id: id) { (response, error) in
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

# **appStoreReviewAttachmentsGetInstance**
```swift
    open class func appStoreReviewAttachmentsGetInstance(id: String, fieldsAppStoreReviewAttachments: [FieldsAppStoreReviewAttachments_appStoreReviewAttachmentsGetInstance]? = nil, include: [Include_appStoreReviewAttachmentsGetInstance]? = nil, completion: @escaping (_ data: AppStoreReviewAttachmentResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let fieldsAppStoreReviewAttachments = ["fieldsAppStoreReviewAttachments_example"] // [String] | the fields to include for returned resources of type appStoreReviewAttachments (optional)
let include = ["include_example"] // [String] | comma-separated list of relationships to include (optional)

AppStoreReviewAttachmentsAPI.appStoreReviewAttachmentsGetInstance(id: id, fieldsAppStoreReviewAttachments: fieldsAppStoreReviewAttachments, include: include) { (response, error) in
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
 **fieldsAppStoreReviewAttachments** | [**[String]**](String.md) | the fields to include for returned resources of type appStoreReviewAttachments | [optional] 
 **include** | [**[String]**](String.md) | comma-separated list of relationships to include | [optional] 

### Return type

[**AppStoreReviewAttachmentResponse**](AppStoreReviewAttachmentResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **appStoreReviewAttachmentsUpdateInstance**
```swift
    open class func appStoreReviewAttachmentsUpdateInstance(id: String, appStoreReviewAttachmentUpdateRequest: AppStoreReviewAttachmentUpdateRequest, completion: @escaping (_ data: AppStoreReviewAttachmentResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let appStoreReviewAttachmentUpdateRequest = AppStoreReviewAttachmentUpdateRequest(data: AppStoreReviewAttachmentUpdateRequest_data(type: "type_example", id: "id_example", attributes: AppClipAdvancedExperienceImageUpdateRequest_data_attributes(sourceFileChecksum: "sourceFileChecksum_example", uploaded: false))) // AppStoreReviewAttachmentUpdateRequest | AppStoreReviewAttachment representation

AppStoreReviewAttachmentsAPI.appStoreReviewAttachmentsUpdateInstance(id: id, appStoreReviewAttachmentUpdateRequest: appStoreReviewAttachmentUpdateRequest) { (response, error) in
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
 **appStoreReviewAttachmentUpdateRequest** | [**AppStoreReviewAttachmentUpdateRequest**](AppStoreReviewAttachmentUpdateRequest.md) | AppStoreReviewAttachment representation | 

### Return type

[**AppStoreReviewAttachmentResponse**](AppStoreReviewAttachmentResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

