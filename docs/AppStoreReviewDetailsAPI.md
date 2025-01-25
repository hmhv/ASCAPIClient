# AppStoreReviewDetailsAPI

All URIs are relative to *https://api.appstoreconnect.apple.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**appStoreReviewDetailsAppStoreReviewAttachmentsGetToManyRelated**](AppStoreReviewDetailsAPI.md#appstorereviewdetailsappstorereviewattachmentsgettomanyrelated) | **GET** /v1/appStoreReviewDetails/{id}/appStoreReviewAttachments | 
[**appStoreReviewDetailsCreateInstance**](AppStoreReviewDetailsAPI.md#appstorereviewdetailscreateinstance) | **POST** /v1/appStoreReviewDetails | 
[**appStoreReviewDetailsGetInstance**](AppStoreReviewDetailsAPI.md#appstorereviewdetailsgetinstance) | **GET** /v1/appStoreReviewDetails/{id} | 
[**appStoreReviewDetailsUpdateInstance**](AppStoreReviewDetailsAPI.md#appstorereviewdetailsupdateinstance) | **PATCH** /v1/appStoreReviewDetails/{id} | 


# **appStoreReviewDetailsAppStoreReviewAttachmentsGetToManyRelated**
```swift
    open class func appStoreReviewDetailsAppStoreReviewAttachmentsGetToManyRelated(id: String, fieldsAppStoreReviewAttachments: [FieldsAppStoreReviewAttachments_appStoreReviewDetailsAppStoreReviewAttachmentsGetToManyRelated]? = nil, fieldsAppStoreReviewDetails: [FieldsAppStoreReviewDetails_appStoreReviewDetailsAppStoreReviewAttachmentsGetToManyRelated]? = nil, limit: Int? = nil, include: [Include_appStoreReviewDetailsAppStoreReviewAttachmentsGetToManyRelated]? = nil, completion: @escaping (_ data: AppStoreReviewAttachmentsResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let fieldsAppStoreReviewAttachments = ["fieldsAppStoreReviewAttachments_example"] // [String] | the fields to include for returned resources of type appStoreReviewAttachments (optional)
let fieldsAppStoreReviewDetails = ["fieldsAppStoreReviewDetails_example"] // [String] | the fields to include for returned resources of type appStoreReviewDetails (optional)
let limit = 987 // Int | maximum resources per page (optional)
let include = ["include_example"] // [String] | comma-separated list of relationships to include (optional)

AppStoreReviewDetailsAPI.appStoreReviewDetailsAppStoreReviewAttachmentsGetToManyRelated(id: id, fieldsAppStoreReviewAttachments: fieldsAppStoreReviewAttachments, fieldsAppStoreReviewDetails: fieldsAppStoreReviewDetails, limit: limit, include: include) { (response, error) in
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
 **fieldsAppStoreReviewDetails** | [**[String]**](String.md) | the fields to include for returned resources of type appStoreReviewDetails | [optional] 
 **limit** | **Int** | maximum resources per page | [optional] 
 **include** | [**[String]**](String.md) | comma-separated list of relationships to include | [optional] 

### Return type

[**AppStoreReviewAttachmentsResponse**](AppStoreReviewAttachmentsResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **appStoreReviewDetailsCreateInstance**
```swift
    open class func appStoreReviewDetailsCreateInstance(appStoreReviewDetailCreateRequest: AppStoreReviewDetailCreateRequest, completion: @escaping (_ data: AppStoreReviewDetailResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let appStoreReviewDetailCreateRequest = AppStoreReviewDetailCreateRequest(data: AppStoreReviewDetailCreateRequest_data(type: "type_example", attributes: AppStoreReviewDetail_attributes(contactFirstName: "contactFirstName_example", contactLastName: "contactLastName_example", contactPhone: "contactPhone_example", contactEmail: "contactEmail_example", demoAccountName: "demoAccountName_example", demoAccountPassword: "demoAccountPassword_example", demoAccountRequired: false, notes: "notes_example"), relationships: AlternativeDistributionPackageCreateRequest_data_relationships(appStoreVersion: AlternativeDistributionPackageCreateRequest_data_relationships_appStoreVersion(data: AlternativeDistributionPackageCreateRequest_data_relationships_appStoreVersion_data(type: "type_example", id: "id_example"))))) // AppStoreReviewDetailCreateRequest | AppStoreReviewDetail representation

AppStoreReviewDetailsAPI.appStoreReviewDetailsCreateInstance(appStoreReviewDetailCreateRequest: appStoreReviewDetailCreateRequest) { (response, error) in
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
 **appStoreReviewDetailCreateRequest** | [**AppStoreReviewDetailCreateRequest**](AppStoreReviewDetailCreateRequest.md) | AppStoreReviewDetail representation | 

### Return type

[**AppStoreReviewDetailResponse**](AppStoreReviewDetailResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **appStoreReviewDetailsGetInstance**
```swift
    open class func appStoreReviewDetailsGetInstance(id: String, fieldsAppStoreReviewDetails: [FieldsAppStoreReviewDetails_appStoreReviewDetailsGetInstance]? = nil, fieldsAppStoreReviewAttachments: [FieldsAppStoreReviewAttachments_appStoreReviewDetailsGetInstance]? = nil, include: [Include_appStoreReviewDetailsGetInstance]? = nil, limitAppStoreReviewAttachments: Int? = nil, completion: @escaping (_ data: AppStoreReviewDetailResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let fieldsAppStoreReviewDetails = ["fieldsAppStoreReviewDetails_example"] // [String] | the fields to include for returned resources of type appStoreReviewDetails (optional)
let fieldsAppStoreReviewAttachments = ["fieldsAppStoreReviewAttachments_example"] // [String] | the fields to include for returned resources of type appStoreReviewAttachments (optional)
let include = ["include_example"] // [String] | comma-separated list of relationships to include (optional)
let limitAppStoreReviewAttachments = 987 // Int | maximum number of related appStoreReviewAttachments returned (when they are included) (optional)

AppStoreReviewDetailsAPI.appStoreReviewDetailsGetInstance(id: id, fieldsAppStoreReviewDetails: fieldsAppStoreReviewDetails, fieldsAppStoreReviewAttachments: fieldsAppStoreReviewAttachments, include: include, limitAppStoreReviewAttachments: limitAppStoreReviewAttachments) { (response, error) in
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
 **fieldsAppStoreReviewDetails** | [**[String]**](String.md) | the fields to include for returned resources of type appStoreReviewDetails | [optional] 
 **fieldsAppStoreReviewAttachments** | [**[String]**](String.md) | the fields to include for returned resources of type appStoreReviewAttachments | [optional] 
 **include** | [**[String]**](String.md) | comma-separated list of relationships to include | [optional] 
 **limitAppStoreReviewAttachments** | **Int** | maximum number of related appStoreReviewAttachments returned (when they are included) | [optional] 

### Return type

[**AppStoreReviewDetailResponse**](AppStoreReviewDetailResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **appStoreReviewDetailsUpdateInstance**
```swift
    open class func appStoreReviewDetailsUpdateInstance(id: String, appStoreReviewDetailUpdateRequest: AppStoreReviewDetailUpdateRequest, completion: @escaping (_ data: AppStoreReviewDetailResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let appStoreReviewDetailUpdateRequest = AppStoreReviewDetailUpdateRequest(data: AppStoreReviewDetailUpdateRequest_data(type: "type_example", id: "id_example", attributes: AppStoreReviewDetail_attributes(contactFirstName: "contactFirstName_example", contactLastName: "contactLastName_example", contactPhone: "contactPhone_example", contactEmail: "contactEmail_example", demoAccountName: "demoAccountName_example", demoAccountPassword: "demoAccountPassword_example", demoAccountRequired: false, notes: "notes_example"))) // AppStoreReviewDetailUpdateRequest | AppStoreReviewDetail representation

AppStoreReviewDetailsAPI.appStoreReviewDetailsUpdateInstance(id: id, appStoreReviewDetailUpdateRequest: appStoreReviewDetailUpdateRequest) { (response, error) in
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
 **appStoreReviewDetailUpdateRequest** | [**AppStoreReviewDetailUpdateRequest**](AppStoreReviewDetailUpdateRequest.md) | AppStoreReviewDetail representation | 

### Return type

[**AppStoreReviewDetailResponse**](AppStoreReviewDetailResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

