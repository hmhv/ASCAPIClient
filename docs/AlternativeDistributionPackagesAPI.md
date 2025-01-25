# AlternativeDistributionPackagesAPI

All URIs are relative to *https://api.appstoreconnect.apple.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**alternativeDistributionPackagesCreateInstance**](AlternativeDistributionPackagesAPI.md#alternativedistributionpackagescreateinstance) | **POST** /v1/alternativeDistributionPackages | 
[**alternativeDistributionPackagesGetInstance**](AlternativeDistributionPackagesAPI.md#alternativedistributionpackagesgetinstance) | **GET** /v1/alternativeDistributionPackages/{id} | 
[**alternativeDistributionPackagesVersionsGetToManyRelated**](AlternativeDistributionPackagesAPI.md#alternativedistributionpackagesversionsgettomanyrelated) | **GET** /v1/alternativeDistributionPackages/{id}/versions | 


# **alternativeDistributionPackagesCreateInstance**
```swift
    open class func alternativeDistributionPackagesCreateInstance(alternativeDistributionPackageCreateRequest: AlternativeDistributionPackageCreateRequest, completion: @escaping (_ data: AlternativeDistributionPackageResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let alternativeDistributionPackageCreateRequest = AlternativeDistributionPackageCreateRequest(data: AlternativeDistributionPackageCreateRequest_data(type: "type_example", relationships: AlternativeDistributionPackageCreateRequest_data_relationships(appStoreVersion: AlternativeDistributionPackageCreateRequest_data_relationships_appStoreVersion(data: AlternativeDistributionPackageCreateRequest_data_relationships_appStoreVersion_data(type: "type_example", id: "id_example"))))) // AlternativeDistributionPackageCreateRequest | AlternativeDistributionPackage representation

AlternativeDistributionPackagesAPI.alternativeDistributionPackagesCreateInstance(alternativeDistributionPackageCreateRequest: alternativeDistributionPackageCreateRequest) { (response, error) in
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
 **alternativeDistributionPackageCreateRequest** | [**AlternativeDistributionPackageCreateRequest**](AlternativeDistributionPackageCreateRequest.md) | AlternativeDistributionPackage representation | 

### Return type

[**AlternativeDistributionPackageResponse**](AlternativeDistributionPackageResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **alternativeDistributionPackagesGetInstance**
```swift
    open class func alternativeDistributionPackagesGetInstance(id: String, fieldsAlternativeDistributionPackages: [FieldsAlternativeDistributionPackages_alternativeDistributionPackagesGetInstance]? = nil, fieldsAlternativeDistributionPackageVersions: [FieldsAlternativeDistributionPackageVersions_alternativeDistributionPackagesGetInstance]? = nil, include: [Include_alternativeDistributionPackagesGetInstance]? = nil, limitVersions: Int? = nil, completion: @escaping (_ data: AlternativeDistributionPackageResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let fieldsAlternativeDistributionPackages = ["fieldsAlternativeDistributionPackages_example"] // [String] | the fields to include for returned resources of type alternativeDistributionPackages (optional)
let fieldsAlternativeDistributionPackageVersions = ["fieldsAlternativeDistributionPackageVersions_example"] // [String] | the fields to include for returned resources of type alternativeDistributionPackageVersions (optional)
let include = ["include_example"] // [String] | comma-separated list of relationships to include (optional)
let limitVersions = 987 // Int | maximum number of related versions returned (when they are included) (optional)

AlternativeDistributionPackagesAPI.alternativeDistributionPackagesGetInstance(id: id, fieldsAlternativeDistributionPackages: fieldsAlternativeDistributionPackages, fieldsAlternativeDistributionPackageVersions: fieldsAlternativeDistributionPackageVersions, include: include, limitVersions: limitVersions) { (response, error) in
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
 **fieldsAlternativeDistributionPackages** | [**[String]**](String.md) | the fields to include for returned resources of type alternativeDistributionPackages | [optional] 
 **fieldsAlternativeDistributionPackageVersions** | [**[String]**](String.md) | the fields to include for returned resources of type alternativeDistributionPackageVersions | [optional] 
 **include** | [**[String]**](String.md) | comma-separated list of relationships to include | [optional] 
 **limitVersions** | **Int** | maximum number of related versions returned (when they are included) | [optional] 

### Return type

[**AlternativeDistributionPackageResponse**](AlternativeDistributionPackageResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **alternativeDistributionPackagesVersionsGetToManyRelated**
```swift
    open class func alternativeDistributionPackagesVersionsGetToManyRelated(id: String, filterState: [FilterState_alternativeDistributionPackagesVersionsGetToManyRelated]? = nil, fieldsAlternativeDistributionPackageVersions: [FieldsAlternativeDistributionPackageVersions_alternativeDistributionPackagesVersionsGetToManyRelated]? = nil, fieldsAlternativeDistributionPackageVariants: [FieldsAlternativeDistributionPackageVariants_alternativeDistributionPackagesVersionsGetToManyRelated]? = nil, fieldsAlternativeDistributionPackageDeltas: [FieldsAlternativeDistributionPackageDeltas_alternativeDistributionPackagesVersionsGetToManyRelated]? = nil, fieldsAlternativeDistributionPackages: [FieldsAlternativeDistributionPackages_alternativeDistributionPackagesVersionsGetToManyRelated]? = nil, limit: Int? = nil, include: [Include_alternativeDistributionPackagesVersionsGetToManyRelated]? = nil, limitVariants: Int? = nil, limitDeltas: Int? = nil, completion: @escaping (_ data: AlternativeDistributionPackageVersionsResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let filterState = ["filterState_example"] // [String] | filter by attribute 'state' (optional)
let fieldsAlternativeDistributionPackageVersions = ["fieldsAlternativeDistributionPackageVersions_example"] // [String] | the fields to include for returned resources of type alternativeDistributionPackageVersions (optional)
let fieldsAlternativeDistributionPackageVariants = ["fieldsAlternativeDistributionPackageVariants_example"] // [String] | the fields to include for returned resources of type alternativeDistributionPackageVariants (optional)
let fieldsAlternativeDistributionPackageDeltas = ["fieldsAlternativeDistributionPackageDeltas_example"] // [String] | the fields to include for returned resources of type alternativeDistributionPackageDeltas (optional)
let fieldsAlternativeDistributionPackages = ["fieldsAlternativeDistributionPackages_example"] // [String] | the fields to include for returned resources of type alternativeDistributionPackages (optional)
let limit = 987 // Int | maximum resources per page (optional)
let include = ["include_example"] // [String] | comma-separated list of relationships to include (optional)
let limitVariants = 987 // Int | maximum number of related variants returned (when they are included) (optional)
let limitDeltas = 987 // Int | maximum number of related deltas returned (when they are included) (optional)

AlternativeDistributionPackagesAPI.alternativeDistributionPackagesVersionsGetToManyRelated(id: id, filterState: filterState, fieldsAlternativeDistributionPackageVersions: fieldsAlternativeDistributionPackageVersions, fieldsAlternativeDistributionPackageVariants: fieldsAlternativeDistributionPackageVariants, fieldsAlternativeDistributionPackageDeltas: fieldsAlternativeDistributionPackageDeltas, fieldsAlternativeDistributionPackages: fieldsAlternativeDistributionPackages, limit: limit, include: include, limitVariants: limitVariants, limitDeltas: limitDeltas) { (response, error) in
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
 **filterState** | [**[String]**](String.md) | filter by attribute &#39;state&#39; | [optional] 
 **fieldsAlternativeDistributionPackageVersions** | [**[String]**](String.md) | the fields to include for returned resources of type alternativeDistributionPackageVersions | [optional] 
 **fieldsAlternativeDistributionPackageVariants** | [**[String]**](String.md) | the fields to include for returned resources of type alternativeDistributionPackageVariants | [optional] 
 **fieldsAlternativeDistributionPackageDeltas** | [**[String]**](String.md) | the fields to include for returned resources of type alternativeDistributionPackageDeltas | [optional] 
 **fieldsAlternativeDistributionPackages** | [**[String]**](String.md) | the fields to include for returned resources of type alternativeDistributionPackages | [optional] 
 **limit** | **Int** | maximum resources per page | [optional] 
 **include** | [**[String]**](String.md) | comma-separated list of relationships to include | [optional] 
 **limitVariants** | **Int** | maximum number of related variants returned (when they are included) | [optional] 
 **limitDeltas** | **Int** | maximum number of related deltas returned (when they are included) | [optional] 

### Return type

[**AlternativeDistributionPackageVersionsResponse**](AlternativeDistributionPackageVersionsResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

