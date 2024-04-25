# AppPricePointsAPI

All URIs are relative to *https://api.appstoreconnect.apple.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**appPricePointsGetCollection**](AppPricePointsAPI.md#apppricepointsgetcollection) | **GET** /v1/appPricePoints | 
[**appPricePointsGetInstance**](AppPricePointsAPI.md#apppricepointsgetinstance) | **GET** /v1/appPricePoints/{id} | 
[**appPricePointsTerritoryGetToOneRelated**](AppPricePointsAPI.md#apppricepointsterritorygettoonerelated) | **GET** /v1/appPricePoints/{id}/territory | 
[**appPricePointsV3EqualizationsGetToManyRelated**](AppPricePointsAPI.md#apppricepointsv3equalizationsgettomanyrelated) | **GET** /v3/appPricePoints/{id}/equalizations | 
[**appPricePointsV3GetInstance**](AppPricePointsAPI.md#apppricepointsv3getinstance) | **GET** /v3/appPricePoints/{id} | 


# **appPricePointsGetCollection**
```swift
    open class func appPricePointsGetCollection(filterPriceTier: [String]? = nil, filterTerritory: [String]? = nil, fieldsAppPricePoints: [FieldsAppPricePoints_appPricePointsGetCollection]? = nil, limit: Int? = nil, include: [Include_appPricePointsGetCollection]? = nil, fieldsTerritories: [FieldsTerritories_appPricePointsGetCollection]? = nil, completion: @escaping (_ data: AppPricePointsResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let filterPriceTier = ["inner_example"] // [String] | filter by id(s) of related 'priceTier' (optional)
let filterTerritory = ["inner_example"] // [String] | filter by id(s) of related 'territory' (optional)
let fieldsAppPricePoints = ["fieldsAppPricePoints_example"] // [String] | the fields to include for returned resources of type appPricePoints (optional)
let limit = 987 // Int | maximum resources per page (optional)
let include = ["include_example"] // [String] | comma-separated list of relationships to include (optional)
let fieldsTerritories = ["fieldsTerritories_example"] // [String] | the fields to include for returned resources of type territories (optional)

AppPricePointsAPI.appPricePointsGetCollection(filterPriceTier: filterPriceTier, filterTerritory: filterTerritory, fieldsAppPricePoints: fieldsAppPricePoints, limit: limit, include: include, fieldsTerritories: fieldsTerritories) { (response, error) in
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
 **filterPriceTier** | [**[String]**](String.md) | filter by id(s) of related &#39;priceTier&#39; | [optional] 
 **filterTerritory** | [**[String]**](String.md) | filter by id(s) of related &#39;territory&#39; | [optional] 
 **fieldsAppPricePoints** | [**[String]**](String.md) | the fields to include for returned resources of type appPricePoints | [optional] 
 **limit** | **Int** | maximum resources per page | [optional] 
 **include** | [**[String]**](String.md) | comma-separated list of relationships to include | [optional] 
 **fieldsTerritories** | [**[String]**](String.md) | the fields to include for returned resources of type territories | [optional] 

### Return type

[**AppPricePointsResponse**](AppPricePointsResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **appPricePointsGetInstance**
```swift
    open class func appPricePointsGetInstance(id: String, fieldsAppPricePoints: [FieldsAppPricePoints_appPricePointsGetInstance]? = nil, include: [Include_appPricePointsGetInstance]? = nil, fieldsTerritories: [FieldsTerritories_appPricePointsGetInstance]? = nil, completion: @escaping (_ data: AppPricePointResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let fieldsAppPricePoints = ["fieldsAppPricePoints_example"] // [String] | the fields to include for returned resources of type appPricePoints (optional)
let include = ["include_example"] // [String] | comma-separated list of relationships to include (optional)
let fieldsTerritories = ["fieldsTerritories_example"] // [String] | the fields to include for returned resources of type territories (optional)

AppPricePointsAPI.appPricePointsGetInstance(id: id, fieldsAppPricePoints: fieldsAppPricePoints, include: include, fieldsTerritories: fieldsTerritories) { (response, error) in
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
 **fieldsAppPricePoints** | [**[String]**](String.md) | the fields to include for returned resources of type appPricePoints | [optional] 
 **include** | [**[String]**](String.md) | comma-separated list of relationships to include | [optional] 
 **fieldsTerritories** | [**[String]**](String.md) | the fields to include for returned resources of type territories | [optional] 

### Return type

[**AppPricePointResponse**](AppPricePointResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **appPricePointsTerritoryGetToOneRelated**
```swift
    open class func appPricePointsTerritoryGetToOneRelated(id: String, fieldsTerritories: [FieldsTerritories_appPricePointsTerritoryGetToOneRelated]? = nil, completion: @escaping (_ data: TerritoryResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let fieldsTerritories = ["fieldsTerritories_example"] // [String] | the fields to include for returned resources of type territories (optional)

AppPricePointsAPI.appPricePointsTerritoryGetToOneRelated(id: id, fieldsTerritories: fieldsTerritories) { (response, error) in
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

### Return type

[**TerritoryResponse**](TerritoryResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **appPricePointsV3EqualizationsGetToManyRelated**
```swift
    open class func appPricePointsV3EqualizationsGetToManyRelated(id: String, filterTerritory: [String]? = nil, fieldsAppPricePoints: [FieldsAppPricePoints_appPricePointsV3EqualizationsGetToManyRelated]? = nil, fieldsApps: [FieldsApps_appPricePointsV3EqualizationsGetToManyRelated]? = nil, fieldsTerritories: [FieldsTerritories_appPricePointsV3EqualizationsGetToManyRelated]? = nil, limit: Int? = nil, include: [Include_appPricePointsV3EqualizationsGetToManyRelated]? = nil, completion: @escaping (_ data: AppPricePointsV3Response?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let filterTerritory = ["inner_example"] // [String] | filter by id(s) of related 'territory' (optional)
let fieldsAppPricePoints = ["fieldsAppPricePoints_example"] // [String] | the fields to include for returned resources of type appPricePoints (optional)
let fieldsApps = ["fieldsApps_example"] // [String] | the fields to include for returned resources of type apps (optional)
let fieldsTerritories = ["fieldsTerritories_example"] // [String] | the fields to include for returned resources of type territories (optional)
let limit = 987 // Int | maximum resources per page (optional)
let include = ["include_example"] // [String] | comma-separated list of relationships to include (optional)

AppPricePointsAPI.appPricePointsV3EqualizationsGetToManyRelated(id: id, filterTerritory: filterTerritory, fieldsAppPricePoints: fieldsAppPricePoints, fieldsApps: fieldsApps, fieldsTerritories: fieldsTerritories, limit: limit, include: include) { (response, error) in
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
 **filterTerritory** | [**[String]**](String.md) | filter by id(s) of related &#39;territory&#39; | [optional] 
 **fieldsAppPricePoints** | [**[String]**](String.md) | the fields to include for returned resources of type appPricePoints | [optional] 
 **fieldsApps** | [**[String]**](String.md) | the fields to include for returned resources of type apps | [optional] 
 **fieldsTerritories** | [**[String]**](String.md) | the fields to include for returned resources of type territories | [optional] 
 **limit** | **Int** | maximum resources per page | [optional] 
 **include** | [**[String]**](String.md) | comma-separated list of relationships to include | [optional] 

### Return type

[**AppPricePointsV3Response**](AppPricePointsV3Response.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/csv

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **appPricePointsV3GetInstance**
```swift
    open class func appPricePointsV3GetInstance(id: String, fieldsAppPricePoints: [FieldsAppPricePoints_appPricePointsV3GetInstance]? = nil, include: [Include_appPricePointsV3GetInstance]? = nil, completion: @escaping (_ data: AppPricePointV3Response?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let fieldsAppPricePoints = ["fieldsAppPricePoints_example"] // [String] | the fields to include for returned resources of type appPricePoints (optional)
let include = ["include_example"] // [String] | comma-separated list of relationships to include (optional)

AppPricePointsAPI.appPricePointsV3GetInstance(id: id, fieldsAppPricePoints: fieldsAppPricePoints, include: include) { (response, error) in
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
 **fieldsAppPricePoints** | [**[String]**](String.md) | the fields to include for returned resources of type appPricePoints | [optional] 
 **include** | [**[String]**](String.md) | comma-separated list of relationships to include | [optional] 

### Return type

[**AppPricePointV3Response**](AppPricePointV3Response.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

