# PreReleaseVersionsAPI

All URIs are relative to *https://api.appstoreconnect.apple.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**preReleaseVersionsAppGetToOneRelated**](PreReleaseVersionsAPI.md#prereleaseversionsappgettoonerelated) | **GET** /v1/preReleaseVersions/{id}/app | 
[**preReleaseVersionsBuildsGetToManyRelated**](PreReleaseVersionsAPI.md#prereleaseversionsbuildsgettomanyrelated) | **GET** /v1/preReleaseVersions/{id}/builds | 
[**preReleaseVersionsGetCollection**](PreReleaseVersionsAPI.md#prereleaseversionsgetcollection) | **GET** /v1/preReleaseVersions | 
[**preReleaseVersionsGetInstance**](PreReleaseVersionsAPI.md#prereleaseversionsgetinstance) | **GET** /v1/preReleaseVersions/{id} | 


# **preReleaseVersionsAppGetToOneRelated**
```swift
    open class func preReleaseVersionsAppGetToOneRelated(id: String, fieldsApps: [FieldsApps_preReleaseVersionsAppGetToOneRelated]? = nil, completion: @escaping (_ data: AppWithoutIncludesResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let fieldsApps = ["fieldsApps_example"] // [String] | the fields to include for returned resources of type apps (optional)

PreReleaseVersionsAPI.preReleaseVersionsAppGetToOneRelated(id: id, fieldsApps: fieldsApps) { (response, error) in
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
 **fieldsApps** | [**[String]**](String.md) | the fields to include for returned resources of type apps | [optional] 

### Return type

[**AppWithoutIncludesResponse**](AppWithoutIncludesResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **preReleaseVersionsBuildsGetToManyRelated**
```swift
    open class func preReleaseVersionsBuildsGetToManyRelated(id: String, fieldsBuilds: [FieldsBuilds_preReleaseVersionsBuildsGetToManyRelated]? = nil, limit: Int? = nil, completion: @escaping (_ data: BuildsWithoutIncludesResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let fieldsBuilds = ["fieldsBuilds_example"] // [String] | the fields to include for returned resources of type builds (optional)
let limit = 987 // Int | maximum resources per page (optional)

PreReleaseVersionsAPI.preReleaseVersionsBuildsGetToManyRelated(id: id, fieldsBuilds: fieldsBuilds, limit: limit) { (response, error) in
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
 **limit** | **Int** | maximum resources per page | [optional] 

### Return type

[**BuildsWithoutIncludesResponse**](BuildsWithoutIncludesResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **preReleaseVersionsGetCollection**
```swift
    open class func preReleaseVersionsGetCollection(filterBuildsExpired: [String]? = nil, filterBuildsProcessingState: [FilterBuildsProcessingState_preReleaseVersionsGetCollection]? = nil, filterBuildsVersion: [String]? = nil, filterPlatform: [FilterPlatform_preReleaseVersionsGetCollection]? = nil, filterVersion: [String]? = nil, filterApp: [String]? = nil, filterBuilds: [String]? = nil, sort: [Sort_preReleaseVersionsGetCollection]? = nil, fieldsPreReleaseVersions: [FieldsPreReleaseVersions_preReleaseVersionsGetCollection]? = nil, fieldsBuilds: [FieldsBuilds_preReleaseVersionsGetCollection]? = nil, fieldsApps: [FieldsApps_preReleaseVersionsGetCollection]? = nil, limit: Int? = nil, include: [Include_preReleaseVersionsGetCollection]? = nil, limitBuilds: Int? = nil, completion: @escaping (_ data: PreReleaseVersionsResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let filterBuildsExpired = ["inner_example"] // [String] | filter by attribute 'builds.expired' (optional)
let filterBuildsProcessingState = ["filterBuildsProcessingState_example"] // [String] | filter by attribute 'builds.processingState' (optional)
let filterBuildsVersion = ["inner_example"] // [String] | filter by attribute 'builds.version' (optional)
let filterPlatform = ["filterPlatform_example"] // [String] | filter by attribute 'platform' (optional)
let filterVersion = ["inner_example"] // [String] | filter by attribute 'version' (optional)
let filterApp = ["inner_example"] // [String] | filter by id(s) of related 'app' (optional)
let filterBuilds = ["inner_example"] // [String] | filter by id(s) of related 'builds' (optional)
let sort = ["sort_example"] // [String] | comma-separated list of sort expressions; resources will be sorted as specified (optional)
let fieldsPreReleaseVersions = ["fieldsPreReleaseVersions_example"] // [String] | the fields to include for returned resources of type preReleaseVersions (optional)
let fieldsBuilds = ["fieldsBuilds_example"] // [String] | the fields to include for returned resources of type builds (optional)
let fieldsApps = ["fieldsApps_example"] // [String] | the fields to include for returned resources of type apps (optional)
let limit = 987 // Int | maximum resources per page (optional)
let include = ["include_example"] // [String] | comma-separated list of relationships to include (optional)
let limitBuilds = 987 // Int | maximum number of related builds returned (when they are included) (optional)

PreReleaseVersionsAPI.preReleaseVersionsGetCollection(filterBuildsExpired: filterBuildsExpired, filterBuildsProcessingState: filterBuildsProcessingState, filterBuildsVersion: filterBuildsVersion, filterPlatform: filterPlatform, filterVersion: filterVersion, filterApp: filterApp, filterBuilds: filterBuilds, sort: sort, fieldsPreReleaseVersions: fieldsPreReleaseVersions, fieldsBuilds: fieldsBuilds, fieldsApps: fieldsApps, limit: limit, include: include, limitBuilds: limitBuilds) { (response, error) in
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
 **filterBuildsExpired** | [**[String]**](String.md) | filter by attribute &#39;builds.expired&#39; | [optional] 
 **filterBuildsProcessingState** | [**[String]**](String.md) | filter by attribute &#39;builds.processingState&#39; | [optional] 
 **filterBuildsVersion** | [**[String]**](String.md) | filter by attribute &#39;builds.version&#39; | [optional] 
 **filterPlatform** | [**[String]**](String.md) | filter by attribute &#39;platform&#39; | [optional] 
 **filterVersion** | [**[String]**](String.md) | filter by attribute &#39;version&#39; | [optional] 
 **filterApp** | [**[String]**](String.md) | filter by id(s) of related &#39;app&#39; | [optional] 
 **filterBuilds** | [**[String]**](String.md) | filter by id(s) of related &#39;builds&#39; | [optional] 
 **sort** | [**[String]**](String.md) | comma-separated list of sort expressions; resources will be sorted as specified | [optional] 
 **fieldsPreReleaseVersions** | [**[String]**](String.md) | the fields to include for returned resources of type preReleaseVersions | [optional] 
 **fieldsBuilds** | [**[String]**](String.md) | the fields to include for returned resources of type builds | [optional] 
 **fieldsApps** | [**[String]**](String.md) | the fields to include for returned resources of type apps | [optional] 
 **limit** | **Int** | maximum resources per page | [optional] 
 **include** | [**[String]**](String.md) | comma-separated list of relationships to include | [optional] 
 **limitBuilds** | **Int** | maximum number of related builds returned (when they are included) | [optional] 

### Return type

[**PreReleaseVersionsResponse**](PreReleaseVersionsResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **preReleaseVersionsGetInstance**
```swift
    open class func preReleaseVersionsGetInstance(id: String, fieldsPreReleaseVersions: [FieldsPreReleaseVersions_preReleaseVersionsGetInstance]? = nil, fieldsBuilds: [FieldsBuilds_preReleaseVersionsGetInstance]? = nil, fieldsApps: [FieldsApps_preReleaseVersionsGetInstance]? = nil, include: [Include_preReleaseVersionsGetInstance]? = nil, limitBuilds: Int? = nil, completion: @escaping (_ data: PrereleaseVersionResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let fieldsPreReleaseVersions = ["fieldsPreReleaseVersions_example"] // [String] | the fields to include for returned resources of type preReleaseVersions (optional)
let fieldsBuilds = ["fieldsBuilds_example"] // [String] | the fields to include for returned resources of type builds (optional)
let fieldsApps = ["fieldsApps_example"] // [String] | the fields to include for returned resources of type apps (optional)
let include = ["include_example"] // [String] | comma-separated list of relationships to include (optional)
let limitBuilds = 987 // Int | maximum number of related builds returned (when they are included) (optional)

PreReleaseVersionsAPI.preReleaseVersionsGetInstance(id: id, fieldsPreReleaseVersions: fieldsPreReleaseVersions, fieldsBuilds: fieldsBuilds, fieldsApps: fieldsApps, include: include, limitBuilds: limitBuilds) { (response, error) in
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
 **fieldsPreReleaseVersions** | [**[String]**](String.md) | the fields to include for returned resources of type preReleaseVersions | [optional] 
 **fieldsBuilds** | [**[String]**](String.md) | the fields to include for returned resources of type builds | [optional] 
 **fieldsApps** | [**[String]**](String.md) | the fields to include for returned resources of type apps | [optional] 
 **include** | [**[String]**](String.md) | comma-separated list of relationships to include | [optional] 
 **limitBuilds** | **Int** | maximum number of related builds returned (when they are included) | [optional] 

### Return type

[**PrereleaseVersionResponse**](PrereleaseVersionResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

