# AppStoreVersionPhasedReleasesAPI

All URIs are relative to *https://api.appstoreconnect.apple.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**appStoreVersionPhasedReleasesCreateInstance**](AppStoreVersionPhasedReleasesAPI.md#appstoreversionphasedreleasescreateinstance) | **POST** /v1/appStoreVersionPhasedReleases | 
[**appStoreVersionPhasedReleasesDeleteInstance**](AppStoreVersionPhasedReleasesAPI.md#appstoreversionphasedreleasesdeleteinstance) | **DELETE** /v1/appStoreVersionPhasedReleases/{id} | 
[**appStoreVersionPhasedReleasesUpdateInstance**](AppStoreVersionPhasedReleasesAPI.md#appstoreversionphasedreleasesupdateinstance) | **PATCH** /v1/appStoreVersionPhasedReleases/{id} | 


# **appStoreVersionPhasedReleasesCreateInstance**
```swift
    open class func appStoreVersionPhasedReleasesCreateInstance(appStoreVersionPhasedReleaseCreateRequest: AppStoreVersionPhasedReleaseCreateRequest, completion: @escaping (_ data: AppStoreVersionPhasedReleaseResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let appStoreVersionPhasedReleaseCreateRequest = AppStoreVersionPhasedReleaseCreateRequest(data: AppStoreVersionPhasedReleaseCreateRequest_data(type: "type_example", attributes: AppStoreVersionPhasedReleaseCreateRequest_data_attributes(phasedReleaseState: PhasedReleaseState()), relationships: AppStoreReviewDetailCreateRequest_data_relationships(appStoreVersion: AppStoreReviewDetailCreateRequest_data_relationships_appStoreVersion(data: AppClipDefaultExperience_relationships_releaseWithAppStoreVersion_data(type: "type_example", id: "id_example"))))) // AppStoreVersionPhasedReleaseCreateRequest | AppStoreVersionPhasedRelease representation

AppStoreVersionPhasedReleasesAPI.appStoreVersionPhasedReleasesCreateInstance(appStoreVersionPhasedReleaseCreateRequest: appStoreVersionPhasedReleaseCreateRequest) { (response, error) in
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
 **appStoreVersionPhasedReleaseCreateRequest** | [**AppStoreVersionPhasedReleaseCreateRequest**](AppStoreVersionPhasedReleaseCreateRequest.md) | AppStoreVersionPhasedRelease representation | 

### Return type

[**AppStoreVersionPhasedReleaseResponse**](AppStoreVersionPhasedReleaseResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **appStoreVersionPhasedReleasesDeleteInstance**
```swift
    open class func appStoreVersionPhasedReleasesDeleteInstance(id: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource

AppStoreVersionPhasedReleasesAPI.appStoreVersionPhasedReleasesDeleteInstance(id: id) { (response, error) in
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

# **appStoreVersionPhasedReleasesUpdateInstance**
```swift
    open class func appStoreVersionPhasedReleasesUpdateInstance(id: String, appStoreVersionPhasedReleaseUpdateRequest: AppStoreVersionPhasedReleaseUpdateRequest, completion: @escaping (_ data: AppStoreVersionPhasedReleaseResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let appStoreVersionPhasedReleaseUpdateRequest = AppStoreVersionPhasedReleaseUpdateRequest(data: AppStoreVersionPhasedReleaseUpdateRequest_data(type: "type_example", id: "id_example", attributes: AppStoreVersionPhasedReleaseCreateRequest_data_attributes(phasedReleaseState: PhasedReleaseState()))) // AppStoreVersionPhasedReleaseUpdateRequest | AppStoreVersionPhasedRelease representation

AppStoreVersionPhasedReleasesAPI.appStoreVersionPhasedReleasesUpdateInstance(id: id, appStoreVersionPhasedReleaseUpdateRequest: appStoreVersionPhasedReleaseUpdateRequest) { (response, error) in
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
 **appStoreVersionPhasedReleaseUpdateRequest** | [**AppStoreVersionPhasedReleaseUpdateRequest**](AppStoreVersionPhasedReleaseUpdateRequest.md) | AppStoreVersionPhasedRelease representation | 

### Return type

[**AppStoreVersionPhasedReleaseResponse**](AppStoreVersionPhasedReleaseResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

