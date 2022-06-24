# IdfaDeclarationsAPI

All URIs are relative to *https://api.appstoreconnect.apple.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**idfaDeclarationsCreateInstance**](IdfaDeclarationsAPI.md#idfadeclarationscreateinstance) | **POST** /v1/idfaDeclarations | 
[**idfaDeclarationsDeleteInstance**](IdfaDeclarationsAPI.md#idfadeclarationsdeleteinstance) | **DELETE** /v1/idfaDeclarations/{id} | 
[**idfaDeclarationsUpdateInstance**](IdfaDeclarationsAPI.md#idfadeclarationsupdateinstance) | **PATCH** /v1/idfaDeclarations/{id} | 


# **idfaDeclarationsCreateInstance**
```swift
    open class func idfaDeclarationsCreateInstance(idfaDeclarationCreateRequest: IdfaDeclarationCreateRequest, completion: @escaping (_ data: IdfaDeclarationResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let idfaDeclarationCreateRequest = IdfaDeclarationCreateRequest(data: IdfaDeclarationCreateRequest_data(type: "type_example", attributes: IdfaDeclarationCreateRequest_data_attributes(servesAds: false, attributesAppInstallationToPreviousAd: false, attributesActionWithPreviousAd: false, honorsLimitedAdTracking: false), relationships: AppStoreReviewDetailCreateRequest_data_relationships(appStoreVersion: AppStoreReviewDetailCreateRequest_data_relationships_appStoreVersion(data: AppClipDefaultExperience_relationships_releaseWithAppStoreVersion_data(type: "type_example", id: "id_example"))))) // IdfaDeclarationCreateRequest | IdfaDeclaration representation

IdfaDeclarationsAPI.idfaDeclarationsCreateInstance(idfaDeclarationCreateRequest: idfaDeclarationCreateRequest) { (response, error) in
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
 **idfaDeclarationCreateRequest** | [**IdfaDeclarationCreateRequest**](IdfaDeclarationCreateRequest.md) | IdfaDeclaration representation | 

### Return type

[**IdfaDeclarationResponse**](IdfaDeclarationResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **idfaDeclarationsDeleteInstance**
```swift
    open class func idfaDeclarationsDeleteInstance(id: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource

IdfaDeclarationsAPI.idfaDeclarationsDeleteInstance(id: id) { (response, error) in
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

# **idfaDeclarationsUpdateInstance**
```swift
    open class func idfaDeclarationsUpdateInstance(id: String, idfaDeclarationUpdateRequest: IdfaDeclarationUpdateRequest, completion: @escaping (_ data: IdfaDeclarationResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let idfaDeclarationUpdateRequest = IdfaDeclarationUpdateRequest(data: IdfaDeclarationUpdateRequest_data(type: "type_example", id: "id_example", attributes: IdfaDeclaration_attributes(servesAds: false, attributesAppInstallationToPreviousAd: false, attributesActionWithPreviousAd: false, honorsLimitedAdTracking: false))) // IdfaDeclarationUpdateRequest | IdfaDeclaration representation

IdfaDeclarationsAPI.idfaDeclarationsUpdateInstance(id: id, idfaDeclarationUpdateRequest: idfaDeclarationUpdateRequest) { (response, error) in
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
 **idfaDeclarationUpdateRequest** | [**IdfaDeclarationUpdateRequest**](IdfaDeclarationUpdateRequest.md) | IdfaDeclaration representation | 

### Return type

[**IdfaDeclarationResponse**](IdfaDeclarationResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

