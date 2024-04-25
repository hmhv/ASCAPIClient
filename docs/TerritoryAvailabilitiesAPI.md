# TerritoryAvailabilitiesAPI

All URIs are relative to *https://api.appstoreconnect.apple.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**territoryAvailabilitiesUpdateInstance**](TerritoryAvailabilitiesAPI.md#territoryavailabilitiesupdateinstance) | **PATCH** /v1/territoryAvailabilities/{id} | 


# **territoryAvailabilitiesUpdateInstance**
```swift
    open class func territoryAvailabilitiesUpdateInstance(id: String, territoryAvailabilityUpdateRequest: TerritoryAvailabilityUpdateRequest, completion: @escaping (_ data: TerritoryAvailabilityResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let territoryAvailabilityUpdateRequest = TerritoryAvailabilityUpdateRequest(data: TerritoryAvailabilityUpdateRequest_data(type: "type_example", id: "id_example", attributes: TerritoryAvailabilityUpdateRequest_data_attributes(available: false, releaseDate: Date(), preOrderEnabled: false))) // TerritoryAvailabilityUpdateRequest | TerritoryAvailability representation

TerritoryAvailabilitiesAPI.territoryAvailabilitiesUpdateInstance(id: id, territoryAvailabilityUpdateRequest: territoryAvailabilityUpdateRequest) { (response, error) in
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
 **territoryAvailabilityUpdateRequest** | [**TerritoryAvailabilityUpdateRequest**](TerritoryAvailabilityUpdateRequest.md) | TerritoryAvailability representation | 

### Return type

[**TerritoryAvailabilityResponse**](TerritoryAvailabilityResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

