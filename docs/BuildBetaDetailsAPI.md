# BuildBetaDetailsAPI

All URIs are relative to *https://api.appstoreconnect.apple.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**buildBetaDetailsBuildGetToOneRelated**](BuildBetaDetailsAPI.md#buildbetadetailsbuildgettoonerelated) | **GET** /v1/buildBetaDetails/{id}/build | 
[**buildBetaDetailsGetCollection**](BuildBetaDetailsAPI.md#buildbetadetailsgetcollection) | **GET** /v1/buildBetaDetails | 
[**buildBetaDetailsGetInstance**](BuildBetaDetailsAPI.md#buildbetadetailsgetinstance) | **GET** /v1/buildBetaDetails/{id} | 
[**buildBetaDetailsUpdateInstance**](BuildBetaDetailsAPI.md#buildbetadetailsupdateinstance) | **PATCH** /v1/buildBetaDetails/{id} | 


# **buildBetaDetailsBuildGetToOneRelated**
```swift
    open class func buildBetaDetailsBuildGetToOneRelated(id: String, fieldsBuilds: [FieldsBuilds_buildBetaDetailsBuildGetToOneRelated]? = nil, completion: @escaping (_ data: BuildWithoutIncludesResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let fieldsBuilds = ["fieldsBuilds_example"] // [String] | the fields to include for returned resources of type builds (optional)

BuildBetaDetailsAPI.buildBetaDetailsBuildGetToOneRelated(id: id, fieldsBuilds: fieldsBuilds) { (response, error) in
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
 **fieldsBuilds** | [**[String]**](String.md) | the fields to include for returned resources of type builds | [optional] 

### Return type

[**BuildWithoutIncludesResponse**](BuildWithoutIncludesResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **buildBetaDetailsGetCollection**
```swift
    open class func buildBetaDetailsGetCollection(filterBuild: [String]? = nil, filterId: [String]? = nil, fieldsBuildBetaDetails: [FieldsBuildBetaDetails_buildBetaDetailsGetCollection]? = nil, limit: Int? = nil, include: [Include_buildBetaDetailsGetCollection]? = nil, fieldsBuilds: [FieldsBuilds_buildBetaDetailsGetCollection]? = nil, completion: @escaping (_ data: BuildBetaDetailsResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let filterBuild = ["inner_example"] // [String] | filter by id(s) of related 'build' (optional)
let filterId = ["inner_example"] // [String] | filter by id(s) (optional)
let fieldsBuildBetaDetails = ["fieldsBuildBetaDetails_example"] // [String] | the fields to include for returned resources of type buildBetaDetails (optional)
let limit = 987 // Int | maximum resources per page (optional)
let include = ["include_example"] // [String] | comma-separated list of relationships to include (optional)
let fieldsBuilds = ["fieldsBuilds_example"] // [String] | the fields to include for returned resources of type builds (optional)

BuildBetaDetailsAPI.buildBetaDetailsGetCollection(filterBuild: filterBuild, filterId: filterId, fieldsBuildBetaDetails: fieldsBuildBetaDetails, limit: limit, include: include, fieldsBuilds: fieldsBuilds) { (response, error) in
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
 **filterBuild** | [**[String]**](String.md) | filter by id(s) of related &#39;build&#39; | [optional] 
 **filterId** | [**[String]**](String.md) | filter by id(s) | [optional] 
 **fieldsBuildBetaDetails** | [**[String]**](String.md) | the fields to include for returned resources of type buildBetaDetails | [optional] 
 **limit** | **Int** | maximum resources per page | [optional] 
 **include** | [**[String]**](String.md) | comma-separated list of relationships to include | [optional] 
 **fieldsBuilds** | [**[String]**](String.md) | the fields to include for returned resources of type builds | [optional] 

### Return type

[**BuildBetaDetailsResponse**](BuildBetaDetailsResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **buildBetaDetailsGetInstance**
```swift
    open class func buildBetaDetailsGetInstance(id: String, fieldsBuildBetaDetails: [FieldsBuildBetaDetails_buildBetaDetailsGetInstance]? = nil, include: [Include_buildBetaDetailsGetInstance]? = nil, fieldsBuilds: [FieldsBuilds_buildBetaDetailsGetInstance]? = nil, completion: @escaping (_ data: BuildBetaDetailResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let fieldsBuildBetaDetails = ["fieldsBuildBetaDetails_example"] // [String] | the fields to include for returned resources of type buildBetaDetails (optional)
let include = ["include_example"] // [String] | comma-separated list of relationships to include (optional)
let fieldsBuilds = ["fieldsBuilds_example"] // [String] | the fields to include for returned resources of type builds (optional)

BuildBetaDetailsAPI.buildBetaDetailsGetInstance(id: id, fieldsBuildBetaDetails: fieldsBuildBetaDetails, include: include, fieldsBuilds: fieldsBuilds) { (response, error) in
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
 **fieldsBuildBetaDetails** | [**[String]**](String.md) | the fields to include for returned resources of type buildBetaDetails | [optional] 
 **include** | [**[String]**](String.md) | comma-separated list of relationships to include | [optional] 
 **fieldsBuilds** | [**[String]**](String.md) | the fields to include for returned resources of type builds | [optional] 

### Return type

[**BuildBetaDetailResponse**](BuildBetaDetailResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **buildBetaDetailsUpdateInstance**
```swift
    open class func buildBetaDetailsUpdateInstance(id: String, buildBetaDetailUpdateRequest: BuildBetaDetailUpdateRequest, completion: @escaping (_ data: BuildBetaDetailResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let buildBetaDetailUpdateRequest = BuildBetaDetailUpdateRequest(data: BuildBetaDetailUpdateRequest_data(type: "type_example", id: "id_example", attributes: BuildBetaDetailUpdateRequest_data_attributes(autoNotifyEnabled: false))) // BuildBetaDetailUpdateRequest | BuildBetaDetail representation

BuildBetaDetailsAPI.buildBetaDetailsUpdateInstance(id: id, buildBetaDetailUpdateRequest: buildBetaDetailUpdateRequest) { (response, error) in
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
 **buildBetaDetailUpdateRequest** | [**BuildBetaDetailUpdateRequest**](BuildBetaDetailUpdateRequest.md) | BuildBetaDetail representation | 

### Return type

[**BuildBetaDetailResponse**](BuildBetaDetailResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

