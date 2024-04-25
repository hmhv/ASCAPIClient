# BetaBuildLocalizationsAPI

All URIs are relative to *https://api.appstoreconnect.apple.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**betaBuildLocalizationsBuildGetToOneRelated**](BetaBuildLocalizationsAPI.md#betabuildlocalizationsbuildgettoonerelated) | **GET** /v1/betaBuildLocalizations/{id}/build | 
[**betaBuildLocalizationsCreateInstance**](BetaBuildLocalizationsAPI.md#betabuildlocalizationscreateinstance) | **POST** /v1/betaBuildLocalizations | 
[**betaBuildLocalizationsDeleteInstance**](BetaBuildLocalizationsAPI.md#betabuildlocalizationsdeleteinstance) | **DELETE** /v1/betaBuildLocalizations/{id} | 
[**betaBuildLocalizationsGetCollection**](BetaBuildLocalizationsAPI.md#betabuildlocalizationsgetcollection) | **GET** /v1/betaBuildLocalizations | 
[**betaBuildLocalizationsGetInstance**](BetaBuildLocalizationsAPI.md#betabuildlocalizationsgetinstance) | **GET** /v1/betaBuildLocalizations/{id} | 
[**betaBuildLocalizationsUpdateInstance**](BetaBuildLocalizationsAPI.md#betabuildlocalizationsupdateinstance) | **PATCH** /v1/betaBuildLocalizations/{id} | 


# **betaBuildLocalizationsBuildGetToOneRelated**
```swift
    open class func betaBuildLocalizationsBuildGetToOneRelated(id: String, fieldsBuilds: [FieldsBuilds_betaBuildLocalizationsBuildGetToOneRelated]? = nil, completion: @escaping (_ data: BuildWithoutIncludesResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let fieldsBuilds = ["fieldsBuilds_example"] // [String] | the fields to include for returned resources of type builds (optional)

BetaBuildLocalizationsAPI.betaBuildLocalizationsBuildGetToOneRelated(id: id, fieldsBuilds: fieldsBuilds) { (response, error) in
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
 **fieldsBuilds** | [**[String]**](String.md) | the fields to include for returned resources of type builds | [optional] 

### Return type

[**BuildWithoutIncludesResponse**](BuildWithoutIncludesResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **betaBuildLocalizationsCreateInstance**
```swift
    open class func betaBuildLocalizationsCreateInstance(betaBuildLocalizationCreateRequest: BetaBuildLocalizationCreateRequest, completion: @escaping (_ data: BetaBuildLocalizationResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let betaBuildLocalizationCreateRequest = BetaBuildLocalizationCreateRequest(data: BetaBuildLocalizationCreateRequest_data(type: "type_example", attributes: BetaBuildLocalizationCreateRequest_data_attributes(whatsNew: "whatsNew_example", locale: "locale_example"), relationships: BetaAppReviewSubmissionCreateRequest_data_relationships(build: BetaAppReviewSubmissionCreateRequest_data_relationships_build(data: AppEncryptionDeclaration_relationships_builds_data_inner(type: "type_example", id: "id_example"))))) // BetaBuildLocalizationCreateRequest | BetaBuildLocalization representation

BetaBuildLocalizationsAPI.betaBuildLocalizationsCreateInstance(betaBuildLocalizationCreateRequest: betaBuildLocalizationCreateRequest) { (response, error) in
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
 **betaBuildLocalizationCreateRequest** | [**BetaBuildLocalizationCreateRequest**](BetaBuildLocalizationCreateRequest.md) | BetaBuildLocalization representation | 

### Return type

[**BetaBuildLocalizationResponse**](BetaBuildLocalizationResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **betaBuildLocalizationsDeleteInstance**
```swift
    open class func betaBuildLocalizationsDeleteInstance(id: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource

BetaBuildLocalizationsAPI.betaBuildLocalizationsDeleteInstance(id: id) { (response, error) in
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

# **betaBuildLocalizationsGetCollection**
```swift
    open class func betaBuildLocalizationsGetCollection(filterLocale: [String]? = nil, filterBuild: [String]? = nil, fieldsBetaBuildLocalizations: [FieldsBetaBuildLocalizations_betaBuildLocalizationsGetCollection]? = nil, limit: Int? = nil, include: [Include_betaBuildLocalizationsGetCollection]? = nil, fieldsBuilds: [FieldsBuilds_betaBuildLocalizationsGetCollection]? = nil, completion: @escaping (_ data: BetaBuildLocalizationsResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let filterLocale = ["inner_example"] // [String] | filter by attribute 'locale' (optional)
let filterBuild = ["inner_example"] // [String] | filter by id(s) of related 'build' (optional)
let fieldsBetaBuildLocalizations = ["fieldsBetaBuildLocalizations_example"] // [String] | the fields to include for returned resources of type betaBuildLocalizations (optional)
let limit = 987 // Int | maximum resources per page (optional)
let include = ["include_example"] // [String] | comma-separated list of relationships to include (optional)
let fieldsBuilds = ["fieldsBuilds_example"] // [String] | the fields to include for returned resources of type builds (optional)

BetaBuildLocalizationsAPI.betaBuildLocalizationsGetCollection(filterLocale: filterLocale, filterBuild: filterBuild, fieldsBetaBuildLocalizations: fieldsBetaBuildLocalizations, limit: limit, include: include, fieldsBuilds: fieldsBuilds) { (response, error) in
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
 **filterLocale** | [**[String]**](String.md) | filter by attribute &#39;locale&#39; | [optional] 
 **filterBuild** | [**[String]**](String.md) | filter by id(s) of related &#39;build&#39; | [optional] 
 **fieldsBetaBuildLocalizations** | [**[String]**](String.md) | the fields to include for returned resources of type betaBuildLocalizations | [optional] 
 **limit** | **Int** | maximum resources per page | [optional] 
 **include** | [**[String]**](String.md) | comma-separated list of relationships to include | [optional] 
 **fieldsBuilds** | [**[String]**](String.md) | the fields to include for returned resources of type builds | [optional] 

### Return type

[**BetaBuildLocalizationsResponse**](BetaBuildLocalizationsResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **betaBuildLocalizationsGetInstance**
```swift
    open class func betaBuildLocalizationsGetInstance(id: String, fieldsBetaBuildLocalizations: [FieldsBetaBuildLocalizations_betaBuildLocalizationsGetInstance]? = nil, include: [Include_betaBuildLocalizationsGetInstance]? = nil, fieldsBuilds: [FieldsBuilds_betaBuildLocalizationsGetInstance]? = nil, completion: @escaping (_ data: BetaBuildLocalizationResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let fieldsBetaBuildLocalizations = ["fieldsBetaBuildLocalizations_example"] // [String] | the fields to include for returned resources of type betaBuildLocalizations (optional)
let include = ["include_example"] // [String] | comma-separated list of relationships to include (optional)
let fieldsBuilds = ["fieldsBuilds_example"] // [String] | the fields to include for returned resources of type builds (optional)

BetaBuildLocalizationsAPI.betaBuildLocalizationsGetInstance(id: id, fieldsBetaBuildLocalizations: fieldsBetaBuildLocalizations, include: include, fieldsBuilds: fieldsBuilds) { (response, error) in
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
 **fieldsBetaBuildLocalizations** | [**[String]**](String.md) | the fields to include for returned resources of type betaBuildLocalizations | [optional] 
 **include** | [**[String]**](String.md) | comma-separated list of relationships to include | [optional] 
 **fieldsBuilds** | [**[String]**](String.md) | the fields to include for returned resources of type builds | [optional] 

### Return type

[**BetaBuildLocalizationResponse**](BetaBuildLocalizationResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **betaBuildLocalizationsUpdateInstance**
```swift
    open class func betaBuildLocalizationsUpdateInstance(id: String, betaBuildLocalizationUpdateRequest: BetaBuildLocalizationUpdateRequest, completion: @escaping (_ data: BetaBuildLocalizationResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let betaBuildLocalizationUpdateRequest = BetaBuildLocalizationUpdateRequest(data: BetaBuildLocalizationUpdateRequest_data(type: "type_example", id: "id_example", attributes: BetaBuildLocalizationUpdateRequest_data_attributes(whatsNew: "whatsNew_example"))) // BetaBuildLocalizationUpdateRequest | BetaBuildLocalization representation

BetaBuildLocalizationsAPI.betaBuildLocalizationsUpdateInstance(id: id, betaBuildLocalizationUpdateRequest: betaBuildLocalizationUpdateRequest) { (response, error) in
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
 **betaBuildLocalizationUpdateRequest** | [**BetaBuildLocalizationUpdateRequest**](BetaBuildLocalizationUpdateRequest.md) | BetaBuildLocalization representation | 

### Return type

[**BetaBuildLocalizationResponse**](BetaBuildLocalizationResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

