# BundleIdsAPI

All URIs are relative to *https://api.appstoreconnect.apple.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**bundleIdsAppGetToOneRelated**](BundleIdsAPI.md#bundleidsappgettoonerelated) | **GET** /v1/bundleIds/{id}/app | 
[**bundleIdsBundleIdCapabilitiesGetToManyRelated**](BundleIdsAPI.md#bundleidsbundleidcapabilitiesgettomanyrelated) | **GET** /v1/bundleIds/{id}/bundleIdCapabilities | 
[**bundleIdsCreateInstance**](BundleIdsAPI.md#bundleidscreateinstance) | **POST** /v1/bundleIds | 
[**bundleIdsDeleteInstance**](BundleIdsAPI.md#bundleidsdeleteinstance) | **DELETE** /v1/bundleIds/{id} | 
[**bundleIdsGetCollection**](BundleIdsAPI.md#bundleidsgetcollection) | **GET** /v1/bundleIds | 
[**bundleIdsGetInstance**](BundleIdsAPI.md#bundleidsgetinstance) | **GET** /v1/bundleIds/{id} | 
[**bundleIdsProfilesGetToManyRelated**](BundleIdsAPI.md#bundleidsprofilesgettomanyrelated) | **GET** /v1/bundleIds/{id}/profiles | 
[**bundleIdsUpdateInstance**](BundleIdsAPI.md#bundleidsupdateinstance) | **PATCH** /v1/bundleIds/{id} | 


# **bundleIdsAppGetToOneRelated**
```swift
    open class func bundleIdsAppGetToOneRelated(id: String, fieldsApps: [FieldsApps_bundleIdsAppGetToOneRelated]? = nil, completion: @escaping (_ data: AppWithoutIncludesResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let fieldsApps = ["fieldsApps_example"] // [String] | the fields to include for returned resources of type apps (optional)

BundleIdsAPI.bundleIdsAppGetToOneRelated(id: id, fieldsApps: fieldsApps) { (response, error) in
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

# **bundleIdsBundleIdCapabilitiesGetToManyRelated**
```swift
    open class func bundleIdsBundleIdCapabilitiesGetToManyRelated(id: String, fieldsBundleIdCapabilities: [FieldsBundleIdCapabilities_bundleIdsBundleIdCapabilitiesGetToManyRelated]? = nil, limit: Int? = nil, completion: @escaping (_ data: BundleIdCapabilitiesWithoutIncludesResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let fieldsBundleIdCapabilities = ["fieldsBundleIdCapabilities_example"] // [String] | the fields to include for returned resources of type bundleIdCapabilities (optional)
let limit = 987 // Int | maximum resources per page (optional)

BundleIdsAPI.bundleIdsBundleIdCapabilitiesGetToManyRelated(id: id, fieldsBundleIdCapabilities: fieldsBundleIdCapabilities, limit: limit) { (response, error) in
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
 **fieldsBundleIdCapabilities** | [**[String]**](String.md) | the fields to include for returned resources of type bundleIdCapabilities | [optional] 
 **limit** | **Int** | maximum resources per page | [optional] 

### Return type

[**BundleIdCapabilitiesWithoutIncludesResponse**](BundleIdCapabilitiesWithoutIncludesResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **bundleIdsCreateInstance**
```swift
    open class func bundleIdsCreateInstance(bundleIdCreateRequest: BundleIdCreateRequest, completion: @escaping (_ data: BundleIdResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let bundleIdCreateRequest = BundleIdCreateRequest(data: BundleIdCreateRequest_data(type: "type_example", attributes: BundleIdCreateRequest_data_attributes(name: "name_example", platform: BundleIdPlatform(), identifier: "identifier_example", seedId: "seedId_example"))) // BundleIdCreateRequest | BundleId representation

BundleIdsAPI.bundleIdsCreateInstance(bundleIdCreateRequest: bundleIdCreateRequest) { (response, error) in
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
 **bundleIdCreateRequest** | [**BundleIdCreateRequest**](BundleIdCreateRequest.md) | BundleId representation | 

### Return type

[**BundleIdResponse**](BundleIdResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **bundleIdsDeleteInstance**
```swift
    open class func bundleIdsDeleteInstance(id: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource

BundleIdsAPI.bundleIdsDeleteInstance(id: id) { (response, error) in
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

# **bundleIdsGetCollection**
```swift
    open class func bundleIdsGetCollection(filterIdentifier: [String]? = nil, filterName: [String]? = nil, filterPlatform: [FilterPlatform_bundleIdsGetCollection]? = nil, filterSeedId: [String]? = nil, filterId: [String]? = nil, sort: [Sort_bundleIdsGetCollection]? = nil, fieldsBundleIds: [FieldsBundleIds_bundleIdsGetCollection]? = nil, limit: Int? = nil, include: [Include_bundleIdsGetCollection]? = nil, fieldsBundleIdCapabilities: [FieldsBundleIdCapabilities_bundleIdsGetCollection]? = nil, fieldsProfiles: [FieldsProfiles_bundleIdsGetCollection]? = nil, fieldsApps: [FieldsApps_bundleIdsGetCollection]? = nil, limitBundleIdCapabilities: Int? = nil, limitProfiles: Int? = nil, completion: @escaping (_ data: BundleIdsResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let filterIdentifier = ["inner_example"] // [String] | filter by attribute 'identifier' (optional)
let filterName = ["inner_example"] // [String] | filter by attribute 'name' (optional)
let filterPlatform = ["filterPlatform_example"] // [String] | filter by attribute 'platform' (optional)
let filterSeedId = ["inner_example"] // [String] | filter by attribute 'seedId' (optional)
let filterId = ["inner_example"] // [String] | filter by id(s) (optional)
let sort = ["sort_example"] // [String] | comma-separated list of sort expressions; resources will be sorted as specified (optional)
let fieldsBundleIds = ["fieldsBundleIds_example"] // [String] | the fields to include for returned resources of type bundleIds (optional)
let limit = 987 // Int | maximum resources per page (optional)
let include = ["include_example"] // [String] | comma-separated list of relationships to include (optional)
let fieldsBundleIdCapabilities = ["fieldsBundleIdCapabilities_example"] // [String] | the fields to include for returned resources of type bundleIdCapabilities (optional)
let fieldsProfiles = ["fieldsProfiles_example"] // [String] | the fields to include for returned resources of type profiles (optional)
let fieldsApps = ["fieldsApps_example"] // [String] | the fields to include for returned resources of type apps (optional)
let limitBundleIdCapabilities = 987 // Int | maximum number of related bundleIdCapabilities returned (when they are included) (optional)
let limitProfiles = 987 // Int | maximum number of related profiles returned (when they are included) (optional)

BundleIdsAPI.bundleIdsGetCollection(filterIdentifier: filterIdentifier, filterName: filterName, filterPlatform: filterPlatform, filterSeedId: filterSeedId, filterId: filterId, sort: sort, fieldsBundleIds: fieldsBundleIds, limit: limit, include: include, fieldsBundleIdCapabilities: fieldsBundleIdCapabilities, fieldsProfiles: fieldsProfiles, fieldsApps: fieldsApps, limitBundleIdCapabilities: limitBundleIdCapabilities, limitProfiles: limitProfiles) { (response, error) in
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
 **filterIdentifier** | [**[String]**](String.md) | filter by attribute &#39;identifier&#39; | [optional] 
 **filterName** | [**[String]**](String.md) | filter by attribute &#39;name&#39; | [optional] 
 **filterPlatform** | [**[String]**](String.md) | filter by attribute &#39;platform&#39; | [optional] 
 **filterSeedId** | [**[String]**](String.md) | filter by attribute &#39;seedId&#39; | [optional] 
 **filterId** | [**[String]**](String.md) | filter by id(s) | [optional] 
 **sort** | [**[String]**](String.md) | comma-separated list of sort expressions; resources will be sorted as specified | [optional] 
 **fieldsBundleIds** | [**[String]**](String.md) | the fields to include for returned resources of type bundleIds | [optional] 
 **limit** | **Int** | maximum resources per page | [optional] 
 **include** | [**[String]**](String.md) | comma-separated list of relationships to include | [optional] 
 **fieldsBundleIdCapabilities** | [**[String]**](String.md) | the fields to include for returned resources of type bundleIdCapabilities | [optional] 
 **fieldsProfiles** | [**[String]**](String.md) | the fields to include for returned resources of type profiles | [optional] 
 **fieldsApps** | [**[String]**](String.md) | the fields to include for returned resources of type apps | [optional] 
 **limitBundleIdCapabilities** | **Int** | maximum number of related bundleIdCapabilities returned (when they are included) | [optional] 
 **limitProfiles** | **Int** | maximum number of related profiles returned (when they are included) | [optional] 

### Return type

[**BundleIdsResponse**](BundleIdsResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **bundleIdsGetInstance**
```swift
    open class func bundleIdsGetInstance(id: String, fieldsBundleIds: [FieldsBundleIds_bundleIdsGetInstance]? = nil, include: [Include_bundleIdsGetInstance]? = nil, fieldsBundleIdCapabilities: [FieldsBundleIdCapabilities_bundleIdsGetInstance]? = nil, fieldsProfiles: [FieldsProfiles_bundleIdsGetInstance]? = nil, fieldsApps: [FieldsApps_bundleIdsGetInstance]? = nil, limitBundleIdCapabilities: Int? = nil, limitProfiles: Int? = nil, completion: @escaping (_ data: BundleIdResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let fieldsBundleIds = ["fieldsBundleIds_example"] // [String] | the fields to include for returned resources of type bundleIds (optional)
let include = ["include_example"] // [String] | comma-separated list of relationships to include (optional)
let fieldsBundleIdCapabilities = ["fieldsBundleIdCapabilities_example"] // [String] | the fields to include for returned resources of type bundleIdCapabilities (optional)
let fieldsProfiles = ["fieldsProfiles_example"] // [String] | the fields to include for returned resources of type profiles (optional)
let fieldsApps = ["fieldsApps_example"] // [String] | the fields to include for returned resources of type apps (optional)
let limitBundleIdCapabilities = 987 // Int | maximum number of related bundleIdCapabilities returned (when they are included) (optional)
let limitProfiles = 987 // Int | maximum number of related profiles returned (when they are included) (optional)

BundleIdsAPI.bundleIdsGetInstance(id: id, fieldsBundleIds: fieldsBundleIds, include: include, fieldsBundleIdCapabilities: fieldsBundleIdCapabilities, fieldsProfiles: fieldsProfiles, fieldsApps: fieldsApps, limitBundleIdCapabilities: limitBundleIdCapabilities, limitProfiles: limitProfiles) { (response, error) in
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
 **fieldsBundleIds** | [**[String]**](String.md) | the fields to include for returned resources of type bundleIds | [optional] 
 **include** | [**[String]**](String.md) | comma-separated list of relationships to include | [optional] 
 **fieldsBundleIdCapabilities** | [**[String]**](String.md) | the fields to include for returned resources of type bundleIdCapabilities | [optional] 
 **fieldsProfiles** | [**[String]**](String.md) | the fields to include for returned resources of type profiles | [optional] 
 **fieldsApps** | [**[String]**](String.md) | the fields to include for returned resources of type apps | [optional] 
 **limitBundleIdCapabilities** | **Int** | maximum number of related bundleIdCapabilities returned (when they are included) | [optional] 
 **limitProfiles** | **Int** | maximum number of related profiles returned (when they are included) | [optional] 

### Return type

[**BundleIdResponse**](BundleIdResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **bundleIdsProfilesGetToManyRelated**
```swift
    open class func bundleIdsProfilesGetToManyRelated(id: String, fieldsProfiles: [FieldsProfiles_bundleIdsProfilesGetToManyRelated]? = nil, limit: Int? = nil, completion: @escaping (_ data: ProfilesWithoutIncludesResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let fieldsProfiles = ["fieldsProfiles_example"] // [String] | the fields to include for returned resources of type profiles (optional)
let limit = 987 // Int | maximum resources per page (optional)

BundleIdsAPI.bundleIdsProfilesGetToManyRelated(id: id, fieldsProfiles: fieldsProfiles, limit: limit) { (response, error) in
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
 **fieldsProfiles** | [**[String]**](String.md) | the fields to include for returned resources of type profiles | [optional] 
 **limit** | **Int** | maximum resources per page | [optional] 

### Return type

[**ProfilesWithoutIncludesResponse**](ProfilesWithoutIncludesResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **bundleIdsUpdateInstance**
```swift
    open class func bundleIdsUpdateInstance(id: String, bundleIdUpdateRequest: BundleIdUpdateRequest, completion: @escaping (_ data: BundleIdResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let bundleIdUpdateRequest = BundleIdUpdateRequest(data: BundleIdUpdateRequest_data(type: "type_example", id: "id_example", attributes: BundleIdUpdateRequest_data_attributes(name: "name_example"))) // BundleIdUpdateRequest | BundleId representation

BundleIdsAPI.bundleIdsUpdateInstance(id: id, bundleIdUpdateRequest: bundleIdUpdateRequest) { (response, error) in
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
 **bundleIdUpdateRequest** | [**BundleIdUpdateRequest**](BundleIdUpdateRequest.md) | BundleId representation | 

### Return type

[**BundleIdResponse**](BundleIdResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

