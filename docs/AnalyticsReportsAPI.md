# AnalyticsReportsAPI

All URIs are relative to *https://api.appstoreconnect.apple.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**analyticsReportsGetInstance**](AnalyticsReportsAPI.md#analyticsreportsgetinstance) | **GET** /v1/analyticsReports/{id} | 
[**analyticsReportsInstancesGetToManyRelated**](AnalyticsReportsAPI.md#analyticsreportsinstancesgettomanyrelated) | **GET** /v1/analyticsReports/{id}/instances | 


# **analyticsReportsGetInstance**
```swift
    open class func analyticsReportsGetInstance(id: String, fieldsAnalyticsReports: [FieldsAnalyticsReports_analyticsReportsGetInstance]? = nil, fieldsAnalyticsReportInstances: [FieldsAnalyticsReportInstances_analyticsReportsGetInstance]? = nil, completion: @escaping (_ data: AnalyticsReportResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let fieldsAnalyticsReports = ["fieldsAnalyticsReports_example"] // [String] | the fields to include for returned resources of type analyticsReports (optional)
let fieldsAnalyticsReportInstances = ["fieldsAnalyticsReportInstances_example"] // [String] | the fields to include for returned resources of type analyticsReportInstances (optional)

AnalyticsReportsAPI.analyticsReportsGetInstance(id: id, fieldsAnalyticsReports: fieldsAnalyticsReports, fieldsAnalyticsReportInstances: fieldsAnalyticsReportInstances) { (response, error) in
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
 **fieldsAnalyticsReports** | [**[String]**](String.md) | the fields to include for returned resources of type analyticsReports | [optional] 
 **fieldsAnalyticsReportInstances** | [**[String]**](String.md) | the fields to include for returned resources of type analyticsReportInstances | [optional] 

### Return type

[**AnalyticsReportResponse**](AnalyticsReportResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **analyticsReportsInstancesGetToManyRelated**
```swift
    open class func analyticsReportsInstancesGetToManyRelated(id: String, filterGranularity: [FilterGranularity_analyticsReportsInstancesGetToManyRelated]? = nil, filterProcessingDate: [String]? = nil, fieldsAnalyticsReportInstances: [FieldsAnalyticsReportInstances_analyticsReportsInstancesGetToManyRelated]? = nil, limit: Int? = nil, completion: @escaping (_ data: AnalyticsReportInstancesResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let filterGranularity = ["filterGranularity_example"] // [String] | filter by attribute 'granularity' (optional)
let filterProcessingDate = ["inner_example"] // [String] | filter by attribute 'processingDate' (optional)
let fieldsAnalyticsReportInstances = ["fieldsAnalyticsReportInstances_example"] // [String] | the fields to include for returned resources of type analyticsReportInstances (optional)
let limit = 987 // Int | maximum resources per page (optional)

AnalyticsReportsAPI.analyticsReportsInstancesGetToManyRelated(id: id, filterGranularity: filterGranularity, filterProcessingDate: filterProcessingDate, fieldsAnalyticsReportInstances: fieldsAnalyticsReportInstances, limit: limit) { (response, error) in
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
 **filterGranularity** | [**[String]**](String.md) | filter by attribute &#39;granularity&#39; | [optional] 
 **filterProcessingDate** | [**[String]**](String.md) | filter by attribute &#39;processingDate&#39; | [optional] 
 **fieldsAnalyticsReportInstances** | [**[String]**](String.md) | the fields to include for returned resources of type analyticsReportInstances | [optional] 
 **limit** | **Int** | maximum resources per page | [optional] 

### Return type

[**AnalyticsReportInstancesResponse**](AnalyticsReportInstancesResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

