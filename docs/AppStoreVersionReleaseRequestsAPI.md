# AppStoreVersionReleaseRequestsAPI

All URIs are relative to *https://api.appstoreconnect.apple.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**appStoreVersionReleaseRequestsCreateInstance**](AppStoreVersionReleaseRequestsAPI.md#appstoreversionreleaserequestscreateinstance) | **POST** /v1/appStoreVersionReleaseRequests | 


# **appStoreVersionReleaseRequestsCreateInstance**
```swift
    open class func appStoreVersionReleaseRequestsCreateInstance(appStoreVersionReleaseRequestCreateRequest: AppStoreVersionReleaseRequestCreateRequest, completion: @escaping (_ data: AppStoreVersionReleaseRequestResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let appStoreVersionReleaseRequestCreateRequest = AppStoreVersionReleaseRequestCreateRequest(data: AppStoreVersionReleaseRequestCreateRequest_data(type: "type_example", relationships: AppStoreReviewDetailCreateRequest_data_relationships(appStoreVersion: AppStoreReviewDetailCreateRequest_data_relationships_appStoreVersion(data: AppClipDefaultExperience_relationships_releaseWithAppStoreVersion_data(type: "type_example", id: "id_example"))))) // AppStoreVersionReleaseRequestCreateRequest | AppStoreVersionReleaseRequest representation

AppStoreVersionReleaseRequestsAPI.appStoreVersionReleaseRequestsCreateInstance(appStoreVersionReleaseRequestCreateRequest: appStoreVersionReleaseRequestCreateRequest) { (response, error) in
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
 **appStoreVersionReleaseRequestCreateRequest** | [**AppStoreVersionReleaseRequestCreateRequest**](AppStoreVersionReleaseRequestCreateRequest.md) | AppStoreVersionReleaseRequest representation | 

### Return type

[**AppStoreVersionReleaseRequestResponse**](AppStoreVersionReleaseRequestResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

