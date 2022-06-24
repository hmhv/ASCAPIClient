# DevicesAPI

All URIs are relative to *https://api.appstoreconnect.apple.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**devicesCreateInstance**](DevicesAPI.md#devicescreateinstance) | **POST** /v1/devices | 
[**devicesGetCollection**](DevicesAPI.md#devicesgetcollection) | **GET** /v1/devices | 
[**devicesGetInstance**](DevicesAPI.md#devicesgetinstance) | **GET** /v1/devices/{id} | 
[**devicesUpdateInstance**](DevicesAPI.md#devicesupdateinstance) | **PATCH** /v1/devices/{id} | 


# **devicesCreateInstance**
```swift
    open class func devicesCreateInstance(deviceCreateRequest: DeviceCreateRequest, completion: @escaping (_ data: DeviceResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let deviceCreateRequest = DeviceCreateRequest(data: DeviceCreateRequest_data(type: "type_example", attributes: DeviceCreateRequest_data_attributes(name: "name_example", platform: BundleIdPlatform(), udid: "udid_example"))) // DeviceCreateRequest | Device representation

DevicesAPI.devicesCreateInstance(deviceCreateRequest: deviceCreateRequest) { (response, error) in
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
 **deviceCreateRequest** | [**DeviceCreateRequest**](DeviceCreateRequest.md) | Device representation | 

### Return type

[**DeviceResponse**](DeviceResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **devicesGetCollection**
```swift
    open class func devicesGetCollection(filterName: [String]? = nil, filterPlatform: [FilterPlatform_devicesGetCollection]? = nil, filterStatus: [FilterStatus_devicesGetCollection]? = nil, filterUdid: [String]? = nil, filterId: [String]? = nil, sort: [Sort_devicesGetCollection]? = nil, fieldsDevices: [FieldsDevices_devicesGetCollection]? = nil, limit: Int? = nil, completion: @escaping (_ data: DevicesResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let filterName = ["inner_example"] // [String] | filter by attribute 'name' (optional)
let filterPlatform = ["filterPlatform_example"] // [String] | filter by attribute 'platform' (optional)
let filterStatus = ["filterStatus_example"] // [String] | filter by attribute 'status' (optional)
let filterUdid = ["inner_example"] // [String] | filter by attribute 'udid' (optional)
let filterId = ["inner_example"] // [String] | filter by id(s) (optional)
let sort = ["sort_example"] // [String] | comma-separated list of sort expressions; resources will be sorted as specified (optional)
let fieldsDevices = ["fieldsDevices_example"] // [String] | the fields to include for returned resources of type devices (optional)
let limit = 987 // Int | maximum resources per page (optional)

DevicesAPI.devicesGetCollection(filterName: filterName, filterPlatform: filterPlatform, filterStatus: filterStatus, filterUdid: filterUdid, filterId: filterId, sort: sort, fieldsDevices: fieldsDevices, limit: limit) { (response, error) in
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
 **filterPlatform** | [**[String]**](String.md) | filter by attribute &#39;platform&#39; | [optional] 
 **filterStatus** | [**[String]**](String.md) | filter by attribute &#39;status&#39; | [optional] 
 **filterUdid** | [**[String]**](String.md) | filter by attribute &#39;udid&#39; | [optional] 
 **filterId** | [**[String]**](String.md) | filter by id(s) | [optional] 
 **sort** | [**[String]**](String.md) | comma-separated list of sort expressions; resources will be sorted as specified | [optional] 
 **fieldsDevices** | [**[String]**](String.md) | the fields to include for returned resources of type devices | [optional] 
 **limit** | **Int** | maximum resources per page | [optional] 

### Return type

[**DevicesResponse**](DevicesResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **devicesGetInstance**
```swift
    open class func devicesGetInstance(id: String, fieldsDevices: [FieldsDevices_devicesGetInstance]? = nil, completion: @escaping (_ data: DeviceResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let fieldsDevices = ["fieldsDevices_example"] // [String] | the fields to include for returned resources of type devices (optional)

DevicesAPI.devicesGetInstance(id: id, fieldsDevices: fieldsDevices) { (response, error) in
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

### Return type

[**DeviceResponse**](DeviceResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **devicesUpdateInstance**
```swift
    open class func devicesUpdateInstance(id: String, deviceUpdateRequest: DeviceUpdateRequest, completion: @escaping (_ data: DeviceResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let deviceUpdateRequest = DeviceUpdateRequest(data: DeviceUpdateRequest_data(type: "type_example", id: "id_example", attributes: DeviceUpdateRequest_data_attributes(name: "name_example", status: "status_example"))) // DeviceUpdateRequest | Device representation

DevicesAPI.devicesUpdateInstance(id: id, deviceUpdateRequest: deviceUpdateRequest) { (response, error) in
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
 **deviceUpdateRequest** | [**DeviceUpdateRequest**](DeviceUpdateRequest.md) | Device representation | 

### Return type

[**DeviceResponse**](DeviceResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

