# CiMacOsVersionsAPI

All URIs are relative to *https://api.appstoreconnect.apple.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**ciMacOsVersionsGetCollection**](CiMacOsVersionsAPI.md#cimacosversionsgetcollection) | **GET** /v1/ciMacOsVersions | 
[**ciMacOsVersionsGetInstance**](CiMacOsVersionsAPI.md#cimacosversionsgetinstance) | **GET** /v1/ciMacOsVersions/{id} | 
[**ciMacOsVersionsXcodeVersionsGetToManyRelated**](CiMacOsVersionsAPI.md#cimacosversionsxcodeversionsgettomanyrelated) | **GET** /v1/ciMacOsVersions/{id}/xcodeVersions | 


# **ciMacOsVersionsGetCollection**
```swift
    open class func ciMacOsVersionsGetCollection(fieldsCiMacOsVersions: [FieldsCiMacOsVersions_ciMacOsVersionsGetCollection]? = nil, fieldsCiXcodeVersions: [FieldsCiXcodeVersions_ciMacOsVersionsGetCollection]? = nil, limit: Int? = nil, include: [Include_ciMacOsVersionsGetCollection]? = nil, limitXcodeVersions: Int? = nil, completion: @escaping (_ data: CiMacOsVersionsResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let fieldsCiMacOsVersions = ["fieldsCiMacOsVersions_example"] // [String] | the fields to include for returned resources of type ciMacOsVersions (optional)
let fieldsCiXcodeVersions = ["fieldsCiXcodeVersions_example"] // [String] | the fields to include for returned resources of type ciXcodeVersions (optional)
let limit = 987 // Int | maximum resources per page (optional)
let include = ["include_example"] // [String] | comma-separated list of relationships to include (optional)
let limitXcodeVersions = 987 // Int | maximum number of related xcodeVersions returned (when they are included) (optional)

CiMacOsVersionsAPI.ciMacOsVersionsGetCollection(fieldsCiMacOsVersions: fieldsCiMacOsVersions, fieldsCiXcodeVersions: fieldsCiXcodeVersions, limit: limit, include: include, limitXcodeVersions: limitXcodeVersions) { (response, error) in
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
 **fieldsCiMacOsVersions** | [**[String]**](String.md) | the fields to include for returned resources of type ciMacOsVersions | [optional] 
 **fieldsCiXcodeVersions** | [**[String]**](String.md) | the fields to include for returned resources of type ciXcodeVersions | [optional] 
 **limit** | **Int** | maximum resources per page | [optional] 
 **include** | [**[String]**](String.md) | comma-separated list of relationships to include | [optional] 
 **limitXcodeVersions** | **Int** | maximum number of related xcodeVersions returned (when they are included) | [optional] 

### Return type

[**CiMacOsVersionsResponse**](CiMacOsVersionsResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ciMacOsVersionsGetInstance**
```swift
    open class func ciMacOsVersionsGetInstance(id: String, fieldsCiMacOsVersions: [FieldsCiMacOsVersions_ciMacOsVersionsGetInstance]? = nil, fieldsCiXcodeVersions: [FieldsCiXcodeVersions_ciMacOsVersionsGetInstance]? = nil, include: [Include_ciMacOsVersionsGetInstance]? = nil, limitXcodeVersions: Int? = nil, completion: @escaping (_ data: CiMacOsVersionResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let fieldsCiMacOsVersions = ["fieldsCiMacOsVersions_example"] // [String] | the fields to include for returned resources of type ciMacOsVersions (optional)
let fieldsCiXcodeVersions = ["fieldsCiXcodeVersions_example"] // [String] | the fields to include for returned resources of type ciXcodeVersions (optional)
let include = ["include_example"] // [String] | comma-separated list of relationships to include (optional)
let limitXcodeVersions = 987 // Int | maximum number of related xcodeVersions returned (when they are included) (optional)

CiMacOsVersionsAPI.ciMacOsVersionsGetInstance(id: id, fieldsCiMacOsVersions: fieldsCiMacOsVersions, fieldsCiXcodeVersions: fieldsCiXcodeVersions, include: include, limitXcodeVersions: limitXcodeVersions) { (response, error) in
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
 **fieldsCiMacOsVersions** | [**[String]**](String.md) | the fields to include for returned resources of type ciMacOsVersions | [optional] 
 **fieldsCiXcodeVersions** | [**[String]**](String.md) | the fields to include for returned resources of type ciXcodeVersions | [optional] 
 **include** | [**[String]**](String.md) | comma-separated list of relationships to include | [optional] 
 **limitXcodeVersions** | **Int** | maximum number of related xcodeVersions returned (when they are included) | [optional] 

### Return type

[**CiMacOsVersionResponse**](CiMacOsVersionResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ciMacOsVersionsXcodeVersionsGetToManyRelated**
```swift
    open class func ciMacOsVersionsXcodeVersionsGetToManyRelated(id: String, fieldsCiXcodeVersions: [FieldsCiXcodeVersions_ciMacOsVersionsXcodeVersionsGetToManyRelated]? = nil, fieldsCiMacOsVersions: [FieldsCiMacOsVersions_ciMacOsVersionsXcodeVersionsGetToManyRelated]? = nil, limit: Int? = nil, include: [Include_ciMacOsVersionsXcodeVersionsGetToManyRelated]? = nil, limitMacOsVersions: Int? = nil, completion: @escaping (_ data: CiXcodeVersionsResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let fieldsCiXcodeVersions = ["fieldsCiXcodeVersions_example"] // [String] | the fields to include for returned resources of type ciXcodeVersions (optional)
let fieldsCiMacOsVersions = ["fieldsCiMacOsVersions_example"] // [String] | the fields to include for returned resources of type ciMacOsVersions (optional)
let limit = 987 // Int | maximum resources per page (optional)
let include = ["include_example"] // [String] | comma-separated list of relationships to include (optional)
let limitMacOsVersions = 987 // Int | maximum number of related macOsVersions returned (when they are included) (optional)

CiMacOsVersionsAPI.ciMacOsVersionsXcodeVersionsGetToManyRelated(id: id, fieldsCiXcodeVersions: fieldsCiXcodeVersions, fieldsCiMacOsVersions: fieldsCiMacOsVersions, limit: limit, include: include, limitMacOsVersions: limitMacOsVersions) { (response, error) in
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
 **include** | [**[String]**](String.md) | comma-separated list of relationships to include | [optional] 
 **limitMacOsVersions** | **Int** | maximum number of related macOsVersions returned (when they are included) | [optional] 

### Return type

[**CiXcodeVersionsResponse**](CiXcodeVersionsResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

