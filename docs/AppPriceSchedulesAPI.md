# AppPriceSchedulesAPI

All URIs are relative to *https://api.appstoreconnect.apple.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**appPriceSchedulesAutomaticPricesGetToManyRelated**](AppPriceSchedulesAPI.md#apppriceschedulesautomaticpricesgettomanyrelated) | **GET** /v1/appPriceSchedules/{id}/automaticPrices | 
[**appPriceSchedulesBaseTerritoryGetToOneRelated**](AppPriceSchedulesAPI.md#apppriceschedulesbaseterritorygettoonerelated) | **GET** /v1/appPriceSchedules/{id}/baseTerritory | 
[**appPriceSchedulesCreateInstance**](AppPriceSchedulesAPI.md#apppriceschedulescreateinstance) | **POST** /v1/appPriceSchedules | 
[**appPriceSchedulesGetInstance**](AppPriceSchedulesAPI.md#apppriceschedulesgetinstance) | **GET** /v1/appPriceSchedules/{id} | 
[**appPriceSchedulesManualPricesGetToManyRelated**](AppPriceSchedulesAPI.md#apppriceschedulesmanualpricesgettomanyrelated) | **GET** /v1/appPriceSchedules/{id}/manualPrices | 


# **appPriceSchedulesAutomaticPricesGetToManyRelated**
```swift
    open class func appPriceSchedulesAutomaticPricesGetToManyRelated(id: String, filterEndDate: [String]? = nil, filterStartDate: [String]? = nil, filterTerritory: [String]? = nil, fieldsAppPrices: [FieldsAppPrices_appPriceSchedulesAutomaticPricesGetToManyRelated]? = nil, fieldsAppPricePoints: [FieldsAppPricePoints_appPriceSchedulesAutomaticPricesGetToManyRelated]? = nil, fieldsTerritories: [FieldsTerritories_appPriceSchedulesAutomaticPricesGetToManyRelated]? = nil, limit: Int? = nil, include: [Include_appPriceSchedulesAutomaticPricesGetToManyRelated]? = nil, completion: @escaping (_ data: AppPricesV2Response?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let filterEndDate = ["inner_example"] // [String] | filter by attribute 'endDate' (optional)
let filterStartDate = ["inner_example"] // [String] | filter by attribute 'startDate' (optional)
let filterTerritory = ["inner_example"] // [String] | filter by id(s) of related 'territory' (optional)
let fieldsAppPrices = ["fieldsAppPrices_example"] // [String] | the fields to include for returned resources of type appPrices (optional)
let fieldsAppPricePoints = ["fieldsAppPricePoints_example"] // [String] | the fields to include for returned resources of type appPricePoints (optional)
let fieldsTerritories = ["fieldsTerritories_example"] // [String] | the fields to include for returned resources of type territories (optional)
let limit = 987 // Int | maximum resources per page (optional)
let include = ["include_example"] // [String] | comma-separated list of relationships to include (optional)

AppPriceSchedulesAPI.appPriceSchedulesAutomaticPricesGetToManyRelated(id: id, filterEndDate: filterEndDate, filterStartDate: filterStartDate, filterTerritory: filterTerritory, fieldsAppPrices: fieldsAppPrices, fieldsAppPricePoints: fieldsAppPricePoints, fieldsTerritories: fieldsTerritories, limit: limit, include: include) { (response, error) in
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
 **filterEndDate** | [**[String]**](String.md) | filter by attribute &#39;endDate&#39; | [optional] 
 **filterStartDate** | [**[String]**](String.md) | filter by attribute &#39;startDate&#39; | [optional] 
 **filterTerritory** | [**[String]**](String.md) | filter by id(s) of related &#39;territory&#39; | [optional] 
 **fieldsAppPrices** | [**[String]**](String.md) | the fields to include for returned resources of type appPrices | [optional] 
 **fieldsAppPricePoints** | [**[String]**](String.md) | the fields to include for returned resources of type appPricePoints | [optional] 
 **fieldsTerritories** | [**[String]**](String.md) | the fields to include for returned resources of type territories | [optional] 
 **limit** | **Int** | maximum resources per page | [optional] 
 **include** | [**[String]**](String.md) | comma-separated list of relationships to include | [optional] 

### Return type

[**AppPricesV2Response**](AppPricesV2Response.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **appPriceSchedulesBaseTerritoryGetToOneRelated**
```swift
    open class func appPriceSchedulesBaseTerritoryGetToOneRelated(id: String, fieldsTerritories: [FieldsTerritories_appPriceSchedulesBaseTerritoryGetToOneRelated]? = nil, completion: @escaping (_ data: TerritoryResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let fieldsTerritories = ["fieldsTerritories_example"] // [String] | the fields to include for returned resources of type territories (optional)

AppPriceSchedulesAPI.appPriceSchedulesBaseTerritoryGetToOneRelated(id: id, fieldsTerritories: fieldsTerritories) { (response, error) in
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

# **appPriceSchedulesCreateInstance**
```swift
    open class func appPriceSchedulesCreateInstance(appPriceScheduleCreateRequest: AppPriceScheduleCreateRequest, completion: @escaping (_ data: AppPriceScheduleResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let appPriceScheduleCreateRequest = AppPriceScheduleCreateRequest(data: AppPriceScheduleCreateRequest_data(type: "type_example", relationships: AppPriceScheduleCreateRequest_data_relationships(app: AlternativeDistributionKeyCreateRequest_data_relationships_app(data: AlternativeDistributionKeyCreateRequest_data_relationships_app_data(type: "type_example", id: "id_example")), baseTerritory: AppPriceScheduleCreateRequest_data_relationships_baseTerritory(data: AppAvailability_relationships_availableTerritories_data_inner(type: "type_example", id: "id_example")), manualPrices: AppPriceScheduleCreateRequest_data_relationships_manualPrices(data: [AppPriceSchedule_relationships_manualPrices_data_inner(type: "type_example", id: "id_example")]))), included: [AppPriceScheduleCreateRequest_included_inner(type: "type_example", id: "id_example")]) // AppPriceScheduleCreateRequest | AppPriceSchedule representation

AppPriceSchedulesAPI.appPriceSchedulesCreateInstance(appPriceScheduleCreateRequest: appPriceScheduleCreateRequest) { (response, error) in
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
 **appPriceScheduleCreateRequest** | [**AppPriceScheduleCreateRequest**](AppPriceScheduleCreateRequest.md) | AppPriceSchedule representation | 

### Return type

[**AppPriceScheduleResponse**](AppPriceScheduleResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **appPriceSchedulesGetInstance**
```swift
    open class func appPriceSchedulesGetInstance(id: String, fieldsAppPriceSchedules: [FieldsAppPriceSchedules_appPriceSchedulesGetInstance]? = nil, include: [Include_appPriceSchedulesGetInstance]? = nil, fieldsAppPrices: [FieldsAppPrices_appPriceSchedulesGetInstance]? = nil, fieldsTerritories: [FieldsTerritories_appPriceSchedulesGetInstance]? = nil, limitAutomaticPrices: Int? = nil, limitManualPrices: Int? = nil, completion: @escaping (_ data: AppPriceScheduleResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let fieldsAppPriceSchedules = ["fieldsAppPriceSchedules_example"] // [String] | the fields to include for returned resources of type appPriceSchedules (optional)
let include = ["include_example"] // [String] | comma-separated list of relationships to include (optional)
let fieldsAppPrices = ["fieldsAppPrices_example"] // [String] | the fields to include for returned resources of type appPrices (optional)
let fieldsTerritories = ["fieldsTerritories_example"] // [String] | the fields to include for returned resources of type territories (optional)
let limitAutomaticPrices = 987 // Int | maximum number of related automaticPrices returned (when they are included) (optional)
let limitManualPrices = 987 // Int | maximum number of related manualPrices returned (when they are included) (optional)

AppPriceSchedulesAPI.appPriceSchedulesGetInstance(id: id, fieldsAppPriceSchedules: fieldsAppPriceSchedules, include: include, fieldsAppPrices: fieldsAppPrices, fieldsTerritories: fieldsTerritories, limitAutomaticPrices: limitAutomaticPrices, limitManualPrices: limitManualPrices) { (response, error) in
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
 **fieldsAppPriceSchedules** | [**[String]**](String.md) | the fields to include for returned resources of type appPriceSchedules | [optional] 
 **include** | [**[String]**](String.md) | comma-separated list of relationships to include | [optional] 
 **fieldsAppPrices** | [**[String]**](String.md) | the fields to include for returned resources of type appPrices | [optional] 
 **fieldsTerritories** | [**[String]**](String.md) | the fields to include for returned resources of type territories | [optional] 
 **limitAutomaticPrices** | **Int** | maximum number of related automaticPrices returned (when they are included) | [optional] 
 **limitManualPrices** | **Int** | maximum number of related manualPrices returned (when they are included) | [optional] 

### Return type

[**AppPriceScheduleResponse**](AppPriceScheduleResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **appPriceSchedulesManualPricesGetToManyRelated**
```swift
    open class func appPriceSchedulesManualPricesGetToManyRelated(id: String, filterEndDate: [String]? = nil, filterStartDate: [String]? = nil, filterTerritory: [String]? = nil, fieldsAppPrices: [FieldsAppPrices_appPriceSchedulesManualPricesGetToManyRelated]? = nil, fieldsAppPricePoints: [FieldsAppPricePoints_appPriceSchedulesManualPricesGetToManyRelated]? = nil, fieldsTerritories: [FieldsTerritories_appPriceSchedulesManualPricesGetToManyRelated]? = nil, limit: Int? = nil, include: [Include_appPriceSchedulesManualPricesGetToManyRelated]? = nil, completion: @escaping (_ data: AppPricesV2Response?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let filterEndDate = ["inner_example"] // [String] | filter by attribute 'endDate' (optional)
let filterStartDate = ["inner_example"] // [String] | filter by attribute 'startDate' (optional)
let filterTerritory = ["inner_example"] // [String] | filter by id(s) of related 'territory' (optional)
let fieldsAppPrices = ["fieldsAppPrices_example"] // [String] | the fields to include for returned resources of type appPrices (optional)
let fieldsAppPricePoints = ["fieldsAppPricePoints_example"] // [String] | the fields to include for returned resources of type appPricePoints (optional)
let fieldsTerritories = ["fieldsTerritories_example"] // [String] | the fields to include for returned resources of type territories (optional)
let limit = 987 // Int | maximum resources per page (optional)
let include = ["include_example"] // [String] | comma-separated list of relationships to include (optional)

AppPriceSchedulesAPI.appPriceSchedulesManualPricesGetToManyRelated(id: id, filterEndDate: filterEndDate, filterStartDate: filterStartDate, filterTerritory: filterTerritory, fieldsAppPrices: fieldsAppPrices, fieldsAppPricePoints: fieldsAppPricePoints, fieldsTerritories: fieldsTerritories, limit: limit, include: include) { (response, error) in
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
 **filterEndDate** | [**[String]**](String.md) | filter by attribute &#39;endDate&#39; | [optional] 
 **filterStartDate** | [**[String]**](String.md) | filter by attribute &#39;startDate&#39; | [optional] 
 **filterTerritory** | [**[String]**](String.md) | filter by id(s) of related &#39;territory&#39; | [optional] 
 **fieldsAppPrices** | [**[String]**](String.md) | the fields to include for returned resources of type appPrices | [optional] 
 **fieldsAppPricePoints** | [**[String]**](String.md) | the fields to include for returned resources of type appPricePoints | [optional] 
 **fieldsTerritories** | [**[String]**](String.md) | the fields to include for returned resources of type territories | [optional] 
 **limit** | **Int** | maximum resources per page | [optional] 
 **include** | [**[String]**](String.md) | comma-separated list of relationships to include | [optional] 

### Return type

[**AppPricesV2Response**](AppPricesV2Response.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

