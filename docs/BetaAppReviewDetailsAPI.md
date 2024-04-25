# BetaAppReviewDetailsAPI

All URIs are relative to *https://api.appstoreconnect.apple.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**betaAppReviewDetailsAppGetToOneRelated**](BetaAppReviewDetailsAPI.md#betaappreviewdetailsappgettoonerelated) | **GET** /v1/betaAppReviewDetails/{id}/app | 
[**betaAppReviewDetailsGetCollection**](BetaAppReviewDetailsAPI.md#betaappreviewdetailsgetcollection) | **GET** /v1/betaAppReviewDetails | 
[**betaAppReviewDetailsGetInstance**](BetaAppReviewDetailsAPI.md#betaappreviewdetailsgetinstance) | **GET** /v1/betaAppReviewDetails/{id} | 
[**betaAppReviewDetailsUpdateInstance**](BetaAppReviewDetailsAPI.md#betaappreviewdetailsupdateinstance) | **PATCH** /v1/betaAppReviewDetails/{id} | 


# **betaAppReviewDetailsAppGetToOneRelated**
```swift
    open class func betaAppReviewDetailsAppGetToOneRelated(id: String, fieldsApps: [FieldsApps_betaAppReviewDetailsAppGetToOneRelated]? = nil, completion: @escaping (_ data: AppWithoutIncludesResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let fieldsApps = ["fieldsApps_example"] // [String] | the fields to include for returned resources of type apps (optional)

BetaAppReviewDetailsAPI.betaAppReviewDetailsAppGetToOneRelated(id: id, fieldsApps: fieldsApps) { (response, error) in
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

# **betaAppReviewDetailsGetCollection**
```swift
    open class func betaAppReviewDetailsGetCollection(filterApp: [String], fieldsBetaAppReviewDetails: [FieldsBetaAppReviewDetails_betaAppReviewDetailsGetCollection]? = nil, limit: Int? = nil, include: [Include_betaAppReviewDetailsGetCollection]? = nil, fieldsApps: [FieldsApps_betaAppReviewDetailsGetCollection]? = nil, completion: @escaping (_ data: BetaAppReviewDetailsResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let filterApp = ["inner_example"] // [String] | filter by id(s) of related 'app'
let fieldsBetaAppReviewDetails = ["fieldsBetaAppReviewDetails_example"] // [String] | the fields to include for returned resources of type betaAppReviewDetails (optional)
let limit = 987 // Int | maximum resources per page (optional)
let include = ["include_example"] // [String] | comma-separated list of relationships to include (optional)
let fieldsApps = ["fieldsApps_example"] // [String] | the fields to include for returned resources of type apps (optional)

BetaAppReviewDetailsAPI.betaAppReviewDetailsGetCollection(filterApp: filterApp, fieldsBetaAppReviewDetails: fieldsBetaAppReviewDetails, limit: limit, include: include, fieldsApps: fieldsApps) { (response, error) in
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
 **filterApp** | [**[String]**](String.md) | filter by id(s) of related &#39;app&#39; | 
 **fieldsBetaAppReviewDetails** | [**[String]**](String.md) | the fields to include for returned resources of type betaAppReviewDetails | [optional] 
 **limit** | **Int** | maximum resources per page | [optional] 
 **include** | [**[String]**](String.md) | comma-separated list of relationships to include | [optional] 
 **fieldsApps** | [**[String]**](String.md) | the fields to include for returned resources of type apps | [optional] 

### Return type

[**BetaAppReviewDetailsResponse**](BetaAppReviewDetailsResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **betaAppReviewDetailsGetInstance**
```swift
    open class func betaAppReviewDetailsGetInstance(id: String, fieldsBetaAppReviewDetails: [FieldsBetaAppReviewDetails_betaAppReviewDetailsGetInstance]? = nil, include: [Include_betaAppReviewDetailsGetInstance]? = nil, fieldsApps: [FieldsApps_betaAppReviewDetailsGetInstance]? = nil, completion: @escaping (_ data: BetaAppReviewDetailResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let fieldsBetaAppReviewDetails = ["fieldsBetaAppReviewDetails_example"] // [String] | the fields to include for returned resources of type betaAppReviewDetails (optional)
let include = ["include_example"] // [String] | comma-separated list of relationships to include (optional)
let fieldsApps = ["fieldsApps_example"] // [String] | the fields to include for returned resources of type apps (optional)

BetaAppReviewDetailsAPI.betaAppReviewDetailsGetInstance(id: id, fieldsBetaAppReviewDetails: fieldsBetaAppReviewDetails, include: include, fieldsApps: fieldsApps) { (response, error) in
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
 **fieldsBetaAppReviewDetails** | [**[String]**](String.md) | the fields to include for returned resources of type betaAppReviewDetails | [optional] 
 **include** | [**[String]**](String.md) | comma-separated list of relationships to include | [optional] 
 **fieldsApps** | [**[String]**](String.md) | the fields to include for returned resources of type apps | [optional] 

### Return type

[**BetaAppReviewDetailResponse**](BetaAppReviewDetailResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **betaAppReviewDetailsUpdateInstance**
```swift
    open class func betaAppReviewDetailsUpdateInstance(id: String, betaAppReviewDetailUpdateRequest: BetaAppReviewDetailUpdateRequest, completion: @escaping (_ data: BetaAppReviewDetailResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let betaAppReviewDetailUpdateRequest = BetaAppReviewDetailUpdateRequest(data: BetaAppReviewDetailUpdateRequest_data(type: "type_example", id: "id_example", attributes: AppStoreReviewDetail_attributes(contactFirstName: "contactFirstName_example", contactLastName: "contactLastName_example", contactPhone: "contactPhone_example", contactEmail: "contactEmail_example", demoAccountName: "demoAccountName_example", demoAccountPassword: "demoAccountPassword_example", demoAccountRequired: false, notes: "notes_example"))) // BetaAppReviewDetailUpdateRequest | BetaAppReviewDetail representation

BetaAppReviewDetailsAPI.betaAppReviewDetailsUpdateInstance(id: id, betaAppReviewDetailUpdateRequest: betaAppReviewDetailUpdateRequest) { (response, error) in
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
 **betaAppReviewDetailUpdateRequest** | [**BetaAppReviewDetailUpdateRequest**](BetaAppReviewDetailUpdateRequest.md) | BetaAppReviewDetail representation | 

### Return type

[**BetaAppReviewDetailResponse**](BetaAppReviewDetailResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

