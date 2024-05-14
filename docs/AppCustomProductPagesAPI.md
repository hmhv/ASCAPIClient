# AppCustomProductPagesAPI

All URIs are relative to *https://api.appstoreconnect.apple.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**appCustomProductPagesAppCustomProductPageVersionsGetToManyRelated**](AppCustomProductPagesAPI.md#appcustomproductpagesappcustomproductpageversionsgettomanyrelated) | **GET** /v1/appCustomProductPages/{id}/appCustomProductPageVersions | 
[**appCustomProductPagesCreateInstance**](AppCustomProductPagesAPI.md#appcustomproductpagescreateinstance) | **POST** /v1/appCustomProductPages | 
[**appCustomProductPagesDeleteInstance**](AppCustomProductPagesAPI.md#appcustomproductpagesdeleteinstance) | **DELETE** /v1/appCustomProductPages/{id} | 
[**appCustomProductPagesGetInstance**](AppCustomProductPagesAPI.md#appcustomproductpagesgetinstance) | **GET** /v1/appCustomProductPages/{id} | 
[**appCustomProductPagesUpdateInstance**](AppCustomProductPagesAPI.md#appcustomproductpagesupdateinstance) | **PATCH** /v1/appCustomProductPages/{id} | 


# **appCustomProductPagesAppCustomProductPageVersionsGetToManyRelated**
```swift
    open class func appCustomProductPagesAppCustomProductPageVersionsGetToManyRelated(id: String, filterState: [FilterState_appCustomProductPagesAppCustomProductPageVersionsGetToManyRelated]? = nil, fieldsAppCustomProductPageLocalizations: [FieldsAppCustomProductPageLocalizations_appCustomProductPagesAppCustomProductPageVersionsGetToManyRelated]? = nil, fieldsAppCustomProductPageVersions: [FieldsAppCustomProductPageVersions_appCustomProductPagesAppCustomProductPageVersionsGetToManyRelated]? = nil, fieldsAppCustomProductPages: [FieldsAppCustomProductPages_appCustomProductPagesAppCustomProductPageVersionsGetToManyRelated]? = nil, limit: Int? = nil, limitAppCustomProductPageLocalizations: Int? = nil, include: [Include_appCustomProductPagesAppCustomProductPageVersionsGetToManyRelated]? = nil, completion: @escaping (_ data: AppCustomProductPageVersionsResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let filterState = ["filterState_example"] // [String] | filter by attribute 'state' (optional)
let fieldsAppCustomProductPageLocalizations = ["fieldsAppCustomProductPageLocalizations_example"] // [String] | the fields to include for returned resources of type appCustomProductPageLocalizations (optional)
let fieldsAppCustomProductPageVersions = ["fieldsAppCustomProductPageVersions_example"] // [String] | the fields to include for returned resources of type appCustomProductPageVersions (optional)
let fieldsAppCustomProductPages = ["fieldsAppCustomProductPages_example"] // [String] | the fields to include for returned resources of type appCustomProductPages (optional)
let limit = 987 // Int | maximum resources per page (optional)
let limitAppCustomProductPageLocalizations = 987 // Int | maximum number of related appCustomProductPageLocalizations returned (when they are included) (optional)
let include = ["include_example"] // [String] | comma-separated list of relationships to include (optional)

AppCustomProductPagesAPI.appCustomProductPagesAppCustomProductPageVersionsGetToManyRelated(id: id, filterState: filterState, fieldsAppCustomProductPageLocalizations: fieldsAppCustomProductPageLocalizations, fieldsAppCustomProductPageVersions: fieldsAppCustomProductPageVersions, fieldsAppCustomProductPages: fieldsAppCustomProductPages, limit: limit, limitAppCustomProductPageLocalizations: limitAppCustomProductPageLocalizations, include: include) { (response, error) in
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
 **filterState** | [**[String]**](String.md) | filter by attribute &#39;state&#39; | [optional] 
 **fieldsAppCustomProductPageLocalizations** | [**[String]**](String.md) | the fields to include for returned resources of type appCustomProductPageLocalizations | [optional] 
 **fieldsAppCustomProductPageVersions** | [**[String]**](String.md) | the fields to include for returned resources of type appCustomProductPageVersions | [optional] 
 **fieldsAppCustomProductPages** | [**[String]**](String.md) | the fields to include for returned resources of type appCustomProductPages | [optional] 
 **limit** | **Int** | maximum resources per page | [optional] 
 **limitAppCustomProductPageLocalizations** | **Int** | maximum number of related appCustomProductPageLocalizations returned (when they are included) | [optional] 
 **include** | [**[String]**](String.md) | comma-separated list of relationships to include | [optional] 

### Return type

[**AppCustomProductPageVersionsResponse**](AppCustomProductPageVersionsResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **appCustomProductPagesCreateInstance**
```swift
    open class func appCustomProductPagesCreateInstance(appCustomProductPageCreateRequest: AppCustomProductPageCreateRequest, completion: @escaping (_ data: AppCustomProductPageResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let appCustomProductPageCreateRequest = AppCustomProductPageCreateRequest(data: AppCustomProductPageCreateRequest_data(type: "type_example", attributes: AppCustomProductPageCreateRequest_data_attributes(name: "name_example"), relationships: AppCustomProductPageCreateRequest_data_relationships(app: AnalyticsReportRequestCreateRequest_data_relationships_app(data: AlternativeDistributionKeyCreateRequest_data_relationships_app_data(type: "type_example", id: "id_example")), appCustomProductPageVersions: AppCustomProductPageCreateRequest_data_relationships_appCustomProductPageVersions(data: [AppCustomProductPageLocalization_relationships_appCustomProductPageVersion_data(type: "type_example", id: "id_example")]), appStoreVersionTemplate: AppClipDefaultExperienceCreateRequest_data_relationships_releaseWithAppStoreVersion(data: AlternativeDistributionPackageCreateRequest_data_relationships_appStoreVersion_data(type: "type_example", id: "id_example")), customProductPageTemplate: AppCustomProductPageVersionInlineCreate_relationships_appCustomProductPage(data: AppCustomProductPageVersion_relationships_appCustomProductPage_data(type: "type_example", id: "id_example")))), included: [AppCustomProductPageCreateRequest_included_inner(type: "type_example", id: "id_example", attributes: AppCustomProductPageLocalizationInlineCreate_attributes(locale: "locale_example", promotionalText: "promotionalText_example"), relationships: AppCustomProductPageVersionInlineCreate_relationships(appCustomProductPage: nil, appCustomProductPageLocalizations: AppCustomProductPageVersionInlineCreate_relationships_appCustomProductPageLocalizations(data: [AppCustomProductPageVersion_relationships_appCustomProductPageLocalizations_data_inner(type: "type_example", id: "id_example")])))]) // AppCustomProductPageCreateRequest | AppCustomProductPage representation

AppCustomProductPagesAPI.appCustomProductPagesCreateInstance(appCustomProductPageCreateRequest: appCustomProductPageCreateRequest) { (response, error) in
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
 **appCustomProductPageCreateRequest** | [**AppCustomProductPageCreateRequest**](AppCustomProductPageCreateRequest.md) | AppCustomProductPage representation | 

### Return type

[**AppCustomProductPageResponse**](AppCustomProductPageResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **appCustomProductPagesDeleteInstance**
```swift
    open class func appCustomProductPagesDeleteInstance(id: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource

AppCustomProductPagesAPI.appCustomProductPagesDeleteInstance(id: id) { (response, error) in
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

# **appCustomProductPagesGetInstance**
```swift
    open class func appCustomProductPagesGetInstance(id: String, fieldsAppCustomProductPages: [FieldsAppCustomProductPages_appCustomProductPagesGetInstance]? = nil, include: [Include_appCustomProductPagesGetInstance]? = nil, fieldsAppCustomProductPageVersions: [FieldsAppCustomProductPageVersions_appCustomProductPagesGetInstance]? = nil, limitAppCustomProductPageVersions: Int? = nil, completion: @escaping (_ data: AppCustomProductPageResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let fieldsAppCustomProductPages = ["fieldsAppCustomProductPages_example"] // [String] | the fields to include for returned resources of type appCustomProductPages (optional)
let include = ["include_example"] // [String] | comma-separated list of relationships to include (optional)
let fieldsAppCustomProductPageVersions = ["fieldsAppCustomProductPageVersions_example"] // [String] | the fields to include for returned resources of type appCustomProductPageVersions (optional)
let limitAppCustomProductPageVersions = 987 // Int | maximum number of related appCustomProductPageVersions returned (when they are included) (optional)

AppCustomProductPagesAPI.appCustomProductPagesGetInstance(id: id, fieldsAppCustomProductPages: fieldsAppCustomProductPages, include: include, fieldsAppCustomProductPageVersions: fieldsAppCustomProductPageVersions, limitAppCustomProductPageVersions: limitAppCustomProductPageVersions) { (response, error) in
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
 **fieldsAppCustomProductPages** | [**[String]**](String.md) | the fields to include for returned resources of type appCustomProductPages | [optional] 
 **include** | [**[String]**](String.md) | comma-separated list of relationships to include | [optional] 
 **fieldsAppCustomProductPageVersions** | [**[String]**](String.md) | the fields to include for returned resources of type appCustomProductPageVersions | [optional] 
 **limitAppCustomProductPageVersions** | **Int** | maximum number of related appCustomProductPageVersions returned (when they are included) | [optional] 

### Return type

[**AppCustomProductPageResponse**](AppCustomProductPageResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **appCustomProductPagesUpdateInstance**
```swift
    open class func appCustomProductPagesUpdateInstance(id: String, appCustomProductPageUpdateRequest: AppCustomProductPageUpdateRequest, completion: @escaping (_ data: AppCustomProductPageResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let appCustomProductPageUpdateRequest = AppCustomProductPageUpdateRequest(data: AppCustomProductPageUpdateRequest_data(type: "type_example", id: "id_example", attributes: AppCustomProductPageUpdateRequest_data_attributes(name: "name_example", visible: false))) // AppCustomProductPageUpdateRequest | AppCustomProductPage representation

AppCustomProductPagesAPI.appCustomProductPagesUpdateInstance(id: id, appCustomProductPageUpdateRequest: appCustomProductPageUpdateRequest) { (response, error) in
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
 **appCustomProductPageUpdateRequest** | [**AppCustomProductPageUpdateRequest**](AppCustomProductPageUpdateRequest.md) | AppCustomProductPage representation | 

### Return type

[**AppCustomProductPageResponse**](AppCustomProductPageResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

