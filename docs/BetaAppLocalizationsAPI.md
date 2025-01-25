# BetaAppLocalizationsAPI

All URIs are relative to *https://api.appstoreconnect.apple.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**betaAppLocalizationsAppGetToOneRelated**](BetaAppLocalizationsAPI.md#betaapplocalizationsappgettoonerelated) | **GET** /v1/betaAppLocalizations/{id}/app | 
[**betaAppLocalizationsCreateInstance**](BetaAppLocalizationsAPI.md#betaapplocalizationscreateinstance) | **POST** /v1/betaAppLocalizations | 
[**betaAppLocalizationsDeleteInstance**](BetaAppLocalizationsAPI.md#betaapplocalizationsdeleteinstance) | **DELETE** /v1/betaAppLocalizations/{id} | 
[**betaAppLocalizationsGetCollection**](BetaAppLocalizationsAPI.md#betaapplocalizationsgetcollection) | **GET** /v1/betaAppLocalizations | 
[**betaAppLocalizationsGetInstance**](BetaAppLocalizationsAPI.md#betaapplocalizationsgetinstance) | **GET** /v1/betaAppLocalizations/{id} | 
[**betaAppLocalizationsUpdateInstance**](BetaAppLocalizationsAPI.md#betaapplocalizationsupdateinstance) | **PATCH** /v1/betaAppLocalizations/{id} | 


# **betaAppLocalizationsAppGetToOneRelated**
```swift
    open class func betaAppLocalizationsAppGetToOneRelated(id: String, fieldsApps: [FieldsApps_betaAppLocalizationsAppGetToOneRelated]? = nil, completion: @escaping (_ data: AppWithoutIncludesResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let fieldsApps = ["fieldsApps_example"] // [String] | the fields to include for returned resources of type apps (optional)

BetaAppLocalizationsAPI.betaAppLocalizationsAppGetToOneRelated(id: id, fieldsApps: fieldsApps) { (response, error) in
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
 **fieldsApps** | [**[String]**](String.md) | the fields to include for returned resources of type apps | [optional] 

### Return type

[**AppWithoutIncludesResponse**](AppWithoutIncludesResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **betaAppLocalizationsCreateInstance**
```swift
    open class func betaAppLocalizationsCreateInstance(betaAppLocalizationCreateRequest: BetaAppLocalizationCreateRequest, completion: @escaping (_ data: BetaAppLocalizationResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let betaAppLocalizationCreateRequest = BetaAppLocalizationCreateRequest(data: BetaAppLocalizationCreateRequest_data(type: "type_example", attributes: BetaAppLocalizationCreateRequest_data_attributes(feedbackEmail: "feedbackEmail_example", marketingUrl: "marketingUrl_example", privacyPolicyUrl: "privacyPolicyUrl_example", tvOsPrivacyPolicy: "tvOsPrivacyPolicy_example", description: "description_example", locale: "locale_example"), relationships: AnalyticsReportRequestCreateRequest_data_relationships(app: AnalyticsReportRequestCreateRequest_data_relationships_app(data: AlternativeDistributionKeyCreateRequest_data_relationships_app_data(type: "type_example", id: "id_example"))))) // BetaAppLocalizationCreateRequest | BetaAppLocalization representation

BetaAppLocalizationsAPI.betaAppLocalizationsCreateInstance(betaAppLocalizationCreateRequest: betaAppLocalizationCreateRequest) { (response, error) in
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
 **betaAppLocalizationCreateRequest** | [**BetaAppLocalizationCreateRequest**](BetaAppLocalizationCreateRequest.md) | BetaAppLocalization representation | 

### Return type

[**BetaAppLocalizationResponse**](BetaAppLocalizationResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **betaAppLocalizationsDeleteInstance**
```swift
    open class func betaAppLocalizationsDeleteInstance(id: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource

BetaAppLocalizationsAPI.betaAppLocalizationsDeleteInstance(id: id) { (response, error) in
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

# **betaAppLocalizationsGetCollection**
```swift
    open class func betaAppLocalizationsGetCollection(filterLocale: [String]? = nil, filterApp: [String]? = nil, fieldsBetaAppLocalizations: [FieldsBetaAppLocalizations_betaAppLocalizationsGetCollection]? = nil, fieldsApps: [FieldsApps_betaAppLocalizationsGetCollection]? = nil, limit: Int? = nil, include: [Include_betaAppLocalizationsGetCollection]? = nil, completion: @escaping (_ data: BetaAppLocalizationsResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let filterLocale = ["inner_example"] // [String] | filter by attribute 'locale' (optional)
let filterApp = ["inner_example"] // [String] | filter by id(s) of related 'app' (optional)
let fieldsBetaAppLocalizations = ["fieldsBetaAppLocalizations_example"] // [String] | the fields to include for returned resources of type betaAppLocalizations (optional)
let fieldsApps = ["fieldsApps_example"] // [String] | the fields to include for returned resources of type apps (optional)
let limit = 987 // Int | maximum resources per page (optional)
let include = ["include_example"] // [String] | comma-separated list of relationships to include (optional)

BetaAppLocalizationsAPI.betaAppLocalizationsGetCollection(filterLocale: filterLocale, filterApp: filterApp, fieldsBetaAppLocalizations: fieldsBetaAppLocalizations, fieldsApps: fieldsApps, limit: limit, include: include) { (response, error) in
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
 **filterLocale** | [**[String]**](String.md) | filter by attribute &#39;locale&#39; | [optional] 
 **filterApp** | [**[String]**](String.md) | filter by id(s) of related &#39;app&#39; | [optional] 
 **fieldsBetaAppLocalizations** | [**[String]**](String.md) | the fields to include for returned resources of type betaAppLocalizations | [optional] 
 **fieldsApps** | [**[String]**](String.md) | the fields to include for returned resources of type apps | [optional] 
 **limit** | **Int** | maximum resources per page | [optional] 
 **include** | [**[String]**](String.md) | comma-separated list of relationships to include | [optional] 

### Return type

[**BetaAppLocalizationsResponse**](BetaAppLocalizationsResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **betaAppLocalizationsGetInstance**
```swift
    open class func betaAppLocalizationsGetInstance(id: String, fieldsBetaAppLocalizations: [FieldsBetaAppLocalizations_betaAppLocalizationsGetInstance]? = nil, fieldsApps: [FieldsApps_betaAppLocalizationsGetInstance]? = nil, include: [Include_betaAppLocalizationsGetInstance]? = nil, completion: @escaping (_ data: BetaAppLocalizationResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let fieldsBetaAppLocalizations = ["fieldsBetaAppLocalizations_example"] // [String] | the fields to include for returned resources of type betaAppLocalizations (optional)
let fieldsApps = ["fieldsApps_example"] // [String] | the fields to include for returned resources of type apps (optional)
let include = ["include_example"] // [String] | comma-separated list of relationships to include (optional)

BetaAppLocalizationsAPI.betaAppLocalizationsGetInstance(id: id, fieldsBetaAppLocalizations: fieldsBetaAppLocalizations, fieldsApps: fieldsApps, include: include) { (response, error) in
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
 **fieldsBetaAppLocalizations** | [**[String]**](String.md) | the fields to include for returned resources of type betaAppLocalizations | [optional] 
 **fieldsApps** | [**[String]**](String.md) | the fields to include for returned resources of type apps | [optional] 
 **include** | [**[String]**](String.md) | comma-separated list of relationships to include | [optional] 

### Return type

[**BetaAppLocalizationResponse**](BetaAppLocalizationResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **betaAppLocalizationsUpdateInstance**
```swift
    open class func betaAppLocalizationsUpdateInstance(id: String, betaAppLocalizationUpdateRequest: BetaAppLocalizationUpdateRequest, completion: @escaping (_ data: BetaAppLocalizationResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let betaAppLocalizationUpdateRequest = BetaAppLocalizationUpdateRequest(data: BetaAppLocalizationUpdateRequest_data(type: "type_example", id: "id_example", attributes: BetaAppLocalizationUpdateRequest_data_attributes(feedbackEmail: "feedbackEmail_example", marketingUrl: "marketingUrl_example", privacyPolicyUrl: "privacyPolicyUrl_example", tvOsPrivacyPolicy: "tvOsPrivacyPolicy_example", description: "description_example"))) // BetaAppLocalizationUpdateRequest | BetaAppLocalization representation

BetaAppLocalizationsAPI.betaAppLocalizationsUpdateInstance(id: id, betaAppLocalizationUpdateRequest: betaAppLocalizationUpdateRequest) { (response, error) in
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
 **betaAppLocalizationUpdateRequest** | [**BetaAppLocalizationUpdateRequest**](BetaAppLocalizationUpdateRequest.md) | BetaAppLocalization representation | 

### Return type

[**BetaAppLocalizationResponse**](BetaAppLocalizationResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

