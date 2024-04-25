# RoutingAppCoveragesAPI

All URIs are relative to *https://api.appstoreconnect.apple.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**routingAppCoveragesCreateInstance**](RoutingAppCoveragesAPI.md#routingappcoveragescreateinstance) | **POST** /v1/routingAppCoverages | 
[**routingAppCoveragesDeleteInstance**](RoutingAppCoveragesAPI.md#routingappcoveragesdeleteinstance) | **DELETE** /v1/routingAppCoverages/{id} | 
[**routingAppCoveragesGetInstance**](RoutingAppCoveragesAPI.md#routingappcoveragesgetinstance) | **GET** /v1/routingAppCoverages/{id} | 
[**routingAppCoveragesUpdateInstance**](RoutingAppCoveragesAPI.md#routingappcoveragesupdateinstance) | **PATCH** /v1/routingAppCoverages/{id} | 


# **routingAppCoveragesCreateInstance**
```swift
    open class func routingAppCoveragesCreateInstance(routingAppCoverageCreateRequest: RoutingAppCoverageCreateRequest, completion: @escaping (_ data: RoutingAppCoverageResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let routingAppCoverageCreateRequest = RoutingAppCoverageCreateRequest(data: RoutingAppCoverageCreateRequest_data(type: "type_example", attributes: AppClipAdvancedExperienceImageCreateRequest_data_attributes(fileSize: 123, fileName: "fileName_example"), relationships: AlternativeDistributionPackageCreateRequest_data_relationships(appStoreVersion: AlternativeDistributionPackageCreateRequest_data_relationships_appStoreVersion(data: AlternativeDistributionPackageCreateRequest_data_relationships_appStoreVersion_data(type: "type_example", id: "id_example"))))) // RoutingAppCoverageCreateRequest | RoutingAppCoverage representation

RoutingAppCoveragesAPI.routingAppCoveragesCreateInstance(routingAppCoverageCreateRequest: routingAppCoverageCreateRequest) { (response, error) in
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
 **routingAppCoverageCreateRequest** | [**RoutingAppCoverageCreateRequest**](RoutingAppCoverageCreateRequest.md) | RoutingAppCoverage representation | 

### Return type

[**RoutingAppCoverageResponse**](RoutingAppCoverageResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **routingAppCoveragesDeleteInstance**
```swift
    open class func routingAppCoveragesDeleteInstance(id: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource

RoutingAppCoveragesAPI.routingAppCoveragesDeleteInstance(id: id) { (response, error) in
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

### Return type

Void (empty response body)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **routingAppCoveragesGetInstance**
```swift
    open class func routingAppCoveragesGetInstance(id: String, fieldsRoutingAppCoverages: [FieldsRoutingAppCoverages_routingAppCoveragesGetInstance]? = nil, include: [Include_routingAppCoveragesGetInstance]? = nil, completion: @escaping (_ data: RoutingAppCoverageResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let fieldsRoutingAppCoverages = ["fieldsRoutingAppCoverages_example"] // [String] | the fields to include for returned resources of type routingAppCoverages (optional)
let include = ["include_example"] // [String] | comma-separated list of relationships to include (optional)

RoutingAppCoveragesAPI.routingAppCoveragesGetInstance(id: id, fieldsRoutingAppCoverages: fieldsRoutingAppCoverages, include: include) { (response, error) in
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
 **fieldsRoutingAppCoverages** | [**[String]**](String.md) | the fields to include for returned resources of type routingAppCoverages | [optional] 
 **include** | [**[String]**](String.md) | comma-separated list of relationships to include | [optional] 

### Return type

[**RoutingAppCoverageResponse**](RoutingAppCoverageResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **routingAppCoveragesUpdateInstance**
```swift
    open class func routingAppCoveragesUpdateInstance(id: String, routingAppCoverageUpdateRequest: RoutingAppCoverageUpdateRequest, completion: @escaping (_ data: RoutingAppCoverageResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let routingAppCoverageUpdateRequest = RoutingAppCoverageUpdateRequest(data: RoutingAppCoverageUpdateRequest_data(type: "type_example", id: "id_example", attributes: AppClipAdvancedExperienceImageUpdateRequest_data_attributes(sourceFileChecksum: "sourceFileChecksum_example", uploaded: false))) // RoutingAppCoverageUpdateRequest | RoutingAppCoverage representation

RoutingAppCoveragesAPI.routingAppCoveragesUpdateInstance(id: id, routingAppCoverageUpdateRequest: routingAppCoverageUpdateRequest) { (response, error) in
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
 **routingAppCoverageUpdateRequest** | [**RoutingAppCoverageUpdateRequest**](RoutingAppCoverageUpdateRequest.md) | RoutingAppCoverage representation | 

### Return type

[**RoutingAppCoverageResponse**](RoutingAppCoverageResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

