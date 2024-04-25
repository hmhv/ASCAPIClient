# DiagnosticSignaturesAPI

All URIs are relative to *https://api.appstoreconnect.apple.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**diagnosticSignaturesLogsGetToManyRelated**](DiagnosticSignaturesAPI.md#diagnosticsignatureslogsgettomanyrelated) | **GET** /v1/diagnosticSignatures/{id}/logs | 


# **diagnosticSignaturesLogsGetToManyRelated**
```swift
    open class func diagnosticSignaturesLogsGetToManyRelated(id: String, limit: Int? = nil, completion: @escaping (_ data: DiagnosticLogs?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let limit = 987 // Int | maximum resources per page (optional)

DiagnosticSignaturesAPI.diagnosticSignaturesLogsGetToManyRelated(id: id, limit: limit) { (response, error) in
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

[**DiagnosticLogs**](DiagnosticLogs.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/vnd.apple.diagnostic-logs+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

