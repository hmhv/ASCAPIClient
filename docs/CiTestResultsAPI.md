# CiTestResultsAPI

All URIs are relative to *https://api.appstoreconnect.apple.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**ciTestResultsGetInstance**](CiTestResultsAPI.md#citestresultsgetinstance) | **GET** /v1/ciTestResults/{id} | 


# **ciTestResultsGetInstance**
```swift
    open class func ciTestResultsGetInstance(id: String, fieldsCiTestResults: [FieldsCiTestResults_ciTestResultsGetInstance]? = nil, completion: @escaping (_ data: CiTestResultResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let fieldsCiTestResults = ["fieldsCiTestResults_example"] // [String] | the fields to include for returned resources of type ciTestResults (optional)

CiTestResultsAPI.ciTestResultsGetInstance(id: id, fieldsCiTestResults: fieldsCiTestResults) { (response, error) in
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
 **fieldsCiTestResults** | [**[String]**](String.md) | the fields to include for returned resources of type ciTestResults | [optional] 

### Return type

[**CiTestResultResponse**](CiTestResultResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

