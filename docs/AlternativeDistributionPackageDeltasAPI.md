# AlternativeDistributionPackageDeltasAPI

All URIs are relative to *https://api.appstoreconnect.apple.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**alternativeDistributionPackageDeltasGetInstance**](AlternativeDistributionPackageDeltasAPI.md#alternativedistributionpackagedeltasgetinstance) | **GET** /v1/alternativeDistributionPackageDeltas/{id} | 


# **alternativeDistributionPackageDeltasGetInstance**
```swift
    open class func alternativeDistributionPackageDeltasGetInstance(id: String, fieldsAlternativeDistributionPackageDeltas: [FieldsAlternativeDistributionPackageDeltas_alternativeDistributionPackageDeltasGetInstance]? = nil, completion: @escaping (_ data: AlternativeDistributionPackageDeltaResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let fieldsAlternativeDistributionPackageDeltas = ["fieldsAlternativeDistributionPackageDeltas_example"] // [String] | the fields to include for returned resources of type alternativeDistributionPackageDeltas (optional)

AlternativeDistributionPackageDeltasAPI.alternativeDistributionPackageDeltasGetInstance(id: id, fieldsAlternativeDistributionPackageDeltas: fieldsAlternativeDistributionPackageDeltas) { (response, error) in
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
 **fieldsAlternativeDistributionPackageDeltas** | [**[String]**](String.md) | the fields to include for returned resources of type alternativeDistributionPackageDeltas | [optional] 

### Return type

[**AlternativeDistributionPackageDeltaResponse**](AlternativeDistributionPackageDeltaResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

