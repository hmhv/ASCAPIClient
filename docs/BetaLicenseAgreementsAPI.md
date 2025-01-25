# BetaLicenseAgreementsAPI

All URIs are relative to *https://api.appstoreconnect.apple.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**betaLicenseAgreementsAppGetToOneRelated**](BetaLicenseAgreementsAPI.md#betalicenseagreementsappgettoonerelated) | **GET** /v1/betaLicenseAgreements/{id}/app | 
[**betaLicenseAgreementsGetCollection**](BetaLicenseAgreementsAPI.md#betalicenseagreementsgetcollection) | **GET** /v1/betaLicenseAgreements | 
[**betaLicenseAgreementsGetInstance**](BetaLicenseAgreementsAPI.md#betalicenseagreementsgetinstance) | **GET** /v1/betaLicenseAgreements/{id} | 
[**betaLicenseAgreementsUpdateInstance**](BetaLicenseAgreementsAPI.md#betalicenseagreementsupdateinstance) | **PATCH** /v1/betaLicenseAgreements/{id} | 


# **betaLicenseAgreementsAppGetToOneRelated**
```swift
    open class func betaLicenseAgreementsAppGetToOneRelated(id: String, fieldsApps: [FieldsApps_betaLicenseAgreementsAppGetToOneRelated]? = nil, completion: @escaping (_ data: AppWithoutIncludesResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let fieldsApps = ["fieldsApps_example"] // [String] | the fields to include for returned resources of type apps (optional)

BetaLicenseAgreementsAPI.betaLicenseAgreementsAppGetToOneRelated(id: id, fieldsApps: fieldsApps) { (response, error) in
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

# **betaLicenseAgreementsGetCollection**
```swift
    open class func betaLicenseAgreementsGetCollection(filterApp: [String]? = nil, fieldsBetaLicenseAgreements: [FieldsBetaLicenseAgreements_betaLicenseAgreementsGetCollection]? = nil, fieldsApps: [FieldsApps_betaLicenseAgreementsGetCollection]? = nil, limit: Int? = nil, include: [Include_betaLicenseAgreementsGetCollection]? = nil, completion: @escaping (_ data: BetaLicenseAgreementsResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let filterApp = ["inner_example"] // [String] | filter by id(s) of related 'app' (optional)
let fieldsBetaLicenseAgreements = ["fieldsBetaLicenseAgreements_example"] // [String] | the fields to include for returned resources of type betaLicenseAgreements (optional)
let fieldsApps = ["fieldsApps_example"] // [String] | the fields to include for returned resources of type apps (optional)
let limit = 987 // Int | maximum resources per page (optional)
let include = ["include_example"] // [String] | comma-separated list of relationships to include (optional)

BetaLicenseAgreementsAPI.betaLicenseAgreementsGetCollection(filterApp: filterApp, fieldsBetaLicenseAgreements: fieldsBetaLicenseAgreements, fieldsApps: fieldsApps, limit: limit, include: include) { (response, error) in
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
 **filterApp** | [**[String]**](String.md) | filter by id(s) of related &#39;app&#39; | [optional] 
 **fieldsBetaLicenseAgreements** | [**[String]**](String.md) | the fields to include for returned resources of type betaLicenseAgreements | [optional] 
 **fieldsApps** | [**[String]**](String.md) | the fields to include for returned resources of type apps | [optional] 
 **limit** | **Int** | maximum resources per page | [optional] 
 **include** | [**[String]**](String.md) | comma-separated list of relationships to include | [optional] 

### Return type

[**BetaLicenseAgreementsResponse**](BetaLicenseAgreementsResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **betaLicenseAgreementsGetInstance**
```swift
    open class func betaLicenseAgreementsGetInstance(id: String, fieldsBetaLicenseAgreements: [FieldsBetaLicenseAgreements_betaLicenseAgreementsGetInstance]? = nil, fieldsApps: [FieldsApps_betaLicenseAgreementsGetInstance]? = nil, include: [Include_betaLicenseAgreementsGetInstance]? = nil, completion: @escaping (_ data: BetaLicenseAgreementResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let fieldsBetaLicenseAgreements = ["fieldsBetaLicenseAgreements_example"] // [String] | the fields to include for returned resources of type betaLicenseAgreements (optional)
let fieldsApps = ["fieldsApps_example"] // [String] | the fields to include for returned resources of type apps (optional)
let include = ["include_example"] // [String] | comma-separated list of relationships to include (optional)

BetaLicenseAgreementsAPI.betaLicenseAgreementsGetInstance(id: id, fieldsBetaLicenseAgreements: fieldsBetaLicenseAgreements, fieldsApps: fieldsApps, include: include) { (response, error) in
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
 **fieldsBetaLicenseAgreements** | [**[String]**](String.md) | the fields to include for returned resources of type betaLicenseAgreements | [optional] 
 **fieldsApps** | [**[String]**](String.md) | the fields to include for returned resources of type apps | [optional] 
 **include** | [**[String]**](String.md) | comma-separated list of relationships to include | [optional] 

### Return type

[**BetaLicenseAgreementResponse**](BetaLicenseAgreementResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **betaLicenseAgreementsUpdateInstance**
```swift
    open class func betaLicenseAgreementsUpdateInstance(id: String, betaLicenseAgreementUpdateRequest: BetaLicenseAgreementUpdateRequest, completion: @escaping (_ data: BetaLicenseAgreementResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let betaLicenseAgreementUpdateRequest = BetaLicenseAgreementUpdateRequest(data: BetaLicenseAgreementUpdateRequest_data(type: "type_example", id: "id_example", attributes: BetaLicenseAgreement_attributes(agreementText: "agreementText_example"))) // BetaLicenseAgreementUpdateRequest | BetaLicenseAgreement representation

BetaLicenseAgreementsAPI.betaLicenseAgreementsUpdateInstance(id: id, betaLicenseAgreementUpdateRequest: betaLicenseAgreementUpdateRequest) { (response, error) in
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
 **betaLicenseAgreementUpdateRequest** | [**BetaLicenseAgreementUpdateRequest**](BetaLicenseAgreementUpdateRequest.md) | BetaLicenseAgreement representation | 

### Return type

[**BetaLicenseAgreementResponse**](BetaLicenseAgreementResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

