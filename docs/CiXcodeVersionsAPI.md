# CiXcodeVersionsAPI

All URIs are relative to *https://api.appstoreconnect.apple.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**ciXcodeVersionsGetCollection**](CiXcodeVersionsAPI.md#cixcodeversionsgetcollection) | **GET** /v1/ciXcodeVersions | 
[**ciXcodeVersionsGetInstance**](CiXcodeVersionsAPI.md#cixcodeversionsgetinstance) | **GET** /v1/ciXcodeVersions/{id} | 
[**ciXcodeVersionsMacOsVersionsGetToManyRelated**](CiXcodeVersionsAPI.md#cixcodeversionsmacosversionsgettomanyrelated) | **GET** /v1/ciXcodeVersions/{id}/macOsVersions | 


# **ciXcodeVersionsGetCollection**
```swift
    open class func ciXcodeVersionsGetCollection(fieldsCiXcodeVersions: [FieldsCiXcodeVersions_ciXcodeVersionsGetCollection]? = nil, limit: Int? = nil, include: [Include_ciXcodeVersionsGetCollection]? = nil, fieldsCiMacOsVersions: [FieldsCiMacOsVersions_ciXcodeVersionsGetCollection]? = nil, limitMacOsVersions: Int? = nil, completion: @escaping (_ data: CiXcodeVersionsResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let fieldsCiXcodeVersions = ["fieldsCiXcodeVersions_example"] // [String] | the fields to include for returned resources of type ciXcodeVersions (optional)
let limit = 987 // Int | maximum resources per page (optional)
let include = ["include_example"] // [String] | comma-separated list of relationships to include (optional)
let fieldsCiMacOsVersions = ["fieldsCiMacOsVersions_example"] // [String] | the fields to include for returned resources of type ciMacOsVersions (optional)
let limitMacOsVersions = 987 // Int | maximum number of related macOsVersions returned (when they are included) (optional)

CiXcodeVersionsAPI.ciXcodeVersionsGetCollection(fieldsCiXcodeVersions: fieldsCiXcodeVersions, limit: limit, include: include, fieldsCiMacOsVersions: fieldsCiMacOsVersions, limitMacOsVersions: limitMacOsVersions) { (response, error) in
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
 **fieldsCiXcodeVersions** | [**[String]**](String.md) | the fields to include for returned resources of type ciXcodeVersions | [optional] 
 **limit** | **Int** | maximum resources per page | [optional] 
 **include** | [**[String]**](String.md) | comma-separated list of relationships to include | [optional] 
 **fieldsCiMacOsVersions** | [**[String]**](String.md) | the fields to include for returned resources of type ciMacOsVersions | [optional] 
 **limitMacOsVersions** | **Int** | maximum number of related macOsVersions returned (when they are included) | [optional] 

### Return type

[**CiXcodeVersionsResponse**](CiXcodeVersionsResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ciXcodeVersionsGetInstance**
```swift
    open class func ciXcodeVersionsGetInstance(id: String, fieldsCiXcodeVersions: [FieldsCiXcodeVersions_ciXcodeVersionsGetInstance]? = nil, include: [Include_ciXcodeVersionsGetInstance]? = nil, fieldsCiMacOsVersions: [FieldsCiMacOsVersions_ciXcodeVersionsGetInstance]? = nil, limitMacOsVersions: Int? = nil, completion: @escaping (_ data: CiXcodeVersionResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let fieldsCiXcodeVersions = ["fieldsCiXcodeVersions_example"] // [String] | the fields to include for returned resources of type ciXcodeVersions (optional)
let include = ["include_example"] // [String] | comma-separated list of relationships to include (optional)
let fieldsCiMacOsVersions = ["fieldsCiMacOsVersions_example"] // [String] | the fields to include for returned resources of type ciMacOsVersions (optional)
let limitMacOsVersions = 987 // Int | maximum number of related macOsVersions returned (when they are included) (optional)

CiXcodeVersionsAPI.ciXcodeVersionsGetInstance(id: id, fieldsCiXcodeVersions: fieldsCiXcodeVersions, include: include, fieldsCiMacOsVersions: fieldsCiMacOsVersions, limitMacOsVersions: limitMacOsVersions) { (response, error) in
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
 **fieldsCiXcodeVersions** | [**[String]**](String.md) | the fields to include for returned resources of type ciXcodeVersions | [optional] 
 **include** | [**[String]**](String.md) | comma-separated list of relationships to include | [optional] 
 **fieldsCiMacOsVersions** | [**[String]**](String.md) | the fields to include for returned resources of type ciMacOsVersions | [optional] 
 **limitMacOsVersions** | **Int** | maximum number of related macOsVersions returned (when they are included) | [optional] 

### Return type

[**CiXcodeVersionResponse**](CiXcodeVersionResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ciXcodeVersionsMacOsVersionsGetToManyRelated**
```swift
    open class func ciXcodeVersionsMacOsVersionsGetToManyRelated(id: String, fieldsCiXcodeVersions: [FieldsCiXcodeVersions_ciXcodeVersionsMacOsVersionsGetToManyRelated]? = nil, fieldsCiMacOsVersions: [FieldsCiMacOsVersions_ciXcodeVersionsMacOsVersionsGetToManyRelated]? = nil, limit: Int? = nil, limitXcodeVersions: Int? = nil, include: [Include_ciXcodeVersionsMacOsVersionsGetToManyRelated]? = nil, completion: @escaping (_ data: CiMacOsVersionsResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let fieldsCiXcodeVersions = ["fieldsCiXcodeVersions_example"] // [String] | the fields to include for returned resources of type ciXcodeVersions (optional)
let fieldsCiMacOsVersions = ["fieldsCiMacOsVersions_example"] // [String] | the fields to include for returned resources of type ciMacOsVersions (optional)
let limit = 987 // Int | maximum resources per page (optional)
let limitXcodeVersions = 987 // Int | maximum number of related xcodeVersions returned (when they are included) (optional)
let include = ["include_example"] // [String] | comma-separated list of relationships to include (optional)

CiXcodeVersionsAPI.ciXcodeVersionsMacOsVersionsGetToManyRelated(id: id, fieldsCiXcodeVersions: fieldsCiXcodeVersions, fieldsCiMacOsVersions: fieldsCiMacOsVersions, limit: limit, limitXcodeVersions: limitXcodeVersions, include: include) { (response, error) in
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
 **fieldsCiXcodeVersions** | [**[String]**](String.md) | the fields to include for returned resources of type ciXcodeVersions | [optional] 
 **fieldsCiMacOsVersions** | [**[String]**](String.md) | the fields to include for returned resources of type ciMacOsVersions | [optional] 
 **limit** | **Int** | maximum resources per page | [optional] 
 **limitXcodeVersions** | **Int** | maximum number of related xcodeVersions returned (when they are included) | [optional] 
 **include** | [**[String]**](String.md) | comma-separated list of relationships to include | [optional] 

### Return type

[**CiMacOsVersionsResponse**](CiMacOsVersionsResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

