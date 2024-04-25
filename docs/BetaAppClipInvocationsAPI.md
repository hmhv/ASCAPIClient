# BetaAppClipInvocationsAPI

All URIs are relative to *https://api.appstoreconnect.apple.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**betaAppClipInvocationsCreateInstance**](BetaAppClipInvocationsAPI.md#betaappclipinvocationscreateinstance) | **POST** /v1/betaAppClipInvocations | 
[**betaAppClipInvocationsDeleteInstance**](BetaAppClipInvocationsAPI.md#betaappclipinvocationsdeleteinstance) | **DELETE** /v1/betaAppClipInvocations/{id} | 
[**betaAppClipInvocationsGetInstance**](BetaAppClipInvocationsAPI.md#betaappclipinvocationsgetinstance) | **GET** /v1/betaAppClipInvocations/{id} | 
[**betaAppClipInvocationsUpdateInstance**](BetaAppClipInvocationsAPI.md#betaappclipinvocationsupdateinstance) | **PATCH** /v1/betaAppClipInvocations/{id} | 


# **betaAppClipInvocationsCreateInstance**
```swift
    open class func betaAppClipInvocationsCreateInstance(betaAppClipInvocationCreateRequest: BetaAppClipInvocationCreateRequest, completion: @escaping (_ data: BetaAppClipInvocationResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let betaAppClipInvocationCreateRequest = BetaAppClipInvocationCreateRequest(data: BetaAppClipInvocationCreateRequest_data(type: "type_example", attributes: BetaAppClipInvocationCreateRequest_data_attributes(url: "url_example"), relationships: BetaAppClipInvocationCreateRequest_data_relationships(buildBundle: BetaAppClipInvocationCreateRequest_data_relationships_buildBundle(data: BetaAppClipInvocationCreateRequest_data_relationships_buildBundle_data(type: "type_example", id: "id_example")), betaAppClipInvocationLocalizations: BetaAppClipInvocationCreateRequest_data_relationships_betaAppClipInvocationLocalizations(data: [BetaAppClipInvocation_relationships_betaAppClipInvocationLocalizations_data_inner(type: "type_example", id: "id_example")]))), included: [BetaAppClipInvocationLocalizationInlineCreate(type: "type_example", id: "id_example", attributes: BetaAppClipInvocationLocalizationInlineCreate_attributes(title: "title_example", locale: "locale_example"), relationships: BetaAppClipInvocationLocalizationInlineCreate_relationships(betaAppClipInvocation: BetaAppClipInvocationLocalizationInlineCreate_relationships_betaAppClipInvocation(data: BetaAppClipInvocationLocalizationInlineCreate_relationships_betaAppClipInvocation_data(type: "type_example", id: "id_example"))))]) // BetaAppClipInvocationCreateRequest | BetaAppClipInvocation representation

BetaAppClipInvocationsAPI.betaAppClipInvocationsCreateInstance(betaAppClipInvocationCreateRequest: betaAppClipInvocationCreateRequest) { (response, error) in
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
 **betaAppClipInvocationCreateRequest** | [**BetaAppClipInvocationCreateRequest**](BetaAppClipInvocationCreateRequest.md) | BetaAppClipInvocation representation | 

### Return type

[**BetaAppClipInvocationResponse**](BetaAppClipInvocationResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **betaAppClipInvocationsDeleteInstance**
```swift
    open class func betaAppClipInvocationsDeleteInstance(id: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource

BetaAppClipInvocationsAPI.betaAppClipInvocationsDeleteInstance(id: id) { (response, error) in
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

# **betaAppClipInvocationsGetInstance**
```swift
    open class func betaAppClipInvocationsGetInstance(id: String, fieldsBetaAppClipInvocations: [FieldsBetaAppClipInvocations_betaAppClipInvocationsGetInstance]? = nil, include: [Include_betaAppClipInvocationsGetInstance]? = nil, limitBetaAppClipInvocationLocalizations: Int? = nil, completion: @escaping (_ data: BetaAppClipInvocationResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let fieldsBetaAppClipInvocations = ["fieldsBetaAppClipInvocations_example"] // [String] | the fields to include for returned resources of type betaAppClipInvocations (optional)
let include = ["include_example"] // [String] | comma-separated list of relationships to include (optional)
let limitBetaAppClipInvocationLocalizations = 987 // Int | maximum number of related betaAppClipInvocationLocalizations returned (when they are included) (optional)

BetaAppClipInvocationsAPI.betaAppClipInvocationsGetInstance(id: id, fieldsBetaAppClipInvocations: fieldsBetaAppClipInvocations, include: include, limitBetaAppClipInvocationLocalizations: limitBetaAppClipInvocationLocalizations) { (response, error) in
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
 **fieldsBetaAppClipInvocations** | [**[String]**](String.md) | the fields to include for returned resources of type betaAppClipInvocations | [optional] 
 **include** | [**[String]**](String.md) | comma-separated list of relationships to include | [optional] 
 **limitBetaAppClipInvocationLocalizations** | **Int** | maximum number of related betaAppClipInvocationLocalizations returned (when they are included) | [optional] 

### Return type

[**BetaAppClipInvocationResponse**](BetaAppClipInvocationResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **betaAppClipInvocationsUpdateInstance**
```swift
    open class func betaAppClipInvocationsUpdateInstance(id: String, betaAppClipInvocationUpdateRequest: BetaAppClipInvocationUpdateRequest, completion: @escaping (_ data: BetaAppClipInvocationResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let betaAppClipInvocationUpdateRequest = BetaAppClipInvocationUpdateRequest(data: BetaAppClipInvocationUpdateRequest_data(type: "type_example", id: "id_example", attributes: BetaAppClipInvocation_attributes(url: "url_example"))) // BetaAppClipInvocationUpdateRequest | BetaAppClipInvocation representation

BetaAppClipInvocationsAPI.betaAppClipInvocationsUpdateInstance(id: id, betaAppClipInvocationUpdateRequest: betaAppClipInvocationUpdateRequest) { (response, error) in
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
 **betaAppClipInvocationUpdateRequest** | [**BetaAppClipInvocationUpdateRequest**](BetaAppClipInvocationUpdateRequest.md) | BetaAppClipInvocation representation | 

### Return type

[**BetaAppClipInvocationResponse**](BetaAppClipInvocationResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

