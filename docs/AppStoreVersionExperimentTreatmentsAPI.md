# AppStoreVersionExperimentTreatmentsAPI

All URIs are relative to *https://api.appstoreconnect.apple.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**appStoreVersionExperimentTreatmentsAppStoreVersionExperimentTreatmentLocalizationsGetToManyRelated**](AppStoreVersionExperimentTreatmentsAPI.md#appstoreversionexperimenttreatmentsappstoreversionexperimenttreatmentlocalizationsgettomanyrelated) | **GET** /v1/appStoreVersionExperimentTreatments/{id}/appStoreVersionExperimentTreatmentLocalizations | 
[**appStoreVersionExperimentTreatmentsCreateInstance**](AppStoreVersionExperimentTreatmentsAPI.md#appstoreversionexperimenttreatmentscreateinstance) | **POST** /v1/appStoreVersionExperimentTreatments | 
[**appStoreVersionExperimentTreatmentsDeleteInstance**](AppStoreVersionExperimentTreatmentsAPI.md#appstoreversionexperimenttreatmentsdeleteinstance) | **DELETE** /v1/appStoreVersionExperimentTreatments/{id} | 
[**appStoreVersionExperimentTreatmentsGetInstance**](AppStoreVersionExperimentTreatmentsAPI.md#appstoreversionexperimenttreatmentsgetinstance) | **GET** /v1/appStoreVersionExperimentTreatments/{id} | 
[**appStoreVersionExperimentTreatmentsUpdateInstance**](AppStoreVersionExperimentTreatmentsAPI.md#appstoreversionexperimenttreatmentsupdateinstance) | **PATCH** /v1/appStoreVersionExperimentTreatments/{id} | 


# **appStoreVersionExperimentTreatmentsAppStoreVersionExperimentTreatmentLocalizationsGetToManyRelated**
```swift
    open class func appStoreVersionExperimentTreatmentsAppStoreVersionExperimentTreatmentLocalizationsGetToManyRelated(id: String, filterLocale: [String]? = nil, fieldsAppScreenshotSets: [FieldsAppScreenshotSets_appStoreVersionExperimentTreatmentsAppStoreVersionExperimentTreatmentLocalizationsGetToManyRelated]? = nil, fieldsAppStoreVersionExperimentTreatments: [FieldsAppStoreVersionExperimentTreatments_appStoreVersionExperimentTreatmentsAppStoreVersionExperimentTreatmentLocalizationsGetToManyRelated]? = nil, fieldsAppStoreVersionExperimentTreatmentLocalizations: [FieldsAppStoreVersionExperimentTreatmentLocalizations_appStoreVersionExperimentTreatmentsAppStoreVersionExperimentTreatmentLocalizationsGetToManyRelated]? = nil, fieldsAppPreviewSets: [FieldsAppPreviewSets_appStoreVersionExperimentTreatmentsAppStoreVersionExperimentTreatmentLocalizationsGetToManyRelated]? = nil, limit: Int? = nil, limitAppScreenshotSets: Int? = nil, limitAppPreviewSets: Int? = nil, include: [Include_appStoreVersionExperimentTreatmentsAppStoreVersionExperimentTreatmentLocalizationsGetToManyRelated]? = nil, completion: @escaping (_ data: AppStoreVersionExperimentTreatmentLocalizationsResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let filterLocale = ["inner_example"] // [String] | filter by attribute 'locale' (optional)
let fieldsAppScreenshotSets = ["fieldsAppScreenshotSets_example"] // [String] | the fields to include for returned resources of type appScreenshotSets (optional)
let fieldsAppStoreVersionExperimentTreatments = ["fieldsAppStoreVersionExperimentTreatments_example"] // [String] | the fields to include for returned resources of type appStoreVersionExperimentTreatments (optional)
let fieldsAppStoreVersionExperimentTreatmentLocalizations = ["fieldsAppStoreVersionExperimentTreatmentLocalizations_example"] // [String] | the fields to include for returned resources of type appStoreVersionExperimentTreatmentLocalizations (optional)
let fieldsAppPreviewSets = ["fieldsAppPreviewSets_example"] // [String] | the fields to include for returned resources of type appPreviewSets (optional)
let limit = 987 // Int | maximum resources per page (optional)
let limitAppScreenshotSets = 987 // Int | maximum number of related appScreenshotSets returned (when they are included) (optional)
let limitAppPreviewSets = 987 // Int | maximum number of related appPreviewSets returned (when they are included) (optional)
let include = ["include_example"] // [String] | comma-separated list of relationships to include (optional)

AppStoreVersionExperimentTreatmentsAPI.appStoreVersionExperimentTreatmentsAppStoreVersionExperimentTreatmentLocalizationsGetToManyRelated(id: id, filterLocale: filterLocale, fieldsAppScreenshotSets: fieldsAppScreenshotSets, fieldsAppStoreVersionExperimentTreatments: fieldsAppStoreVersionExperimentTreatments, fieldsAppStoreVersionExperimentTreatmentLocalizations: fieldsAppStoreVersionExperimentTreatmentLocalizations, fieldsAppPreviewSets: fieldsAppPreviewSets, limit: limit, limitAppScreenshotSets: limitAppScreenshotSets, limitAppPreviewSets: limitAppPreviewSets, include: include) { (response, error) in
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
 **fieldsAppStoreVersionExperimentTreatments** | [**[String]**](String.md) | the fields to include for returned resources of type appStoreVersionExperimentTreatments | [optional] 
 **fieldsAppStoreVersionExperimentTreatmentLocalizations** | [**[String]**](String.md) | the fields to include for returned resources of type appStoreVersionExperimentTreatmentLocalizations | [optional] 
 **fieldsAppPreviewSets** | [**[String]**](String.md) | the fields to include for returned resources of type appPreviewSets | [optional] 
 **limit** | **Int** | maximum resources per page | [optional] 
 **limitAppScreenshotSets** | **Int** | maximum number of related appScreenshotSets returned (when they are included) | [optional] 
 **limitAppPreviewSets** | **Int** | maximum number of related appPreviewSets returned (when they are included) | [optional] 
 **include** | [**[String]**](String.md) | comma-separated list of relationships to include | [optional] 

### Return type

[**AppStoreVersionExperimentTreatmentLocalizationsResponse**](AppStoreVersionExperimentTreatmentLocalizationsResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **appStoreVersionExperimentTreatmentsCreateInstance**
```swift
    open class func appStoreVersionExperimentTreatmentsCreateInstance(appStoreVersionExperimentTreatmentCreateRequest: AppStoreVersionExperimentTreatmentCreateRequest, completion: @escaping (_ data: AppStoreVersionExperimentTreatmentResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let appStoreVersionExperimentTreatmentCreateRequest = AppStoreVersionExperimentTreatmentCreateRequest(data: AppStoreVersionExperimentTreatmentCreateRequest_data(type: "type_example", attributes: AppStoreVersionExperimentTreatmentCreateRequest_data_attributes(name: "name_example", appIconName: "appIconName_example"), relationships: AppStoreVersionExperimentTreatmentCreateRequest_data_relationships(appStoreVersionExperiment: AppStoreVersionExperimentTreatmentCreateRequest_data_relationships_appStoreVersionExperiment(data: AppStoreVersionExperimentTreatment_relationships_appStoreVersionExperiment_data(type: "type_example", id: "id_example"))))) // AppStoreVersionExperimentTreatmentCreateRequest | AppStoreVersionExperimentTreatment representation

AppStoreVersionExperimentTreatmentsAPI.appStoreVersionExperimentTreatmentsCreateInstance(appStoreVersionExperimentTreatmentCreateRequest: appStoreVersionExperimentTreatmentCreateRequest) { (response, error) in
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
 **appStoreVersionExperimentTreatmentCreateRequest** | [**AppStoreVersionExperimentTreatmentCreateRequest**](AppStoreVersionExperimentTreatmentCreateRequest.md) | AppStoreVersionExperimentTreatment representation | 

### Return type

[**AppStoreVersionExperimentTreatmentResponse**](AppStoreVersionExperimentTreatmentResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **appStoreVersionExperimentTreatmentsDeleteInstance**
```swift
    open class func appStoreVersionExperimentTreatmentsDeleteInstance(id: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource

AppStoreVersionExperimentTreatmentsAPI.appStoreVersionExperimentTreatmentsDeleteInstance(id: id) { (response, error) in
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

# **appStoreVersionExperimentTreatmentsGetInstance**
```swift
    open class func appStoreVersionExperimentTreatmentsGetInstance(id: String, fieldsAppStoreVersionExperimentTreatments: [FieldsAppStoreVersionExperimentTreatments_appStoreVersionExperimentTreatmentsGetInstance]? = nil, include: [Include_appStoreVersionExperimentTreatmentsGetInstance]? = nil, fieldsAppStoreVersionExperimentTreatmentLocalizations: [FieldsAppStoreVersionExperimentTreatmentLocalizations_appStoreVersionExperimentTreatmentsGetInstance]? = nil, limitAppStoreVersionExperimentTreatmentLocalizations: Int? = nil, completion: @escaping (_ data: AppStoreVersionExperimentTreatmentResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let fieldsAppStoreVersionExperimentTreatments = ["fieldsAppStoreVersionExperimentTreatments_example"] // [String] | the fields to include for returned resources of type appStoreVersionExperimentTreatments (optional)
let include = ["include_example"] // [String] | comma-separated list of relationships to include (optional)
let fieldsAppStoreVersionExperimentTreatmentLocalizations = ["fieldsAppStoreVersionExperimentTreatmentLocalizations_example"] // [String] | the fields to include for returned resources of type appStoreVersionExperimentTreatmentLocalizations (optional)
let limitAppStoreVersionExperimentTreatmentLocalizations = 987 // Int | maximum number of related appStoreVersionExperimentTreatmentLocalizations returned (when they are included) (optional)

AppStoreVersionExperimentTreatmentsAPI.appStoreVersionExperimentTreatmentsGetInstance(id: id, fieldsAppStoreVersionExperimentTreatments: fieldsAppStoreVersionExperimentTreatments, include: include, fieldsAppStoreVersionExperimentTreatmentLocalizations: fieldsAppStoreVersionExperimentTreatmentLocalizations, limitAppStoreVersionExperimentTreatmentLocalizations: limitAppStoreVersionExperimentTreatmentLocalizations) { (response, error) in
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
 **fieldsAppStoreVersionExperimentTreatments** | [**[String]**](String.md) | the fields to include for returned resources of type appStoreVersionExperimentTreatments | [optional] 
 **include** | [**[String]**](String.md) | comma-separated list of relationships to include | [optional] 
 **fieldsAppStoreVersionExperimentTreatmentLocalizations** | [**[String]**](String.md) | the fields to include for returned resources of type appStoreVersionExperimentTreatmentLocalizations | [optional] 
 **limitAppStoreVersionExperimentTreatmentLocalizations** | **Int** | maximum number of related appStoreVersionExperimentTreatmentLocalizations returned (when they are included) | [optional] 

### Return type

[**AppStoreVersionExperimentTreatmentResponse**](AppStoreVersionExperimentTreatmentResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **appStoreVersionExperimentTreatmentsUpdateInstance**
```swift
    open class func appStoreVersionExperimentTreatmentsUpdateInstance(id: String, appStoreVersionExperimentTreatmentUpdateRequest: AppStoreVersionExperimentTreatmentUpdateRequest, completion: @escaping (_ data: AppStoreVersionExperimentTreatmentResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let appStoreVersionExperimentTreatmentUpdateRequest = AppStoreVersionExperimentTreatmentUpdateRequest(data: AppStoreVersionExperimentTreatmentUpdateRequest_data(type: "type_example", id: "id_example", attributes: AppStoreVersionExperimentTreatmentUpdateRequest_data_attributes(name: "name_example", appIconName: "appIconName_example"))) // AppStoreVersionExperimentTreatmentUpdateRequest | AppStoreVersionExperimentTreatment representation

AppStoreVersionExperimentTreatmentsAPI.appStoreVersionExperimentTreatmentsUpdateInstance(id: id, appStoreVersionExperimentTreatmentUpdateRequest: appStoreVersionExperimentTreatmentUpdateRequest) { (response, error) in
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
 **appStoreVersionExperimentTreatmentUpdateRequest** | [**AppStoreVersionExperimentTreatmentUpdateRequest**](AppStoreVersionExperimentTreatmentUpdateRequest.md) | AppStoreVersionExperimentTreatment representation | 

### Return type

[**AppStoreVersionExperimentTreatmentResponse**](AppStoreVersionExperimentTreatmentResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

