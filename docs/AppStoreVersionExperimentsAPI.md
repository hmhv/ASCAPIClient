# AppStoreVersionExperimentsAPI

All URIs are relative to *https://api.appstoreconnect.apple.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**appStoreVersionExperimentsAppStoreVersionExperimentTreatmentsGetToManyRelated**](AppStoreVersionExperimentsAPI.md#appstoreversionexperimentsappstoreversionexperimenttreatmentsgettomanyrelated) | **GET** /v1/appStoreVersionExperiments/{id}/appStoreVersionExperimentTreatments | 
[**appStoreVersionExperimentsCreateInstance**](AppStoreVersionExperimentsAPI.md#appstoreversionexperimentscreateinstance) | **POST** /v1/appStoreVersionExperiments | 
[**appStoreVersionExperimentsDeleteInstance**](AppStoreVersionExperimentsAPI.md#appstoreversionexperimentsdeleteinstance) | **DELETE** /v1/appStoreVersionExperiments/{id} | 
[**appStoreVersionExperimentsGetInstance**](AppStoreVersionExperimentsAPI.md#appstoreversionexperimentsgetinstance) | **GET** /v1/appStoreVersionExperiments/{id} | 
[**appStoreVersionExperimentsUpdateInstance**](AppStoreVersionExperimentsAPI.md#appstoreversionexperimentsupdateinstance) | **PATCH** /v1/appStoreVersionExperiments/{id} | 
[**appStoreVersionExperimentsV2AppStoreVersionExperimentTreatmentsGetToManyRelated**](AppStoreVersionExperimentsAPI.md#appstoreversionexperimentsv2appstoreversionexperimenttreatmentsgettomanyrelated) | **GET** /v2/appStoreVersionExperiments/{id}/appStoreVersionExperimentTreatments | 
[**appStoreVersionExperimentsV2CreateInstance**](AppStoreVersionExperimentsAPI.md#appstoreversionexperimentsv2createinstance) | **POST** /v2/appStoreVersionExperiments | 
[**appStoreVersionExperimentsV2DeleteInstance**](AppStoreVersionExperimentsAPI.md#appstoreversionexperimentsv2deleteinstance) | **DELETE** /v2/appStoreVersionExperiments/{id} | 
[**appStoreVersionExperimentsV2GetInstance**](AppStoreVersionExperimentsAPI.md#appstoreversionexperimentsv2getinstance) | **GET** /v2/appStoreVersionExperiments/{id} | 
[**appStoreVersionExperimentsV2UpdateInstance**](AppStoreVersionExperimentsAPI.md#appstoreversionexperimentsv2updateinstance) | **PATCH** /v2/appStoreVersionExperiments/{id} | 


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

let appStoreVersionExperimentCreateRequest = AppStoreVersionExperimentCreateRequest(data: AppStoreVersionExperimentCreateRequest_data(type: "type_example", attributes: AppStoreVersionExperimentCreateRequest_data_attributes(name: "name_example", trafficProportion: 123), relationships: AlternativeDistributionPackageCreateRequest_data_relationships(appStoreVersion: AlternativeDistributionPackageCreateRequest_data_relationships_appStoreVersion(data: AlternativeDistributionPackageCreateRequest_data_relationships_appStoreVersion_data(type: "type_example", id: "id_example"))))) // AppStoreVersionExperimentCreateRequest | AppStoreVersionExperiment representation

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
let appStoreVersionExperimentUpdateRequest = AppStoreVersionExperimentUpdateRequest(data: AppStoreVersionExperimentV2UpdateRequest_data(type: "type_example", id: "id_example", attributes: AppStoreVersionExperimentV2UpdateRequest_data_attributes(name: "name_example", trafficProportion: 123, started: false))) // AppStoreVersionExperimentUpdateRequest | AppStoreVersionExperiment representation

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

# **appStoreVersionExperimentsV2AppStoreVersionExperimentTreatmentsGetToManyRelated**
```swift
    open class func appStoreVersionExperimentsV2AppStoreVersionExperimentTreatmentsGetToManyRelated(id: String, fieldsAppStoreVersionExperiments: [FieldsAppStoreVersionExperiments_appStoreVersionExperimentsV2AppStoreVersionExperimentTreatmentsGetToManyRelated]? = nil, fieldsAppStoreVersionExperimentTreatments: [FieldsAppStoreVersionExperimentTreatments_appStoreVersionExperimentsV2AppStoreVersionExperimentTreatmentsGetToManyRelated]? = nil, fieldsAppStoreVersionExperimentTreatmentLocalizations: [FieldsAppStoreVersionExperimentTreatmentLocalizations_appStoreVersionExperimentsV2AppStoreVersionExperimentTreatmentsGetToManyRelated]? = nil, limit: Int? = nil, limitAppStoreVersionExperimentTreatmentLocalizations: Int? = nil, include: [Include_appStoreVersionExperimentsV2AppStoreVersionExperimentTreatmentsGetToManyRelated]? = nil, completion: @escaping (_ data: AppStoreVersionExperimentTreatmentsResponse?, _ error: Error?) -> Void)
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

AppStoreVersionExperimentsAPI.appStoreVersionExperimentsV2AppStoreVersionExperimentTreatmentsGetToManyRelated(id: id, fieldsAppStoreVersionExperiments: fieldsAppStoreVersionExperiments, fieldsAppStoreVersionExperimentTreatments: fieldsAppStoreVersionExperimentTreatments, fieldsAppStoreVersionExperimentTreatmentLocalizations: fieldsAppStoreVersionExperimentTreatmentLocalizations, limit: limit, limitAppStoreVersionExperimentTreatmentLocalizations: limitAppStoreVersionExperimentTreatmentLocalizations, include: include) { (response, error) in
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

# **appStoreVersionExperimentsV2CreateInstance**
```swift
    open class func appStoreVersionExperimentsV2CreateInstance(appStoreVersionExperimentV2CreateRequest: AppStoreVersionExperimentV2CreateRequest, completion: @escaping (_ data: AppStoreVersionExperimentV2Response?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let appStoreVersionExperimentV2CreateRequest = AppStoreVersionExperimentV2CreateRequest(data: AppStoreVersionExperimentV2CreateRequest_data(type: "type_example", attributes: AppStoreVersionExperimentV2CreateRequest_data_attributes(name: "name_example", platform: Platform(), trafficProportion: 123), relationships: AnalyticsReportRequestCreateRequest_data_relationships(app: AnalyticsReportRequestCreateRequest_data_relationships_app(data: AlternativeDistributionKeyCreateRequest_data_relationships_app_data(type: "type_example", id: "id_example"))))) // AppStoreVersionExperimentV2CreateRequest | AppStoreVersionExperiment representation

AppStoreVersionExperimentsAPI.appStoreVersionExperimentsV2CreateInstance(appStoreVersionExperimentV2CreateRequest: appStoreVersionExperimentV2CreateRequest) { (response, error) in
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
 **appStoreVersionExperimentV2CreateRequest** | [**AppStoreVersionExperimentV2CreateRequest**](AppStoreVersionExperimentV2CreateRequest.md) | AppStoreVersionExperiment representation | 

### Return type

[**AppStoreVersionExperimentV2Response**](AppStoreVersionExperimentV2Response.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **appStoreVersionExperimentsV2DeleteInstance**
```swift
    open class func appStoreVersionExperimentsV2DeleteInstance(id: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource

AppStoreVersionExperimentsAPI.appStoreVersionExperimentsV2DeleteInstance(id: id) { (response, error) in
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

# **appStoreVersionExperimentsV2GetInstance**
```swift
    open class func appStoreVersionExperimentsV2GetInstance(id: String, fieldsAppStoreVersionExperiments: [FieldsAppStoreVersionExperiments_appStoreVersionExperimentsV2GetInstance]? = nil, include: [Include_appStoreVersionExperimentsV2GetInstance]? = nil, fieldsAppStoreVersionExperimentTreatments: [FieldsAppStoreVersionExperimentTreatments_appStoreVersionExperimentsV2GetInstance]? = nil, limitAppStoreVersionExperimentTreatments: Int? = nil, limitControlVersions: Int? = nil, completion: @escaping (_ data: AppStoreVersionExperimentV2Response?, _ error: Error?) -> Void)
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
let limitControlVersions = 987 // Int | maximum number of related controlVersions returned (when they are included) (optional)

AppStoreVersionExperimentsAPI.appStoreVersionExperimentsV2GetInstance(id: id, fieldsAppStoreVersionExperiments: fieldsAppStoreVersionExperiments, include: include, fieldsAppStoreVersionExperimentTreatments: fieldsAppStoreVersionExperimentTreatments, limitAppStoreVersionExperimentTreatments: limitAppStoreVersionExperimentTreatments, limitControlVersions: limitControlVersions) { (response, error) in
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
 **limitControlVersions** | **Int** | maximum number of related controlVersions returned (when they are included) | [optional] 

### Return type

[**AppStoreVersionExperimentV2Response**](AppStoreVersionExperimentV2Response.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **appStoreVersionExperimentsV2UpdateInstance**
```swift
    open class func appStoreVersionExperimentsV2UpdateInstance(id: String, appStoreVersionExperimentV2UpdateRequest: AppStoreVersionExperimentV2UpdateRequest, completion: @escaping (_ data: AppStoreVersionExperimentV2Response?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let appStoreVersionExperimentV2UpdateRequest = AppStoreVersionExperimentV2UpdateRequest(data: AppStoreVersionExperimentV2UpdateRequest_data(type: "type_example", id: "id_example", attributes: AppStoreVersionExperimentV2UpdateRequest_data_attributes(name: "name_example", trafficProportion: 123, started: false))) // AppStoreVersionExperimentV2UpdateRequest | AppStoreVersionExperiment representation

AppStoreVersionExperimentsAPI.appStoreVersionExperimentsV2UpdateInstance(id: id, appStoreVersionExperimentV2UpdateRequest: appStoreVersionExperimentV2UpdateRequest) { (response, error) in
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
 **appStoreVersionExperimentV2UpdateRequest** | [**AppStoreVersionExperimentV2UpdateRequest**](AppStoreVersionExperimentV2UpdateRequest.md) | AppStoreVersionExperiment representation | 

### Return type

[**AppStoreVersionExperimentV2Response**](AppStoreVersionExperimentV2Response.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

