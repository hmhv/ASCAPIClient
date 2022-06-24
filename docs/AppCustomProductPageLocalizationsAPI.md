# AppCustomProductPageLocalizationsAPI

All URIs are relative to *https://api.appstoreconnect.apple.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**appCustomProductPageLocalizationsAppPreviewSetsGetToManyRelated**](AppCustomProductPageLocalizationsAPI.md#appcustomproductpagelocalizationsapppreviewsetsgettomanyrelated) | **GET** /v1/appCustomProductPageLocalizations/{id}/appPreviewSets | 
[**appCustomProductPageLocalizationsAppScreenshotSetsGetToManyRelated**](AppCustomProductPageLocalizationsAPI.md#appcustomproductpagelocalizationsappscreenshotsetsgettomanyrelated) | **GET** /v1/appCustomProductPageLocalizations/{id}/appScreenshotSets | 
[**appCustomProductPageLocalizationsCreateInstance**](AppCustomProductPageLocalizationsAPI.md#appcustomproductpagelocalizationscreateinstance) | **POST** /v1/appCustomProductPageLocalizations | 
[**appCustomProductPageLocalizationsDeleteInstance**](AppCustomProductPageLocalizationsAPI.md#appcustomproductpagelocalizationsdeleteinstance) | **DELETE** /v1/appCustomProductPageLocalizations/{id} | 
[**appCustomProductPageLocalizationsGetInstance**](AppCustomProductPageLocalizationsAPI.md#appcustomproductpagelocalizationsgetinstance) | **GET** /v1/appCustomProductPageLocalizations/{id} | 
[**appCustomProductPageLocalizationsUpdateInstance**](AppCustomProductPageLocalizationsAPI.md#appcustomproductpagelocalizationsupdateinstance) | **PATCH** /v1/appCustomProductPageLocalizations/{id} | 


# **appCustomProductPageLocalizationsAppPreviewSetsGetToManyRelated**
```swift
    open class func appCustomProductPageLocalizationsAppPreviewSetsGetToManyRelated(id: String, filterPreviewType: [FilterPreviewType_appCustomProductPageLocalizationsAppPreviewSetsGetToManyRelated]? = nil, filterAppStoreVersionExperimentTreatmentLocalization: [String]? = nil, filterAppStoreVersionLocalization: [String]? = nil, fieldsAppCustomProductPageLocalizations: [FieldsAppCustomProductPageLocalizations_appCustomProductPageLocalizationsAppPreviewSetsGetToManyRelated]? = nil, fieldsAppStoreVersionExperimentTreatmentLocalizations: [FieldsAppStoreVersionExperimentTreatmentLocalizations_appCustomProductPageLocalizationsAppPreviewSetsGetToManyRelated]? = nil, fieldsAppPreviews: [FieldsAppPreviews_appCustomProductPageLocalizationsAppPreviewSetsGetToManyRelated]? = nil, fieldsAppPreviewSets: [FieldsAppPreviewSets_appCustomProductPageLocalizationsAppPreviewSetsGetToManyRelated]? = nil, fieldsAppStoreVersionLocalizations: [FieldsAppStoreVersionLocalizations_appCustomProductPageLocalizationsAppPreviewSetsGetToManyRelated]? = nil, limit: Int? = nil, limitAppPreviews: Int? = nil, include: [Include_appCustomProductPageLocalizationsAppPreviewSetsGetToManyRelated]? = nil, completion: @escaping (_ data: AppPreviewSetsResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let filterPreviewType = ["filterPreviewType_example"] // [String] | filter by attribute 'previewType' (optional)
let filterAppStoreVersionExperimentTreatmentLocalization = ["inner_example"] // [String] | filter by id(s) of related 'appStoreVersionExperimentTreatmentLocalization' (optional)
let filterAppStoreVersionLocalization = ["inner_example"] // [String] | filter by id(s) of related 'appStoreVersionLocalization' (optional)
let fieldsAppCustomProductPageLocalizations = ["fieldsAppCustomProductPageLocalizations_example"] // [String] | the fields to include for returned resources of type appCustomProductPageLocalizations (optional)
let fieldsAppStoreVersionExperimentTreatmentLocalizations = ["fieldsAppStoreVersionExperimentTreatmentLocalizations_example"] // [String] | the fields to include for returned resources of type appStoreVersionExperimentTreatmentLocalizations (optional)
let fieldsAppPreviews = ["fieldsAppPreviews_example"] // [String] | the fields to include for returned resources of type appPreviews (optional)
let fieldsAppPreviewSets = ["fieldsAppPreviewSets_example"] // [String] | the fields to include for returned resources of type appPreviewSets (optional)
let fieldsAppStoreVersionLocalizations = ["fieldsAppStoreVersionLocalizations_example"] // [String] | the fields to include for returned resources of type appStoreVersionLocalizations (optional)
let limit = 987 // Int | maximum resources per page (optional)
let limitAppPreviews = 987 // Int | maximum number of related appPreviews returned (when they are included) (optional)
let include = ["include_example"] // [String] | comma-separated list of relationships to include (optional)

AppCustomProductPageLocalizationsAPI.appCustomProductPageLocalizationsAppPreviewSetsGetToManyRelated(id: id, filterPreviewType: filterPreviewType, filterAppStoreVersionExperimentTreatmentLocalization: filterAppStoreVersionExperimentTreatmentLocalization, filterAppStoreVersionLocalization: filterAppStoreVersionLocalization, fieldsAppCustomProductPageLocalizations: fieldsAppCustomProductPageLocalizations, fieldsAppStoreVersionExperimentTreatmentLocalizations: fieldsAppStoreVersionExperimentTreatmentLocalizations, fieldsAppPreviews: fieldsAppPreviews, fieldsAppPreviewSets: fieldsAppPreviewSets, fieldsAppStoreVersionLocalizations: fieldsAppStoreVersionLocalizations, limit: limit, limitAppPreviews: limitAppPreviews, include: include) { (response, error) in
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
 **filterPreviewType** | [**[String]**](String.md) | filter by attribute &#39;previewType&#39; | [optional] 
 **filterAppStoreVersionExperimentTreatmentLocalization** | [**[String]**](String.md) | filter by id(s) of related &#39;appStoreVersionExperimentTreatmentLocalization&#39; | [optional] 
 **filterAppStoreVersionLocalization** | [**[String]**](String.md) | filter by id(s) of related &#39;appStoreVersionLocalization&#39; | [optional] 
 **fieldsAppCustomProductPageLocalizations** | [**[String]**](String.md) | the fields to include for returned resources of type appCustomProductPageLocalizations | [optional] 
 **fieldsAppStoreVersionExperimentTreatmentLocalizations** | [**[String]**](String.md) | the fields to include for returned resources of type appStoreVersionExperimentTreatmentLocalizations | [optional] 
 **fieldsAppPreviews** | [**[String]**](String.md) | the fields to include for returned resources of type appPreviews | [optional] 
 **fieldsAppPreviewSets** | [**[String]**](String.md) | the fields to include for returned resources of type appPreviewSets | [optional] 
 **fieldsAppStoreVersionLocalizations** | [**[String]**](String.md) | the fields to include for returned resources of type appStoreVersionLocalizations | [optional] 
 **limit** | **Int** | maximum resources per page | [optional] 
 **limitAppPreviews** | **Int** | maximum number of related appPreviews returned (when they are included) | [optional] 
 **include** | [**[String]**](String.md) | comma-separated list of relationships to include | [optional] 

### Return type

[**AppPreviewSetsResponse**](AppPreviewSetsResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **appCustomProductPageLocalizationsAppScreenshotSetsGetToManyRelated**
```swift
    open class func appCustomProductPageLocalizationsAppScreenshotSetsGetToManyRelated(id: String, filterScreenshotDisplayType: [FilterScreenshotDisplayType_appCustomProductPageLocalizationsAppScreenshotSetsGetToManyRelated]? = nil, filterAppStoreVersionExperimentTreatmentLocalization: [String]? = nil, filterAppStoreVersionLocalization: [String]? = nil, fieldsAppScreenshotSets: [FieldsAppScreenshotSets_appCustomProductPageLocalizationsAppScreenshotSetsGetToManyRelated]? = nil, fieldsAppCustomProductPageLocalizations: [FieldsAppCustomProductPageLocalizations_appCustomProductPageLocalizationsAppScreenshotSetsGetToManyRelated]? = nil, fieldsAppStoreVersionExperimentTreatmentLocalizations: [FieldsAppStoreVersionExperimentTreatmentLocalizations_appCustomProductPageLocalizationsAppScreenshotSetsGetToManyRelated]? = nil, fieldsAppScreenshots: [FieldsAppScreenshots_appCustomProductPageLocalizationsAppScreenshotSetsGetToManyRelated]? = nil, fieldsAppStoreVersionLocalizations: [FieldsAppStoreVersionLocalizations_appCustomProductPageLocalizationsAppScreenshotSetsGetToManyRelated]? = nil, limit: Int? = nil, limitAppScreenshots: Int? = nil, include: [Include_appCustomProductPageLocalizationsAppScreenshotSetsGetToManyRelated]? = nil, completion: @escaping (_ data: AppScreenshotSetsResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let filterScreenshotDisplayType = ["filterScreenshotDisplayType_example"] // [String] | filter by attribute 'screenshotDisplayType' (optional)
let filterAppStoreVersionExperimentTreatmentLocalization = ["inner_example"] // [String] | filter by id(s) of related 'appStoreVersionExperimentTreatmentLocalization' (optional)
let filterAppStoreVersionLocalization = ["inner_example"] // [String] | filter by id(s) of related 'appStoreVersionLocalization' (optional)
let fieldsAppScreenshotSets = ["fieldsAppScreenshotSets_example"] // [String] | the fields to include for returned resources of type appScreenshotSets (optional)
let fieldsAppCustomProductPageLocalizations = ["fieldsAppCustomProductPageLocalizations_example"] // [String] | the fields to include for returned resources of type appCustomProductPageLocalizations (optional)
let fieldsAppStoreVersionExperimentTreatmentLocalizations = ["fieldsAppStoreVersionExperimentTreatmentLocalizations_example"] // [String] | the fields to include for returned resources of type appStoreVersionExperimentTreatmentLocalizations (optional)
let fieldsAppScreenshots = ["fieldsAppScreenshots_example"] // [String] | the fields to include for returned resources of type appScreenshots (optional)
let fieldsAppStoreVersionLocalizations = ["fieldsAppStoreVersionLocalizations_example"] // [String] | the fields to include for returned resources of type appStoreVersionLocalizations (optional)
let limit = 987 // Int | maximum resources per page (optional)
let limitAppScreenshots = 987 // Int | maximum number of related appScreenshots returned (when they are included) (optional)
let include = ["include_example"] // [String] | comma-separated list of relationships to include (optional)

AppCustomProductPageLocalizationsAPI.appCustomProductPageLocalizationsAppScreenshotSetsGetToManyRelated(id: id, filterScreenshotDisplayType: filterScreenshotDisplayType, filterAppStoreVersionExperimentTreatmentLocalization: filterAppStoreVersionExperimentTreatmentLocalization, filterAppStoreVersionLocalization: filterAppStoreVersionLocalization, fieldsAppScreenshotSets: fieldsAppScreenshotSets, fieldsAppCustomProductPageLocalizations: fieldsAppCustomProductPageLocalizations, fieldsAppStoreVersionExperimentTreatmentLocalizations: fieldsAppStoreVersionExperimentTreatmentLocalizations, fieldsAppScreenshots: fieldsAppScreenshots, fieldsAppStoreVersionLocalizations: fieldsAppStoreVersionLocalizations, limit: limit, limitAppScreenshots: limitAppScreenshots, include: include) { (response, error) in
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
 **filterScreenshotDisplayType** | [**[String]**](String.md) | filter by attribute &#39;screenshotDisplayType&#39; | [optional] 
 **filterAppStoreVersionExperimentTreatmentLocalization** | [**[String]**](String.md) | filter by id(s) of related &#39;appStoreVersionExperimentTreatmentLocalization&#39; | [optional] 
 **filterAppStoreVersionLocalization** | [**[String]**](String.md) | filter by id(s) of related &#39;appStoreVersionLocalization&#39; | [optional] 
 **fieldsAppScreenshotSets** | [**[String]**](String.md) | the fields to include for returned resources of type appScreenshotSets | [optional] 
 **fieldsAppCustomProductPageLocalizations** | [**[String]**](String.md) | the fields to include for returned resources of type appCustomProductPageLocalizations | [optional] 
 **fieldsAppStoreVersionExperimentTreatmentLocalizations** | [**[String]**](String.md) | the fields to include for returned resources of type appStoreVersionExperimentTreatmentLocalizations | [optional] 
 **fieldsAppScreenshots** | [**[String]**](String.md) | the fields to include for returned resources of type appScreenshots | [optional] 
 **fieldsAppStoreVersionLocalizations** | [**[String]**](String.md) | the fields to include for returned resources of type appStoreVersionLocalizations | [optional] 
 **limit** | **Int** | maximum resources per page | [optional] 
 **limitAppScreenshots** | **Int** | maximum number of related appScreenshots returned (when they are included) | [optional] 
 **include** | [**[String]**](String.md) | comma-separated list of relationships to include | [optional] 

### Return type

[**AppScreenshotSetsResponse**](AppScreenshotSetsResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **appCustomProductPageLocalizationsCreateInstance**
```swift
    open class func appCustomProductPageLocalizationsCreateInstance(appCustomProductPageLocalizationCreateRequest: AppCustomProductPageLocalizationCreateRequest, completion: @escaping (_ data: AppCustomProductPageLocalizationResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let appCustomProductPageLocalizationCreateRequest = AppCustomProductPageLocalizationCreateRequest(data: AppCustomProductPageLocalizationCreateRequest_data(type: "type_example", attributes: AppCustomProductPageLocalizationInlineCreate_attributes(locale: "locale_example", promotionalText: "promotionalText_example"), relationships: AppCustomProductPageLocalizationCreateRequest_data_relationships(appCustomProductPageVersion: AppCustomProductPageLocalizationCreateRequest_data_relationships_appCustomProductPageVersion(data: AppCustomProductPageLocalization_relationships_appCustomProductPageVersion_data(type: "type_example", id: "id_example"))))) // AppCustomProductPageLocalizationCreateRequest | AppCustomProductPageLocalization representation

AppCustomProductPageLocalizationsAPI.appCustomProductPageLocalizationsCreateInstance(appCustomProductPageLocalizationCreateRequest: appCustomProductPageLocalizationCreateRequest) { (response, error) in
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
 **appCustomProductPageLocalizationCreateRequest** | [**AppCustomProductPageLocalizationCreateRequest**](AppCustomProductPageLocalizationCreateRequest.md) | AppCustomProductPageLocalization representation | 

### Return type

[**AppCustomProductPageLocalizationResponse**](AppCustomProductPageLocalizationResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **appCustomProductPageLocalizationsDeleteInstance**
```swift
    open class func appCustomProductPageLocalizationsDeleteInstance(id: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource

AppCustomProductPageLocalizationsAPI.appCustomProductPageLocalizationsDeleteInstance(id: id) { (response, error) in
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

# **appCustomProductPageLocalizationsGetInstance**
```swift
    open class func appCustomProductPageLocalizationsGetInstance(id: String, fieldsAppCustomProductPageLocalizations: [FieldsAppCustomProductPageLocalizations_appCustomProductPageLocalizationsGetInstance]? = nil, include: [Include_appCustomProductPageLocalizationsGetInstance]? = nil, fieldsAppScreenshotSets: [FieldsAppScreenshotSets_appCustomProductPageLocalizationsGetInstance]? = nil, fieldsAppPreviewSets: [FieldsAppPreviewSets_appCustomProductPageLocalizationsGetInstance]? = nil, limitAppPreviewSets: Int? = nil, limitAppScreenshotSets: Int? = nil, completion: @escaping (_ data: AppCustomProductPageLocalizationResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let fieldsAppCustomProductPageLocalizations = ["fieldsAppCustomProductPageLocalizations_example"] // [String] | the fields to include for returned resources of type appCustomProductPageLocalizations (optional)
let include = ["include_example"] // [String] | comma-separated list of relationships to include (optional)
let fieldsAppScreenshotSets = ["fieldsAppScreenshotSets_example"] // [String] | the fields to include for returned resources of type appScreenshotSets (optional)
let fieldsAppPreviewSets = ["fieldsAppPreviewSets_example"] // [String] | the fields to include for returned resources of type appPreviewSets (optional)
let limitAppPreviewSets = 987 // Int | maximum number of related appPreviewSets returned (when they are included) (optional)
let limitAppScreenshotSets = 987 // Int | maximum number of related appScreenshotSets returned (when they are included) (optional)

AppCustomProductPageLocalizationsAPI.appCustomProductPageLocalizationsGetInstance(id: id, fieldsAppCustomProductPageLocalizations: fieldsAppCustomProductPageLocalizations, include: include, fieldsAppScreenshotSets: fieldsAppScreenshotSets, fieldsAppPreviewSets: fieldsAppPreviewSets, limitAppPreviewSets: limitAppPreviewSets, limitAppScreenshotSets: limitAppScreenshotSets) { (response, error) in
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
 **fieldsAppCustomProductPageLocalizations** | [**[String]**](String.md) | the fields to include for returned resources of type appCustomProductPageLocalizations | [optional] 
 **include** | [**[String]**](String.md) | comma-separated list of relationships to include | [optional] 
 **fieldsAppScreenshotSets** | [**[String]**](String.md) | the fields to include for returned resources of type appScreenshotSets | [optional] 
 **fieldsAppPreviewSets** | [**[String]**](String.md) | the fields to include for returned resources of type appPreviewSets | [optional] 
 **limitAppPreviewSets** | **Int** | maximum number of related appPreviewSets returned (when they are included) | [optional] 
 **limitAppScreenshotSets** | **Int** | maximum number of related appScreenshotSets returned (when they are included) | [optional] 

### Return type

[**AppCustomProductPageLocalizationResponse**](AppCustomProductPageLocalizationResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **appCustomProductPageLocalizationsUpdateInstance**
```swift
    open class func appCustomProductPageLocalizationsUpdateInstance(id: String, appCustomProductPageLocalizationUpdateRequest: AppCustomProductPageLocalizationUpdateRequest, completion: @escaping (_ data: AppCustomProductPageLocalizationResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let appCustomProductPageLocalizationUpdateRequest = AppCustomProductPageLocalizationUpdateRequest(data: AppCustomProductPageLocalizationUpdateRequest_data(type: "type_example", id: "id_example", attributes: AppCustomProductPageLocalizationUpdateRequest_data_attributes(promotionalText: "promotionalText_example"))) // AppCustomProductPageLocalizationUpdateRequest | AppCustomProductPageLocalization representation

AppCustomProductPageLocalizationsAPI.appCustomProductPageLocalizationsUpdateInstance(id: id, appCustomProductPageLocalizationUpdateRequest: appCustomProductPageLocalizationUpdateRequest) { (response, error) in
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
 **appCustomProductPageLocalizationUpdateRequest** | [**AppCustomProductPageLocalizationUpdateRequest**](AppCustomProductPageLocalizationUpdateRequest.md) | AppCustomProductPageLocalization representation | 

### Return type

[**AppCustomProductPageLocalizationResponse**](AppCustomProductPageLocalizationResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

