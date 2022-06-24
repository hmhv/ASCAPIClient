# AppCustomProductPageVersionsAPI

All URIs are relative to *https://api.appstoreconnect.apple.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**appCustomProductPageVersionsAppCustomProductPageLocalizationsGetToManyRelated**](AppCustomProductPageVersionsAPI.md#appcustomproductpageversionsappcustomproductpagelocalizationsgettomanyrelated) | **GET** /v1/appCustomProductPageVersions/{id}/appCustomProductPageLocalizations | 
[**appCustomProductPageVersionsCreateInstance**](AppCustomProductPageVersionsAPI.md#appcustomproductpageversionscreateinstance) | **POST** /v1/appCustomProductPageVersions | 
[**appCustomProductPageVersionsGetInstance**](AppCustomProductPageVersionsAPI.md#appcustomproductpageversionsgetinstance) | **GET** /v1/appCustomProductPageVersions/{id} | 


# **appCustomProductPageVersionsAppCustomProductPageLocalizationsGetToManyRelated**
```swift
    open class func appCustomProductPageVersionsAppCustomProductPageLocalizationsGetToManyRelated(id: String, filterLocale: [String]? = nil, fieldsAppScreenshotSets: [FieldsAppScreenshotSets_appCustomProductPageVersionsAppCustomProductPageLocalizationsGetToManyRelated]? = nil, fieldsAppCustomProductPageLocalizations: [FieldsAppCustomProductPageLocalizations_appCustomProductPageVersionsAppCustomProductPageLocalizationsGetToManyRelated]? = nil, fieldsAppCustomProductPageVersions: [FieldsAppCustomProductPageVersions_appCustomProductPageVersionsAppCustomProductPageLocalizationsGetToManyRelated]? = nil, fieldsAppPreviewSets: [FieldsAppPreviewSets_appCustomProductPageVersionsAppCustomProductPageLocalizationsGetToManyRelated]? = nil, limit: Int? = nil, limitAppScreenshotSets: Int? = nil, limitAppPreviewSets: Int? = nil, include: [Include_appCustomProductPageVersionsAppCustomProductPageLocalizationsGetToManyRelated]? = nil, completion: @escaping (_ data: AppCustomProductPageLocalizationsResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let filterLocale = ["inner_example"] // [String] | filter by attribute 'locale' (optional)
let fieldsAppScreenshotSets = ["fieldsAppScreenshotSets_example"] // [String] | the fields to include for returned resources of type appScreenshotSets (optional)
let fieldsAppCustomProductPageLocalizations = ["fieldsAppCustomProductPageLocalizations_example"] // [String] | the fields to include for returned resources of type appCustomProductPageLocalizations (optional)
let fieldsAppCustomProductPageVersions = ["fieldsAppCustomProductPageVersions_example"] // [String] | the fields to include for returned resources of type appCustomProductPageVersions (optional)
let fieldsAppPreviewSets = ["fieldsAppPreviewSets_example"] // [String] | the fields to include for returned resources of type appPreviewSets (optional)
let limit = 987 // Int | maximum resources per page (optional)
let limitAppScreenshotSets = 987 // Int | maximum number of related appScreenshotSets returned (when they are included) (optional)
let limitAppPreviewSets = 987 // Int | maximum number of related appPreviewSets returned (when they are included) (optional)
let include = ["include_example"] // [String] | comma-separated list of relationships to include (optional)

AppCustomProductPageVersionsAPI.appCustomProductPageVersionsAppCustomProductPageLocalizationsGetToManyRelated(id: id, filterLocale: filterLocale, fieldsAppScreenshotSets: fieldsAppScreenshotSets, fieldsAppCustomProductPageLocalizations: fieldsAppCustomProductPageLocalizations, fieldsAppCustomProductPageVersions: fieldsAppCustomProductPageVersions, fieldsAppPreviewSets: fieldsAppPreviewSets, limit: limit, limitAppScreenshotSets: limitAppScreenshotSets, limitAppPreviewSets: limitAppPreviewSets, include: include) { (response, error) in
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
 **filterLocale** | [**[String]**](String.md) | filter by attribute &#39;locale&#39; | [optional] 
 **fieldsAppScreenshotSets** | [**[String]**](String.md) | the fields to include for returned resources of type appScreenshotSets | [optional] 
 **fieldsAppCustomProductPageLocalizations** | [**[String]**](String.md) | the fields to include for returned resources of type appCustomProductPageLocalizations | [optional] 
 **fieldsAppCustomProductPageVersions** | [**[String]**](String.md) | the fields to include for returned resources of type appCustomProductPageVersions | [optional] 
 **fieldsAppPreviewSets** | [**[String]**](String.md) | the fields to include for returned resources of type appPreviewSets | [optional] 
 **limit** | **Int** | maximum resources per page | [optional] 
 **limitAppScreenshotSets** | **Int** | maximum number of related appScreenshotSets returned (when they are included) | [optional] 
 **limitAppPreviewSets** | **Int** | maximum number of related appPreviewSets returned (when they are included) | [optional] 
 **include** | [**[String]**](String.md) | comma-separated list of relationships to include | [optional] 

### Return type

[**AppCustomProductPageLocalizationsResponse**](AppCustomProductPageLocalizationsResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **appCustomProductPageVersionsCreateInstance**
```swift
    open class func appCustomProductPageVersionsCreateInstance(appCustomProductPageVersionCreateRequest: AppCustomProductPageVersionCreateRequest, completion: @escaping (_ data: AppCustomProductPageVersionResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let appCustomProductPageVersionCreateRequest = AppCustomProductPageVersionCreateRequest(data: AppCustomProductPageVersionCreateRequest_data(type: "type_example", relationships: AppCustomProductPageVersionCreateRequest_data_relationships(appCustomProductPage: AppCustomProductPageVersionCreateRequest_data_relationships_appCustomProductPage(data: AppCustomProductPageVersion_relationships_appCustomProductPage_data(type: "type_example", id: "id_example")), appCustomProductPageLocalizations: AppCustomProductPageVersionInlineCreate_relationships_appCustomProductPageLocalizations(data: [AppCustomProductPageVersion_relationships_appCustomProductPageLocalizations_data_inner(type: "type_example", id: "id_example")])))) // AppCustomProductPageVersionCreateRequest | AppCustomProductPageVersion representation

AppCustomProductPageVersionsAPI.appCustomProductPageVersionsCreateInstance(appCustomProductPageVersionCreateRequest: appCustomProductPageVersionCreateRequest) { (response, error) in
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
 **appCustomProductPageVersionCreateRequest** | [**AppCustomProductPageVersionCreateRequest**](AppCustomProductPageVersionCreateRequest.md) | AppCustomProductPageVersion representation | 

### Return type

[**AppCustomProductPageVersionResponse**](AppCustomProductPageVersionResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **appCustomProductPageVersionsGetInstance**
```swift
    open class func appCustomProductPageVersionsGetInstance(id: String, fieldsAppCustomProductPageVersions: [FieldsAppCustomProductPageVersions_appCustomProductPageVersionsGetInstance]? = nil, include: [Include_appCustomProductPageVersionsGetInstance]? = nil, fieldsAppCustomProductPageLocalizations: [FieldsAppCustomProductPageLocalizations_appCustomProductPageVersionsGetInstance]? = nil, limitAppCustomProductPageLocalizations: Int? = nil, completion: @escaping (_ data: AppCustomProductPageVersionResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let fieldsAppCustomProductPageVersions = ["fieldsAppCustomProductPageVersions_example"] // [String] | the fields to include for returned resources of type appCustomProductPageVersions (optional)
let include = ["include_example"] // [String] | comma-separated list of relationships to include (optional)
let fieldsAppCustomProductPageLocalizations = ["fieldsAppCustomProductPageLocalizations_example"] // [String] | the fields to include for returned resources of type appCustomProductPageLocalizations (optional)
let limitAppCustomProductPageLocalizations = 987 // Int | maximum number of related appCustomProductPageLocalizations returned (when they are included) (optional)

AppCustomProductPageVersionsAPI.appCustomProductPageVersionsGetInstance(id: id, fieldsAppCustomProductPageVersions: fieldsAppCustomProductPageVersions, include: include, fieldsAppCustomProductPageLocalizations: fieldsAppCustomProductPageLocalizations, limitAppCustomProductPageLocalizations: limitAppCustomProductPageLocalizations) { (response, error) in
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
 **fieldsAppCustomProductPageVersions** | [**[String]**](String.md) | the fields to include for returned resources of type appCustomProductPageVersions | [optional] 
 **include** | [**[String]**](String.md) | comma-separated list of relationships to include | [optional] 
 **fieldsAppCustomProductPageLocalizations** | [**[String]**](String.md) | the fields to include for returned resources of type appCustomProductPageLocalizations | [optional] 
 **limitAppCustomProductPageLocalizations** | **Int** | maximum number of related appCustomProductPageLocalizations returned (when they are included) | [optional] 

### Return type

[**AppCustomProductPageVersionResponse**](AppCustomProductPageVersionResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

