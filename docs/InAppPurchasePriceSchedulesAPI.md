# InAppPurchasePriceSchedulesAPI

All URIs are relative to *https://api.appstoreconnect.apple.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**inAppPurchasePriceSchedulesAutomaticPricesGetToManyRelated**](InAppPurchasePriceSchedulesAPI.md#inapppurchasepriceschedulesautomaticpricesgettomanyrelated) | **GET** /v1/inAppPurchasePriceSchedules/{id}/automaticPrices | 
[**inAppPurchasePriceSchedulesBaseTerritoryGetToOneRelated**](InAppPurchasePriceSchedulesAPI.md#inapppurchasepriceschedulesbaseterritorygettoonerelated) | **GET** /v1/inAppPurchasePriceSchedules/{id}/baseTerritory | 
[**inAppPurchasePriceSchedulesCreateInstance**](InAppPurchasePriceSchedulesAPI.md#inapppurchasepriceschedulescreateinstance) | **POST** /v1/inAppPurchasePriceSchedules | 
[**inAppPurchasePriceSchedulesGetInstance**](InAppPurchasePriceSchedulesAPI.md#inapppurchasepriceschedulesgetinstance) | **GET** /v1/inAppPurchasePriceSchedules/{id} | 
[**inAppPurchasePriceSchedulesManualPricesGetToManyRelated**](InAppPurchasePriceSchedulesAPI.md#inapppurchasepriceschedulesmanualpricesgettomanyrelated) | **GET** /v1/inAppPurchasePriceSchedules/{id}/manualPrices | 


# **inAppPurchasePriceSchedulesAutomaticPricesGetToManyRelated**
```swift
    open class func inAppPurchasePriceSchedulesAutomaticPricesGetToManyRelated(id: String, filterTerritory: [String]? = nil, fieldsInAppPurchasePrices: [FieldsInAppPurchasePrices_inAppPurchasePriceSchedulesAutomaticPricesGetToManyRelated]? = nil, fieldsInAppPurchasePricePoints: [FieldsInAppPurchasePricePoints_inAppPurchasePriceSchedulesAutomaticPricesGetToManyRelated]? = nil, fieldsTerritories: [FieldsTerritories_inAppPurchasePriceSchedulesAutomaticPricesGetToManyRelated]? = nil, limit: Int? = nil, include: [Include_inAppPurchasePriceSchedulesAutomaticPricesGetToManyRelated]? = nil, completion: @escaping (_ data: InAppPurchasePricesResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let filterTerritory = ["inner_example"] // [String] | filter by id(s) of related 'territory' (optional)
let fieldsInAppPurchasePrices = ["fieldsInAppPurchasePrices_example"] // [String] | the fields to include for returned resources of type inAppPurchasePrices (optional)
let fieldsInAppPurchasePricePoints = ["fieldsInAppPurchasePricePoints_example"] // [String] | the fields to include for returned resources of type inAppPurchasePricePoints (optional)
let fieldsTerritories = ["fieldsTerritories_example"] // [String] | the fields to include for returned resources of type territories (optional)
let limit = 987 // Int | maximum resources per page (optional)
let include = ["include_example"] // [String] | comma-separated list of relationships to include (optional)

InAppPurchasePriceSchedulesAPI.inAppPurchasePriceSchedulesAutomaticPricesGetToManyRelated(id: id, filterTerritory: filterTerritory, fieldsInAppPurchasePrices: fieldsInAppPurchasePrices, fieldsInAppPurchasePricePoints: fieldsInAppPurchasePricePoints, fieldsTerritories: fieldsTerritories, limit: limit, include: include) { (response, error) in
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
 **fieldsInAppPurchasePrices** | [**[String]**](String.md) | the fields to include for returned resources of type inAppPurchasePrices | [optional] 
 **fieldsInAppPurchasePricePoints** | [**[String]**](String.md) | the fields to include for returned resources of type inAppPurchasePricePoints | [optional] 
 **fieldsTerritories** | [**[String]**](String.md) | the fields to include for returned resources of type territories | [optional] 
 **limit** | **Int** | maximum resources per page | [optional] 
 **include** | [**[String]**](String.md) | comma-separated list of relationships to include | [optional] 

### Return type

[**InAppPurchasePricesResponse**](InAppPurchasePricesResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **inAppPurchasePriceSchedulesBaseTerritoryGetToOneRelated**
```swift
    open class func inAppPurchasePriceSchedulesBaseTerritoryGetToOneRelated(id: String, fieldsTerritories: [FieldsTerritories_inAppPurchasePriceSchedulesBaseTerritoryGetToOneRelated]? = nil, completion: @escaping (_ data: TerritoryResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let fieldsTerritories = ["fieldsTerritories_example"] // [String] | the fields to include for returned resources of type territories (optional)

InAppPurchasePriceSchedulesAPI.inAppPurchasePriceSchedulesBaseTerritoryGetToOneRelated(id: id, fieldsTerritories: fieldsTerritories) { (response, error) in
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

# **inAppPurchasePriceSchedulesCreateInstance**
```swift
    open class func inAppPurchasePriceSchedulesCreateInstance(inAppPurchasePriceScheduleCreateRequest: InAppPurchasePriceScheduleCreateRequest, completion: @escaping (_ data: InAppPurchasePriceScheduleResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let inAppPurchasePriceScheduleCreateRequest = InAppPurchasePriceScheduleCreateRequest(data: InAppPurchasePriceScheduleCreateRequest_data(type: "type_example", relationships: InAppPurchasePriceScheduleCreateRequest_data_relationships(inAppPurchase: InAppPurchaseAppStoreReviewScreenshotCreateRequest_data_relationships_inAppPurchaseV2(data: App_relationships_inAppPurchases_data_inner(type: "type_example", id: "id_example")), baseTerritory: AppPriceScheduleCreateRequest_data_relationships_baseTerritory(data: AppPricePointV3_relationships_territory_data(type: "type_example", id: "id_example")), manualPrices: InAppPurchasePriceScheduleCreateRequest_data_relationships_manualPrices(data: [InAppPurchasePriceSchedule_relationships_manualPrices_data_inner(type: "type_example", id: "id_example")]))), included: [InAppPurchasePriceScheduleCreateRequest_included_inner(type: "type_example", id: "id_example", attributes: InAppPurchasePriceInlineCreate_attributes(startDate: Date(), endDate: Date()), relationships: InAppPurchasePriceInlineCreate_relationships(inAppPurchaseV2: InAppPurchaseAppStoreReviewScreenshot_relationships_inAppPurchaseV2(data: nil), inAppPurchasePricePoint: InAppPurchasePrice_relationships_inAppPurchasePricePoint(data: InAppPurchasePrice_relationships_inAppPurchasePricePoint_data(type: "type_example", id: "id_example"))))]) // InAppPurchasePriceScheduleCreateRequest | InAppPurchasePriceSchedule representation

InAppPurchasePriceSchedulesAPI.inAppPurchasePriceSchedulesCreateInstance(inAppPurchasePriceScheduleCreateRequest: inAppPurchasePriceScheduleCreateRequest) { (response, error) in
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
 **inAppPurchasePriceScheduleCreateRequest** | [**InAppPurchasePriceScheduleCreateRequest**](InAppPurchasePriceScheduleCreateRequest.md) | InAppPurchasePriceSchedule representation | 

### Return type

[**InAppPurchasePriceScheduleResponse**](InAppPurchasePriceScheduleResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **inAppPurchasePriceSchedulesGetInstance**
```swift
    open class func inAppPurchasePriceSchedulesGetInstance(id: String, fieldsInAppPurchasePriceSchedules: [FieldsInAppPurchasePriceSchedules_inAppPurchasePriceSchedulesGetInstance]? = nil, fieldsTerritories: [FieldsTerritories_inAppPurchasePriceSchedulesGetInstance]? = nil, fieldsInAppPurchasePrices: [FieldsInAppPurchasePrices_inAppPurchasePriceSchedulesGetInstance]? = nil, include: [Include_inAppPurchasePriceSchedulesGetInstance]? = nil, limitAutomaticPrices: Int? = nil, limitManualPrices: Int? = nil, completion: @escaping (_ data: InAppPurchasePriceScheduleResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let fieldsInAppPurchasePriceSchedules = ["fieldsInAppPurchasePriceSchedules_example"] // [String] | the fields to include for returned resources of type inAppPurchasePriceSchedules (optional)
let fieldsTerritories = ["fieldsTerritories_example"] // [String] | the fields to include for returned resources of type territories (optional)
let fieldsInAppPurchasePrices = ["fieldsInAppPurchasePrices_example"] // [String] | the fields to include for returned resources of type inAppPurchasePrices (optional)
let include = ["include_example"] // [String] | comma-separated list of relationships to include (optional)
let limitAutomaticPrices = 987 // Int | maximum number of related automaticPrices returned (when they are included) (optional)
let limitManualPrices = 987 // Int | maximum number of related manualPrices returned (when they are included) (optional)

InAppPurchasePriceSchedulesAPI.inAppPurchasePriceSchedulesGetInstance(id: id, fieldsInAppPurchasePriceSchedules: fieldsInAppPurchasePriceSchedules, fieldsTerritories: fieldsTerritories, fieldsInAppPurchasePrices: fieldsInAppPurchasePrices, include: include, limitAutomaticPrices: limitAutomaticPrices, limitManualPrices: limitManualPrices) { (response, error) in
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
 **fieldsInAppPurchasePriceSchedules** | [**[String]**](String.md) | the fields to include for returned resources of type inAppPurchasePriceSchedules | [optional] 
 **fieldsTerritories** | [**[String]**](String.md) | the fields to include for returned resources of type territories | [optional] 
 **fieldsInAppPurchasePrices** | [**[String]**](String.md) | the fields to include for returned resources of type inAppPurchasePrices | [optional] 
 **include** | [**[String]**](String.md) | comma-separated list of relationships to include | [optional] 
 **limitAutomaticPrices** | **Int** | maximum number of related automaticPrices returned (when they are included) | [optional] 
 **limitManualPrices** | **Int** | maximum number of related manualPrices returned (when they are included) | [optional] 

### Return type

[**InAppPurchasePriceScheduleResponse**](InAppPurchasePriceScheduleResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **inAppPurchasePriceSchedulesManualPricesGetToManyRelated**
```swift
    open class func inAppPurchasePriceSchedulesManualPricesGetToManyRelated(id: String, filterTerritory: [String]? = nil, fieldsInAppPurchasePrices: [FieldsInAppPurchasePrices_inAppPurchasePriceSchedulesManualPricesGetToManyRelated]? = nil, fieldsInAppPurchasePricePoints: [FieldsInAppPurchasePricePoints_inAppPurchasePriceSchedulesManualPricesGetToManyRelated]? = nil, fieldsTerritories: [FieldsTerritories_inAppPurchasePriceSchedulesManualPricesGetToManyRelated]? = nil, limit: Int? = nil, include: [Include_inAppPurchasePriceSchedulesManualPricesGetToManyRelated]? = nil, completion: @escaping (_ data: InAppPurchasePricesResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let filterTerritory = ["inner_example"] // [String] | filter by id(s) of related 'territory' (optional)
let fieldsInAppPurchasePrices = ["fieldsInAppPurchasePrices_example"] // [String] | the fields to include for returned resources of type inAppPurchasePrices (optional)
let fieldsInAppPurchasePricePoints = ["fieldsInAppPurchasePricePoints_example"] // [String] | the fields to include for returned resources of type inAppPurchasePricePoints (optional)
let fieldsTerritories = ["fieldsTerritories_example"] // [String] | the fields to include for returned resources of type territories (optional)
let limit = 987 // Int | maximum resources per page (optional)
let include = ["include_example"] // [String] | comma-separated list of relationships to include (optional)

InAppPurchasePriceSchedulesAPI.inAppPurchasePriceSchedulesManualPricesGetToManyRelated(id: id, filterTerritory: filterTerritory, fieldsInAppPurchasePrices: fieldsInAppPurchasePrices, fieldsInAppPurchasePricePoints: fieldsInAppPurchasePricePoints, fieldsTerritories: fieldsTerritories, limit: limit, include: include) { (response, error) in
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
 **fieldsInAppPurchasePrices** | [**[String]**](String.md) | the fields to include for returned resources of type inAppPurchasePrices | [optional] 
 **fieldsInAppPurchasePricePoints** | [**[String]**](String.md) | the fields to include for returned resources of type inAppPurchasePricePoints | [optional] 
 **fieldsTerritories** | [**[String]**](String.md) | the fields to include for returned resources of type territories | [optional] 
 **limit** | **Int** | maximum resources per page | [optional] 
 **include** | [**[String]**](String.md) | comma-separated list of relationships to include | [optional] 

### Return type

[**InAppPurchasePricesResponse**](InAppPurchasePricesResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

