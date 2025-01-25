# ReviewSubmissionItemsAPI

All URIs are relative to *https://api.appstoreconnect.apple.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**reviewSubmissionItemsCreateInstance**](ReviewSubmissionItemsAPI.md#reviewsubmissionitemscreateinstance) | **POST** /v1/reviewSubmissionItems | 
[**reviewSubmissionItemsDeleteInstance**](ReviewSubmissionItemsAPI.md#reviewsubmissionitemsdeleteinstance) | **DELETE** /v1/reviewSubmissionItems/{id} | 
[**reviewSubmissionItemsUpdateInstance**](ReviewSubmissionItemsAPI.md#reviewsubmissionitemsupdateinstance) | **PATCH** /v1/reviewSubmissionItems/{id} | 


# **reviewSubmissionItemsCreateInstance**
```swift
    open class func reviewSubmissionItemsCreateInstance(reviewSubmissionItemCreateRequest: ReviewSubmissionItemCreateRequest, completion: @escaping (_ data: ReviewSubmissionItemResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let reviewSubmissionItemCreateRequest = ReviewSubmissionItemCreateRequest(data: ReviewSubmissionItemCreateRequest_data(type: "type_example", relationships: ReviewSubmissionItemCreateRequest_data_relationships(reviewSubmission: ReviewSubmissionItemCreateRequest_data_relationships_reviewSubmission(data: App_relationships_reviewSubmissions_data_inner(type: "type_example", id: "id_example")), appStoreVersion: AppClipDefaultExperienceCreateRequest_data_relationships_releaseWithAppStoreVersion(data: AlternativeDistributionPackageCreateRequest_data_relationships_appStoreVersion_data(type: "type_example", id: "id_example")), appCustomProductPageVersion: AppCustomProductPageLocalization_relationships_appCustomProductPageVersion(data: AppCustomProductPageLocalization_relationships_appCustomProductPageVersion_data(type: "type_example", id: "id_example")), appStoreVersionExperiment: AppStoreVersionExperimentTreatment_relationships_appStoreVersionExperiment(data: AppStoreVersionExperimentTreatment_relationships_appStoreVersionExperiment_data(type: "type_example", id: "id_example")), appStoreVersionExperimentV2: nil, appEvent: AppEventLocalization_relationships_appEvent(data: AppEventLocalization_relationships_appEvent_data(type: "type_example", id: "id_example"))))) // ReviewSubmissionItemCreateRequest | ReviewSubmissionItem representation

ReviewSubmissionItemsAPI.reviewSubmissionItemsCreateInstance(reviewSubmissionItemCreateRequest: reviewSubmissionItemCreateRequest) { (response, error) in
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
 **reviewSubmissionItemCreateRequest** | [**ReviewSubmissionItemCreateRequest**](ReviewSubmissionItemCreateRequest.md) | ReviewSubmissionItem representation | 

### Return type

[**ReviewSubmissionItemResponse**](ReviewSubmissionItemResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **reviewSubmissionItemsDeleteInstance**
```swift
    open class func reviewSubmissionItemsDeleteInstance(id: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource

ReviewSubmissionItemsAPI.reviewSubmissionItemsDeleteInstance(id: id) { (response, error) in
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

# **reviewSubmissionItemsUpdateInstance**
```swift
    open class func reviewSubmissionItemsUpdateInstance(id: String, reviewSubmissionItemUpdateRequest: ReviewSubmissionItemUpdateRequest, completion: @escaping (_ data: ReviewSubmissionItemResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let reviewSubmissionItemUpdateRequest = ReviewSubmissionItemUpdateRequest(data: ReviewSubmissionItemUpdateRequest_data(type: "type_example", id: "id_example", attributes: ReviewSubmissionItemUpdateRequest_data_attributes(resolved: false, removed: false))) // ReviewSubmissionItemUpdateRequest | ReviewSubmissionItem representation

ReviewSubmissionItemsAPI.reviewSubmissionItemsUpdateInstance(id: id, reviewSubmissionItemUpdateRequest: reviewSubmissionItemUpdateRequest) { (response, error) in
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
 **reviewSubmissionItemUpdateRequest** | [**ReviewSubmissionItemUpdateRequest**](ReviewSubmissionItemUpdateRequest.md) | ReviewSubmissionItem representation | 

### Return type

[**ReviewSubmissionItemResponse**](ReviewSubmissionItemResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

