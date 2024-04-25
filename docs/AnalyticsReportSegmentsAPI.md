# AnalyticsReportSegmentsAPI

All URIs are relative to *https://api.appstoreconnect.apple.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**analyticsReportSegmentsGetInstance**](AnalyticsReportSegmentsAPI.md#analyticsreportsegmentsgetinstance) | **GET** /v1/analyticsReportSegments/{id} | 


# **analyticsReportSegmentsGetInstance**
```swift
    open class func analyticsReportSegmentsGetInstance(id: String, fieldsAnalyticsReportSegments: [FieldsAnalyticsReportSegments_analyticsReportSegmentsGetInstance]? = nil, completion: @escaping (_ data: AnalyticsReportSegmentResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let fieldsAnalyticsReportSegments = ["fieldsAnalyticsReportSegments_example"] // [String] | the fields to include for returned resources of type analyticsReportSegments (optional)

AnalyticsReportSegmentsAPI.analyticsReportSegmentsGetInstance(id: id, fieldsAnalyticsReportSegments: fieldsAnalyticsReportSegments) { (response, error) in
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

### Return type

[**AnalyticsReportSegmentResponse**](AnalyticsReportSegmentResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

