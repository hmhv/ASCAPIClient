# FinanceReportsAPI

All URIs are relative to *https://api.appstoreconnect.apple.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**financeReportsGetCollection**](FinanceReportsAPI.md#financereportsgetcollection) | **GET** /v1/financeReports | 


# **financeReportsGetCollection**
```swift
    open class func financeReportsGetCollection(filterVendorNumber: [String], filterReportType: [FilterReportType_financeReportsGetCollection], filterRegionCode: [String], filterReportDate: [String], completion: @escaping (_ data: URL?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let filterVendorNumber = ["inner_example"] // [String] | filter by attribute 'vendorNumber'
let filterReportType = ["filterReportType_example"] // [String] | filter by attribute 'reportType'
let filterRegionCode = ["inner_example"] // [String] | filter by attribute 'regionCode'
let filterReportDate = ["inner_example"] // [String] | filter by attribute 'reportDate'

FinanceReportsAPI.financeReportsGetCollection(filterVendorNumber: filterVendorNumber, filterReportType: filterReportType, filterRegionCode: filterRegionCode, filterReportDate: filterReportDate) { (response, error) in
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
 **filterRegionCode** | [**[String]**](String.md) | filter by attribute &#39;regionCode&#39; | 
 **filterReportDate** | [**[String]**](String.md) | filter by attribute &#39;reportDate&#39; | 

### Return type

**URL**

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/a-gzip

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

