# AnalyticsReportRequestsAPI

All URIs are relative to *https://api.appstoreconnect.apple.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**analyticsReportRequestsCreateInstance**](AnalyticsReportRequestsAPI.md#analyticsreportrequestscreateinstance) | **POST** /v1/analyticsReportRequests | 
[**analyticsReportRequestsDeleteInstance**](AnalyticsReportRequestsAPI.md#analyticsreportrequestsdeleteinstance) | **DELETE** /v1/analyticsReportRequests/{id} | 
[**analyticsReportRequestsGetInstance**](AnalyticsReportRequestsAPI.md#analyticsreportrequestsgetinstance) | **GET** /v1/analyticsReportRequests/{id} | 
[**analyticsReportRequestsReportsGetToManyRelated**](AnalyticsReportRequestsAPI.md#analyticsreportrequestsreportsgettomanyrelated) | **GET** /v1/analyticsReportRequests/{id}/reports | 


# **analyticsReportRequestsCreateInstance**
```swift
    open class func analyticsReportRequestsCreateInstance(analyticsReportRequestCreateRequest: AnalyticsReportRequestCreateRequest, completion: @escaping (_ data: AnalyticsReportRequestResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let analyticsReportRequestCreateRequest = AnalyticsReportRequestCreateRequest(data: AnalyticsReportRequestCreateRequest_data(type: "type_example", attributes: AnalyticsReportRequestCreateRequest_data_attributes(accessType: "accessType_example"), relationships: AnalyticsReportRequestCreateRequest_data_relationships(app: AnalyticsReportRequestCreateRequest_data_relationships_app(data: AlternativeDistributionKeyCreateRequest_data_relationships_app_data(type: "type_example", id: "id_example"))))) // AnalyticsReportRequestCreateRequest | AnalyticsReportRequest representation

AnalyticsReportRequestsAPI.analyticsReportRequestsCreateInstance(analyticsReportRequestCreateRequest: analyticsReportRequestCreateRequest) { (response, error) in
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
 **analyticsReportRequestCreateRequest** | [**AnalyticsReportRequestCreateRequest**](AnalyticsReportRequestCreateRequest.md) | AnalyticsReportRequest representation | 

### Return type

[**AnalyticsReportRequestResponse**](AnalyticsReportRequestResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **analyticsReportRequestsDeleteInstance**
```swift
    open class func analyticsReportRequestsDeleteInstance(id: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource

AnalyticsReportRequestsAPI.analyticsReportRequestsDeleteInstance(id: id) { (response, error) in
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

# **analyticsReportRequestsGetInstance**
```swift
    open class func analyticsReportRequestsGetInstance(id: String, fieldsAnalyticsReportRequests: [FieldsAnalyticsReportRequests_analyticsReportRequestsGetInstance]? = nil, fieldsAnalyticsReports: [FieldsAnalyticsReports_analyticsReportRequestsGetInstance]? = nil, include: [Include_analyticsReportRequestsGetInstance]? = nil, limitReports: Int? = nil, completion: @escaping (_ data: AnalyticsReportRequestResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let fieldsAnalyticsReportRequests = ["fieldsAnalyticsReportRequests_example"] // [String] | the fields to include for returned resources of type analyticsReportRequests (optional)
let fieldsAnalyticsReports = ["fieldsAnalyticsReports_example"] // [String] | the fields to include for returned resources of type analyticsReports (optional)
let include = ["include_example"] // [String] | comma-separated list of relationships to include (optional)
let limitReports = 987 // Int | maximum number of related reports returned (when they are included) (optional)

AnalyticsReportRequestsAPI.analyticsReportRequestsGetInstance(id: id, fieldsAnalyticsReportRequests: fieldsAnalyticsReportRequests, fieldsAnalyticsReports: fieldsAnalyticsReports, include: include, limitReports: limitReports) { (response, error) in
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
 **fieldsAnalyticsReportRequests** | [**[String]**](String.md) | the fields to include for returned resources of type analyticsReportRequests | [optional] 
 **fieldsAnalyticsReports** | [**[String]**](String.md) | the fields to include for returned resources of type analyticsReports | [optional] 
 **include** | [**[String]**](String.md) | comma-separated list of relationships to include | [optional] 
 **limitReports** | **Int** | maximum number of related reports returned (when they are included) | [optional] 

### Return type

[**AnalyticsReportRequestResponse**](AnalyticsReportRequestResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **analyticsReportRequestsReportsGetToManyRelated**
```swift
    open class func analyticsReportRequestsReportsGetToManyRelated(id: String, filterName: [String]? = nil, filterCategory: [FilterCategory_analyticsReportRequestsReportsGetToManyRelated]? = nil, fieldsAnalyticsReports: [FieldsAnalyticsReports_analyticsReportRequestsReportsGetToManyRelated]? = nil, limit: Int? = nil, completion: @escaping (_ data: AnalyticsReportsResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let filterName = ["inner_example"] // [String] | filter by attribute 'name' (optional)
let filterCategory = ["filterCategory_example"] // [String] | filter by attribute 'category' (optional)
let fieldsAnalyticsReports = ["fieldsAnalyticsReports_example"] // [String] | the fields to include for returned resources of type analyticsReports (optional)
let limit = 987 // Int | maximum resources per page (optional)

AnalyticsReportRequestsAPI.analyticsReportRequestsReportsGetToManyRelated(id: id, filterName: filterName, filterCategory: filterCategory, fieldsAnalyticsReports: fieldsAnalyticsReports, limit: limit) { (response, error) in
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
 **filterName** | [**[String]**](String.md) | filter by attribute &#39;name&#39; | [optional] 
 **filterCategory** | [**[String]**](String.md) | filter by attribute &#39;category&#39; | [optional] 
 **fieldsAnalyticsReports** | [**[String]**](String.md) | the fields to include for returned resources of type analyticsReports | [optional] 
 **limit** | **Int** | maximum resources per page | [optional] 

### Return type

[**AnalyticsReportsResponse**](AnalyticsReportsResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

