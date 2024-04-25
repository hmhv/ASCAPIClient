# AppScreenshotSetsAPI

All URIs are relative to *https://api.appstoreconnect.apple.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**appScreenshotSetsAppScreenshotsGetToManyRelated**](AppScreenshotSetsAPI.md#appscreenshotsetsappscreenshotsgettomanyrelated) | **GET** /v1/appScreenshotSets/{id}/appScreenshots | 
[**appScreenshotSetsAppScreenshotsGetToManyRelationship**](AppScreenshotSetsAPI.md#appscreenshotsetsappscreenshotsgettomanyrelationship) | **GET** /v1/appScreenshotSets/{id}/relationships/appScreenshots | 
[**appScreenshotSetsAppScreenshotsReplaceToManyRelationship**](AppScreenshotSetsAPI.md#appscreenshotsetsappscreenshotsreplacetomanyrelationship) | **PATCH** /v1/appScreenshotSets/{id}/relationships/appScreenshots | 
[**appScreenshotSetsCreateInstance**](AppScreenshotSetsAPI.md#appscreenshotsetscreateinstance) | **POST** /v1/appScreenshotSets | 
[**appScreenshotSetsDeleteInstance**](AppScreenshotSetsAPI.md#appscreenshotsetsdeleteinstance) | **DELETE** /v1/appScreenshotSets/{id} | 
[**appScreenshotSetsGetInstance**](AppScreenshotSetsAPI.md#appscreenshotsetsgetinstance) | **GET** /v1/appScreenshotSets/{id} | 


# **appScreenshotSetsAppScreenshotsGetToManyRelated**
```swift
    open class func appScreenshotSetsAppScreenshotsGetToManyRelated(id: String, fieldsAppScreenshotSets: [FieldsAppScreenshotSets_appScreenshotSetsAppScreenshotsGetToManyRelated]? = nil, fieldsAppScreenshots: [FieldsAppScreenshots_appScreenshotSetsAppScreenshotsGetToManyRelated]? = nil, limit: Int? = nil, include: [Include_appScreenshotSetsAppScreenshotsGetToManyRelated]? = nil, completion: @escaping (_ data: AppScreenshotsResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let fieldsAppScreenshotSets = ["fieldsAppScreenshotSets_example"] // [String] | the fields to include for returned resources of type appScreenshotSets (optional)
let fieldsAppScreenshots = ["fieldsAppScreenshots_example"] // [String] | the fields to include for returned resources of type appScreenshots (optional)
let limit = 987 // Int | maximum resources per page (optional)
let include = ["include_example"] // [String] | comma-separated list of relationships to include (optional)

AppScreenshotSetsAPI.appScreenshotSetsAppScreenshotsGetToManyRelated(id: id, fieldsAppScreenshotSets: fieldsAppScreenshotSets, fieldsAppScreenshots: fieldsAppScreenshots, limit: limit, include: include) { (response, error) in
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
 **fieldsAppScreenshotSets** | [**[String]**](String.md) | the fields to include for returned resources of type appScreenshotSets | [optional] 
 **fieldsAppScreenshots** | [**[String]**](String.md) | the fields to include for returned resources of type appScreenshots | [optional] 
 **limit** | **Int** | maximum resources per page | [optional] 
 **include** | [**[String]**](String.md) | comma-separated list of relationships to include | [optional] 

### Return type

[**AppScreenshotsResponse**](AppScreenshotsResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **appScreenshotSetsAppScreenshotsGetToManyRelationship**
```swift
    open class func appScreenshotSetsAppScreenshotsGetToManyRelationship(id: String, limit: Int? = nil, completion: @escaping (_ data: AppScreenshotSetAppScreenshotsLinkagesResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let limit = 987 // Int | maximum resources per page (optional)

AppScreenshotSetsAPI.appScreenshotSetsAppScreenshotsGetToManyRelationship(id: id, limit: limit) { (response, error) in
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
 **limit** | **Int** | maximum resources per page | [optional] 

### Return type

[**AppScreenshotSetAppScreenshotsLinkagesResponse**](AppScreenshotSetAppScreenshotsLinkagesResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **appScreenshotSetsAppScreenshotsReplaceToManyRelationship**
```swift
    open class func appScreenshotSetsAppScreenshotsReplaceToManyRelationship(id: String, appScreenshotSetAppScreenshotsLinkagesRequest: AppScreenshotSetAppScreenshotsLinkagesRequest, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let appScreenshotSetAppScreenshotsLinkagesRequest = AppScreenshotSetAppScreenshotsLinkagesRequest(data: [AppScreenshotSet_relationships_appScreenshots_data_inner(type: "type_example", id: "id_example")]) // AppScreenshotSetAppScreenshotsLinkagesRequest | List of related linkages

AppScreenshotSetsAPI.appScreenshotSetsAppScreenshotsReplaceToManyRelationship(id: id, appScreenshotSetAppScreenshotsLinkagesRequest: appScreenshotSetAppScreenshotsLinkagesRequest) { (response, error) in
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
 **appScreenshotSetAppScreenshotsLinkagesRequest** | [**AppScreenshotSetAppScreenshotsLinkagesRequest**](AppScreenshotSetAppScreenshotsLinkagesRequest.md) | List of related linkages | 

### Return type

Void (empty response body)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **appScreenshotSetsCreateInstance**
```swift
    open class func appScreenshotSetsCreateInstance(appScreenshotSetCreateRequest: AppScreenshotSetCreateRequest, completion: @escaping (_ data: AppScreenshotSetResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let appScreenshotSetCreateRequest = AppScreenshotSetCreateRequest(data: AppScreenshotSetCreateRequest_data(type: "type_example", attributes: AppScreenshotSetCreateRequest_data_attributes(screenshotDisplayType: ScreenshotDisplayType()), relationships: AppPreviewSetCreateRequest_data_relationships(appStoreVersionLocalization: AppPreviewSetCreateRequest_data_relationships_appStoreVersionLocalization(data: AppPreviewSet_relationships_appStoreVersionLocalization_data(type: "type_example", id: "id_example")), appCustomProductPageLocalization: AppPreviewSetCreateRequest_data_relationships_appCustomProductPageLocalization(data: AppCustomProductPageVersion_relationships_appCustomProductPageLocalizations_data_inner(type: "type_example", id: "id_example")), appStoreVersionExperimentTreatmentLocalization: AppPreviewSetCreateRequest_data_relationships_appStoreVersionExperimentTreatmentLocalization(data: AppPreviewSet_relationships_appStoreVersionExperimentTreatmentLocalization_data(type: "type_example", id: "id_example"))))) // AppScreenshotSetCreateRequest | AppScreenshotSet representation

AppScreenshotSetsAPI.appScreenshotSetsCreateInstance(appScreenshotSetCreateRequest: appScreenshotSetCreateRequest) { (response, error) in
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
 **appScreenshotSetCreateRequest** | [**AppScreenshotSetCreateRequest**](AppScreenshotSetCreateRequest.md) | AppScreenshotSet representation | 

### Return type

[**AppScreenshotSetResponse**](AppScreenshotSetResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **appScreenshotSetsDeleteInstance**
```swift
    open class func appScreenshotSetsDeleteInstance(id: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource

AppScreenshotSetsAPI.appScreenshotSetsDeleteInstance(id: id) { (response, error) in
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

# **appScreenshotSetsGetInstance**
```swift
    open class func appScreenshotSetsGetInstance(id: String, fieldsAppScreenshotSets: [FieldsAppScreenshotSets_appScreenshotSetsGetInstance]? = nil, include: [Include_appScreenshotSetsGetInstance]? = nil, fieldsAppScreenshots: [FieldsAppScreenshots_appScreenshotSetsGetInstance]? = nil, limitAppScreenshots: Int? = nil, completion: @escaping (_ data: AppScreenshotSetResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let fieldsAppScreenshotSets = ["fieldsAppScreenshotSets_example"] // [String] | the fields to include for returned resources of type appScreenshotSets (optional)
let include = ["include_example"] // [String] | comma-separated list of relationships to include (optional)
let fieldsAppScreenshots = ["fieldsAppScreenshots_example"] // [String] | the fields to include for returned resources of type appScreenshots (optional)
let limitAppScreenshots = 987 // Int | maximum number of related appScreenshots returned (when they are included) (optional)

AppScreenshotSetsAPI.appScreenshotSetsGetInstance(id: id, fieldsAppScreenshotSets: fieldsAppScreenshotSets, include: include, fieldsAppScreenshots: fieldsAppScreenshots, limitAppScreenshots: limitAppScreenshots) { (response, error) in
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
 **fieldsAppScreenshotSets** | [**[String]**](String.md) | the fields to include for returned resources of type appScreenshotSets | [optional] 
 **include** | [**[String]**](String.md) | comma-separated list of relationships to include | [optional] 
 **fieldsAppScreenshots** | [**[String]**](String.md) | the fields to include for returned resources of type appScreenshots | [optional] 
 **limitAppScreenshots** | **Int** | maximum number of related appScreenshots returned (when they are included) | [optional] 

### Return type

[**AppScreenshotSetResponse**](AppScreenshotSetResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

