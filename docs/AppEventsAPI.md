# AppEventsAPI

All URIs are relative to *https://api.appstoreconnect.apple.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**appEventsCreateInstance**](AppEventsAPI.md#appeventscreateinstance) | **POST** /v1/appEvents | 
[**appEventsDeleteInstance**](AppEventsAPI.md#appeventsdeleteinstance) | **DELETE** /v1/appEvents/{id} | 
[**appEventsGetInstance**](AppEventsAPI.md#appeventsgetinstance) | **GET** /v1/appEvents/{id} | 
[**appEventsLocalizationsGetToManyRelated**](AppEventsAPI.md#appeventslocalizationsgettomanyrelated) | **GET** /v1/appEvents/{id}/localizations | 
[**appEventsUpdateInstance**](AppEventsAPI.md#appeventsupdateinstance) | **PATCH** /v1/appEvents/{id} | 


# **appEventsCreateInstance**
```swift
    open class func appEventsCreateInstance(appEventCreateRequest: AppEventCreateRequest, completion: @escaping (_ data: AppEventResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let appEventCreateRequest = AppEventCreateRequest(data: AppEventCreateRequest_data(type: "type_example", attributes: AppEventCreateRequest_data_attributes(referenceName: "referenceName_example", badge: "badge_example", deepLink: "deepLink_example", purchaseRequirement: "purchaseRequirement_example", primaryLocale: "primaryLocale_example", priority: "priority_example", purpose: "purpose_example", territorySchedules: [AppEvent_attributes_territorySchedules_inner(territories: ["territories_example"], publishStart: Date(), eventStart: Date(), eventEnd: Date())]), relationships: AnalyticsReportRequestCreateRequest_data_relationships(app: AnalyticsReportRequestCreateRequest_data_relationships_app(data: AlternativeDistributionKeyCreateRequest_data_relationships_app_data(type: "type_example", id: "id_example"))))) // AppEventCreateRequest | AppEvent representation

AppEventsAPI.appEventsCreateInstance(appEventCreateRequest: appEventCreateRequest) { (response, error) in
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
 **appEventCreateRequest** | [**AppEventCreateRequest**](AppEventCreateRequest.md) | AppEvent representation | 

### Return type

[**AppEventResponse**](AppEventResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **appEventsDeleteInstance**
```swift
    open class func appEventsDeleteInstance(id: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource

AppEventsAPI.appEventsDeleteInstance(id: id) { (response, error) in
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

# **appEventsGetInstance**
```swift
    open class func appEventsGetInstance(id: String, fieldsAppEvents: [FieldsAppEvents_appEventsGetInstance]? = nil, fieldsAppEventLocalizations: [FieldsAppEventLocalizations_appEventsGetInstance]? = nil, include: [Include_appEventsGetInstance]? = nil, limitLocalizations: Int? = nil, completion: @escaping (_ data: AppEventResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let fieldsAppEvents = ["fieldsAppEvents_example"] // [String] | the fields to include for returned resources of type appEvents (optional)
let fieldsAppEventLocalizations = ["fieldsAppEventLocalizations_example"] // [String] | the fields to include for returned resources of type appEventLocalizations (optional)
let include = ["include_example"] // [String] | comma-separated list of relationships to include (optional)
let limitLocalizations = 987 // Int | maximum number of related localizations returned (when they are included) (optional)

AppEventsAPI.appEventsGetInstance(id: id, fieldsAppEvents: fieldsAppEvents, fieldsAppEventLocalizations: fieldsAppEventLocalizations, include: include, limitLocalizations: limitLocalizations) { (response, error) in
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
 **fieldsAppEvents** | [**[String]**](String.md) | the fields to include for returned resources of type appEvents | [optional] 
 **fieldsAppEventLocalizations** | [**[String]**](String.md) | the fields to include for returned resources of type appEventLocalizations | [optional] 
 **include** | [**[String]**](String.md) | comma-separated list of relationships to include | [optional] 
 **limitLocalizations** | **Int** | maximum number of related localizations returned (when they are included) | [optional] 

### Return type

[**AppEventResponse**](AppEventResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **appEventsLocalizationsGetToManyRelated**
```swift
    open class func appEventsLocalizationsGetToManyRelated(id: String, fieldsAppEventLocalizations: [FieldsAppEventLocalizations_appEventsLocalizationsGetToManyRelated]? = nil, fieldsAppEvents: [FieldsAppEvents_appEventsLocalizationsGetToManyRelated]? = nil, fieldsAppEventScreenshots: [FieldsAppEventScreenshots_appEventsLocalizationsGetToManyRelated]? = nil, fieldsAppEventVideoClips: [FieldsAppEventVideoClips_appEventsLocalizationsGetToManyRelated]? = nil, limit: Int? = nil, include: [Include_appEventsLocalizationsGetToManyRelated]? = nil, limitAppEventScreenshots: Int? = nil, limitAppEventVideoClips: Int? = nil, completion: @escaping (_ data: AppEventLocalizationsResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let fieldsAppEventLocalizations = ["fieldsAppEventLocalizations_example"] // [String] | the fields to include for returned resources of type appEventLocalizations (optional)
let fieldsAppEvents = ["fieldsAppEvents_example"] // [String] | the fields to include for returned resources of type appEvents (optional)
let fieldsAppEventScreenshots = ["fieldsAppEventScreenshots_example"] // [String] | the fields to include for returned resources of type appEventScreenshots (optional)
let fieldsAppEventVideoClips = ["fieldsAppEventVideoClips_example"] // [String] | the fields to include for returned resources of type appEventVideoClips (optional)
let limit = 987 // Int | maximum resources per page (optional)
let include = ["include_example"] // [String] | comma-separated list of relationships to include (optional)
let limitAppEventScreenshots = 987 // Int | maximum number of related appEventScreenshots returned (when they are included) (optional)
let limitAppEventVideoClips = 987 // Int | maximum number of related appEventVideoClips returned (when they are included) (optional)

AppEventsAPI.appEventsLocalizationsGetToManyRelated(id: id, fieldsAppEventLocalizations: fieldsAppEventLocalizations, fieldsAppEvents: fieldsAppEvents, fieldsAppEventScreenshots: fieldsAppEventScreenshots, fieldsAppEventVideoClips: fieldsAppEventVideoClips, limit: limit, include: include, limitAppEventScreenshots: limitAppEventScreenshots, limitAppEventVideoClips: limitAppEventVideoClips) { (response, error) in
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
 **fieldsAppEvents** | [**[String]**](String.md) | the fields to include for returned resources of type appEvents | [optional] 
 **fieldsAppEventScreenshots** | [**[String]**](String.md) | the fields to include for returned resources of type appEventScreenshots | [optional] 
 **fieldsAppEventVideoClips** | [**[String]**](String.md) | the fields to include for returned resources of type appEventVideoClips | [optional] 
 **limit** | **Int** | maximum resources per page | [optional] 
 **include** | [**[String]**](String.md) | comma-separated list of relationships to include | [optional] 
 **limitAppEventScreenshots** | **Int** | maximum number of related appEventScreenshots returned (when they are included) | [optional] 
 **limitAppEventVideoClips** | **Int** | maximum number of related appEventVideoClips returned (when they are included) | [optional] 

### Return type

[**AppEventLocalizationsResponse**](AppEventLocalizationsResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **appEventsUpdateInstance**
```swift
    open class func appEventsUpdateInstance(id: String, appEventUpdateRequest: AppEventUpdateRequest, completion: @escaping (_ data: AppEventResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let appEventUpdateRequest = AppEventUpdateRequest(data: AppEventUpdateRequest_data(type: "type_example", id: "id_example", attributes: AppEventUpdateRequest_data_attributes(referenceName: "referenceName_example", badge: "badge_example", deepLink: "deepLink_example", purchaseRequirement: "purchaseRequirement_example", primaryLocale: "primaryLocale_example", priority: "priority_example", purpose: "purpose_example", territorySchedules: [AppEvent_attributes_territorySchedules_inner(territories: ["territories_example"], publishStart: Date(), eventStart: Date(), eventEnd: Date())]))) // AppEventUpdateRequest | AppEvent representation

AppEventsAPI.appEventsUpdateInstance(id: id, appEventUpdateRequest: appEventUpdateRequest) { (response, error) in
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
 **appEventUpdateRequest** | [**AppEventUpdateRequest**](AppEventUpdateRequest.md) | AppEvent representation | 

### Return type

[**AppEventResponse**](AppEventResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

