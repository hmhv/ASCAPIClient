# BundleIdCapabilitiesAPI

All URIs are relative to *https://api.appstoreconnect.apple.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**bundleIdCapabilitiesCreateInstance**](BundleIdCapabilitiesAPI.md#bundleidcapabilitiescreateinstance) | **POST** /v1/bundleIdCapabilities | 
[**bundleIdCapabilitiesDeleteInstance**](BundleIdCapabilitiesAPI.md#bundleidcapabilitiesdeleteinstance) | **DELETE** /v1/bundleIdCapabilities/{id} | 
[**bundleIdCapabilitiesUpdateInstance**](BundleIdCapabilitiesAPI.md#bundleidcapabilitiesupdateinstance) | **PATCH** /v1/bundleIdCapabilities/{id} | 


# **bundleIdCapabilitiesCreateInstance**
```swift
    open class func bundleIdCapabilitiesCreateInstance(bundleIdCapabilityCreateRequest: BundleIdCapabilityCreateRequest, completion: @escaping (_ data: BundleIdCapabilityResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let bundleIdCapabilityCreateRequest = BundleIdCapabilityCreateRequest(data: BundleIdCapabilityCreateRequest_data(type: "type_example", attributes: BundleIdCapabilityCreateRequest_data_attributes(capabilityType: CapabilityType(), settings: [CapabilitySetting(key: "key_example", name: "name_example", description: "description_example", enabledByDefault: false, visible: false, allowedInstances: "allowedInstances_example", minInstances: 123, options: [CapabilityOption(key: "key_example", name: "name_example", description: "description_example", enabledByDefault: false, enabled: false, supportsWildcard: false)])]), relationships: BundleIdCapabilityCreateRequest_data_relationships(bundleId: BundleIdCapabilityCreateRequest_data_relationships_bundleId(data: BundleIdCapabilityCreateRequest_data_relationships_bundleId_data(type: "type_example", id: "id_example"))))) // BundleIdCapabilityCreateRequest | BundleIdCapability representation

BundleIdCapabilitiesAPI.bundleIdCapabilitiesCreateInstance(bundleIdCapabilityCreateRequest: bundleIdCapabilityCreateRequest) { (response, error) in
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
 **bundleIdCapabilityCreateRequest** | [**BundleIdCapabilityCreateRequest**](BundleIdCapabilityCreateRequest.md) | BundleIdCapability representation | 

### Return type

[**BundleIdCapabilityResponse**](BundleIdCapabilityResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **bundleIdCapabilitiesDeleteInstance**
```swift
    open class func bundleIdCapabilitiesDeleteInstance(id: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource

BundleIdCapabilitiesAPI.bundleIdCapabilitiesDeleteInstance(id: id) { (response, error) in
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

# **bundleIdCapabilitiesUpdateInstance**
```swift
    open class func bundleIdCapabilitiesUpdateInstance(id: String, bundleIdCapabilityUpdateRequest: BundleIdCapabilityUpdateRequest, completion: @escaping (_ data: BundleIdCapabilityResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let bundleIdCapabilityUpdateRequest = BundleIdCapabilityUpdateRequest(data: BundleIdCapabilityUpdateRequest_data(type: "type_example", id: "id_example", attributes: BundleIdCapability_attributes(capabilityType: CapabilityType(), settings: [CapabilitySetting(key: "key_example", name: "name_example", description: "description_example", enabledByDefault: false, visible: false, allowedInstances: "allowedInstances_example", minInstances: 123, options: [CapabilityOption(key: "key_example", name: "name_example", description: "description_example", enabledByDefault: false, enabled: false, supportsWildcard: false)])]))) // BundleIdCapabilityUpdateRequest | BundleIdCapability representation

BundleIdCapabilitiesAPI.bundleIdCapabilitiesUpdateInstance(id: id, bundleIdCapabilityUpdateRequest: bundleIdCapabilityUpdateRequest) { (response, error) in
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
 **bundleIdCapabilityUpdateRequest** | [**BundleIdCapabilityUpdateRequest**](BundleIdCapabilityUpdateRequest.md) | BundleIdCapability representation | 

### Return type

[**BundleIdCapabilityResponse**](BundleIdCapabilityResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

