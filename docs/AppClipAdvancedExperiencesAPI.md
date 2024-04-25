# AppClipAdvancedExperiencesAPI

All URIs are relative to *https://api.appstoreconnect.apple.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**appClipAdvancedExperiencesCreateInstance**](AppClipAdvancedExperiencesAPI.md#appclipadvancedexperiencescreateinstance) | **POST** /v1/appClipAdvancedExperiences | 
[**appClipAdvancedExperiencesGetInstance**](AppClipAdvancedExperiencesAPI.md#appclipadvancedexperiencesgetinstance) | **GET** /v1/appClipAdvancedExperiences/{id} | 
[**appClipAdvancedExperiencesUpdateInstance**](AppClipAdvancedExperiencesAPI.md#appclipadvancedexperiencesupdateinstance) | **PATCH** /v1/appClipAdvancedExperiences/{id} | 


# **appClipAdvancedExperiencesCreateInstance**
```swift
    open class func appClipAdvancedExperiencesCreateInstance(appClipAdvancedExperienceCreateRequest: AppClipAdvancedExperienceCreateRequest, completion: @escaping (_ data: AppClipAdvancedExperienceResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let appClipAdvancedExperienceCreateRequest = AppClipAdvancedExperienceCreateRequest(data: AppClipAdvancedExperienceCreateRequest_data(type: "type_example", attributes: AppClipAdvancedExperienceCreateRequest_data_attributes(link: "link_example", action: AppClipAction(), isPoweredBy: false, place: AppClipAdvancedExperience_attributes_place(placeId: "placeId_example", names: ["names_example"], mainAddress: AppClipAdvancedExperience_attributes_place_mainAddress(fullAddress: "fullAddress_example", structuredAddress: AppClipAdvancedExperience_attributes_place_mainAddress_structuredAddress(streetAddress: ["streetAddress_example"], floor: "floor_example", neighborhood: "neighborhood_example", locality: "locality_example", stateProvince: "stateProvince_example", postalCode: "postalCode_example", countryCode: "countryCode_example")), displayPoint: AppClipAdvancedExperience_attributes_place_displayPoint(coordinates: AppClipAdvancedExperience_attributes_place_displayPoint_coordinates(latitude: 123, longitude: 123), source: "source_example"), mapAction: "mapAction_example", relationship: "relationship_example", phoneNumber: AppClipAdvancedExperience_attributes_place_phoneNumber(number: "number_example", type: "type_example", intent: "intent_example"), homePage: "homePage_example", categories: ["categories_example"]), businessCategory: "businessCategory_example", defaultLanguage: AppClipAdvancedExperienceLanguage()), relationships: AppClipAdvancedExperienceCreateRequest_data_relationships(appClip: AppClipAdvancedExperienceCreateRequest_data_relationships_appClip(data: AppClipAdvancedExperience_relationships_appClip_data(type: "type_example", id: "id_example")), headerImage: AppClipAdvancedExperienceCreateRequest_data_relationships_headerImage(data: AppClipAdvancedExperience_relationships_headerImage_data(type: "type_example", id: "id_example")), localizations: AppClipAdvancedExperienceCreateRequest_data_relationships_localizations(data: [AppClipAdvancedExperience_relationships_localizations_data_inner(type: "type_example", id: "id_example")]))), included: [AppClipAdvancedExperienceLocalizationInlineCreate(type: "type_example", id: "id_example", attributes: AppClipAdvancedExperienceLocalization_attributes(language: nil, title: "title_example", subtitle: "subtitle_example"))]) // AppClipAdvancedExperienceCreateRequest | AppClipAdvancedExperience representation

AppClipAdvancedExperiencesAPI.appClipAdvancedExperiencesCreateInstance(appClipAdvancedExperienceCreateRequest: appClipAdvancedExperienceCreateRequest) { (response, error) in
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
 **appClipAdvancedExperienceCreateRequest** | [**AppClipAdvancedExperienceCreateRequest**](AppClipAdvancedExperienceCreateRequest.md) | AppClipAdvancedExperience representation | 

### Return type

[**AppClipAdvancedExperienceResponse**](AppClipAdvancedExperienceResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **appClipAdvancedExperiencesGetInstance**
```swift
    open class func appClipAdvancedExperiencesGetInstance(id: String, fieldsAppClipAdvancedExperiences: [FieldsAppClipAdvancedExperiences_appClipAdvancedExperiencesGetInstance]? = nil, include: [Include_appClipAdvancedExperiencesGetInstance]? = nil, limitLocalizations: Int? = nil, completion: @escaping (_ data: AppClipAdvancedExperienceResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let fieldsAppClipAdvancedExperiences = ["fieldsAppClipAdvancedExperiences_example"] // [String] | the fields to include for returned resources of type appClipAdvancedExperiences (optional)
let include = ["include_example"] // [String] | comma-separated list of relationships to include (optional)
let limitLocalizations = 987 // Int | maximum number of related localizations returned (when they are included) (optional)

AppClipAdvancedExperiencesAPI.appClipAdvancedExperiencesGetInstance(id: id, fieldsAppClipAdvancedExperiences: fieldsAppClipAdvancedExperiences, include: include, limitLocalizations: limitLocalizations) { (response, error) in
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
 **fieldsAppClipAdvancedExperiences** | [**[String]**](String.md) | the fields to include for returned resources of type appClipAdvancedExperiences | [optional] 
 **include** | [**[String]**](String.md) | comma-separated list of relationships to include | [optional] 
 **limitLocalizations** | **Int** | maximum number of related localizations returned (when they are included) | [optional] 

### Return type

[**AppClipAdvancedExperienceResponse**](AppClipAdvancedExperienceResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **appClipAdvancedExperiencesUpdateInstance**
```swift
    open class func appClipAdvancedExperiencesUpdateInstance(id: String, appClipAdvancedExperienceUpdateRequest: AppClipAdvancedExperienceUpdateRequest, completion: @escaping (_ data: AppClipAdvancedExperienceResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let appClipAdvancedExperienceUpdateRequest = AppClipAdvancedExperienceUpdateRequest(data: AppClipAdvancedExperienceUpdateRequest_data(type: "type_example", id: "id_example", attributes: AppClipAdvancedExperienceUpdateRequest_data_attributes(action: AppClipAction(), isPoweredBy: false, place: AppClipAdvancedExperience_attributes_place(placeId: "placeId_example", names: ["names_example"], mainAddress: AppClipAdvancedExperience_attributes_place_mainAddress(fullAddress: "fullAddress_example", structuredAddress: AppClipAdvancedExperience_attributes_place_mainAddress_structuredAddress(streetAddress: ["streetAddress_example"], floor: "floor_example", neighborhood: "neighborhood_example", locality: "locality_example", stateProvince: "stateProvince_example", postalCode: "postalCode_example", countryCode: "countryCode_example")), displayPoint: AppClipAdvancedExperience_attributes_place_displayPoint(coordinates: AppClipAdvancedExperience_attributes_place_displayPoint_coordinates(latitude: 123, longitude: 123), source: "source_example"), mapAction: "mapAction_example", relationship: "relationship_example", phoneNumber: AppClipAdvancedExperience_attributes_place_phoneNumber(number: "number_example", type: "type_example", intent: "intent_example"), homePage: "homePage_example", categories: ["categories_example"]), businessCategory: "businessCategory_example", defaultLanguage: AppClipAdvancedExperienceLanguage(), removed: false), relationships: AppClipAdvancedExperienceUpdateRequest_data_relationships(appClip: AppClipAdvancedExperienceUpdateRequest_data_relationships_appClip(data: AppClipAdvancedExperience_relationships_appClip_data(type: "type_example", id: "id_example")), headerImage: AppClipAdvancedExperienceUpdateRequest_data_relationships_headerImage(data: AppClipAdvancedExperience_relationships_headerImage_data(type: "type_example", id: "id_example")), localizations: AppClipAdvancedExperienceUpdateRequest_data_relationships_localizations(data: [AppClipAdvancedExperience_relationships_localizations_data_inner(type: "type_example", id: "id_example")]))), included: [AppClipAdvancedExperienceLocalizationInlineCreate(type: "type_example", id: "id_example", attributes: AppClipAdvancedExperienceLocalization_attributes(language: nil, title: "title_example", subtitle: "subtitle_example"))]) // AppClipAdvancedExperienceUpdateRequest | AppClipAdvancedExperience representation

AppClipAdvancedExperiencesAPI.appClipAdvancedExperiencesUpdateInstance(id: id, appClipAdvancedExperienceUpdateRequest: appClipAdvancedExperienceUpdateRequest) { (response, error) in
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
 **appClipAdvancedExperienceUpdateRequest** | [**AppClipAdvancedExperienceUpdateRequest**](AppClipAdvancedExperienceUpdateRequest.md) | AppClipAdvancedExperience representation | 

### Return type

[**AppClipAdvancedExperienceResponse**](AppClipAdvancedExperienceResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

