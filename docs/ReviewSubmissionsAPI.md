# ReviewSubmissionsAPI

All URIs are relative to *https://api.appstoreconnect.apple.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**reviewSubmissionsCreateInstance**](ReviewSubmissionsAPI.md#reviewsubmissionscreateinstance) | **POST** /v1/reviewSubmissions | 
[**reviewSubmissionsGetCollection**](ReviewSubmissionsAPI.md#reviewsubmissionsgetcollection) | **GET** /v1/reviewSubmissions | 
[**reviewSubmissionsGetInstance**](ReviewSubmissionsAPI.md#reviewsubmissionsgetinstance) | **GET** /v1/reviewSubmissions/{id} | 
[**reviewSubmissionsItemsGetToManyRelated**](ReviewSubmissionsAPI.md#reviewsubmissionsitemsgettomanyrelated) | **GET** /v1/reviewSubmissions/{id}/items | 
[**reviewSubmissionsUpdateInstance**](ReviewSubmissionsAPI.md#reviewsubmissionsupdateinstance) | **PATCH** /v1/reviewSubmissions/{id} | 


# **reviewSubmissionsCreateInstance**
```swift
    open class func reviewSubmissionsCreateInstance(reviewSubmissionCreateRequest: ReviewSubmissionCreateRequest, completion: @escaping (_ data: ReviewSubmissionResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let reviewSubmissionCreateRequest = ReviewSubmissionCreateRequest(data: ReviewSubmissionCreateRequest_data(type: "type_example", attributes: ReviewSubmissionCreateRequest_data_attributes(platform: Platform()), relationships: AnalyticsReportRequestCreateRequest_data_relationships(app: AnalyticsReportRequestCreateRequest_data_relationships_app(data: AlternativeDistributionKeyCreateRequest_data_relationships_app_data(type: "type_example", id: "id_example"))))) // ReviewSubmissionCreateRequest | ReviewSubmission representation

ReviewSubmissionsAPI.reviewSubmissionsCreateInstance(reviewSubmissionCreateRequest: reviewSubmissionCreateRequest) { (response, error) in
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
 **reviewSubmissionCreateRequest** | [**ReviewSubmissionCreateRequest**](ReviewSubmissionCreateRequest.md) | ReviewSubmission representation | 

### Return type

[**ReviewSubmissionResponse**](ReviewSubmissionResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **reviewSubmissionsGetCollection**
```swift
    open class func reviewSubmissionsGetCollection(filterApp: [String], filterPlatform: [FilterPlatform_reviewSubmissionsGetCollection]? = nil, filterState: [FilterState_reviewSubmissionsGetCollection]? = nil, fieldsReviewSubmissions: [FieldsReviewSubmissions_reviewSubmissionsGetCollection]? = nil, fieldsReviewSubmissionItems: [FieldsReviewSubmissionItems_reviewSubmissionsGetCollection]? = nil, limit: Int? = nil, include: [Include_reviewSubmissionsGetCollection]? = nil, limitItems: Int? = nil, completion: @escaping (_ data: ReviewSubmissionsResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let filterApp = ["inner_example"] // [String] | filter by id(s) of related 'app'
let filterPlatform = ["filterPlatform_example"] // [String] | filter by attribute 'platform' (optional)
let filterState = ["filterState_example"] // [String] | filter by attribute 'state' (optional)
let fieldsReviewSubmissions = ["fieldsReviewSubmissions_example"] // [String] | the fields to include for returned resources of type reviewSubmissions (optional)
let fieldsReviewSubmissionItems = ["fieldsReviewSubmissionItems_example"] // [String] | the fields to include for returned resources of type reviewSubmissionItems (optional)
let limit = 987 // Int | maximum resources per page (optional)
let include = ["include_example"] // [String] | comma-separated list of relationships to include (optional)
let limitItems = 987 // Int | maximum number of related items returned (when they are included) (optional)

ReviewSubmissionsAPI.reviewSubmissionsGetCollection(filterApp: filterApp, filterPlatform: filterPlatform, filterState: filterState, fieldsReviewSubmissions: fieldsReviewSubmissions, fieldsReviewSubmissionItems: fieldsReviewSubmissionItems, limit: limit, include: include, limitItems: limitItems) { (response, error) in
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
 **filterApp** | [**[String]**](String.md) | filter by id(s) of related &#39;app&#39; | 
 **filterPlatform** | [**[String]**](String.md) | filter by attribute &#39;platform&#39; | [optional] 
 **filterState** | [**[String]**](String.md) | filter by attribute &#39;state&#39; | [optional] 
 **fieldsReviewSubmissions** | [**[String]**](String.md) | the fields to include for returned resources of type reviewSubmissions | [optional] 
 **fieldsReviewSubmissionItems** | [**[String]**](String.md) | the fields to include for returned resources of type reviewSubmissionItems | [optional] 
 **limit** | **Int** | maximum resources per page | [optional] 
 **include** | [**[String]**](String.md) | comma-separated list of relationships to include | [optional] 
 **limitItems** | **Int** | maximum number of related items returned (when they are included) | [optional] 

### Return type

[**ReviewSubmissionsResponse**](ReviewSubmissionsResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **reviewSubmissionsGetInstance**
```swift
    open class func reviewSubmissionsGetInstance(id: String, fieldsReviewSubmissions: [FieldsReviewSubmissions_reviewSubmissionsGetInstance]? = nil, fieldsReviewSubmissionItems: [FieldsReviewSubmissionItems_reviewSubmissionsGetInstance]? = nil, include: [Include_reviewSubmissionsGetInstance]? = nil, limitItems: Int? = nil, completion: @escaping (_ data: ReviewSubmissionResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let fieldsReviewSubmissions = ["fieldsReviewSubmissions_example"] // [String] | the fields to include for returned resources of type reviewSubmissions (optional)
let fieldsReviewSubmissionItems = ["fieldsReviewSubmissionItems_example"] // [String] | the fields to include for returned resources of type reviewSubmissionItems (optional)
let include = ["include_example"] // [String] | comma-separated list of relationships to include (optional)
let limitItems = 987 // Int | maximum number of related items returned (when they are included) (optional)

ReviewSubmissionsAPI.reviewSubmissionsGetInstance(id: id, fieldsReviewSubmissions: fieldsReviewSubmissions, fieldsReviewSubmissionItems: fieldsReviewSubmissionItems, include: include, limitItems: limitItems) { (response, error) in
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
 **fieldsReviewSubmissions** | [**[String]**](String.md) | the fields to include for returned resources of type reviewSubmissions | [optional] 
 **fieldsReviewSubmissionItems** | [**[String]**](String.md) | the fields to include for returned resources of type reviewSubmissionItems | [optional] 
 **include** | [**[String]**](String.md) | comma-separated list of relationships to include | [optional] 
 **limitItems** | **Int** | maximum number of related items returned (when they are included) | [optional] 

### Return type

[**ReviewSubmissionResponse**](ReviewSubmissionResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **reviewSubmissionsItemsGetToManyRelated**
```swift
    open class func reviewSubmissionsItemsGetToManyRelated(id: String, fieldsReviewSubmissionItems: [FieldsReviewSubmissionItems_reviewSubmissionsItemsGetToManyRelated]? = nil, fieldsAppStoreVersions: [FieldsAppStoreVersions_reviewSubmissionsItemsGetToManyRelated]? = nil, fieldsAppCustomProductPageVersions: [FieldsAppCustomProductPageVersions_reviewSubmissionsItemsGetToManyRelated]? = nil, fieldsAppStoreVersionExperiments: [FieldsAppStoreVersionExperiments_reviewSubmissionsItemsGetToManyRelated]? = nil, fieldsAppEvents: [FieldsAppEvents_reviewSubmissionsItemsGetToManyRelated]? = nil, limit: Int? = nil, include: [Include_reviewSubmissionsItemsGetToManyRelated]? = nil, completion: @escaping (_ data: ReviewSubmissionItemsResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let fieldsReviewSubmissionItems = ["fieldsReviewSubmissionItems_example"] // [String] | the fields to include for returned resources of type reviewSubmissionItems (optional)
let fieldsAppStoreVersions = ["fieldsAppStoreVersions_example"] // [String] | the fields to include for returned resources of type appStoreVersions (optional)
let fieldsAppCustomProductPageVersions = ["fieldsAppCustomProductPageVersions_example"] // [String] | the fields to include for returned resources of type appCustomProductPageVersions (optional)
let fieldsAppStoreVersionExperiments = ["fieldsAppStoreVersionExperiments_example"] // [String] | the fields to include for returned resources of type appStoreVersionExperiments (optional)
let fieldsAppEvents = ["fieldsAppEvents_example"] // [String] | the fields to include for returned resources of type appEvents (optional)
let limit = 987 // Int | maximum resources per page (optional)
let include = ["include_example"] // [String] | comma-separated list of relationships to include (optional)

ReviewSubmissionsAPI.reviewSubmissionsItemsGetToManyRelated(id: id, fieldsReviewSubmissionItems: fieldsReviewSubmissionItems, fieldsAppStoreVersions: fieldsAppStoreVersions, fieldsAppCustomProductPageVersions: fieldsAppCustomProductPageVersions, fieldsAppStoreVersionExperiments: fieldsAppStoreVersionExperiments, fieldsAppEvents: fieldsAppEvents, limit: limit, include: include) { (response, error) in
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
 **fieldsReviewSubmissionItems** | [**[String]**](String.md) | the fields to include for returned resources of type reviewSubmissionItems | [optional] 
 **fieldsAppStoreVersions** | [**[String]**](String.md) | the fields to include for returned resources of type appStoreVersions | [optional] 
 **fieldsAppCustomProductPageVersions** | [**[String]**](String.md) | the fields to include for returned resources of type appCustomProductPageVersions | [optional] 
 **fieldsAppStoreVersionExperiments** | [**[String]**](String.md) | the fields to include for returned resources of type appStoreVersionExperiments | [optional] 
 **fieldsAppEvents** | [**[String]**](String.md) | the fields to include for returned resources of type appEvents | [optional] 
 **limit** | **Int** | maximum resources per page | [optional] 
 **include** | [**[String]**](String.md) | comma-separated list of relationships to include | [optional] 

### Return type

[**ReviewSubmissionItemsResponse**](ReviewSubmissionItemsResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **reviewSubmissionsUpdateInstance**
```swift
    open class func reviewSubmissionsUpdateInstance(id: String, reviewSubmissionUpdateRequest: ReviewSubmissionUpdateRequest, completion: @escaping (_ data: ReviewSubmissionResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let reviewSubmissionUpdateRequest = ReviewSubmissionUpdateRequest(data: ReviewSubmissionUpdateRequest_data(type: "type_example", id: "id_example", attributes: ReviewSubmissionUpdateRequest_data_attributes(submitted: false, canceled: false))) // ReviewSubmissionUpdateRequest | ReviewSubmission representation

ReviewSubmissionsAPI.reviewSubmissionsUpdateInstance(id: id, reviewSubmissionUpdateRequest: reviewSubmissionUpdateRequest) { (response, error) in
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
 **reviewSubmissionUpdateRequest** | [**ReviewSubmissionUpdateRequest**](ReviewSubmissionUpdateRequest.md) | ReviewSubmission representation | 

### Return type

[**ReviewSubmissionResponse**](ReviewSubmissionResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

