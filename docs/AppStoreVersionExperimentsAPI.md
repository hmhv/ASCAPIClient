# AppStoreVersionExperimentsAPI

All URIs are relative to *https://api.appstoreconnect.apple.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**appStoreVersionExperimentsAppStoreVersionExperimentTreatmentsGetToManyRelated**](AppStoreVersionExperimentsAPI.md#appstoreversionexperimentsappstoreversionexperimenttreatmentsgettomanyrelated) | **GET** /v1/appStoreVersionExperiments/{id}/appStoreVersionExperimentTreatments | 
[**appStoreVersionExperimentsCreateInstance**](AppStoreVersionExperimentsAPI.md#appstoreversionexperimentscreateinstance) | **POST** /v1/appStoreVersionExperiments | 
[**appStoreVersionExperimentsDeleteInstance**](AppStoreVersionExperimentsAPI.md#appstoreversionexperimentsdeleteinstance) | **DELETE** /v1/appStoreVersionExperiments/{id} | 
[**appStoreVersionExperimentsGetInstance**](AppStoreVersionExperimentsAPI.md#appstoreversionexperimentsgetinstance) | **GET** /v1/appStoreVersionExperiments/{id} | 
[**appStoreVersionExperimentsUpdateInstance**](AppStoreVersionExperimentsAPI.md#appstoreversionexperimentsupdateinstance) | **PATCH** /v1/appStoreVersionExperiments/{id} | 


# **appStoreVersionExperimentsAppStoreVersionExperimentTreatmentsGetToManyRelated**
```swift
    open class func appStoreVersionExperimentsAppStoreVersionExperimentTreatmentsGetToManyRelated(id: String, fieldsAppStoreVersionExperiments: [FieldsAppStoreVersionExperiments_appStoreVersionExperimentsAppStoreVersionExperimentTreatmentsGetToManyRelated]? = nil, fieldsAppStoreVersionExperimentTreatments: [FieldsAppStoreVersionExperimentTreatments_appStoreVersionExperimentsAppStoreVersionExperimentTreatmentsGetToManyRelated]? = nil, fieldsAppStoreVersionExperimentTreatmentLocalizations: [FieldsAppStoreVersionExperimentTreatmentLocalizations_appStoreVersionExperimentsAppStoreVersionExperimentTreatmentsGetToManyRelated]? = nil, limit: Int? = nil, limitAppStoreVersionExperimentTreatmentLocalizations: Int? = nil, include: [Include_appStoreVersionExperimentsAppStoreVersionExperimentTreatmentsGetToManyRelated]? = nil, completion: @escaping (_ data: AppStoreVersionExperimentTreatmentsResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let fieldsAppStoreVersionExperiments = ["fieldsAppStoreVersionExperiments_example"] // [String] | the fields to include for returned resources of type appStoreVersionExperiments (optional)
let fieldsAppStoreVersionExperimentTreatments = ["fieldsAppStoreVersionExperimentTreatments_example"] // [String] | the fields to include for returned resources of type appStoreVersionExperimentTreatments (optional)
let fieldsAppStoreVersionExperimentTreatmentLocalizations = ["fieldsAppStoreVersionExperimentTreatmentLocalizations_example"] // [String] | the fields to include for returned resources of type appStoreVersionExperimentTreatmentLocalizations (optional)
let limit = 987 // Int | maximum resources per page (optional)
let limitAppStoreVersionExperimentTreatmentLocalizations = 987 // Int | maximum number of related appStoreVersionExperimentTreatmentLocalizations returned (when they are included) (optional)
let include = ["include_example"] // [String] | comma-separated list of relationships to include (optional)

AppStoreVersionExperimentsAPI.appStoreVersionExperimentsAppStoreVersionExperimentTreatmentsGetToManyRelated(id: id, fieldsAppStoreVersionExperiments: fieldsAppStoreVersionExperiments, fieldsAppStoreVersionExperimentTreatments: fieldsAppStoreVersionExperimentTreatments, fieldsAppStoreVersionExperimentTreatmentLocalizations: fieldsAppStoreVersionExperimentTreatmentLocalizations, limit: limit, limitAppStoreVersionExperimentTreatmentLocalizations: limitAppStoreVersionExperimentTreatmentLocalizations, include: include) { (response, error) in
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
 **fieldsAppStoreVersionExperiments** | [**[String]**](String.md) | the fields to include for returned resources of type appStoreVersionExperiments | [optional] 
 **fieldsAppStoreVersionExperimentTreatments** | [**[String]**](String.md) | the fields to include for returned resources of type appStoreVersionExperimentTreatments | [optional] 
 **fieldsAppStoreVersionExperimentTreatmentLocalizations** | [**[String]**](String.md) | the fields to include for returned resources of type appStoreVersionExperimentTreatmentLocalizations | [optional] 
 **limit** | **Int** | maximum resources per page | [optional] 
 **limitAppStoreVersionExperimentTreatmentLocalizations** | **Int** | maximum number of related appStoreVersionExperimentTreatmentLocalizations returned (when they are included) | [optional] 
 **include** | [**[String]**](String.md) | comma-separated list of relationships to include | [optional] 

### Return type

[**AppStoreVersionExperimentTreatmentsResponse**](AppStoreVersionExperimentTreatmentsResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **appStoreVersionExperimentsCreateInstance**
```swift
    open class func appStoreVersionExperimentsCreateInstance(appStoreVersionExperimentCreateRequest: AppStoreVersionExperimentCreateRequest, completion: @escaping (_ data: AppStoreVersionExperimentResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let appStoreVersionExperimentCreateRequest = AppStoreVersionExperimentCreateRequest(data: AppStoreVersionExperimentCreateRequest_data(type: "type_example", attributes: AppStoreVersionExperimentCreateRequest_data_attributes(name: "name_example", trafficProportion: 123), relationships: AppStoreReviewDetailCreateRequest_data_relationships(appStoreVersion: AppStoreReviewDetailCreateRequest_data_relationships_appStoreVersion(data: AppClipDefaultExperience_relationships_releaseWithAppStoreVersion_data(type: "type_example", id: "id_example"))))) // AppStoreVersionExperimentCreateRequest | AppStoreVersionExperiment representation

AppStoreVersionExperimentsAPI.appStoreVersionExperimentsCreateInstance(appStoreVersionExperimentCreateRequest: appStoreVersionExperimentCreateRequest) { (response, error) in
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
 **appStoreVersionExperimentCreateRequest** | [**AppStoreVersionExperimentCreateRequest**](AppStoreVersionExperimentCreateRequest.md) | AppStoreVersionExperiment representation | 

### Return type

[**AppStoreVersionExperimentResponse**](AppStoreVersionExperimentResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **appStoreVersionExperimentsDeleteInstance**
```swift
    open class func appStoreVersionExperimentsDeleteInstance(id: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource

AppStoreVersionExperimentsAPI.appStoreVersionExperimentsDeleteInstance(id: id) { (response, error) in
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

# **appStoreVersionExperimentsGetInstance**
```swift
    open class func appStoreVersionExperimentsGetInstance(id: String, fieldsAppStoreVersionExperiments: [FieldsAppStoreVersionExperiments_appStoreVersionExperimentsGetInstance]? = nil, include: [Include_appStoreVersionExperimentsGetInstance]? = nil, fieldsAppStoreVersionExperimentTreatments: [FieldsAppStoreVersionExperimentTreatments_appStoreVersionExperimentsGetInstance]? = nil, limitAppStoreVersionExperimentTreatments: Int? = nil, completion: @escaping (_ data: AppStoreVersionExperimentResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let fieldsAppStoreVersionExperiments = ["fieldsAppStoreVersionExperiments_example"] // [String] | the fields to include for returned resources of type appStoreVersionExperiments (optional)
let include = ["include_example"] // [String] | comma-separated list of relationships to include (optional)
let fieldsAppStoreVersionExperimentTreatments = ["fieldsAppStoreVersionExperimentTreatments_example"] // [String] | the fields to include for returned resources of type appStoreVersionExperimentTreatments (optional)
let limitAppStoreVersionExperimentTreatments = 987 // Int | maximum number of related appStoreVersionExperimentTreatments returned (when they are included) (optional)

AppStoreVersionExperimentsAPI.appStoreVersionExperimentsGetInstance(id: id, fieldsAppStoreVersionExperiments: fieldsAppStoreVersionExperiments, include: include, fieldsAppStoreVersionExperimentTreatments: fieldsAppStoreVersionExperimentTreatments, limitAppStoreVersionExperimentTreatments: limitAppStoreVersionExperimentTreatments) { (response, error) in
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
 **fieldsAppStoreVersionExperiments** | [**[String]**](String.md) | the fields to include for returned resources of type appStoreVersionExperiments | [optional] 
 **include** | [**[String]**](String.md) | comma-separated list of relationships to include | [optional] 
 **fieldsAppStoreVersionExperimentTreatments** | [**[String]**](String.md) | the fields to include for returned resources of type appStoreVersionExperimentTreatments | [optional] 
 **limitAppStoreVersionExperimentTreatments** | **Int** | maximum number of related appStoreVersionExperimentTreatments returned (when they are included) | [optional] 

### Return type

[**AppStoreVersionExperimentResponse**](AppStoreVersionExperimentResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **appStoreVersionExperimentsUpdateInstance**
```swift
    open class func appStoreVersionExperimentsUpdateInstance(id: String, appStoreVersionExperimentUpdateRequest: AppStoreVersionExperimentUpdateRequest, completion: @escaping (_ data: AppStoreVersionExperimentResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let appStoreVersionExperimentUpdateRequest = AppStoreVersionExperimentUpdateRequest(data: AppStoreVersionExperimentUpdateRequest_data(type: "type_example", id: "id_example", attributes: AppStoreVersionExperimentUpdateRequest_data_attributes(name: "name_example", trafficProportion: 123, started: false))) // AppStoreVersionExperimentUpdateRequest | AppStoreVersionExperiment representation

AppStoreVersionExperimentsAPI.appStoreVersionExperimentsUpdateInstance(id: id, appStoreVersionExperimentUpdateRequest: appStoreVersionExperimentUpdateRequest) { (response, error) in
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
 **appStoreVersionExperimentUpdateRequest** | [**AppStoreVersionExperimentUpdateRequest**](AppStoreVersionExperimentUpdateRequest.md) | AppStoreVersionExperiment representation | 

### Return type

[**AppStoreVersionExperimentResponse**](AppStoreVersionExperimentResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

