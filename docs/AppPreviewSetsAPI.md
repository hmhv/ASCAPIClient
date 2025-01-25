# AppPreviewSetsAPI

All URIs are relative to *https://api.appstoreconnect.apple.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**appPreviewSetsAppPreviewsGetToManyRelated**](AppPreviewSetsAPI.md#apppreviewsetsapppreviewsgettomanyrelated) | **GET** /v1/appPreviewSets/{id}/appPreviews | 
[**appPreviewSetsAppPreviewsGetToManyRelationship**](AppPreviewSetsAPI.md#apppreviewsetsapppreviewsgettomanyrelationship) | **GET** /v1/appPreviewSets/{id}/relationships/appPreviews | 
[**appPreviewSetsAppPreviewsReplaceToManyRelationship**](AppPreviewSetsAPI.md#apppreviewsetsapppreviewsreplacetomanyrelationship) | **PATCH** /v1/appPreviewSets/{id}/relationships/appPreviews | 
[**appPreviewSetsCreateInstance**](AppPreviewSetsAPI.md#apppreviewsetscreateinstance) | **POST** /v1/appPreviewSets | 
[**appPreviewSetsDeleteInstance**](AppPreviewSetsAPI.md#apppreviewsetsdeleteinstance) | **DELETE** /v1/appPreviewSets/{id} | 
[**appPreviewSetsGetInstance**](AppPreviewSetsAPI.md#apppreviewsetsgetinstance) | **GET** /v1/appPreviewSets/{id} | 


# **appPreviewSetsAppPreviewsGetToManyRelated**
```swift
    open class func appPreviewSetsAppPreviewsGetToManyRelated(id: String, fieldsAppPreviews: [FieldsAppPreviews_appPreviewSetsAppPreviewsGetToManyRelated]? = nil, fieldsAppPreviewSets: [FieldsAppPreviewSets_appPreviewSetsAppPreviewsGetToManyRelated]? = nil, limit: Int? = nil, include: [Include_appPreviewSetsAppPreviewsGetToManyRelated]? = nil, completion: @escaping (_ data: AppPreviewsResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let fieldsAppPreviews = ["fieldsAppPreviews_example"] // [String] | the fields to include for returned resources of type appPreviews (optional)
let fieldsAppPreviewSets = ["fieldsAppPreviewSets_example"] // [String] | the fields to include for returned resources of type appPreviewSets (optional)
let limit = 987 // Int | maximum resources per page (optional)
let include = ["include_example"] // [String] | comma-separated list of relationships to include (optional)

AppPreviewSetsAPI.appPreviewSetsAppPreviewsGetToManyRelated(id: id, fieldsAppPreviews: fieldsAppPreviews, fieldsAppPreviewSets: fieldsAppPreviewSets, limit: limit, include: include) { (response, error) in
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
 **fieldsAppPreviews** | [**[String]**](String.md) | the fields to include for returned resources of type appPreviews | [optional] 
 **fieldsAppPreviewSets** | [**[String]**](String.md) | the fields to include for returned resources of type appPreviewSets | [optional] 
 **limit** | **Int** | maximum resources per page | [optional] 
 **include** | [**[String]**](String.md) | comma-separated list of relationships to include | [optional] 

### Return type

[**AppPreviewsResponse**](AppPreviewsResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **appPreviewSetsAppPreviewsGetToManyRelationship**
```swift
    open class func appPreviewSetsAppPreviewsGetToManyRelationship(id: String, limit: Int? = nil, completion: @escaping (_ data: AppPreviewSetAppPreviewsLinkagesResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let limit = 987 // Int | maximum resources per page (optional)

AppPreviewSetsAPI.appPreviewSetsAppPreviewsGetToManyRelationship(id: id, limit: limit) { (response, error) in
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

[**AppPreviewSetAppPreviewsLinkagesResponse**](AppPreviewSetAppPreviewsLinkagesResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **appPreviewSetsAppPreviewsReplaceToManyRelationship**
```swift
    open class func appPreviewSetsAppPreviewsReplaceToManyRelationship(id: String, appPreviewSetAppPreviewsLinkagesRequest: AppPreviewSetAppPreviewsLinkagesRequest, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let appPreviewSetAppPreviewsLinkagesRequest = AppPreviewSetAppPreviewsLinkagesRequest(data: [AppPreviewSet_relationships_appPreviews_data_inner(type: "type_example", id: "id_example")]) // AppPreviewSetAppPreviewsLinkagesRequest | List of related linkages

AppPreviewSetsAPI.appPreviewSetsAppPreviewsReplaceToManyRelationship(id: id, appPreviewSetAppPreviewsLinkagesRequest: appPreviewSetAppPreviewsLinkagesRequest) { (response, error) in
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
 **appPreviewSetAppPreviewsLinkagesRequest** | [**AppPreviewSetAppPreviewsLinkagesRequest**](AppPreviewSetAppPreviewsLinkagesRequest.md) | List of related linkages | 

### Return type

Void (empty response body)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **appPreviewSetsCreateInstance**
```swift
    open class func appPreviewSetsCreateInstance(appPreviewSetCreateRequest: AppPreviewSetCreateRequest, completion: @escaping (_ data: AppPreviewSetResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let appPreviewSetCreateRequest = AppPreviewSetCreateRequest(data: AppPreviewSetCreateRequest_data(type: "type_example", attributes: AppPreviewSetCreateRequest_data_attributes(previewType: PreviewType()), relationships: AppPreviewSetCreateRequest_data_relationships(appStoreVersionLocalization: AppPreviewSet_relationships_appStoreVersionLocalization(data: AppPreviewSet_relationships_appStoreVersionLocalization_data(type: "type_example", id: "id_example")), appCustomProductPageLocalization: AppPreviewSet_relationships_appCustomProductPageLocalization(data: AppCustomProductPageVersion_relationships_appCustomProductPageLocalizations_data_inner(type: "type_example", id: "id_example")), appStoreVersionExperimentTreatmentLocalization: AppPreviewSet_relationships_appStoreVersionExperimentTreatmentLocalization(data: AppPreviewSet_relationships_appStoreVersionExperimentTreatmentLocalization_data(type: "type_example", id: "id_example"))))) // AppPreviewSetCreateRequest | AppPreviewSet representation

AppPreviewSetsAPI.appPreviewSetsCreateInstance(appPreviewSetCreateRequest: appPreviewSetCreateRequest) { (response, error) in
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
 **appPreviewSetCreateRequest** | [**AppPreviewSetCreateRequest**](AppPreviewSetCreateRequest.md) | AppPreviewSet representation | 

### Return type

[**AppPreviewSetResponse**](AppPreviewSetResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **appPreviewSetsDeleteInstance**
```swift
    open class func appPreviewSetsDeleteInstance(id: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource

AppPreviewSetsAPI.appPreviewSetsDeleteInstance(id: id) { (response, error) in
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

# **appPreviewSetsGetInstance**
```swift
    open class func appPreviewSetsGetInstance(id: String, fieldsAppPreviewSets: [FieldsAppPreviewSets_appPreviewSetsGetInstance]? = nil, fieldsAppPreviews: [FieldsAppPreviews_appPreviewSetsGetInstance]? = nil, include: [Include_appPreviewSetsGetInstance]? = nil, limitAppPreviews: Int? = nil, completion: @escaping (_ data: AppPreviewSetResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let fieldsAppPreviewSets = ["fieldsAppPreviewSets_example"] // [String] | the fields to include for returned resources of type appPreviewSets (optional)
let fieldsAppPreviews = ["fieldsAppPreviews_example"] // [String] | the fields to include for returned resources of type appPreviews (optional)
let include = ["include_example"] // [String] | comma-separated list of relationships to include (optional)
let limitAppPreviews = 987 // Int | maximum number of related appPreviews returned (when they are included) (optional)

AppPreviewSetsAPI.appPreviewSetsGetInstance(id: id, fieldsAppPreviewSets: fieldsAppPreviewSets, fieldsAppPreviews: fieldsAppPreviews, include: include, limitAppPreviews: limitAppPreviews) { (response, error) in
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
 **fieldsAppPreviewSets** | [**[String]**](String.md) | the fields to include for returned resources of type appPreviewSets | [optional] 
 **fieldsAppPreviews** | [**[String]**](String.md) | the fields to include for returned resources of type appPreviews | [optional] 
 **include** | [**[String]**](String.md) | comma-separated list of relationships to include | [optional] 
 **limitAppPreviews** | **Int** | maximum number of related appPreviews returned (when they are included) | [optional] 

### Return type

[**AppPreviewSetResponse**](AppPreviewSetResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

