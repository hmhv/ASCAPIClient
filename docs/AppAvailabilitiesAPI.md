# AppAvailabilitiesAPI

All URIs are relative to *https://api.appstoreconnect.apple.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**appAvailabilitiesAvailableTerritoriesGetToManyRelated**](AppAvailabilitiesAPI.md#appavailabilitiesavailableterritoriesgettomanyrelated) | **GET** /v1/appAvailabilities/{id}/availableTerritories | 
[**appAvailabilitiesCreateInstance**](AppAvailabilitiesAPI.md#appavailabilitiescreateinstance) | **POST** /v1/appAvailabilities | 
[**appAvailabilitiesGetInstance**](AppAvailabilitiesAPI.md#appavailabilitiesgetinstance) | **GET** /v1/appAvailabilities/{id} | 
[**appAvailabilitiesV2CreateInstance**](AppAvailabilitiesAPI.md#appavailabilitiesv2createinstance) | **POST** /v2/appAvailabilities | 
[**appAvailabilitiesV2GetInstance**](AppAvailabilitiesAPI.md#appavailabilitiesv2getinstance) | **GET** /v2/appAvailabilities/{id} | 
[**appAvailabilitiesV2TerritoryAvailabilitiesGetToManyRelated**](AppAvailabilitiesAPI.md#appavailabilitiesv2territoryavailabilitiesgettomanyrelated) | **GET** /v2/appAvailabilities/{id}/territoryAvailabilities | 


# **appAvailabilitiesAvailableTerritoriesGetToManyRelated**
```swift
    open class func appAvailabilitiesAvailableTerritoriesGetToManyRelated(id: String, fieldsTerritories: [FieldsTerritories_appAvailabilitiesAvailableTerritoriesGetToManyRelated]? = nil, limit: Int? = nil, completion: @escaping (_ data: TerritoriesResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let fieldsTerritories = ["fieldsTerritories_example"] // [String] | the fields to include for returned resources of type territories (optional)
let limit = 987 // Int | maximum resources per page (optional)

AppAvailabilitiesAPI.appAvailabilitiesAvailableTerritoriesGetToManyRelated(id: id, fieldsTerritories: fieldsTerritories, limit: limit) { (response, error) in
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
 **fieldsTerritories** | [**[String]**](String.md) | the fields to include for returned resources of type territories | [optional] 
 **limit** | **Int** | maximum resources per page | [optional] 

### Return type

[**TerritoriesResponse**](TerritoriesResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **appAvailabilitiesCreateInstance**
```swift
    open class func appAvailabilitiesCreateInstance(appAvailabilityCreateRequest: AppAvailabilityCreateRequest, completion: @escaping (_ data: AppAvailabilityResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let appAvailabilityCreateRequest = AppAvailabilityCreateRequest(data: AppAvailabilityCreateRequest_data(type: "type_example", attributes: AppAvailabilityV2CreateRequest_data_attributes(availableInNewTerritories: false), relationships: AppAvailabilityCreateRequest_data_relationships(app: AlternativeDistributionKeyCreateRequest_data_relationships_app(data: AlternativeDistributionKeyCreateRequest_data_relationships_app_data(type: "type_example", id: "id_example")), availableTerritories: AppAvailabilityCreateRequest_data_relationships_availableTerritories(data: [AppAvailability_relationships_availableTerritories_data_inner(type: "type_example", id: "id_example")])))) // AppAvailabilityCreateRequest | AppAvailability representation

AppAvailabilitiesAPI.appAvailabilitiesCreateInstance(appAvailabilityCreateRequest: appAvailabilityCreateRequest) { (response, error) in
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
 **appAvailabilityCreateRequest** | [**AppAvailabilityCreateRequest**](AppAvailabilityCreateRequest.md) | AppAvailability representation | 

### Return type

[**AppAvailabilityResponse**](AppAvailabilityResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **appAvailabilitiesGetInstance**
```swift
    open class func appAvailabilitiesGetInstance(id: String, fieldsAppAvailabilities: [FieldsAppAvailabilities_appAvailabilitiesGetInstance]? = nil, include: [Include_appAvailabilitiesGetInstance]? = nil, fieldsTerritories: [FieldsTerritories_appAvailabilitiesGetInstance]? = nil, limitAvailableTerritories: Int? = nil, completion: @escaping (_ data: AppAvailabilityResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let fieldsAppAvailabilities = ["fieldsAppAvailabilities_example"] // [String] | the fields to include for returned resources of type appAvailabilities (optional)
let include = ["include_example"] // [String] | comma-separated list of relationships to include (optional)
let fieldsTerritories = ["fieldsTerritories_example"] // [String] | the fields to include for returned resources of type territories (optional)
let limitAvailableTerritories = 987 // Int | maximum number of related availableTerritories returned (when they are included) (optional)

AppAvailabilitiesAPI.appAvailabilitiesGetInstance(id: id, fieldsAppAvailabilities: fieldsAppAvailabilities, include: include, fieldsTerritories: fieldsTerritories, limitAvailableTerritories: limitAvailableTerritories) { (response, error) in
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
 **fieldsAppAvailabilities** | [**[String]**](String.md) | the fields to include for returned resources of type appAvailabilities | [optional] 
 **include** | [**[String]**](String.md) | comma-separated list of relationships to include | [optional] 
 **fieldsTerritories** | [**[String]**](String.md) | the fields to include for returned resources of type territories | [optional] 
 **limitAvailableTerritories** | **Int** | maximum number of related availableTerritories returned (when they are included) | [optional] 

### Return type

[**AppAvailabilityResponse**](AppAvailabilityResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **appAvailabilitiesV2CreateInstance**
```swift
    open class func appAvailabilitiesV2CreateInstance(appAvailabilityV2CreateRequest: AppAvailabilityV2CreateRequest, completion: @escaping (_ data: AppAvailabilityV2Response?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let appAvailabilityV2CreateRequest = AppAvailabilityV2CreateRequest(data: AppAvailabilityV2CreateRequest_data(type: "type_example", attributes: AppAvailabilityV2CreateRequest_data_attributes(availableInNewTerritories: false), relationships: AppAvailabilityV2CreateRequest_data_relationships(app: AlternativeDistributionKeyCreateRequest_data_relationships_app(data: AlternativeDistributionKeyCreateRequest_data_relationships_app_data(type: "type_example", id: "id_example")), territoryAvailabilities: AppAvailabilityV2CreateRequest_data_relationships_territoryAvailabilities(data: [AppAvailabilityV2_relationships_territoryAvailabilities_data_inner(type: "type_example", id: "id_example")]))), included: [TerritoryAvailabilityInlineCreate(type: "type_example", id: "id_example")]) // AppAvailabilityV2CreateRequest | AppAvailability representation

AppAvailabilitiesAPI.appAvailabilitiesV2CreateInstance(appAvailabilityV2CreateRequest: appAvailabilityV2CreateRequest) { (response, error) in
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
 **appAvailabilityV2CreateRequest** | [**AppAvailabilityV2CreateRequest**](AppAvailabilityV2CreateRequest.md) | AppAvailability representation | 

### Return type

[**AppAvailabilityV2Response**](AppAvailabilityV2Response.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **appAvailabilitiesV2GetInstance**
```swift
    open class func appAvailabilitiesV2GetInstance(id: String, fieldsAppAvailabilities: [FieldsAppAvailabilities_appAvailabilitiesV2GetInstance]? = nil, include: [Include_appAvailabilitiesV2GetInstance]? = nil, fieldsTerritoryAvailabilities: [FieldsTerritoryAvailabilities_appAvailabilitiesV2GetInstance]? = nil, limitTerritoryAvailabilities: Int? = nil, completion: @escaping (_ data: AppAvailabilityV2Response?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let fieldsAppAvailabilities = ["fieldsAppAvailabilities_example"] // [String] | the fields to include for returned resources of type appAvailabilities (optional)
let include = ["include_example"] // [String] | comma-separated list of relationships to include (optional)
let fieldsTerritoryAvailabilities = ["fieldsTerritoryAvailabilities_example"] // [String] | the fields to include for returned resources of type territoryAvailabilities (optional)
let limitTerritoryAvailabilities = 987 // Int | maximum number of related territoryAvailabilities returned (when they are included) (optional)

AppAvailabilitiesAPI.appAvailabilitiesV2GetInstance(id: id, fieldsAppAvailabilities: fieldsAppAvailabilities, include: include, fieldsTerritoryAvailabilities: fieldsTerritoryAvailabilities, limitTerritoryAvailabilities: limitTerritoryAvailabilities) { (response, error) in
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
 **fieldsAppAvailabilities** | [**[String]**](String.md) | the fields to include for returned resources of type appAvailabilities | [optional] 
 **include** | [**[String]**](String.md) | comma-separated list of relationships to include | [optional] 
 **fieldsTerritoryAvailabilities** | [**[String]**](String.md) | the fields to include for returned resources of type territoryAvailabilities | [optional] 
 **limitTerritoryAvailabilities** | **Int** | maximum number of related territoryAvailabilities returned (when they are included) | [optional] 

### Return type

[**AppAvailabilityV2Response**](AppAvailabilityV2Response.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **appAvailabilitiesV2TerritoryAvailabilitiesGetToManyRelated**
```swift
    open class func appAvailabilitiesV2TerritoryAvailabilitiesGetToManyRelated(id: String, fieldsTerritoryAvailabilities: [FieldsTerritoryAvailabilities_appAvailabilitiesV2TerritoryAvailabilitiesGetToManyRelated]? = nil, fieldsTerritories: [FieldsTerritories_appAvailabilitiesV2TerritoryAvailabilitiesGetToManyRelated]? = nil, limit: Int? = nil, include: [Include_appAvailabilitiesV2TerritoryAvailabilitiesGetToManyRelated]? = nil, completion: @escaping (_ data: TerritoryAvailabilitiesResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let fieldsTerritoryAvailabilities = ["fieldsTerritoryAvailabilities_example"] // [String] | the fields to include for returned resources of type territoryAvailabilities (optional)
let fieldsTerritories = ["fieldsTerritories_example"] // [String] | the fields to include for returned resources of type territories (optional)
let limit = 987 // Int | maximum resources per page (optional)
let include = ["include_example"] // [String] | comma-separated list of relationships to include (optional)

AppAvailabilitiesAPI.appAvailabilitiesV2TerritoryAvailabilitiesGetToManyRelated(id: id, fieldsTerritoryAvailabilities: fieldsTerritoryAvailabilities, fieldsTerritories: fieldsTerritories, limit: limit, include: include) { (response, error) in
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
 **fieldsTerritoryAvailabilities** | [**[String]**](String.md) | the fields to include for returned resources of type territoryAvailabilities | [optional] 
 **fieldsTerritories** | [**[String]**](String.md) | the fields to include for returned resources of type territories | [optional] 
 **limit** | **Int** | maximum resources per page | [optional] 
 **include** | [**[String]**](String.md) | comma-separated list of relationships to include | [optional] 

### Return type

[**TerritoryAvailabilitiesResponse**](TerritoryAvailabilitiesResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

