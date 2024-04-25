# AlternativeDistributionPackageVersionsAPI

All URIs are relative to *https://api.appstoreconnect.apple.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**alternativeDistributionPackageVersionsDeltasGetToManyRelated**](AlternativeDistributionPackageVersionsAPI.md#alternativedistributionpackageversionsdeltasgettomanyrelated) | **GET** /v1/alternativeDistributionPackageVersions/{id}/deltas | 
[**alternativeDistributionPackageVersionsGetInstance**](AlternativeDistributionPackageVersionsAPI.md#alternativedistributionpackageversionsgetinstance) | **GET** /v1/alternativeDistributionPackageVersions/{id} | 
[**alternativeDistributionPackageVersionsVariantsGetToManyRelated**](AlternativeDistributionPackageVersionsAPI.md#alternativedistributionpackageversionsvariantsgettomanyrelated) | **GET** /v1/alternativeDistributionPackageVersions/{id}/variants | 


# **alternativeDistributionPackageVersionsDeltasGetToManyRelated**
```swift
    open class func alternativeDistributionPackageVersionsDeltasGetToManyRelated(id: String, fieldsAlternativeDistributionPackageDeltas: [FieldsAlternativeDistributionPackageDeltas_alternativeDistributionPackageVersionsDeltasGetToManyRelated]? = nil, limit: Int? = nil, completion: @escaping (_ data: AlternativeDistributionPackageDeltasResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let fieldsAlternativeDistributionPackageDeltas = ["fieldsAlternativeDistributionPackageDeltas_example"] // [String] | the fields to include for returned resources of type alternativeDistributionPackageDeltas (optional)
let limit = 987 // Int | maximum resources per page (optional)

AlternativeDistributionPackageVersionsAPI.alternativeDistributionPackageVersionsDeltasGetToManyRelated(id: id, fieldsAlternativeDistributionPackageDeltas: fieldsAlternativeDistributionPackageDeltas, limit: limit) { (response, error) in
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
 **limit** | **Int** | maximum resources per page | [optional] 

### Return type

[**AlternativeDistributionPackageDeltasResponse**](AlternativeDistributionPackageDeltasResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **alternativeDistributionPackageVersionsGetInstance**
```swift
    open class func alternativeDistributionPackageVersionsGetInstance(id: String, fieldsAlternativeDistributionPackageVersions: [FieldsAlternativeDistributionPackageVersions_alternativeDistributionPackageVersionsGetInstance]? = nil, include: [Include_alternativeDistributionPackageVersionsGetInstance]? = nil, fieldsAlternativeDistributionPackageVariants: [FieldsAlternativeDistributionPackageVariants_alternativeDistributionPackageVersionsGetInstance]? = nil, fieldsAlternativeDistributionPackageDeltas: [FieldsAlternativeDistributionPackageDeltas_alternativeDistributionPackageVersionsGetInstance]? = nil, limitDeltas: Int? = nil, limitVariants: Int? = nil, completion: @escaping (_ data: AlternativeDistributionPackageVersionResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let fieldsAlternativeDistributionPackageVersions = ["fieldsAlternativeDistributionPackageVersions_example"] // [String] | the fields to include for returned resources of type alternativeDistributionPackageVersions (optional)
let include = ["include_example"] // [String] | comma-separated list of relationships to include (optional)
let fieldsAlternativeDistributionPackageVariants = ["fieldsAlternativeDistributionPackageVariants_example"] // [String] | the fields to include for returned resources of type alternativeDistributionPackageVariants (optional)
let fieldsAlternativeDistributionPackageDeltas = ["fieldsAlternativeDistributionPackageDeltas_example"] // [String] | the fields to include for returned resources of type alternativeDistributionPackageDeltas (optional)
let limitDeltas = 987 // Int | maximum number of related deltas returned (when they are included) (optional)
let limitVariants = 987 // Int | maximum number of related variants returned (when they are included) (optional)

AlternativeDistributionPackageVersionsAPI.alternativeDistributionPackageVersionsGetInstance(id: id, fieldsAlternativeDistributionPackageVersions: fieldsAlternativeDistributionPackageVersions, include: include, fieldsAlternativeDistributionPackageVariants: fieldsAlternativeDistributionPackageVariants, fieldsAlternativeDistributionPackageDeltas: fieldsAlternativeDistributionPackageDeltas, limitDeltas: limitDeltas, limitVariants: limitVariants) { (response, error) in
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
 **fieldsAlternativeDistributionPackageVersions** | [**[String]**](String.md) | the fields to include for returned resources of type alternativeDistributionPackageVersions | [optional] 
 **include** | [**[String]**](String.md) | comma-separated list of relationships to include | [optional] 
 **fieldsAlternativeDistributionPackageVariants** | [**[String]**](String.md) | the fields to include for returned resources of type alternativeDistributionPackageVariants | [optional] 
 **fieldsAlternativeDistributionPackageDeltas** | [**[String]**](String.md) | the fields to include for returned resources of type alternativeDistributionPackageDeltas | [optional] 
 **limitDeltas** | **Int** | maximum number of related deltas returned (when they are included) | [optional] 
 **limitVariants** | **Int** | maximum number of related variants returned (when they are included) | [optional] 

### Return type

[**AlternativeDistributionPackageVersionResponse**](AlternativeDistributionPackageVersionResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **alternativeDistributionPackageVersionsVariantsGetToManyRelated**
```swift
    open class func alternativeDistributionPackageVersionsVariantsGetToManyRelated(id: String, fieldsAlternativeDistributionPackageVariants: [FieldsAlternativeDistributionPackageVariants_alternativeDistributionPackageVersionsVariantsGetToManyRelated]? = nil, limit: Int? = nil, completion: @escaping (_ data: AlternativeDistributionPackageVariantsResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let fieldsAlternativeDistributionPackageVariants = ["fieldsAlternativeDistributionPackageVariants_example"] // [String] | the fields to include for returned resources of type alternativeDistributionPackageVariants (optional)
let limit = 987 // Int | maximum resources per page (optional)

AlternativeDistributionPackageVersionsAPI.alternativeDistributionPackageVersionsVariantsGetToManyRelated(id: id, fieldsAlternativeDistributionPackageVariants: fieldsAlternativeDistributionPackageVariants, limit: limit) { (response, error) in
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
 **fieldsAlternativeDistributionPackageVariants** | [**[String]**](String.md) | the fields to include for returned resources of type alternativeDistributionPackageVariants | [optional] 
 **limit** | **Int** | maximum resources per page | [optional] 

### Return type

[**AlternativeDistributionPackageVariantsResponse**](AlternativeDistributionPackageVariantsResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

