# EndUserLicenseAgreementsAPI

All URIs are relative to *https://api.appstoreconnect.apple.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**endUserLicenseAgreementsCreateInstance**](EndUserLicenseAgreementsAPI.md#enduserlicenseagreementscreateinstance) | **POST** /v1/endUserLicenseAgreements | 
[**endUserLicenseAgreementsDeleteInstance**](EndUserLicenseAgreementsAPI.md#enduserlicenseagreementsdeleteinstance) | **DELETE** /v1/endUserLicenseAgreements/{id} | 
[**endUserLicenseAgreementsGetInstance**](EndUserLicenseAgreementsAPI.md#enduserlicenseagreementsgetinstance) | **GET** /v1/endUserLicenseAgreements/{id} | 
[**endUserLicenseAgreementsTerritoriesGetToManyRelated**](EndUserLicenseAgreementsAPI.md#enduserlicenseagreementsterritoriesgettomanyrelated) | **GET** /v1/endUserLicenseAgreements/{id}/territories | 
[**endUserLicenseAgreementsUpdateInstance**](EndUserLicenseAgreementsAPI.md#enduserlicenseagreementsupdateinstance) | **PATCH** /v1/endUserLicenseAgreements/{id} | 


# **endUserLicenseAgreementsCreateInstance**
```swift
    open class func endUserLicenseAgreementsCreateInstance(endUserLicenseAgreementCreateRequest: EndUserLicenseAgreementCreateRequest, completion: @escaping (_ data: EndUserLicenseAgreementResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let endUserLicenseAgreementCreateRequest = EndUserLicenseAgreementCreateRequest(data: EndUserLicenseAgreementCreateRequest_data(type: "type_example", attributes: EndUserLicenseAgreementCreateRequest_data_attributes(agreementText: "agreementText_example"), relationships: EndUserLicenseAgreementCreateRequest_data_relationships(app: AppCustomProductPageCreateRequest_data_relationships_app(data: AppClip_relationships_app_data(type: "type_example", id: "id_example")), territories: EndUserLicenseAgreementCreateRequest_data_relationships_territories(data: [AppPricePointV2_relationships_territory_data(type: "type_example", id: "id_example")])))) // EndUserLicenseAgreementCreateRequest | EndUserLicenseAgreement representation

EndUserLicenseAgreementsAPI.endUserLicenseAgreementsCreateInstance(endUserLicenseAgreementCreateRequest: endUserLicenseAgreementCreateRequest) { (response, error) in
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
 **endUserLicenseAgreementCreateRequest** | [**EndUserLicenseAgreementCreateRequest**](EndUserLicenseAgreementCreateRequest.md) | EndUserLicenseAgreement representation | 

### Return type

[**EndUserLicenseAgreementResponse**](EndUserLicenseAgreementResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **endUserLicenseAgreementsDeleteInstance**
```swift
    open class func endUserLicenseAgreementsDeleteInstance(id: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource

EndUserLicenseAgreementsAPI.endUserLicenseAgreementsDeleteInstance(id: id) { (response, error) in
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

# **endUserLicenseAgreementsGetInstance**
```swift
    open class func endUserLicenseAgreementsGetInstance(id: String, fieldsEndUserLicenseAgreements: [FieldsEndUserLicenseAgreements_endUserLicenseAgreementsGetInstance]? = nil, include: [Include_endUserLicenseAgreementsGetInstance]? = nil, fieldsTerritories: [FieldsTerritories_endUserLicenseAgreementsGetInstance]? = nil, limitTerritories: Int? = nil, completion: @escaping (_ data: EndUserLicenseAgreementResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let fieldsEndUserLicenseAgreements = ["fieldsEndUserLicenseAgreements_example"] // [String] | the fields to include for returned resources of type endUserLicenseAgreements (optional)
let include = ["include_example"] // [String] | comma-separated list of relationships to include (optional)
let fieldsTerritories = ["fieldsTerritories_example"] // [String] | the fields to include for returned resources of type territories (optional)
let limitTerritories = 987 // Int | maximum number of related territories returned (when they are included) (optional)

EndUserLicenseAgreementsAPI.endUserLicenseAgreementsGetInstance(id: id, fieldsEndUserLicenseAgreements: fieldsEndUserLicenseAgreements, include: include, fieldsTerritories: fieldsTerritories, limitTerritories: limitTerritories) { (response, error) in
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
 **fieldsEndUserLicenseAgreements** | [**[String]**](String.md) | the fields to include for returned resources of type endUserLicenseAgreements | [optional] 
 **include** | [**[String]**](String.md) | comma-separated list of relationships to include | [optional] 
 **fieldsTerritories** | [**[String]**](String.md) | the fields to include for returned resources of type territories | [optional] 
 **limitTerritories** | **Int** | maximum number of related territories returned (when they are included) | [optional] 

### Return type

[**EndUserLicenseAgreementResponse**](EndUserLicenseAgreementResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **endUserLicenseAgreementsTerritoriesGetToManyRelated**
```swift
    open class func endUserLicenseAgreementsTerritoriesGetToManyRelated(id: String, fieldsTerritories: [FieldsTerritories_endUserLicenseAgreementsTerritoriesGetToManyRelated]? = nil, limit: Int? = nil, completion: @escaping (_ data: TerritoriesResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let fieldsTerritories = ["fieldsTerritories_example"] // [String] | the fields to include for returned resources of type territories (optional)
let limit = 987 // Int | maximum resources per page (optional)

EndUserLicenseAgreementsAPI.endUserLicenseAgreementsTerritoriesGetToManyRelated(id: id, fieldsTerritories: fieldsTerritories, limit: limit) { (response, error) in
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

# **endUserLicenseAgreementsUpdateInstance**
```swift
    open class func endUserLicenseAgreementsUpdateInstance(id: String, endUserLicenseAgreementUpdateRequest: EndUserLicenseAgreementUpdateRequest, completion: @escaping (_ data: EndUserLicenseAgreementResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let endUserLicenseAgreementUpdateRequest = EndUserLicenseAgreementUpdateRequest(data: EndUserLicenseAgreementUpdateRequest_data(type: "type_example", id: "id_example", attributes: BetaLicenseAgreement_attributes(agreementText: "agreementText_example"), relationships: EndUserLicenseAgreementUpdateRequest_data_relationships(territories: AppUpdateRequest_data_relationships_availableTerritories(data: [AppPricePointV2_relationships_territory_data(type: "type_example", id: "id_example")])))) // EndUserLicenseAgreementUpdateRequest | EndUserLicenseAgreement representation

EndUserLicenseAgreementsAPI.endUserLicenseAgreementsUpdateInstance(id: id, endUserLicenseAgreementUpdateRequest: endUserLicenseAgreementUpdateRequest) { (response, error) in
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
 **endUserLicenseAgreementUpdateRequest** | [**EndUserLicenseAgreementUpdateRequest**](EndUserLicenseAgreementUpdateRequest.md) | EndUserLicenseAgreement representation | 

### Return type

[**EndUserLicenseAgreementResponse**](EndUserLicenseAgreementResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

