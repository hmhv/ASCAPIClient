# InAppPurchasePricePointsAPI

All URIs are relative to *https://api.appstoreconnect.apple.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**inAppPurchasePricePointsEqualizationsGetToManyRelated**](InAppPurchasePricePointsAPI.md#inapppurchasepricepointsequalizationsgettomanyrelated) | **GET** /v1/inAppPurchasePricePoints/{id}/equalizations | 


# **inAppPurchasePricePointsEqualizationsGetToManyRelated**
```swift
    open class func inAppPurchasePricePointsEqualizationsGetToManyRelated(id: String, filterTerritory: [String]? = nil, filterInAppPurchaseV2: [String]? = nil, fieldsInAppPurchasePricePoints: [FieldsInAppPurchasePricePoints_inAppPurchasePricePointsEqualizationsGetToManyRelated]? = nil, fieldsTerritories: [FieldsTerritories_inAppPurchasePricePointsEqualizationsGetToManyRelated]? = nil, limit: Int? = nil, include: [Include_inAppPurchasePricePointsEqualizationsGetToManyRelated]? = nil, completion: @escaping (_ data: InAppPurchasePricePointsResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let filterTerritory = ["inner_example"] // [String] | filter by id(s) of related 'territory' (optional)
let filterInAppPurchaseV2 = ["inner_example"] // [String] | filter by id(s) of related 'inAppPurchaseV2' (optional)
let fieldsInAppPurchasePricePoints = ["fieldsInAppPurchasePricePoints_example"] // [String] | the fields to include for returned resources of type inAppPurchasePricePoints (optional)
let fieldsTerritories = ["fieldsTerritories_example"] // [String] | the fields to include for returned resources of type territories (optional)
let limit = 987 // Int | maximum resources per page (optional)
let include = ["include_example"] // [String] | comma-separated list of relationships to include (optional)

InAppPurchasePricePointsAPI.inAppPurchasePricePointsEqualizationsGetToManyRelated(id: id, filterTerritory: filterTerritory, filterInAppPurchaseV2: filterInAppPurchaseV2, fieldsInAppPurchasePricePoints: fieldsInAppPurchasePricePoints, fieldsTerritories: fieldsTerritories, limit: limit, include: include) { (response, error) in
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
 **filterInAppPurchaseV2** | [**[String]**](String.md) | filter by id(s) of related &#39;inAppPurchaseV2&#39; | [optional] 
 **fieldsInAppPurchasePricePoints** | [**[String]**](String.md) | the fields to include for returned resources of type inAppPurchasePricePoints | [optional] 
 **fieldsTerritories** | [**[String]**](String.md) | the fields to include for returned resources of type territories | [optional] 
 **limit** | **Int** | maximum resources per page | [optional] 
 **include** | [**[String]**](String.md) | comma-separated list of relationships to include | [optional] 

### Return type

[**InAppPurchasePricePointsResponse**](InAppPurchasePricePointsResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/csv

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

