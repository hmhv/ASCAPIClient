# AppStoreVersionExperimentTreatmentLocalizationsAPI

All URIs are relative to *https://api.appstoreconnect.apple.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**appStoreVersionExperimentTreatmentLocalizationsAppPreviewSetsGetToManyRelated**](AppStoreVersionExperimentTreatmentLocalizationsAPI.md#appstoreversionexperimenttreatmentlocalizationsapppreviewsetsgettomanyrelated) | **GET** /v1/appStoreVersionExperimentTreatmentLocalizations/{id}/appPreviewSets | 
[**appStoreVersionExperimentTreatmentLocalizationsAppScreenshotSetsGetToManyRelated**](AppStoreVersionExperimentTreatmentLocalizationsAPI.md#appstoreversionexperimenttreatmentlocalizationsappscreenshotsetsgettomanyrelated) | **GET** /v1/appStoreVersionExperimentTreatmentLocalizations/{id}/appScreenshotSets | 
[**appStoreVersionExperimentTreatmentLocalizationsCreateInstance**](AppStoreVersionExperimentTreatmentLocalizationsAPI.md#appstoreversionexperimenttreatmentlocalizationscreateinstance) | **POST** /v1/appStoreVersionExperimentTreatmentLocalizations | 
[**appStoreVersionExperimentTreatmentLocalizationsDeleteInstance**](AppStoreVersionExperimentTreatmentLocalizationsAPI.md#appstoreversionexperimenttreatmentlocalizationsdeleteinstance) | **DELETE** /v1/appStoreVersionExperimentTreatmentLocalizations/{id} | 
[**appStoreVersionExperimentTreatmentLocalizationsGetInstance**](AppStoreVersionExperimentTreatmentLocalizationsAPI.md#appstoreversionexperimenttreatmentlocalizationsgetinstance) | **GET** /v1/appStoreVersionExperimentTreatmentLocalizations/{id} | 


# **appStoreVersionExperimentTreatmentLocalizationsAppPreviewSetsGetToManyRelated**
```swift
    open class func appStoreVersionExperimentTreatmentLocalizationsAppPreviewSetsGetToManyRelated(id: String, filterPreviewType: [FilterPreviewType_appStoreVersionExperimentTreatmentLocalizationsAppPreviewSetsGetToManyRelated]? = nil, filterAppStoreVersionLocalization: [String]? = nil, filterAppCustomProductPageLocalization: [String]? = nil, fieldsAppPreviewSets: [FieldsAppPreviewSets_appStoreVersionExperimentTreatmentLocalizationsAppPreviewSetsGetToManyRelated]? = nil, fieldsAppStoreVersionLocalizations: [FieldsAppStoreVersionLocalizations_appStoreVersionExperimentTreatmentLocalizationsAppPreviewSetsGetToManyRelated]? = nil, fieldsAppCustomProductPageLocalizations: [FieldsAppCustomProductPageLocalizations_appStoreVersionExperimentTreatmentLocalizationsAppPreviewSetsGetToManyRelated]? = nil, fieldsAppStoreVersionExperimentTreatmentLocalizations: [FieldsAppStoreVersionExperimentTreatmentLocalizations_appStoreVersionExperimentTreatmentLocalizationsAppPreviewSetsGetToManyRelated]? = nil, fieldsAppPreviews: [FieldsAppPreviews_appStoreVersionExperimentTreatmentLocalizationsAppPreviewSetsGetToManyRelated]? = nil, limit: Int? = nil, include: [Include_appStoreVersionExperimentTreatmentLocalizationsAppPreviewSetsGetToManyRelated]? = nil, limitAppPreviews: Int? = nil, completion: @escaping (_ data: AppPreviewSetsResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let filterPreviewType = ["filterPreviewType_example"] // [String] | filter by attribute 'previewType' (optional)
let filterAppStoreVersionLocalization = ["inner_example"] // [String] | filter by id(s) of related 'appStoreVersionLocalization' (optional)
let filterAppCustomProductPageLocalization = ["inner_example"] // [String] | filter by id(s) of related 'appCustomProductPageLocalization' (optional)
let fieldsAppPreviewSets = ["fieldsAppPreviewSets_example"] // [String] | the fields to include for returned resources of type appPreviewSets (optional)
let fieldsAppStoreVersionLocalizations = ["fieldsAppStoreVersionLocalizations_example"] // [String] | the fields to include for returned resources of type appStoreVersionLocalizations (optional)
let fieldsAppCustomProductPageLocalizations = ["fieldsAppCustomProductPageLocalizations_example"] // [String] | the fields to include for returned resources of type appCustomProductPageLocalizations (optional)
let fieldsAppStoreVersionExperimentTreatmentLocalizations = ["fieldsAppStoreVersionExperimentTreatmentLocalizations_example"] // [String] | the fields to include for returned resources of type appStoreVersionExperimentTreatmentLocalizations (optional)
let fieldsAppPreviews = ["fieldsAppPreviews_example"] // [String] | the fields to include for returned resources of type appPreviews (optional)
let limit = 987 // Int | maximum resources per page (optional)
let include = ["include_example"] // [String] | comma-separated list of relationships to include (optional)
let limitAppPreviews = 987 // Int | maximum number of related appPreviews returned (when they are included) (optional)

AppStoreVersionExperimentTreatmentLocalizationsAPI.appStoreVersionExperimentTreatmentLocalizationsAppPreviewSetsGetToManyRelated(id: id, filterPreviewType: filterPreviewType, filterAppStoreVersionLocalization: filterAppStoreVersionLocalization, filterAppCustomProductPageLocalization: filterAppCustomProductPageLocalization, fieldsAppPreviewSets: fieldsAppPreviewSets, fieldsAppStoreVersionLocalizations: fieldsAppStoreVersionLocalizations, fieldsAppCustomProductPageLocalizations: fieldsAppCustomProductPageLocalizations, fieldsAppStoreVersionExperimentTreatmentLocalizations: fieldsAppStoreVersionExperimentTreatmentLocalizations, fieldsAppPreviews: fieldsAppPreviews, limit: limit, include: include, limitAppPreviews: limitAppPreviews) { (response, error) in
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
 **filterAppStoreVersionLocalization** | [**[String]**](String.md) | filter by id(s) of related &#39;appStoreVersionLocalization&#39; | [optional] 
 **filterAppCustomProductPageLocalization** | [**[String]**](String.md) | filter by id(s) of related &#39;appCustomProductPageLocalization&#39; | [optional] 
 **fieldsAppPreviewSets** | [**[String]**](String.md) | the fields to include for returned resources of type appPreviewSets | [optional] 
 **fieldsAppStoreVersionLocalizations** | [**[String]**](String.md) | the fields to include for returned resources of type appStoreVersionLocalizations | [optional] 
 **fieldsAppCustomProductPageLocalizations** | [**[String]**](String.md) | the fields to include for returned resources of type appCustomProductPageLocalizations | [optional] 
 **fieldsAppStoreVersionExperimentTreatmentLocalizations** | [**[String]**](String.md) | the fields to include for returned resources of type appStoreVersionExperimentTreatmentLocalizations | [optional] 
 **fieldsAppPreviews** | [**[String]**](String.md) | the fields to include for returned resources of type appPreviews | [optional] 
 **limit** | **Int** | maximum resources per page | [optional] 
 **include** | [**[String]**](String.md) | comma-separated list of relationships to include | [optional] 
 **limitAppPreviews** | **Int** | maximum number of related appPreviews returned (when they are included) | [optional] 

### Return type

[**AppPreviewSetsResponse**](AppPreviewSetsResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **appStoreVersionExperimentTreatmentLocalizationsAppScreenshotSetsGetToManyRelated**
```swift
    open class func appStoreVersionExperimentTreatmentLocalizationsAppScreenshotSetsGetToManyRelated(id: String, filterScreenshotDisplayType: [FilterScreenshotDisplayType_appStoreVersionExperimentTreatmentLocalizationsAppScreenshotSetsGetToManyRelated]? = nil, filterAppStoreVersionLocalization: [String]? = nil, filterAppCustomProductPageLocalization: [String]? = nil, fieldsAppScreenshotSets: [FieldsAppScreenshotSets_appStoreVersionExperimentTreatmentLocalizationsAppScreenshotSetsGetToManyRelated]? = nil, fieldsAppStoreVersionLocalizations: [FieldsAppStoreVersionLocalizations_appStoreVersionExperimentTreatmentLocalizationsAppScreenshotSetsGetToManyRelated]? = nil, fieldsAppCustomProductPageLocalizations: [FieldsAppCustomProductPageLocalizations_appStoreVersionExperimentTreatmentLocalizationsAppScreenshotSetsGetToManyRelated]? = nil, fieldsAppStoreVersionExperimentTreatmentLocalizations: [FieldsAppStoreVersionExperimentTreatmentLocalizations_appStoreVersionExperimentTreatmentLocalizationsAppScreenshotSetsGetToManyRelated]? = nil, fieldsAppScreenshots: [FieldsAppScreenshots_appStoreVersionExperimentTreatmentLocalizationsAppScreenshotSetsGetToManyRelated]? = nil, limit: Int? = nil, include: [Include_appStoreVersionExperimentTreatmentLocalizationsAppScreenshotSetsGetToManyRelated]? = nil, limitAppScreenshots: Int? = nil, completion: @escaping (_ data: AppScreenshotSetsResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let filterScreenshotDisplayType = ["filterScreenshotDisplayType_example"] // [String] | filter by attribute 'screenshotDisplayType' (optional)
let filterAppStoreVersionLocalization = ["inner_example"] // [String] | filter by id(s) of related 'appStoreVersionLocalization' (optional)
let filterAppCustomProductPageLocalization = ["inner_example"] // [String] | filter by id(s) of related 'appCustomProductPageLocalization' (optional)
let fieldsAppScreenshotSets = ["fieldsAppScreenshotSets_example"] // [String] | the fields to include for returned resources of type appScreenshotSets (optional)
let fieldsAppStoreVersionLocalizations = ["fieldsAppStoreVersionLocalizations_example"] // [String] | the fields to include for returned resources of type appStoreVersionLocalizations (optional)
let fieldsAppCustomProductPageLocalizations = ["fieldsAppCustomProductPageLocalizations_example"] // [String] | the fields to include for returned resources of type appCustomProductPageLocalizations (optional)
let fieldsAppStoreVersionExperimentTreatmentLocalizations = ["fieldsAppStoreVersionExperimentTreatmentLocalizations_example"] // [String] | the fields to include for returned resources of type appStoreVersionExperimentTreatmentLocalizations (optional)
let fieldsAppScreenshots = ["fieldsAppScreenshots_example"] // [String] | the fields to include for returned resources of type appScreenshots (optional)
let limit = 987 // Int | maximum resources per page (optional)
let include = ["include_example"] // [String] | comma-separated list of relationships to include (optional)
let limitAppScreenshots = 987 // Int | maximum number of related appScreenshots returned (when they are included) (optional)

AppStoreVersionExperimentTreatmentLocalizationsAPI.appStoreVersionExperimentTreatmentLocalizationsAppScreenshotSetsGetToManyRelated(id: id, filterScreenshotDisplayType: filterScreenshotDisplayType, filterAppStoreVersionLocalization: filterAppStoreVersionLocalization, filterAppCustomProductPageLocalization: filterAppCustomProductPageLocalization, fieldsAppScreenshotSets: fieldsAppScreenshotSets, fieldsAppStoreVersionLocalizations: fieldsAppStoreVersionLocalizations, fieldsAppCustomProductPageLocalizations: fieldsAppCustomProductPageLocalizations, fieldsAppStoreVersionExperimentTreatmentLocalizations: fieldsAppStoreVersionExperimentTreatmentLocalizations, fieldsAppScreenshots: fieldsAppScreenshots, limit: limit, include: include, limitAppScreenshots: limitAppScreenshots) { (response, error) in
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
 **filterAppStoreVersionLocalization** | [**[String]**](String.md) | filter by id(s) of related &#39;appStoreVersionLocalization&#39; | [optional] 
 **filterAppCustomProductPageLocalization** | [**[String]**](String.md) | filter by id(s) of related &#39;appCustomProductPageLocalization&#39; | [optional] 
 **fieldsAppScreenshotSets** | [**[String]**](String.md) | the fields to include for returned resources of type appScreenshotSets | [optional] 
 **fieldsAppStoreVersionLocalizations** | [**[String]**](String.md) | the fields to include for returned resources of type appStoreVersionLocalizations | [optional] 
 **fieldsAppCustomProductPageLocalizations** | [**[String]**](String.md) | the fields to include for returned resources of type appCustomProductPageLocalizations | [optional] 
 **fieldsAppStoreVersionExperimentTreatmentLocalizations** | [**[String]**](String.md) | the fields to include for returned resources of type appStoreVersionExperimentTreatmentLocalizations | [optional] 
 **fieldsAppScreenshots** | [**[String]**](String.md) | the fields to include for returned resources of type appScreenshots | [optional] 
 **limit** | **Int** | maximum resources per page | [optional] 
 **include** | [**[String]**](String.md) | comma-separated list of relationships to include | [optional] 
 **limitAppScreenshots** | **Int** | maximum number of related appScreenshots returned (when they are included) | [optional] 

### Return type

[**AppScreenshotSetsResponse**](AppScreenshotSetsResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **appStoreVersionExperimentTreatmentLocalizationsCreateInstance**
```swift
    open class func appStoreVersionExperimentTreatmentLocalizationsCreateInstance(appStoreVersionExperimentTreatmentLocalizationCreateRequest: AppStoreVersionExperimentTreatmentLocalizationCreateRequest, completion: @escaping (_ data: AppStoreVersionExperimentTreatmentLocalizationResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let appStoreVersionExperimentTreatmentLocalizationCreateRequest = AppStoreVersionExperimentTreatmentLocalizationCreateRequest(data: AppStoreVersionExperimentTreatmentLocalizationCreateRequest_data(type: "type_example", attributes: AppStoreVersionExperimentTreatmentLocalizationCreateRequest_data_attributes(locale: "locale_example"), relationships: AppStoreVersionExperimentTreatmentLocalizationCreateRequest_data_relationships(appStoreVersionExperimentTreatment: AppStoreVersionExperimentTreatmentLocalizationCreateRequest_data_relationships_appStoreVersionExperimentTreatment(data: AppStoreVersionExperimentTreatmentLocalization_relationships_appStoreVersionExperimentTreatment_data(type: "type_example", id: "id_example"))))) // AppStoreVersionExperimentTreatmentLocalizationCreateRequest | AppStoreVersionExperimentTreatmentLocalization representation

AppStoreVersionExperimentTreatmentLocalizationsAPI.appStoreVersionExperimentTreatmentLocalizationsCreateInstance(appStoreVersionExperimentTreatmentLocalizationCreateRequest: appStoreVersionExperimentTreatmentLocalizationCreateRequest) { (response, error) in
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
 **appStoreVersionExperimentTreatmentLocalizationCreateRequest** | [**AppStoreVersionExperimentTreatmentLocalizationCreateRequest**](AppStoreVersionExperimentTreatmentLocalizationCreateRequest.md) | AppStoreVersionExperimentTreatmentLocalization representation | 

### Return type

[**AppStoreVersionExperimentTreatmentLocalizationResponse**](AppStoreVersionExperimentTreatmentLocalizationResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **appStoreVersionExperimentTreatmentLocalizationsDeleteInstance**
```swift
    open class func appStoreVersionExperimentTreatmentLocalizationsDeleteInstance(id: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource

AppStoreVersionExperimentTreatmentLocalizationsAPI.appStoreVersionExperimentTreatmentLocalizationsDeleteInstance(id: id) { (response, error) in
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

# **appStoreVersionExperimentTreatmentLocalizationsGetInstance**
```swift
    open class func appStoreVersionExperimentTreatmentLocalizationsGetInstance(id: String, fieldsAppStoreVersionExperimentTreatmentLocalizations: [FieldsAppStoreVersionExperimentTreatmentLocalizations_appStoreVersionExperimentTreatmentLocalizationsGetInstance]? = nil, fieldsAppScreenshotSets: [FieldsAppScreenshotSets_appStoreVersionExperimentTreatmentLocalizationsGetInstance]? = nil, fieldsAppPreviewSets: [FieldsAppPreviewSets_appStoreVersionExperimentTreatmentLocalizationsGetInstance]? = nil, include: [Include_appStoreVersionExperimentTreatmentLocalizationsGetInstance]? = nil, limitAppPreviewSets: Int? = nil, limitAppScreenshotSets: Int? = nil, completion: @escaping (_ data: AppStoreVersionExperimentTreatmentLocalizationResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let fieldsAppStoreVersionExperimentTreatmentLocalizations = ["fieldsAppStoreVersionExperimentTreatmentLocalizations_example"] // [String] | the fields to include for returned resources of type appStoreVersionExperimentTreatmentLocalizations (optional)
let fieldsAppScreenshotSets = ["fieldsAppScreenshotSets_example"] // [String] | the fields to include for returned resources of type appScreenshotSets (optional)
let fieldsAppPreviewSets = ["fieldsAppPreviewSets_example"] // [String] | the fields to include for returned resources of type appPreviewSets (optional)
let include = ["include_example"] // [String] | comma-separated list of relationships to include (optional)
let limitAppPreviewSets = 987 // Int | maximum number of related appPreviewSets returned (when they are included) (optional)
let limitAppScreenshotSets = 987 // Int | maximum number of related appScreenshotSets returned (when they are included) (optional)

AppStoreVersionExperimentTreatmentLocalizationsAPI.appStoreVersionExperimentTreatmentLocalizationsGetInstance(id: id, fieldsAppStoreVersionExperimentTreatmentLocalizations: fieldsAppStoreVersionExperimentTreatmentLocalizations, fieldsAppScreenshotSets: fieldsAppScreenshotSets, fieldsAppPreviewSets: fieldsAppPreviewSets, include: include, limitAppPreviewSets: limitAppPreviewSets, limitAppScreenshotSets: limitAppScreenshotSets) { (response, error) in
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
 **fieldsAppStoreVersionExperimentTreatmentLocalizations** | [**[String]**](String.md) | the fields to include for returned resources of type appStoreVersionExperimentTreatmentLocalizations | [optional] 
 **fieldsAppScreenshotSets** | [**[String]**](String.md) | the fields to include for returned resources of type appScreenshotSets | [optional] 
 **fieldsAppPreviewSets** | [**[String]**](String.md) | the fields to include for returned resources of type appPreviewSets | [optional] 
 **include** | [**[String]**](String.md) | comma-separated list of relationships to include | [optional] 
 **limitAppPreviewSets** | **Int** | maximum number of related appPreviewSets returned (when they are included) | [optional] 
 **limitAppScreenshotSets** | **Int** | maximum number of related appScreenshotSets returned (when they are included) | [optional] 

### Return type

[**AppStoreVersionExperimentTreatmentLocalizationResponse**](AppStoreVersionExperimentTreatmentLocalizationResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

