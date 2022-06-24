# BuildBundlesAPI

All URIs are relative to *https://api.appstoreconnect.apple.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**buildBundlesAppClipDomainCacheStatusGetToOneRelated**](BuildBundlesAPI.md#buildbundlesappclipdomaincachestatusgettoonerelated) | **GET** /v1/buildBundles/{id}/appClipDomainCacheStatus | 
[**buildBundlesAppClipDomainDebugStatusGetToOneRelated**](BuildBundlesAPI.md#buildbundlesappclipdomaindebugstatusgettoonerelated) | **GET** /v1/buildBundles/{id}/appClipDomainDebugStatus | 
[**buildBundlesBetaAppClipInvocationsGetToManyRelated**](BuildBundlesAPI.md#buildbundlesbetaappclipinvocationsgettomanyrelated) | **GET** /v1/buildBundles/{id}/betaAppClipInvocations | 
[**buildBundlesBuildBundleFileSizesGetToManyRelated**](BuildBundlesAPI.md#buildbundlesbuildbundlefilesizesgettomanyrelated) | **GET** /v1/buildBundles/{id}/buildBundleFileSizes | 


# **buildBundlesAppClipDomainCacheStatusGetToOneRelated**
```swift
    open class func buildBundlesAppClipDomainCacheStatusGetToOneRelated(id: String, fieldsAppClipDomainStatuses: [FieldsAppClipDomainStatuses_buildBundlesAppClipDomainCacheStatusGetToOneRelated]? = nil, completion: @escaping (_ data: AppClipDomainStatusResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let fieldsAppClipDomainStatuses = ["fieldsAppClipDomainStatuses_example"] // [String] | the fields to include for returned resources of type appClipDomainStatuses (optional)

BuildBundlesAPI.buildBundlesAppClipDomainCacheStatusGetToOneRelated(id: id, fieldsAppClipDomainStatuses: fieldsAppClipDomainStatuses) { (response, error) in
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
 **fieldsAppClipDomainStatuses** | [**[String]**](String.md) | the fields to include for returned resources of type appClipDomainStatuses | [optional] 

### Return type

[**AppClipDomainStatusResponse**](AppClipDomainStatusResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **buildBundlesAppClipDomainDebugStatusGetToOneRelated**
```swift
    open class func buildBundlesAppClipDomainDebugStatusGetToOneRelated(id: String, fieldsAppClipDomainStatuses: [FieldsAppClipDomainStatuses_buildBundlesAppClipDomainDebugStatusGetToOneRelated]? = nil, completion: @escaping (_ data: AppClipDomainStatusResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let fieldsAppClipDomainStatuses = ["fieldsAppClipDomainStatuses_example"] // [String] | the fields to include for returned resources of type appClipDomainStatuses (optional)

BuildBundlesAPI.buildBundlesAppClipDomainDebugStatusGetToOneRelated(id: id, fieldsAppClipDomainStatuses: fieldsAppClipDomainStatuses) { (response, error) in
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
 **fieldsAppClipDomainStatuses** | [**[String]**](String.md) | the fields to include for returned resources of type appClipDomainStatuses | [optional] 

### Return type

[**AppClipDomainStatusResponse**](AppClipDomainStatusResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **buildBundlesBetaAppClipInvocationsGetToManyRelated**
```swift
    open class func buildBundlesBetaAppClipInvocationsGetToManyRelated(id: String, fieldsBetaAppClipInvocations: [FieldsBetaAppClipInvocations_buildBundlesBetaAppClipInvocationsGetToManyRelated]? = nil, fieldsBetaAppClipInvocationLocalizations: [FieldsBetaAppClipInvocationLocalizations_buildBundlesBetaAppClipInvocationsGetToManyRelated]? = nil, limit: Int? = nil, limitBetaAppClipInvocationLocalizations: Int? = nil, include: [Include_buildBundlesBetaAppClipInvocationsGetToManyRelated]? = nil, completion: @escaping (_ data: BetaAppClipInvocationsResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let fieldsBetaAppClipInvocations = ["fieldsBetaAppClipInvocations_example"] // [String] | the fields to include for returned resources of type betaAppClipInvocations (optional)
let fieldsBetaAppClipInvocationLocalizations = ["fieldsBetaAppClipInvocationLocalizations_example"] // [String] | the fields to include for returned resources of type betaAppClipInvocationLocalizations (optional)
let limit = 987 // Int | maximum resources per page (optional)
let limitBetaAppClipInvocationLocalizations = 987 // Int | maximum number of related betaAppClipInvocationLocalizations returned (when they are included) (optional)
let include = ["include_example"] // [String] | comma-separated list of relationships to include (optional)

BuildBundlesAPI.buildBundlesBetaAppClipInvocationsGetToManyRelated(id: id, fieldsBetaAppClipInvocations: fieldsBetaAppClipInvocations, fieldsBetaAppClipInvocationLocalizations: fieldsBetaAppClipInvocationLocalizations, limit: limit, limitBetaAppClipInvocationLocalizations: limitBetaAppClipInvocationLocalizations, include: include) { (response, error) in
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
 **fieldsBetaAppClipInvocationLocalizations** | [**[String]**](String.md) | the fields to include for returned resources of type betaAppClipInvocationLocalizations | [optional] 
 **limit** | **Int** | maximum resources per page | [optional] 
 **limitBetaAppClipInvocationLocalizations** | **Int** | maximum number of related betaAppClipInvocationLocalizations returned (when they are included) | [optional] 
 **include** | [**[String]**](String.md) | comma-separated list of relationships to include | [optional] 

### Return type

[**BetaAppClipInvocationsResponse**](BetaAppClipInvocationsResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **buildBundlesBuildBundleFileSizesGetToManyRelated**
```swift
    open class func buildBundlesBuildBundleFileSizesGetToManyRelated(id: String, fieldsBuildBundleFileSizes: [FieldsBuildBundleFileSizes_buildBundlesBuildBundleFileSizesGetToManyRelated]? = nil, limit: Int? = nil, completion: @escaping (_ data: BuildBundleFileSizesResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let fieldsBuildBundleFileSizes = ["fieldsBuildBundleFileSizes_example"] // [String] | the fields to include for returned resources of type buildBundleFileSizes (optional)
let limit = 987 // Int | maximum resources per page (optional)

BuildBundlesAPI.buildBundlesBuildBundleFileSizesGetToManyRelated(id: id, fieldsBuildBundleFileSizes: fieldsBuildBundleFileSizes, limit: limit) { (response, error) in
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
 **fieldsBuildBundleFileSizes** | [**[String]**](String.md) | the fields to include for returned resources of type buildBundleFileSizes | [optional] 
 **limit** | **Int** | maximum resources per page | [optional] 

### Return type

[**BuildBundleFileSizesResponse**](BuildBundleFileSizesResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

