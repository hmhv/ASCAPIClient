# BetaAppClipInvocationLocalizationsAPI

All URIs are relative to *https://api.appstoreconnect.apple.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**betaAppClipInvocationLocalizationsCreateInstance**](BetaAppClipInvocationLocalizationsAPI.md#betaappclipinvocationlocalizationscreateinstance) | **POST** /v1/betaAppClipInvocationLocalizations | 
[**betaAppClipInvocationLocalizationsDeleteInstance**](BetaAppClipInvocationLocalizationsAPI.md#betaappclipinvocationlocalizationsdeleteinstance) | **DELETE** /v1/betaAppClipInvocationLocalizations/{id} | 
[**betaAppClipInvocationLocalizationsUpdateInstance**](BetaAppClipInvocationLocalizationsAPI.md#betaappclipinvocationlocalizationsupdateinstance) | **PATCH** /v1/betaAppClipInvocationLocalizations/{id} | 


# **betaAppClipInvocationLocalizationsCreateInstance**
```swift
    open class func betaAppClipInvocationLocalizationsCreateInstance(betaAppClipInvocationLocalizationCreateRequest: BetaAppClipInvocationLocalizationCreateRequest, completion: @escaping (_ data: BetaAppClipInvocationLocalizationResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let betaAppClipInvocationLocalizationCreateRequest = BetaAppClipInvocationLocalizationCreateRequest(data: BetaAppClipInvocationLocalizationCreateRequest_data(type: "type_example", attributes: BetaAppClipInvocationLocalizationInlineCreate_attributes(title: "title_example", locale: "locale_example"), relationships: BetaAppClipInvocationLocalizationCreateRequest_data_relationships(betaAppClipInvocation: BetaAppClipInvocationLocalizationCreateRequest_data_relationships_betaAppClipInvocation(data: BetaAppClipInvocationLocalizationInlineCreate_relationships_betaAppClipInvocation_data(type: "type_example", id: "id_example"))))) // BetaAppClipInvocationLocalizationCreateRequest | BetaAppClipInvocationLocalization representation

BetaAppClipInvocationLocalizationsAPI.betaAppClipInvocationLocalizationsCreateInstance(betaAppClipInvocationLocalizationCreateRequest: betaAppClipInvocationLocalizationCreateRequest) { (response, error) in
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
 **betaAppClipInvocationLocalizationCreateRequest** | [**BetaAppClipInvocationLocalizationCreateRequest**](BetaAppClipInvocationLocalizationCreateRequest.md) | BetaAppClipInvocationLocalization representation | 

### Return type

[**BetaAppClipInvocationLocalizationResponse**](BetaAppClipInvocationLocalizationResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **betaAppClipInvocationLocalizationsDeleteInstance**
```swift
    open class func betaAppClipInvocationLocalizationsDeleteInstance(id: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource

BetaAppClipInvocationLocalizationsAPI.betaAppClipInvocationLocalizationsDeleteInstance(id: id) { (response, error) in
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

# **betaAppClipInvocationLocalizationsUpdateInstance**
```swift
    open class func betaAppClipInvocationLocalizationsUpdateInstance(id: String, betaAppClipInvocationLocalizationUpdateRequest: BetaAppClipInvocationLocalizationUpdateRequest, completion: @escaping (_ data: BetaAppClipInvocationLocalizationResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let betaAppClipInvocationLocalizationUpdateRequest = BetaAppClipInvocationLocalizationUpdateRequest(data: BetaAppClipInvocationLocalizationUpdateRequest_data(type: "type_example", id: "id_example", attributes: BetaAppClipInvocationLocalizationUpdateRequest_data_attributes(title: "title_example"))) // BetaAppClipInvocationLocalizationUpdateRequest | BetaAppClipInvocationLocalization representation

BetaAppClipInvocationLocalizationsAPI.betaAppClipInvocationLocalizationsUpdateInstance(id: id, betaAppClipInvocationLocalizationUpdateRequest: betaAppClipInvocationLocalizationUpdateRequest) { (response, error) in
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
 **betaAppClipInvocationLocalizationUpdateRequest** | [**BetaAppClipInvocationLocalizationUpdateRequest**](BetaAppClipInvocationLocalizationUpdateRequest.md) | BetaAppClipInvocationLocalization representation | 

### Return type

[**BetaAppClipInvocationLocalizationResponse**](BetaAppClipInvocationLocalizationResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

