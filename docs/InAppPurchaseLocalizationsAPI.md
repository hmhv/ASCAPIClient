# InAppPurchaseLocalizationsAPI

All URIs are relative to *https://api.appstoreconnect.apple.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**inAppPurchaseLocalizationsCreateInstance**](InAppPurchaseLocalizationsAPI.md#inapppurchaselocalizationscreateinstance) | **POST** /v1/inAppPurchaseLocalizations | 
[**inAppPurchaseLocalizationsDeleteInstance**](InAppPurchaseLocalizationsAPI.md#inapppurchaselocalizationsdeleteinstance) | **DELETE** /v1/inAppPurchaseLocalizations/{id} | 
[**inAppPurchaseLocalizationsGetInstance**](InAppPurchaseLocalizationsAPI.md#inapppurchaselocalizationsgetinstance) | **GET** /v1/inAppPurchaseLocalizations/{id} | 
[**inAppPurchaseLocalizationsUpdateInstance**](InAppPurchaseLocalizationsAPI.md#inapppurchaselocalizationsupdateinstance) | **PATCH** /v1/inAppPurchaseLocalizations/{id} | 


# **inAppPurchaseLocalizationsCreateInstance**
```swift
    open class func inAppPurchaseLocalizationsCreateInstance(inAppPurchaseLocalizationCreateRequest: InAppPurchaseLocalizationCreateRequest, completion: @escaping (_ data: InAppPurchaseLocalizationResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let inAppPurchaseLocalizationCreateRequest = InAppPurchaseLocalizationCreateRequest(data: InAppPurchaseLocalizationCreateRequest_data(type: "type_example", attributes: InAppPurchaseLocalizationCreateRequest_data_attributes(name: "name_example", locale: "locale_example", description: "description_example"), relationships: InAppPurchaseAppStoreReviewScreenshotCreateRequest_data_relationships(inAppPurchaseV2: InAppPurchaseAppStoreReviewScreenshotCreateRequest_data_relationships_inAppPurchaseV2(data: App_relationships_inAppPurchases_data_inner(type: "type_example", id: "id_example"))))) // InAppPurchaseLocalizationCreateRequest | InAppPurchaseLocalization representation

InAppPurchaseLocalizationsAPI.inAppPurchaseLocalizationsCreateInstance(inAppPurchaseLocalizationCreateRequest: inAppPurchaseLocalizationCreateRequest) { (response, error) in
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
 **inAppPurchaseLocalizationCreateRequest** | [**InAppPurchaseLocalizationCreateRequest**](InAppPurchaseLocalizationCreateRequest.md) | InAppPurchaseLocalization representation | 

### Return type

[**InAppPurchaseLocalizationResponse**](InAppPurchaseLocalizationResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **inAppPurchaseLocalizationsDeleteInstance**
```swift
    open class func inAppPurchaseLocalizationsDeleteInstance(id: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource

InAppPurchaseLocalizationsAPI.inAppPurchaseLocalizationsDeleteInstance(id: id) { (response, error) in
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

# **inAppPurchaseLocalizationsGetInstance**
```swift
    open class func inAppPurchaseLocalizationsGetInstance(id: String, fieldsInAppPurchaseLocalizations: [FieldsInAppPurchaseLocalizations_inAppPurchaseLocalizationsGetInstance]? = nil, include: [Include_inAppPurchaseLocalizationsGetInstance]? = nil, completion: @escaping (_ data: InAppPurchaseLocalizationResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let fieldsInAppPurchaseLocalizations = ["fieldsInAppPurchaseLocalizations_example"] // [String] | the fields to include for returned resources of type inAppPurchaseLocalizations (optional)
let include = ["include_example"] // [String] | comma-separated list of relationships to include (optional)

InAppPurchaseLocalizationsAPI.inAppPurchaseLocalizationsGetInstance(id: id, fieldsInAppPurchaseLocalizations: fieldsInAppPurchaseLocalizations, include: include) { (response, error) in
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
 **fieldsInAppPurchaseLocalizations** | [**[String]**](String.md) | the fields to include for returned resources of type inAppPurchaseLocalizations | [optional] 
 **include** | [**[String]**](String.md) | comma-separated list of relationships to include | [optional] 

### Return type

[**InAppPurchaseLocalizationResponse**](InAppPurchaseLocalizationResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **inAppPurchaseLocalizationsUpdateInstance**
```swift
    open class func inAppPurchaseLocalizationsUpdateInstance(id: String, inAppPurchaseLocalizationUpdateRequest: InAppPurchaseLocalizationUpdateRequest, completion: @escaping (_ data: InAppPurchaseLocalizationResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let inAppPurchaseLocalizationUpdateRequest = InAppPurchaseLocalizationUpdateRequest(data: InAppPurchaseLocalizationUpdateRequest_data(type: "type_example", id: "id_example", attributes: InAppPurchaseLocalizationUpdateRequest_data_attributes(name: "name_example", description: "description_example"))) // InAppPurchaseLocalizationUpdateRequest | InAppPurchaseLocalization representation

InAppPurchaseLocalizationsAPI.inAppPurchaseLocalizationsUpdateInstance(id: id, inAppPurchaseLocalizationUpdateRequest: inAppPurchaseLocalizationUpdateRequest) { (response, error) in
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
 **inAppPurchaseLocalizationUpdateRequest** | [**InAppPurchaseLocalizationUpdateRequest**](InAppPurchaseLocalizationUpdateRequest.md) | InAppPurchaseLocalization representation | 

### Return type

[**InAppPurchaseLocalizationResponse**](InAppPurchaseLocalizationResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

