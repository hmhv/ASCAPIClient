# AppStoreVersionSubmissionsAPI

All URIs are relative to *https://api.appstoreconnect.apple.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**appStoreVersionSubmissionsCreateInstance**](AppStoreVersionSubmissionsAPI.md#appstoreversionsubmissionscreateinstance) | **POST** /v1/appStoreVersionSubmissions | 
[**appStoreVersionSubmissionsDeleteInstance**](AppStoreVersionSubmissionsAPI.md#appstoreversionsubmissionsdeleteinstance) | **DELETE** /v1/appStoreVersionSubmissions/{id} | 


# **appStoreVersionSubmissionsCreateInstance**
```swift
    open class func appStoreVersionSubmissionsCreateInstance(appStoreVersionSubmissionCreateRequest: AppStoreVersionSubmissionCreateRequest, completion: @escaping (_ data: AppStoreVersionSubmissionResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let appStoreVersionSubmissionCreateRequest = AppStoreVersionSubmissionCreateRequest(data: AppStoreVersionSubmissionCreateRequest_data(type: "type_example", relationships: AppStoreReviewDetailCreateRequest_data_relationships(appStoreVersion: AppStoreReviewDetailCreateRequest_data_relationships_appStoreVersion(data: AppClipDefaultExperience_relationships_releaseWithAppStoreVersion_data(type: "type_example", id: "id_example"))))) // AppStoreVersionSubmissionCreateRequest | AppStoreVersionSubmission representation

AppStoreVersionSubmissionsAPI.appStoreVersionSubmissionsCreateInstance(appStoreVersionSubmissionCreateRequest: appStoreVersionSubmissionCreateRequest) { (response, error) in
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
 **appStoreVersionSubmissionCreateRequest** | [**AppStoreVersionSubmissionCreateRequest**](AppStoreVersionSubmissionCreateRequest.md) | AppStoreVersionSubmission representation | 

### Return type

[**AppStoreVersionSubmissionResponse**](AppStoreVersionSubmissionResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **appStoreVersionSubmissionsDeleteInstance**
```swift
    open class func appStoreVersionSubmissionsDeleteInstance(id: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource

AppStoreVersionSubmissionsAPI.appStoreVersionSubmissionsDeleteInstance(id: id) { (response, error) in
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

