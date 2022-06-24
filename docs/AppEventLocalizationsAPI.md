# AppEventLocalizationsAPI

All URIs are relative to *https://api.appstoreconnect.apple.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**appEventLocalizationsAppEventScreenshotsGetToManyRelated**](AppEventLocalizationsAPI.md#appeventlocalizationsappeventscreenshotsgettomanyrelated) | **GET** /v1/appEventLocalizations/{id}/appEventScreenshots | 
[**appEventLocalizationsAppEventVideoClipsGetToManyRelated**](AppEventLocalizationsAPI.md#appeventlocalizationsappeventvideoclipsgettomanyrelated) | **GET** /v1/appEventLocalizations/{id}/appEventVideoClips | 
[**appEventLocalizationsCreateInstance**](AppEventLocalizationsAPI.md#appeventlocalizationscreateinstance) | **POST** /v1/appEventLocalizations | 
[**appEventLocalizationsDeleteInstance**](AppEventLocalizationsAPI.md#appeventlocalizationsdeleteinstance) | **DELETE** /v1/appEventLocalizations/{id} | 
[**appEventLocalizationsGetInstance**](AppEventLocalizationsAPI.md#appeventlocalizationsgetinstance) | **GET** /v1/appEventLocalizations/{id} | 
[**appEventLocalizationsUpdateInstance**](AppEventLocalizationsAPI.md#appeventlocalizationsupdateinstance) | **PATCH** /v1/appEventLocalizations/{id} | 


# **appEventLocalizationsAppEventScreenshotsGetToManyRelated**
```swift
    open class func appEventLocalizationsAppEventScreenshotsGetToManyRelated(id: String, fieldsAppEventScreenshots: [FieldsAppEventScreenshots_appEventLocalizationsAppEventScreenshotsGetToManyRelated]? = nil, fieldsAppEventLocalizations: [FieldsAppEventLocalizations_appEventLocalizationsAppEventScreenshotsGetToManyRelated]? = nil, limit: Int? = nil, include: [Include_appEventLocalizationsAppEventScreenshotsGetToManyRelated]? = nil, completion: @escaping (_ data: AppEventScreenshotsResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let fieldsAppEventScreenshots = ["fieldsAppEventScreenshots_example"] // [String] | the fields to include for returned resources of type appEventScreenshots (optional)
let fieldsAppEventLocalizations = ["fieldsAppEventLocalizations_example"] // [String] | the fields to include for returned resources of type appEventLocalizations (optional)
let limit = 987 // Int | maximum resources per page (optional)
let include = ["include_example"] // [String] | comma-separated list of relationships to include (optional)

AppEventLocalizationsAPI.appEventLocalizationsAppEventScreenshotsGetToManyRelated(id: id, fieldsAppEventScreenshots: fieldsAppEventScreenshots, fieldsAppEventLocalizations: fieldsAppEventLocalizations, limit: limit, include: include) { (response, error) in
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
 **fieldsAppEventScreenshots** | [**[String]**](String.md) | the fields to include for returned resources of type appEventScreenshots | [optional] 
 **fieldsAppEventLocalizations** | [**[String]**](String.md) | the fields to include for returned resources of type appEventLocalizations | [optional] 
 **limit** | **Int** | maximum resources per page | [optional] 
 **include** | [**[String]**](String.md) | comma-separated list of relationships to include | [optional] 

### Return type

[**AppEventScreenshotsResponse**](AppEventScreenshotsResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **appEventLocalizationsAppEventVideoClipsGetToManyRelated**
```swift
    open class func appEventLocalizationsAppEventVideoClipsGetToManyRelated(id: String, fieldsAppEventVideoClips: [FieldsAppEventVideoClips_appEventLocalizationsAppEventVideoClipsGetToManyRelated]? = nil, fieldsAppEventLocalizations: [FieldsAppEventLocalizations_appEventLocalizationsAppEventVideoClipsGetToManyRelated]? = nil, limit: Int? = nil, include: [Include_appEventLocalizationsAppEventVideoClipsGetToManyRelated]? = nil, completion: @escaping (_ data: AppEventVideoClipsResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let fieldsAppEventVideoClips = ["fieldsAppEventVideoClips_example"] // [String] | the fields to include for returned resources of type appEventVideoClips (optional)
let fieldsAppEventLocalizations = ["fieldsAppEventLocalizations_example"] // [String] | the fields to include for returned resources of type appEventLocalizations (optional)
let limit = 987 // Int | maximum resources per page (optional)
let include = ["include_example"] // [String] | comma-separated list of relationships to include (optional)

AppEventLocalizationsAPI.appEventLocalizationsAppEventVideoClipsGetToManyRelated(id: id, fieldsAppEventVideoClips: fieldsAppEventVideoClips, fieldsAppEventLocalizations: fieldsAppEventLocalizations, limit: limit, include: include) { (response, error) in
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
 **fieldsAppEventVideoClips** | [**[String]**](String.md) | the fields to include for returned resources of type appEventVideoClips | [optional] 
 **fieldsAppEventLocalizations** | [**[String]**](String.md) | the fields to include for returned resources of type appEventLocalizations | [optional] 
 **limit** | **Int** | maximum resources per page | [optional] 
 **include** | [**[String]**](String.md) | comma-separated list of relationships to include | [optional] 

### Return type

[**AppEventVideoClipsResponse**](AppEventVideoClipsResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **appEventLocalizationsCreateInstance**
```swift
    open class func appEventLocalizationsCreateInstance(appEventLocalizationCreateRequest: AppEventLocalizationCreateRequest, completion: @escaping (_ data: AppEventLocalizationResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let appEventLocalizationCreateRequest = AppEventLocalizationCreateRequest(data: AppEventLocalizationCreateRequest_data(type: "type_example", attributes: AppEventLocalizationCreateRequest_data_attributes(locale: "locale_example", name: "name_example", shortDescription: "shortDescription_example", longDescription: "longDescription_example"), relationships: AppEventLocalizationCreateRequest_data_relationships(appEvent: AppEventLocalizationCreateRequest_data_relationships_appEvent(data: AppEventLocalization_relationships_appEvent_data(type: "type_example", id: "id_example"))))) // AppEventLocalizationCreateRequest | AppEventLocalization representation

AppEventLocalizationsAPI.appEventLocalizationsCreateInstance(appEventLocalizationCreateRequest: appEventLocalizationCreateRequest) { (response, error) in
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
 **appEventLocalizationCreateRequest** | [**AppEventLocalizationCreateRequest**](AppEventLocalizationCreateRequest.md) | AppEventLocalization representation | 

### Return type

[**AppEventLocalizationResponse**](AppEventLocalizationResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **appEventLocalizationsDeleteInstance**
```swift
    open class func appEventLocalizationsDeleteInstance(id: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource

AppEventLocalizationsAPI.appEventLocalizationsDeleteInstance(id: id) { (response, error) in
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

# **appEventLocalizationsGetInstance**
```swift
    open class func appEventLocalizationsGetInstance(id: String, fieldsAppEventLocalizations: [FieldsAppEventLocalizations_appEventLocalizationsGetInstance]? = nil, include: [Include_appEventLocalizationsGetInstance]? = nil, fieldsAppEventScreenshots: [FieldsAppEventScreenshots_appEventLocalizationsGetInstance]? = nil, fieldsAppEventVideoClips: [FieldsAppEventVideoClips_appEventLocalizationsGetInstance]? = nil, limitAppEventScreenshots: Int? = nil, limitAppEventVideoClips: Int? = nil, completion: @escaping (_ data: AppEventLocalizationResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let fieldsAppEventLocalizations = ["fieldsAppEventLocalizations_example"] // [String] | the fields to include for returned resources of type appEventLocalizations (optional)
let include = ["include_example"] // [String] | comma-separated list of relationships to include (optional)
let fieldsAppEventScreenshots = ["fieldsAppEventScreenshots_example"] // [String] | the fields to include for returned resources of type appEventScreenshots (optional)
let fieldsAppEventVideoClips = ["fieldsAppEventVideoClips_example"] // [String] | the fields to include for returned resources of type appEventVideoClips (optional)
let limitAppEventScreenshots = 987 // Int | maximum number of related appEventScreenshots returned (when they are included) (optional)
let limitAppEventVideoClips = 987 // Int | maximum number of related appEventVideoClips returned (when they are included) (optional)

AppEventLocalizationsAPI.appEventLocalizationsGetInstance(id: id, fieldsAppEventLocalizations: fieldsAppEventLocalizations, include: include, fieldsAppEventScreenshots: fieldsAppEventScreenshots, fieldsAppEventVideoClips: fieldsAppEventVideoClips, limitAppEventScreenshots: limitAppEventScreenshots, limitAppEventVideoClips: limitAppEventVideoClips) { (response, error) in
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
 **fieldsAppEventLocalizations** | [**[String]**](String.md) | the fields to include for returned resources of type appEventLocalizations | [optional] 
 **include** | [**[String]**](String.md) | comma-separated list of relationships to include | [optional] 
 **fieldsAppEventScreenshots** | [**[String]**](String.md) | the fields to include for returned resources of type appEventScreenshots | [optional] 
 **fieldsAppEventVideoClips** | [**[String]**](String.md) | the fields to include for returned resources of type appEventVideoClips | [optional] 
 **limitAppEventScreenshots** | **Int** | maximum number of related appEventScreenshots returned (when they are included) | [optional] 
 **limitAppEventVideoClips** | **Int** | maximum number of related appEventVideoClips returned (when they are included) | [optional] 

### Return type

[**AppEventLocalizationResponse**](AppEventLocalizationResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **appEventLocalizationsUpdateInstance**
```swift
    open class func appEventLocalizationsUpdateInstance(id: String, appEventLocalizationUpdateRequest: AppEventLocalizationUpdateRequest, completion: @escaping (_ data: AppEventLocalizationResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let appEventLocalizationUpdateRequest = AppEventLocalizationUpdateRequest(data: AppEventLocalizationUpdateRequest_data(type: "type_example", id: "id_example", attributes: AppEventLocalizationUpdateRequest_data_attributes(name: "name_example", shortDescription: "shortDescription_example", longDescription: "longDescription_example"))) // AppEventLocalizationUpdateRequest | AppEventLocalization representation

AppEventLocalizationsAPI.appEventLocalizationsUpdateInstance(id: id, appEventLocalizationUpdateRequest: appEventLocalizationUpdateRequest) { (response, error) in
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
 **appEventLocalizationUpdateRequest** | [**AppEventLocalizationUpdateRequest**](AppEventLocalizationUpdateRequest.md) | AppEventLocalization representation | 

### Return type

[**AppEventLocalizationResponse**](AppEventLocalizationResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

