# InAppPurchaseAvailabilitiesAPI

All URIs are relative to *https://api.appstoreconnect.apple.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**inAppPurchaseAvailabilitiesAvailableTerritoriesGetToManyRelated**](InAppPurchaseAvailabilitiesAPI.md#inapppurchaseavailabilitiesavailableterritoriesgettomanyrelated) | **GET** /v1/inAppPurchaseAvailabilities/{id}/availableTerritories | 
[**inAppPurchaseAvailabilitiesCreateInstance**](InAppPurchaseAvailabilitiesAPI.md#inapppurchaseavailabilitiescreateinstance) | **POST** /v1/inAppPurchaseAvailabilities | 
[**inAppPurchaseAvailabilitiesGetInstance**](InAppPurchaseAvailabilitiesAPI.md#inapppurchaseavailabilitiesgetinstance) | **GET** /v1/inAppPurchaseAvailabilities/{id} | 


# **inAppPurchaseAvailabilitiesAvailableTerritoriesGetToManyRelated**
```swift
    open class func inAppPurchaseAvailabilitiesAvailableTerritoriesGetToManyRelated(id: String, fieldsTerritories: [FieldsTerritories_inAppPurchaseAvailabilitiesAvailableTerritoriesGetToManyRelated]? = nil, limit: Int? = nil, completion: @escaping (_ data: TerritoriesResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let fieldsTerritories = ["fieldsTerritories_example"] // [String] | the fields to include for returned resources of type territories (optional)
let limit = 987 // Int | maximum resources per page (optional)

InAppPurchaseAvailabilitiesAPI.inAppPurchaseAvailabilitiesAvailableTerritoriesGetToManyRelated(id: id, fieldsTerritories: fieldsTerritories, limit: limit) { (response, error) in
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

# **inAppPurchaseAvailabilitiesCreateInstance**
```swift
    open class func inAppPurchaseAvailabilitiesCreateInstance(inAppPurchaseAvailabilityCreateRequest: InAppPurchaseAvailabilityCreateRequest, completion: @escaping (_ data: InAppPurchaseAvailabilityResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let inAppPurchaseAvailabilityCreateRequest = InAppPurchaseAvailabilityCreateRequest(data: InAppPurchaseAvailabilityCreateRequest_data(type: "type_example", attributes: AppAvailabilityV2CreateRequest_data_attributes(availableInNewTerritories: false), relationships: InAppPurchaseAvailabilityCreateRequest_data_relationships(inAppPurchase: InAppPurchaseAppStoreReviewScreenshotCreateRequest_data_relationships_inAppPurchaseV2(data: App_relationships_inAppPurchases_data_inner(type: "type_example", id: "id_example")), availableTerritories: AppAvailabilityCreateRequest_data_relationships_availableTerritories(data: [AppAvailability_relationships_availableTerritories_data_inner(type: "type_example", id: "id_example")])))) // InAppPurchaseAvailabilityCreateRequest | InAppPurchaseAvailability representation

InAppPurchaseAvailabilitiesAPI.inAppPurchaseAvailabilitiesCreateInstance(inAppPurchaseAvailabilityCreateRequest: inAppPurchaseAvailabilityCreateRequest) { (response, error) in
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
 **inAppPurchaseAvailabilityCreateRequest** | [**InAppPurchaseAvailabilityCreateRequest**](InAppPurchaseAvailabilityCreateRequest.md) | InAppPurchaseAvailability representation | 

### Return type

[**InAppPurchaseAvailabilityResponse**](InAppPurchaseAvailabilityResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **inAppPurchaseAvailabilitiesGetInstance**
```swift
    open class func inAppPurchaseAvailabilitiesGetInstance(id: String, fieldsInAppPurchaseAvailabilities: [FieldsInAppPurchaseAvailabilities_inAppPurchaseAvailabilitiesGetInstance]? = nil, include: [Include_inAppPurchaseAvailabilitiesGetInstance]? = nil, fieldsTerritories: [FieldsTerritories_inAppPurchaseAvailabilitiesGetInstance]? = nil, limitAvailableTerritories: Int? = nil, completion: @escaping (_ data: InAppPurchaseAvailabilityResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let fieldsInAppPurchaseAvailabilities = ["fieldsInAppPurchaseAvailabilities_example"] // [String] | the fields to include for returned resources of type inAppPurchaseAvailabilities (optional)
let include = ["include_example"] // [String] | comma-separated list of relationships to include (optional)
let fieldsTerritories = ["fieldsTerritories_example"] // [String] | the fields to include for returned resources of type territories (optional)
let limitAvailableTerritories = 987 // Int | maximum number of related availableTerritories returned (when they are included) (optional)

InAppPurchaseAvailabilitiesAPI.inAppPurchaseAvailabilitiesGetInstance(id: id, fieldsInAppPurchaseAvailabilities: fieldsInAppPurchaseAvailabilities, include: include, fieldsTerritories: fieldsTerritories, limitAvailableTerritories: limitAvailableTerritories) { (response, error) in
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
 **fieldsInAppPurchaseAvailabilities** | [**[String]**](String.md) | the fields to include for returned resources of type inAppPurchaseAvailabilities | [optional] 
 **include** | [**[String]**](String.md) | comma-separated list of relationships to include | [optional] 
 **fieldsTerritories** | [**[String]**](String.md) | the fields to include for returned resources of type territories | [optional] 
 **limitAvailableTerritories** | **Int** | maximum number of related availableTerritories returned (when they are included) | [optional] 

### Return type

[**InAppPurchaseAvailabilityResponse**](InAppPurchaseAvailabilityResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

