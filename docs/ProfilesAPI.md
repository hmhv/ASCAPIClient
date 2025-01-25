# ProfilesAPI

All URIs are relative to *https://api.appstoreconnect.apple.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**profilesBundleIdGetToOneRelated**](ProfilesAPI.md#profilesbundleidgettoonerelated) | **GET** /v1/profiles/{id}/bundleId | 
[**profilesCertificatesGetToManyRelated**](ProfilesAPI.md#profilescertificatesgettomanyrelated) | **GET** /v1/profiles/{id}/certificates | 
[**profilesCreateInstance**](ProfilesAPI.md#profilescreateinstance) | **POST** /v1/profiles | 
[**profilesDeleteInstance**](ProfilesAPI.md#profilesdeleteinstance) | **DELETE** /v1/profiles/{id} | 
[**profilesDevicesGetToManyRelated**](ProfilesAPI.md#profilesdevicesgettomanyrelated) | **GET** /v1/profiles/{id}/devices | 
[**profilesGetCollection**](ProfilesAPI.md#profilesgetcollection) | **GET** /v1/profiles | 
[**profilesGetInstance**](ProfilesAPI.md#profilesgetinstance) | **GET** /v1/profiles/{id} | 


# **profilesBundleIdGetToOneRelated**
```swift
    open class func profilesBundleIdGetToOneRelated(id: String, fieldsBundleIds: [FieldsBundleIds_profilesBundleIdGetToOneRelated]? = nil, completion: @escaping (_ data: BundleIdWithoutIncludesResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let fieldsBundleIds = ["fieldsBundleIds_example"] // [String] | the fields to include for returned resources of type bundleIds (optional)

ProfilesAPI.profilesBundleIdGetToOneRelated(id: id, fieldsBundleIds: fieldsBundleIds) { (response, error) in
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

### Return type

[**BundleIdWithoutIncludesResponse**](BundleIdWithoutIncludesResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **profilesCertificatesGetToManyRelated**
```swift
    open class func profilesCertificatesGetToManyRelated(id: String, fieldsCertificates: [FieldsCertificates_profilesCertificatesGetToManyRelated]? = nil, limit: Int? = nil, completion: @escaping (_ data: CertificatesWithoutIncludesResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let fieldsCertificates = ["fieldsCertificates_example"] // [String] | the fields to include for returned resources of type certificates (optional)
let limit = 987 // Int | maximum resources per page (optional)

ProfilesAPI.profilesCertificatesGetToManyRelated(id: id, fieldsCertificates: fieldsCertificates, limit: limit) { (response, error) in
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
 **fieldsCertificates** | [**[String]**](String.md) | the fields to include for returned resources of type certificates | [optional] 
 **limit** | **Int** | maximum resources per page | [optional] 

### Return type

[**CertificatesWithoutIncludesResponse**](CertificatesWithoutIncludesResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **profilesCreateInstance**
```swift
    open class func profilesCreateInstance(profileCreateRequest: ProfileCreateRequest, completion: @escaping (_ data: ProfileResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let profileCreateRequest = ProfileCreateRequest(data: ProfileCreateRequest_data(type: "type_example", attributes: ProfileCreateRequest_data_attributes(name: "name_example", profileType: "profileType_example"), relationships: ProfileCreateRequest_data_relationships(bundleId: BundleIdCapabilityCreateRequest_data_relationships_bundleId(data: BundleIdCapabilityCreateRequest_data_relationships_bundleId_data(type: "type_example", id: "id_example")), devices: ProfileCreateRequest_data_relationships_devices(data: [Profile_relationships_devices_data_inner(type: "type_example", id: "id_example")]), certificates: ProfileCreateRequest_data_relationships_certificates(data: [Profile_relationships_certificates_data_inner(type: "type_example", id: "id_example")])))) // ProfileCreateRequest | Profile representation

ProfilesAPI.profilesCreateInstance(profileCreateRequest: profileCreateRequest) { (response, error) in
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
 **profileCreateRequest** | [**ProfileCreateRequest**](ProfileCreateRequest.md) | Profile representation | 

### Return type

[**ProfileResponse**](ProfileResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **profilesDeleteInstance**
```swift
    open class func profilesDeleteInstance(id: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource

ProfilesAPI.profilesDeleteInstance(id: id) { (response, error) in
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

# **profilesDevicesGetToManyRelated**
```swift
    open class func profilesDevicesGetToManyRelated(id: String, fieldsDevices: [FieldsDevices_profilesDevicesGetToManyRelated]? = nil, limit: Int? = nil, completion: @escaping (_ data: DevicesWithoutIncludesResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let fieldsDevices = ["fieldsDevices_example"] // [String] | the fields to include for returned resources of type devices (optional)
let limit = 987 // Int | maximum resources per page (optional)

ProfilesAPI.profilesDevicesGetToManyRelated(id: id, fieldsDevices: fieldsDevices, limit: limit) { (response, error) in
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
 **fieldsDevices** | [**[String]**](String.md) | the fields to include for returned resources of type devices | [optional] 
 **limit** | **Int** | maximum resources per page | [optional] 

### Return type

[**DevicesWithoutIncludesResponse**](DevicesWithoutIncludesResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **profilesGetCollection**
```swift
    open class func profilesGetCollection(filterName: [String]? = nil, filterProfileType: [FilterProfileType_profilesGetCollection]? = nil, filterProfileState: [FilterProfileState_profilesGetCollection]? = nil, filterId: [String]? = nil, sort: [Sort_profilesGetCollection]? = nil, fieldsProfiles: [FieldsProfiles_profilesGetCollection]? = nil, fieldsBundleIds: [FieldsBundleIds_profilesGetCollection]? = nil, fieldsDevices: [FieldsDevices_profilesGetCollection]? = nil, fieldsCertificates: [FieldsCertificates_profilesGetCollection]? = nil, limit: Int? = nil, include: [Include_profilesGetCollection]? = nil, limitCertificates: Int? = nil, limitDevices: Int? = nil, completion: @escaping (_ data: ProfilesResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let filterName = ["inner_example"] // [String] | filter by attribute 'name' (optional)
let filterProfileType = ["filterProfileType_example"] // [String] | filter by attribute 'profileType' (optional)
let filterProfileState = ["filterProfileState_example"] // [String] | filter by attribute 'profileState' (optional)
let filterId = ["inner_example"] // [String] | filter by id(s) (optional)
let sort = ["sort_example"] // [String] | comma-separated list of sort expressions; resources will be sorted as specified (optional)
let fieldsProfiles = ["fieldsProfiles_example"] // [String] | the fields to include for returned resources of type profiles (optional)
let fieldsBundleIds = ["fieldsBundleIds_example"] // [String] | the fields to include for returned resources of type bundleIds (optional)
let fieldsDevices = ["fieldsDevices_example"] // [String] | the fields to include for returned resources of type devices (optional)
let fieldsCertificates = ["fieldsCertificates_example"] // [String] | the fields to include for returned resources of type certificates (optional)
let limit = 987 // Int | maximum resources per page (optional)
let include = ["include_example"] // [String] | comma-separated list of relationships to include (optional)
let limitCertificates = 987 // Int | maximum number of related certificates returned (when they are included) (optional)
let limitDevices = 987 // Int | maximum number of related devices returned (when they are included) (optional)

ProfilesAPI.profilesGetCollection(filterName: filterName, filterProfileType: filterProfileType, filterProfileState: filterProfileState, filterId: filterId, sort: sort, fieldsProfiles: fieldsProfiles, fieldsBundleIds: fieldsBundleIds, fieldsDevices: fieldsDevices, fieldsCertificates: fieldsCertificates, limit: limit, include: include, limitCertificates: limitCertificates, limitDevices: limitDevices) { (response, error) in
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
 **filterName** | [**[String]**](String.md) | filter by attribute &#39;name&#39; | [optional] 
 **filterProfileType** | [**[String]**](String.md) | filter by attribute &#39;profileType&#39; | [optional] 
 **filterProfileState** | [**[String]**](String.md) | filter by attribute &#39;profileState&#39; | [optional] 
 **filterId** | [**[String]**](String.md) | filter by id(s) | [optional] 
 **sort** | [**[String]**](String.md) | comma-separated list of sort expressions; resources will be sorted as specified | [optional] 
 **fieldsProfiles** | [**[String]**](String.md) | the fields to include for returned resources of type profiles | [optional] 
 **fieldsBundleIds** | [**[String]**](String.md) | the fields to include for returned resources of type bundleIds | [optional] 
 **fieldsDevices** | [**[String]**](String.md) | the fields to include for returned resources of type devices | [optional] 
 **fieldsCertificates** | [**[String]**](String.md) | the fields to include for returned resources of type certificates | [optional] 
 **limit** | **Int** | maximum resources per page | [optional] 
 **include** | [**[String]**](String.md) | comma-separated list of relationships to include | [optional] 
 **limitCertificates** | **Int** | maximum number of related certificates returned (when they are included) | [optional] 
 **limitDevices** | **Int** | maximum number of related devices returned (when they are included) | [optional] 

### Return type

[**ProfilesResponse**](ProfilesResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **profilesGetInstance**
```swift
    open class func profilesGetInstance(id: String, fieldsProfiles: [FieldsProfiles_profilesGetInstance]? = nil, fieldsBundleIds: [FieldsBundleIds_profilesGetInstance]? = nil, fieldsDevices: [FieldsDevices_profilesGetInstance]? = nil, fieldsCertificates: [FieldsCertificates_profilesGetInstance]? = nil, include: [Include_profilesGetInstance]? = nil, limitCertificates: Int? = nil, limitDevices: Int? = nil, completion: @escaping (_ data: ProfileResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let fieldsProfiles = ["fieldsProfiles_example"] // [String] | the fields to include for returned resources of type profiles (optional)
let fieldsBundleIds = ["fieldsBundleIds_example"] // [String] | the fields to include for returned resources of type bundleIds (optional)
let fieldsDevices = ["fieldsDevices_example"] // [String] | the fields to include for returned resources of type devices (optional)
let fieldsCertificates = ["fieldsCertificates_example"] // [String] | the fields to include for returned resources of type certificates (optional)
let include = ["include_example"] // [String] | comma-separated list of relationships to include (optional)
let limitCertificates = 987 // Int | maximum number of related certificates returned (when they are included) (optional)
let limitDevices = 987 // Int | maximum number of related devices returned (when they are included) (optional)

ProfilesAPI.profilesGetInstance(id: id, fieldsProfiles: fieldsProfiles, fieldsBundleIds: fieldsBundleIds, fieldsDevices: fieldsDevices, fieldsCertificates: fieldsCertificates, include: include, limitCertificates: limitCertificates, limitDevices: limitDevices) { (response, error) in
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
 **fieldsBundleIds** | [**[String]**](String.md) | the fields to include for returned resources of type bundleIds | [optional] 
 **fieldsDevices** | [**[String]**](String.md) | the fields to include for returned resources of type devices | [optional] 
 **fieldsCertificates** | [**[String]**](String.md) | the fields to include for returned resources of type certificates | [optional] 
 **include** | [**[String]**](String.md) | comma-separated list of relationships to include | [optional] 
 **limitCertificates** | **Int** | maximum number of related certificates returned (when they are included) | [optional] 
 **limitDevices** | **Int** | maximum number of related devices returned (when they are included) | [optional] 

### Return type

[**ProfileResponse**](ProfileResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

