# AppStoreVersionLocalizationsAPI

All URIs are relative to *https://api.appstoreconnect.apple.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**appStoreVersionLocalizationsAppPreviewSetsGetToManyRelated**](AppStoreVersionLocalizationsAPI.md#appstoreversionlocalizationsapppreviewsetsgettomanyrelated) | **GET** /v1/appStoreVersionLocalizations/{id}/appPreviewSets | 
[**appStoreVersionLocalizationsAppScreenshotSetsGetToManyRelated**](AppStoreVersionLocalizationsAPI.md#appstoreversionlocalizationsappscreenshotsetsgettomanyrelated) | **GET** /v1/appStoreVersionLocalizations/{id}/appScreenshotSets | 
[**appStoreVersionLocalizationsCreateInstance**](AppStoreVersionLocalizationsAPI.md#appstoreversionlocalizationscreateinstance) | **POST** /v1/appStoreVersionLocalizations | 
[**appStoreVersionLocalizationsDeleteInstance**](AppStoreVersionLocalizationsAPI.md#appstoreversionlocalizationsdeleteinstance) | **DELETE** /v1/appStoreVersionLocalizations/{id} | 
[**appStoreVersionLocalizationsGetInstance**](AppStoreVersionLocalizationsAPI.md#appstoreversionlocalizationsgetinstance) | **GET** /v1/appStoreVersionLocalizations/{id} | 
[**appStoreVersionLocalizationsUpdateInstance**](AppStoreVersionLocalizationsAPI.md#appstoreversionlocalizationsupdateinstance) | **PATCH** /v1/appStoreVersionLocalizations/{id} | 


# **appStoreVersionLocalizationsAppPreviewSetsGetToManyRelated**
```swift
    open class func appStoreVersionLocalizationsAppPreviewSetsGetToManyRelated(id: String, filterPreviewType: [FilterPreviewType_appStoreVersionLocalizationsAppPreviewSetsGetToManyRelated]? = nil, filterAppCustomProductPageLocalization: [String]? = nil, filterAppStoreVersionExperimentTreatmentLocalization: [String]? = nil, fieldsAppCustomProductPageLocalizations: [FieldsAppCustomProductPageLocalizations_appStoreVersionLocalizationsAppPreviewSetsGetToManyRelated]? = nil, fieldsAppStoreVersionExperimentTreatmentLocalizations: [FieldsAppStoreVersionExperimentTreatmentLocalizations_appStoreVersionLocalizationsAppPreviewSetsGetToManyRelated]? = nil, fieldsAppPreviews: [FieldsAppPreviews_appStoreVersionLocalizationsAppPreviewSetsGetToManyRelated]? = nil, fieldsAppPreviewSets: [FieldsAppPreviewSets_appStoreVersionLocalizationsAppPreviewSetsGetToManyRelated]? = nil, fieldsAppStoreVersionLocalizations: [FieldsAppStoreVersionLocalizations_appStoreVersionLocalizationsAppPreviewSetsGetToManyRelated]? = nil, limit: Int? = nil, limitAppPreviews: Int? = nil, include: [Include_appStoreVersionLocalizationsAppPreviewSetsGetToManyRelated]? = nil, completion: @escaping (_ data: AppPreviewSetsResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let filterPreviewType = ["filterPreviewType_example"] // [String] | filter by attribute 'previewType' (optional)
let filterAppCustomProductPageLocalization = ["inner_example"] // [String] | filter by id(s) of related 'appCustomProductPageLocalization' (optional)
let filterAppStoreVersionExperimentTreatmentLocalization = ["inner_example"] // [String] | filter by id(s) of related 'appStoreVersionExperimentTreatmentLocalization' (optional)
let fieldsAppCustomProductPageLocalizations = ["fieldsAppCustomProductPageLocalizations_example"] // [String] | the fields to include for returned resources of type appCustomProductPageLocalizations (optional)
let fieldsAppStoreVersionExperimentTreatmentLocalizations = ["fieldsAppStoreVersionExperimentTreatmentLocalizations_example"] // [String] | the fields to include for returned resources of type appStoreVersionExperimentTreatmentLocalizations (optional)
let fieldsAppPreviews = ["fieldsAppPreviews_example"] // [String] | the fields to include for returned resources of type appPreviews (optional)
let fieldsAppPreviewSets = ["fieldsAppPreviewSets_example"] // [String] | the fields to include for returned resources of type appPreviewSets (optional)
let fieldsAppStoreVersionLocalizations = ["fieldsAppStoreVersionLocalizations_example"] // [String] | the fields to include for returned resources of type appStoreVersionLocalizations (optional)
let limit = 987 // Int | maximum resources per page (optional)
let limitAppPreviews = 987 // Int | maximum number of related appPreviews returned (when they are included) (optional)
let include = ["include_example"] // [String] | comma-separated list of relationships to include (optional)

AppStoreVersionLocalizationsAPI.appStoreVersionLocalizationsAppPreviewSetsGetToManyRelated(id: id, filterPreviewType: filterPreviewType, filterAppCustomProductPageLocalization: filterAppCustomProductPageLocalization, filterAppStoreVersionExperimentTreatmentLocalization: filterAppStoreVersionExperimentTreatmentLocalization, fieldsAppCustomProductPageLocalizations: fieldsAppCustomProductPageLocalizations, fieldsAppStoreVersionExperimentTreatmentLocalizations: fieldsAppStoreVersionExperimentTreatmentLocalizations, fieldsAppPreviews: fieldsAppPreviews, fieldsAppPreviewSets: fieldsAppPreviewSets, fieldsAppStoreVersionLocalizations: fieldsAppStoreVersionLocalizations, limit: limit, limitAppPreviews: limitAppPreviews, include: include) { (response, error) in
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
 **filterAppCustomProductPageLocalization** | [**[String]**](String.md) | filter by id(s) of related &#39;appCustomProductPageLocalization&#39; | [optional] 
 **filterAppStoreVersionExperimentTreatmentLocalization** | [**[String]**](String.md) | filter by id(s) of related &#39;appStoreVersionExperimentTreatmentLocalization&#39; | [optional] 
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

# **appStoreVersionLocalizationsAppScreenshotSetsGetToManyRelated**
```swift
    open class func appStoreVersionLocalizationsAppScreenshotSetsGetToManyRelated(id: String, filterScreenshotDisplayType: [FilterScreenshotDisplayType_appStoreVersionLocalizationsAppScreenshotSetsGetToManyRelated]? = nil, filterAppCustomProductPageLocalization: [String]? = nil, filterAppStoreVersionExperimentTreatmentLocalization: [String]? = nil, fieldsAppScreenshotSets: [FieldsAppScreenshotSets_appStoreVersionLocalizationsAppScreenshotSetsGetToManyRelated]? = nil, fieldsAppCustomProductPageLocalizations: [FieldsAppCustomProductPageLocalizations_appStoreVersionLocalizationsAppScreenshotSetsGetToManyRelated]? = nil, fieldsAppStoreVersionExperimentTreatmentLocalizations: [FieldsAppStoreVersionExperimentTreatmentLocalizations_appStoreVersionLocalizationsAppScreenshotSetsGetToManyRelated]? = nil, fieldsAppScreenshots: [FieldsAppScreenshots_appStoreVersionLocalizationsAppScreenshotSetsGetToManyRelated]? = nil, fieldsAppStoreVersionLocalizations: [FieldsAppStoreVersionLocalizations_appStoreVersionLocalizationsAppScreenshotSetsGetToManyRelated]? = nil, limit: Int? = nil, limitAppScreenshots: Int? = nil, include: [Include_appStoreVersionLocalizationsAppScreenshotSetsGetToManyRelated]? = nil, completion: @escaping (_ data: AppScreenshotSetsResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let filterScreenshotDisplayType = ["filterScreenshotDisplayType_example"] // [String] | filter by attribute 'screenshotDisplayType' (optional)
let filterAppCustomProductPageLocalization = ["inner_example"] // [String] | filter by id(s) of related 'appCustomProductPageLocalization' (optional)
let filterAppStoreVersionExperimentTreatmentLocalization = ["inner_example"] // [String] | filter by id(s) of related 'appStoreVersionExperimentTreatmentLocalization' (optional)
let fieldsAppScreenshotSets = ["fieldsAppScreenshotSets_example"] // [String] | the fields to include for returned resources of type appScreenshotSets (optional)
let fieldsAppCustomProductPageLocalizations = ["fieldsAppCustomProductPageLocalizations_example"] // [String] | the fields to include for returned resources of type appCustomProductPageLocalizations (optional)
let fieldsAppStoreVersionExperimentTreatmentLocalizations = ["fieldsAppStoreVersionExperimentTreatmentLocalizations_example"] // [String] | the fields to include for returned resources of type appStoreVersionExperimentTreatmentLocalizations (optional)
let fieldsAppScreenshots = ["fieldsAppScreenshots_example"] // [String] | the fields to include for returned resources of type appScreenshots (optional)
let fieldsAppStoreVersionLocalizations = ["fieldsAppStoreVersionLocalizations_example"] // [String] | the fields to include for returned resources of type appStoreVersionLocalizations (optional)
let limit = 987 // Int | maximum resources per page (optional)
let limitAppScreenshots = 987 // Int | maximum number of related appScreenshots returned (when they are included) (optional)
let include = ["include_example"] // [String] | comma-separated list of relationships to include (optional)

AppStoreVersionLocalizationsAPI.appStoreVersionLocalizationsAppScreenshotSetsGetToManyRelated(id: id, filterScreenshotDisplayType: filterScreenshotDisplayType, filterAppCustomProductPageLocalization: filterAppCustomProductPageLocalization, filterAppStoreVersionExperimentTreatmentLocalization: filterAppStoreVersionExperimentTreatmentLocalization, fieldsAppScreenshotSets: fieldsAppScreenshotSets, fieldsAppCustomProductPageLocalizations: fieldsAppCustomProductPageLocalizations, fieldsAppStoreVersionExperimentTreatmentLocalizations: fieldsAppStoreVersionExperimentTreatmentLocalizations, fieldsAppScreenshots: fieldsAppScreenshots, fieldsAppStoreVersionLocalizations: fieldsAppStoreVersionLocalizations, limit: limit, limitAppScreenshots: limitAppScreenshots, include: include) { (response, error) in
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
 **filterAppCustomProductPageLocalization** | [**[String]**](String.md) | filter by id(s) of related &#39;appCustomProductPageLocalization&#39; | [optional] 
 **filterAppStoreVersionExperimentTreatmentLocalization** | [**[String]**](String.md) | filter by id(s) of related &#39;appStoreVersionExperimentTreatmentLocalization&#39; | [optional] 
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

# **appStoreVersionLocalizationsCreateInstance**
```swift
    open class func appStoreVersionLocalizationsCreateInstance(appStoreVersionLocalizationCreateRequest: AppStoreVersionLocalizationCreateRequest, completion: @escaping (_ data: AppStoreVersionLocalizationResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let appStoreVersionLocalizationCreateRequest = AppStoreVersionLocalizationCreateRequest(data: AppStoreVersionLocalizationCreateRequest_data(type: "type_example", attributes: AppStoreVersionLocalizationCreateRequest_data_attributes(description: "description_example", locale: "locale_example", keywords: "keywords_example", marketingUrl: "marketingUrl_example", promotionalText: "promotionalText_example", supportUrl: "supportUrl_example", whatsNew: "whatsNew_example"), relationships: AlternativeDistributionPackageCreateRequest_data_relationships(appStoreVersion: AlternativeDistributionPackageCreateRequest_data_relationships_appStoreVersion(data: AlternativeDistributionPackageCreateRequest_data_relationships_appStoreVersion_data(type: "type_example", id: "id_example"))))) // AppStoreVersionLocalizationCreateRequest | AppStoreVersionLocalization representation

AppStoreVersionLocalizationsAPI.appStoreVersionLocalizationsCreateInstance(appStoreVersionLocalizationCreateRequest: appStoreVersionLocalizationCreateRequest) { (response, error) in
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
 **appStoreVersionLocalizationCreateRequest** | [**AppStoreVersionLocalizationCreateRequest**](AppStoreVersionLocalizationCreateRequest.md) | AppStoreVersionLocalization representation | 

### Return type

[**AppStoreVersionLocalizationResponse**](AppStoreVersionLocalizationResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **appStoreVersionLocalizationsDeleteInstance**
```swift
    open class func appStoreVersionLocalizationsDeleteInstance(id: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource

AppStoreVersionLocalizationsAPI.appStoreVersionLocalizationsDeleteInstance(id: id) { (response, error) in
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

# **appStoreVersionLocalizationsGetInstance**
```swift
    open class func appStoreVersionLocalizationsGetInstance(id: String, fieldsAppStoreVersionLocalizations: [FieldsAppStoreVersionLocalizations_appStoreVersionLocalizationsGetInstance]? = nil, include: [Include_appStoreVersionLocalizationsGetInstance]? = nil, fieldsAppScreenshotSets: [FieldsAppScreenshotSets_appStoreVersionLocalizationsGetInstance]? = nil, fieldsAppPreviewSets: [FieldsAppPreviewSets_appStoreVersionLocalizationsGetInstance]? = nil, limitAppPreviewSets: Int? = nil, limitAppScreenshotSets: Int? = nil, completion: @escaping (_ data: AppStoreVersionLocalizationResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let fieldsAppStoreVersionLocalizations = ["fieldsAppStoreVersionLocalizations_example"] // [String] | the fields to include for returned resources of type appStoreVersionLocalizations (optional)
let include = ["include_example"] // [String] | comma-separated list of relationships to include (optional)
let fieldsAppScreenshotSets = ["fieldsAppScreenshotSets_example"] // [String] | the fields to include for returned resources of type appScreenshotSets (optional)
let fieldsAppPreviewSets = ["fieldsAppPreviewSets_example"] // [String] | the fields to include for returned resources of type appPreviewSets (optional)
let limitAppPreviewSets = 987 // Int | maximum number of related appPreviewSets returned (when they are included) (optional)
let limitAppScreenshotSets = 987 // Int | maximum number of related appScreenshotSets returned (when they are included) (optional)

AppStoreVersionLocalizationsAPI.appStoreVersionLocalizationsGetInstance(id: id, fieldsAppStoreVersionLocalizations: fieldsAppStoreVersionLocalizations, include: include, fieldsAppScreenshotSets: fieldsAppScreenshotSets, fieldsAppPreviewSets: fieldsAppPreviewSets, limitAppPreviewSets: limitAppPreviewSets, limitAppScreenshotSets: limitAppScreenshotSets) { (response, error) in
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
 **fieldsAppStoreVersionLocalizations** | [**[String]**](String.md) | the fields to include for returned resources of type appStoreVersionLocalizations | [optional] 
 **include** | [**[String]**](String.md) | comma-separated list of relationships to include | [optional] 
 **fieldsAppScreenshotSets** | [**[String]**](String.md) | the fields to include for returned resources of type appScreenshotSets | [optional] 
 **fieldsAppPreviewSets** | [**[String]**](String.md) | the fields to include for returned resources of type appPreviewSets | [optional] 
 **limitAppPreviewSets** | **Int** | maximum number of related appPreviewSets returned (when they are included) | [optional] 
 **limitAppScreenshotSets** | **Int** | maximum number of related appScreenshotSets returned (when they are included) | [optional] 

### Return type

[**AppStoreVersionLocalizationResponse**](AppStoreVersionLocalizationResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **appStoreVersionLocalizationsUpdateInstance**
```swift
    open class func appStoreVersionLocalizationsUpdateInstance(id: String, appStoreVersionLocalizationUpdateRequest: AppStoreVersionLocalizationUpdateRequest, completion: @escaping (_ data: AppStoreVersionLocalizationResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let appStoreVersionLocalizationUpdateRequest = AppStoreVersionLocalizationUpdateRequest(data: AppStoreVersionLocalizationUpdateRequest_data(type: "type_example", id: "id_example", attributes: AppStoreVersionLocalizationUpdateRequest_data_attributes(description: "description_example", keywords: "keywords_example", marketingUrl: "marketingUrl_example", promotionalText: "promotionalText_example", supportUrl: "supportUrl_example", whatsNew: "whatsNew_example"))) // AppStoreVersionLocalizationUpdateRequest | AppStoreVersionLocalization representation

AppStoreVersionLocalizationsAPI.appStoreVersionLocalizationsUpdateInstance(id: id, appStoreVersionLocalizationUpdateRequest: appStoreVersionLocalizationUpdateRequest) { (response, error) in
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
 **appStoreVersionLocalizationUpdateRequest** | [**AppStoreVersionLocalizationUpdateRequest**](AppStoreVersionLocalizationUpdateRequest.md) | AppStoreVersionLocalization representation | 

### Return type

[**AppStoreVersionLocalizationResponse**](AppStoreVersionLocalizationResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

