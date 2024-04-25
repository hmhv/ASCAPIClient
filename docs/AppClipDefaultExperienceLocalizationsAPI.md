# AppClipDefaultExperienceLocalizationsAPI

All URIs are relative to *https://api.appstoreconnect.apple.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**appClipDefaultExperienceLocalizationsAppClipHeaderImageGetToOneRelated**](AppClipDefaultExperienceLocalizationsAPI.md#appclipdefaultexperiencelocalizationsappclipheaderimagegettoonerelated) | **GET** /v1/appClipDefaultExperienceLocalizations/{id}/appClipHeaderImage | 
[**appClipDefaultExperienceLocalizationsCreateInstance**](AppClipDefaultExperienceLocalizationsAPI.md#appclipdefaultexperiencelocalizationscreateinstance) | **POST** /v1/appClipDefaultExperienceLocalizations | 
[**appClipDefaultExperienceLocalizationsDeleteInstance**](AppClipDefaultExperienceLocalizationsAPI.md#appclipdefaultexperiencelocalizationsdeleteinstance) | **DELETE** /v1/appClipDefaultExperienceLocalizations/{id} | 
[**appClipDefaultExperienceLocalizationsGetInstance**](AppClipDefaultExperienceLocalizationsAPI.md#appclipdefaultexperiencelocalizationsgetinstance) | **GET** /v1/appClipDefaultExperienceLocalizations/{id} | 
[**appClipDefaultExperienceLocalizationsUpdateInstance**](AppClipDefaultExperienceLocalizationsAPI.md#appclipdefaultexperiencelocalizationsupdateinstance) | **PATCH** /v1/appClipDefaultExperienceLocalizations/{id} | 


# **appClipDefaultExperienceLocalizationsAppClipHeaderImageGetToOneRelated**
```swift
    open class func appClipDefaultExperienceLocalizationsAppClipHeaderImageGetToOneRelated(id: String, fieldsAppClipHeaderImages: [FieldsAppClipHeaderImages_appClipDefaultExperienceLocalizationsAppClipHeaderImageGetToOneRelated]? = nil, fieldsAppClipDefaultExperienceLocalizations: [FieldsAppClipDefaultExperienceLocalizations_appClipDefaultExperienceLocalizationsAppClipHeaderImageGetToOneRelated]? = nil, include: [Include_appClipDefaultExperienceLocalizationsAppClipHeaderImageGetToOneRelated]? = nil, completion: @escaping (_ data: AppClipHeaderImageResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let fieldsAppClipHeaderImages = ["fieldsAppClipHeaderImages_example"] // [String] | the fields to include for returned resources of type appClipHeaderImages (optional)
let fieldsAppClipDefaultExperienceLocalizations = ["fieldsAppClipDefaultExperienceLocalizations_example"] // [String] | the fields to include for returned resources of type appClipDefaultExperienceLocalizations (optional)
let include = ["include_example"] // [String] | comma-separated list of relationships to include (optional)

AppClipDefaultExperienceLocalizationsAPI.appClipDefaultExperienceLocalizationsAppClipHeaderImageGetToOneRelated(id: id, fieldsAppClipHeaderImages: fieldsAppClipHeaderImages, fieldsAppClipDefaultExperienceLocalizations: fieldsAppClipDefaultExperienceLocalizations, include: include) { (response, error) in
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
 **fieldsAppClipHeaderImages** | [**[String]**](String.md) | the fields to include for returned resources of type appClipHeaderImages | [optional] 
 **fieldsAppClipDefaultExperienceLocalizations** | [**[String]**](String.md) | the fields to include for returned resources of type appClipDefaultExperienceLocalizations | [optional] 
 **include** | [**[String]**](String.md) | comma-separated list of relationships to include | [optional] 

### Return type

[**AppClipHeaderImageResponse**](AppClipHeaderImageResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **appClipDefaultExperienceLocalizationsCreateInstance**
```swift
    open class func appClipDefaultExperienceLocalizationsCreateInstance(appClipDefaultExperienceLocalizationCreateRequest: AppClipDefaultExperienceLocalizationCreateRequest, completion: @escaping (_ data: AppClipDefaultExperienceLocalizationResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let appClipDefaultExperienceLocalizationCreateRequest = AppClipDefaultExperienceLocalizationCreateRequest(data: AppClipDefaultExperienceLocalizationCreateRequest_data(type: "type_example", attributes: AppClipDefaultExperienceLocalizationCreateRequest_data_attributes(locale: "locale_example", subtitle: "subtitle_example"), relationships: AppClipAppStoreReviewDetailCreateRequest_data_relationships(appClipDefaultExperience: AppClipAppStoreReviewDetailCreateRequest_data_relationships_appClipDefaultExperience(data: AppClipAppStoreReviewDetail_relationships_appClipDefaultExperience_data(type: "type_example", id: "id_example"))))) // AppClipDefaultExperienceLocalizationCreateRequest | AppClipDefaultExperienceLocalization representation

AppClipDefaultExperienceLocalizationsAPI.appClipDefaultExperienceLocalizationsCreateInstance(appClipDefaultExperienceLocalizationCreateRequest: appClipDefaultExperienceLocalizationCreateRequest) { (response, error) in
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
 **appClipDefaultExperienceLocalizationCreateRequest** | [**AppClipDefaultExperienceLocalizationCreateRequest**](AppClipDefaultExperienceLocalizationCreateRequest.md) | AppClipDefaultExperienceLocalization representation | 

### Return type

[**AppClipDefaultExperienceLocalizationResponse**](AppClipDefaultExperienceLocalizationResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **appClipDefaultExperienceLocalizationsDeleteInstance**
```swift
    open class func appClipDefaultExperienceLocalizationsDeleteInstance(id: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource

AppClipDefaultExperienceLocalizationsAPI.appClipDefaultExperienceLocalizationsDeleteInstance(id: id) { (response, error) in
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

# **appClipDefaultExperienceLocalizationsGetInstance**
```swift
    open class func appClipDefaultExperienceLocalizationsGetInstance(id: String, fieldsAppClipDefaultExperienceLocalizations: [FieldsAppClipDefaultExperienceLocalizations_appClipDefaultExperienceLocalizationsGetInstance]? = nil, include: [Include_appClipDefaultExperienceLocalizationsGetInstance]? = nil, fieldsAppClipHeaderImages: [FieldsAppClipHeaderImages_appClipDefaultExperienceLocalizationsGetInstance]? = nil, completion: @escaping (_ data: AppClipDefaultExperienceLocalizationResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let fieldsAppClipDefaultExperienceLocalizations = ["fieldsAppClipDefaultExperienceLocalizations_example"] // [String] | the fields to include for returned resources of type appClipDefaultExperienceLocalizations (optional)
let include = ["include_example"] // [String] | comma-separated list of relationships to include (optional)
let fieldsAppClipHeaderImages = ["fieldsAppClipHeaderImages_example"] // [String] | the fields to include for returned resources of type appClipHeaderImages (optional)

AppClipDefaultExperienceLocalizationsAPI.appClipDefaultExperienceLocalizationsGetInstance(id: id, fieldsAppClipDefaultExperienceLocalizations: fieldsAppClipDefaultExperienceLocalizations, include: include, fieldsAppClipHeaderImages: fieldsAppClipHeaderImages) { (response, error) in
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
 **fieldsAppClipDefaultExperienceLocalizations** | [**[String]**](String.md) | the fields to include for returned resources of type appClipDefaultExperienceLocalizations | [optional] 
 **include** | [**[String]**](String.md) | comma-separated list of relationships to include | [optional] 
 **fieldsAppClipHeaderImages** | [**[String]**](String.md) | the fields to include for returned resources of type appClipHeaderImages | [optional] 

### Return type

[**AppClipDefaultExperienceLocalizationResponse**](AppClipDefaultExperienceLocalizationResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **appClipDefaultExperienceLocalizationsUpdateInstance**
```swift
    open class func appClipDefaultExperienceLocalizationsUpdateInstance(id: String, appClipDefaultExperienceLocalizationUpdateRequest: AppClipDefaultExperienceLocalizationUpdateRequest, completion: @escaping (_ data: AppClipDefaultExperienceLocalizationResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let appClipDefaultExperienceLocalizationUpdateRequest = AppClipDefaultExperienceLocalizationUpdateRequest(data: AppClipDefaultExperienceLocalizationUpdateRequest_data(type: "type_example", id: "id_example", attributes: AppClipDefaultExperienceLocalizationUpdateRequest_data_attributes(subtitle: "subtitle_example"))) // AppClipDefaultExperienceLocalizationUpdateRequest | AppClipDefaultExperienceLocalization representation

AppClipDefaultExperienceLocalizationsAPI.appClipDefaultExperienceLocalizationsUpdateInstance(id: id, appClipDefaultExperienceLocalizationUpdateRequest: appClipDefaultExperienceLocalizationUpdateRequest) { (response, error) in
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
 **appClipDefaultExperienceLocalizationUpdateRequest** | [**AppClipDefaultExperienceLocalizationUpdateRequest**](AppClipDefaultExperienceLocalizationUpdateRequest.md) | AppClipDefaultExperienceLocalization representation | 

### Return type

[**AppClipDefaultExperienceLocalizationResponse**](AppClipDefaultExperienceLocalizationResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

