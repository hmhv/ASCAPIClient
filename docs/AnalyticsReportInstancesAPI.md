# AnalyticsReportInstancesAPI

All URIs are relative to *https://api.appstoreconnect.apple.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**analyticsReportInstancesGetInstance**](AnalyticsReportInstancesAPI.md#analyticsreportinstancesgetinstance) | **GET** /v1/analyticsReportInstances/{id} | 
[**analyticsReportInstancesSegmentsGetToManyRelated**](AnalyticsReportInstancesAPI.md#analyticsreportinstancessegmentsgettomanyrelated) | **GET** /v1/analyticsReportInstances/{id}/segments | 


# **analyticsReportInstancesGetInstance**
```swift
    open class func analyticsReportInstancesGetInstance(id: String, fieldsAnalyticsReportInstances: [FieldsAnalyticsReportInstances_analyticsReportInstancesGetInstance]? = nil, fieldsAnalyticsReportSegments: [FieldsAnalyticsReportSegments_analyticsReportInstancesGetInstance]? = nil, completion: @escaping (_ data: AnalyticsReportInstanceResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let fieldsAnalyticsReportInstances = ["fieldsAnalyticsReportInstances_example"] // [String] | the fields to include for returned resources of type analyticsReportInstances (optional)
let fieldsAnalyticsReportSegments = ["fieldsAnalyticsReportSegments_example"] // [String] | the fields to include for returned resources of type analyticsReportSegments (optional)

AnalyticsReportInstancesAPI.analyticsReportInstancesGetInstance(id: id, fieldsAnalyticsReportInstances: fieldsAnalyticsReportInstances, fieldsAnalyticsReportSegments: fieldsAnalyticsReportSegments) { (response, error) in
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
 **fieldsAnalyticsReportInstances** | [**[String]**](String.md) | the fields to include for returned resources of type analyticsReportInstances | [optional] 
 **fieldsAnalyticsReportSegments** | [**[String]**](String.md) | the fields to include for returned resources of type analyticsReportSegments | [optional] 

### Return type

[**AnalyticsReportInstanceResponse**](AnalyticsReportInstanceResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **analyticsReportInstancesSegmentsGetToManyRelated**
```swift
    open class func analyticsReportInstancesSegmentsGetToManyRelated(id: String, fieldsAnalyticsReportSegments: [FieldsAnalyticsReportSegments_analyticsReportInstancesSegmentsGetToManyRelated]? = nil, limit: Int? = nil, completion: @escaping (_ data: AnalyticsReportSegmentsResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let fieldsAnalyticsReportSegments = ["fieldsAnalyticsReportSegments_example"] // [String] | the fields to include for returned resources of type analyticsReportSegments (optional)
let limit = 987 // Int | maximum resources per page (optional)

AnalyticsReportInstancesAPI.analyticsReportInstancesSegmentsGetToManyRelated(id: id, fieldsAnalyticsReportSegments: fieldsAnalyticsReportSegments, limit: limit) { (response, error) in
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
 **fieldsAnalyticsReportSegments** | [**[String]**](String.md) | the fields to include for returned resources of type analyticsReportSegments | [optional] 
 **limit** | **Int** | maximum resources per page | [optional] 

### Return type

[**AnalyticsReportSegmentsResponse**](AnalyticsReportSegmentsResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

