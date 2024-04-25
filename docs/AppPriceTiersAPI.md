# AppPriceTiersAPI

All URIs are relative to *https://api.appstoreconnect.apple.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**appPriceTiersGetCollection**](AppPriceTiersAPI.md#apppricetiersgetcollection) | **GET** /v1/appPriceTiers | 
[**appPriceTiersGetInstance**](AppPriceTiersAPI.md#apppricetiersgetinstance) | **GET** /v1/appPriceTiers/{id} | 
[**appPriceTiersPricePointsGetToManyRelated**](AppPriceTiersAPI.md#apppricetierspricepointsgettomanyrelated) | **GET** /v1/appPriceTiers/{id}/pricePoints | 


# **appPriceTiersGetCollection**
```swift
    open class func appPriceTiersGetCollection(filterId: [String]? = nil, fieldsAppPriceTiers: [FieldsAppPriceTiers_appPriceTiersGetCollection]? = nil, limit: Int? = nil, include: [Include_appPriceTiersGetCollection]? = nil, fieldsAppPricePoints: [FieldsAppPricePoints_appPriceTiersGetCollection]? = nil, limitPricePoints: Int? = nil, completion: @escaping (_ data: AppPriceTiersResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let filterId = ["inner_example"] // [String] | filter by id(s) (optional)
let fieldsAppPriceTiers = ["fieldsAppPriceTiers_example"] // [String] | the fields to include for returned resources of type appPriceTiers (optional)
let limit = 987 // Int | maximum resources per page (optional)
let include = ["include_example"] // [String] | comma-separated list of relationships to include (optional)
let fieldsAppPricePoints = ["fieldsAppPricePoints_example"] // [String] | the fields to include for returned resources of type appPricePoints (optional)
let limitPricePoints = 987 // Int | maximum number of related pricePoints returned (when they are included) (optional)

AppPriceTiersAPI.appPriceTiersGetCollection(filterId: filterId, fieldsAppPriceTiers: fieldsAppPriceTiers, limit: limit, include: include, fieldsAppPricePoints: fieldsAppPricePoints, limitPricePoints: limitPricePoints) { (response, error) in
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
 **filterId** | [**[String]**](String.md) | filter by id(s) | [optional] 
 **fieldsAppPriceTiers** | [**[String]**](String.md) | the fields to include for returned resources of type appPriceTiers | [optional] 
 **limit** | **Int** | maximum resources per page | [optional] 
 **include** | [**[String]**](String.md) | comma-separated list of relationships to include | [optional] 
 **fieldsAppPricePoints** | [**[String]**](String.md) | the fields to include for returned resources of type appPricePoints | [optional] 
 **limitPricePoints** | **Int** | maximum number of related pricePoints returned (when they are included) | [optional] 

### Return type

[**AppPriceTiersResponse**](AppPriceTiersResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **appPriceTiersGetInstance**
```swift
    open class func appPriceTiersGetInstance(id: String, fieldsAppPriceTiers: [FieldsAppPriceTiers_appPriceTiersGetInstance]? = nil, include: [Include_appPriceTiersGetInstance]? = nil, fieldsAppPricePoints: [FieldsAppPricePoints_appPriceTiersGetInstance]? = nil, limitPricePoints: Int? = nil, completion: @escaping (_ data: AppPriceTierResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let fieldsAppPriceTiers = ["fieldsAppPriceTiers_example"] // [String] | the fields to include for returned resources of type appPriceTiers (optional)
let include = ["include_example"] // [String] | comma-separated list of relationships to include (optional)
let fieldsAppPricePoints = ["fieldsAppPricePoints_example"] // [String] | the fields to include for returned resources of type appPricePoints (optional)
let limitPricePoints = 987 // Int | maximum number of related pricePoints returned (when they are included) (optional)

AppPriceTiersAPI.appPriceTiersGetInstance(id: id, fieldsAppPriceTiers: fieldsAppPriceTiers, include: include, fieldsAppPricePoints: fieldsAppPricePoints, limitPricePoints: limitPricePoints) { (response, error) in
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
 **fieldsAppPriceTiers** | [**[String]**](String.md) | the fields to include for returned resources of type appPriceTiers | [optional] 
 **include** | [**[String]**](String.md) | comma-separated list of relationships to include | [optional] 
 **fieldsAppPricePoints** | [**[String]**](String.md) | the fields to include for returned resources of type appPricePoints | [optional] 
 **limitPricePoints** | **Int** | maximum number of related pricePoints returned (when they are included) | [optional] 

### Return type

[**AppPriceTierResponse**](AppPriceTierResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **appPriceTiersPricePointsGetToManyRelated**
```swift
    open class func appPriceTiersPricePointsGetToManyRelated(id: String, filterTerritory: [String]? = nil, fieldsAppPriceTiers: [FieldsAppPriceTiers_appPriceTiersPricePointsGetToManyRelated]? = nil, fieldsAppPricePoints: [FieldsAppPricePoints_appPriceTiersPricePointsGetToManyRelated]? = nil, fieldsTerritories: [FieldsTerritories_appPriceTiersPricePointsGetToManyRelated]? = nil, limit: Int? = nil, include: [Include_appPriceTiersPricePointsGetToManyRelated]? = nil, completion: @escaping (_ data: AppPricePointsResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let filterTerritory = ["inner_example"] // [String] | filter by id(s) of related 'territory' (optional)
let fieldsAppPriceTiers = ["fieldsAppPriceTiers_example"] // [String] | the fields to include for returned resources of type appPriceTiers (optional)
let fieldsAppPricePoints = ["fieldsAppPricePoints_example"] // [String] | the fields to include for returned resources of type appPricePoints (optional)
let fieldsTerritories = ["fieldsTerritories_example"] // [String] | the fields to include for returned resources of type territories (optional)
let limit = 987 // Int | maximum resources per page (optional)
let include = ["include_example"] // [String] | comma-separated list of relationships to include (optional)

AppPriceTiersAPI.appPriceTiersPricePointsGetToManyRelated(id: id, filterTerritory: filterTerritory, fieldsAppPriceTiers: fieldsAppPriceTiers, fieldsAppPricePoints: fieldsAppPricePoints, fieldsTerritories: fieldsTerritories, limit: limit, include: include) { (response, error) in
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
 **fieldsAppPriceTiers** | [**[String]**](String.md) | the fields to include for returned resources of type appPriceTiers | [optional] 
 **fieldsAppPricePoints** | [**[String]**](String.md) | the fields to include for returned resources of type appPricePoints | [optional] 
 **fieldsTerritories** | [**[String]**](String.md) | the fields to include for returned resources of type territories | [optional] 
 **limit** | **Int** | maximum resources per page | [optional] 
 **include** | [**[String]**](String.md) | comma-separated list of relationships to include | [optional] 

### Return type

[**AppPricePointsResponse**](AppPricePointsResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

