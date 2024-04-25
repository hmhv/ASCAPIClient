# AppInfoLocalizationsAPI

All URIs are relative to *https://api.appstoreconnect.apple.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**appInfoLocalizationsCreateInstance**](AppInfoLocalizationsAPI.md#appinfolocalizationscreateinstance) | **POST** /v1/appInfoLocalizations | 
[**appInfoLocalizationsDeleteInstance**](AppInfoLocalizationsAPI.md#appinfolocalizationsdeleteinstance) | **DELETE** /v1/appInfoLocalizations/{id} | 
[**appInfoLocalizationsGetInstance**](AppInfoLocalizationsAPI.md#appinfolocalizationsgetinstance) | **GET** /v1/appInfoLocalizations/{id} | 
[**appInfoLocalizationsUpdateInstance**](AppInfoLocalizationsAPI.md#appinfolocalizationsupdateinstance) | **PATCH** /v1/appInfoLocalizations/{id} | 


# **appInfoLocalizationsCreateInstance**
```swift
    open class func appInfoLocalizationsCreateInstance(appInfoLocalizationCreateRequest: AppInfoLocalizationCreateRequest, completion: @escaping (_ data: AppInfoLocalizationResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let appInfoLocalizationCreateRequest = AppInfoLocalizationCreateRequest(data: AppInfoLocalizationCreateRequest_data(type: "type_example", attributes: AppInfoLocalizationCreateRequest_data_attributes(locale: "locale_example", name: "name_example", subtitle: "subtitle_example", privacyPolicyUrl: "privacyPolicyUrl_example", privacyChoicesUrl: "privacyChoicesUrl_example", privacyPolicyText: "privacyPolicyText_example"), relationships: AppInfoLocalizationCreateRequest_data_relationships(appInfo: AppInfoLocalizationCreateRequest_data_relationships_appInfo(data: AppInfoLocalization_relationships_appInfo_data(type: "type_example", id: "id_example"))))) // AppInfoLocalizationCreateRequest | AppInfoLocalization representation

AppInfoLocalizationsAPI.appInfoLocalizationsCreateInstance(appInfoLocalizationCreateRequest: appInfoLocalizationCreateRequest) { (response, error) in
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
 **appInfoLocalizationCreateRequest** | [**AppInfoLocalizationCreateRequest**](AppInfoLocalizationCreateRequest.md) | AppInfoLocalization representation | 

### Return type

[**AppInfoLocalizationResponse**](AppInfoLocalizationResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **appInfoLocalizationsDeleteInstance**
```swift
    open class func appInfoLocalizationsDeleteInstance(id: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource

AppInfoLocalizationsAPI.appInfoLocalizationsDeleteInstance(id: id) { (response, error) in
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

# **appInfoLocalizationsGetInstance**
```swift
    open class func appInfoLocalizationsGetInstance(id: String, fieldsAppInfoLocalizations: [FieldsAppInfoLocalizations_appInfoLocalizationsGetInstance]? = nil, include: [Include_appInfoLocalizationsGetInstance]? = nil, completion: @escaping (_ data: AppInfoLocalizationResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let fieldsAppInfoLocalizations = ["fieldsAppInfoLocalizations_example"] // [String] | the fields to include for returned resources of type appInfoLocalizations (optional)
let include = ["include_example"] // [String] | comma-separated list of relationships to include (optional)

AppInfoLocalizationsAPI.appInfoLocalizationsGetInstance(id: id, fieldsAppInfoLocalizations: fieldsAppInfoLocalizations, include: include) { (response, error) in
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
 **fieldsAppInfoLocalizations** | [**[String]**](String.md) | the fields to include for returned resources of type appInfoLocalizations | [optional] 
 **include** | [**[String]**](String.md) | comma-separated list of relationships to include | [optional] 

### Return type

[**AppInfoLocalizationResponse**](AppInfoLocalizationResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **appInfoLocalizationsUpdateInstance**
```swift
    open class func appInfoLocalizationsUpdateInstance(id: String, appInfoLocalizationUpdateRequest: AppInfoLocalizationUpdateRequest, completion: @escaping (_ data: AppInfoLocalizationResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let appInfoLocalizationUpdateRequest = AppInfoLocalizationUpdateRequest(data: AppInfoLocalizationUpdateRequest_data(type: "type_example", id: "id_example", attributes: AppInfoLocalizationUpdateRequest_data_attributes(name: "name_example", subtitle: "subtitle_example", privacyPolicyUrl: "privacyPolicyUrl_example", privacyChoicesUrl: "privacyChoicesUrl_example", privacyPolicyText: "privacyPolicyText_example"))) // AppInfoLocalizationUpdateRequest | AppInfoLocalization representation

AppInfoLocalizationsAPI.appInfoLocalizationsUpdateInstance(id: id, appInfoLocalizationUpdateRequest: appInfoLocalizationUpdateRequest) { (response, error) in
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
 **appInfoLocalizationUpdateRequest** | [**AppInfoLocalizationUpdateRequest**](AppInfoLocalizationUpdateRequest.md) | AppInfoLocalization representation | 

### Return type

[**AppInfoLocalizationResponse**](AppInfoLocalizationResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

