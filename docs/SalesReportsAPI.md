# SalesReportsAPI

All URIs are relative to *https://api.appstoreconnect.apple.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**salesReportsGetCollection**](SalesReportsAPI.md#salesreportsgetcollection) | **GET** /v1/salesReports | 


# **salesReportsGetCollection**
```swift
    open class func salesReportsGetCollection(filterVendorNumber: [String], filterReportType: [FilterReportType_salesReportsGetCollection], filterReportSubType: [FilterReportSubType_salesReportsGetCollection], filterFrequency: [FilterFrequency_salesReportsGetCollection], filterReportDate: [String]? = nil, filterVersion: [String]? = nil, completion: @escaping (_ data: URL?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let filterVendorNumber = ["inner_example"] // [String] | filter by attribute 'vendorNumber'
let filterReportType = ["filterReportType_example"] // [String] | filter by attribute 'reportType'
let filterReportSubType = ["filterReportSubType_example"] // [String] | filter by attribute 'reportSubType'
let filterFrequency = ["filterFrequency_example"] // [String] | filter by attribute 'frequency'
let filterReportDate = ["inner_example"] // [String] | filter by attribute 'reportDate' (optional)
let filterVersion = ["inner_example"] // [String] | filter by attribute 'version' (optional)

SalesReportsAPI.salesReportsGetCollection(filterVendorNumber: filterVendorNumber, filterReportType: filterReportType, filterReportSubType: filterReportSubType, filterFrequency: filterFrequency, filterReportDate: filterReportDate, filterVersion: filterVersion) { (response, error) in
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
 **filterVendorNumber** | [**[String]**](String.md) | filter by attribute &#39;vendorNumber&#39; | 
 **filterReportType** | [**[String]**](String.md) | filter by attribute &#39;reportType&#39; | 
 **filterReportSubType** | [**[String]**](String.md) | filter by attribute &#39;reportSubType&#39; | 
 **filterFrequency** | [**[String]**](String.md) | filter by attribute &#39;frequency&#39; | 
 **filterReportDate** | [**[String]**](String.md) | filter by attribute &#39;reportDate&#39; | [optional] 
 **filterVersion** | [**[String]**](String.md) | filter by attribute &#39;version&#39; | [optional] 

### Return type

**URL**

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/a-gzip

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

