# GameCenterLeaderboardSetLocalizationsAPI

All URIs are relative to *https://api.appstoreconnect.apple.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**gameCenterLeaderboardSetLocalizationsCreateInstance**](GameCenterLeaderboardSetLocalizationsAPI.md#gamecenterleaderboardsetlocalizationscreateinstance) | **POST** /v1/gameCenterLeaderboardSetLocalizations | 
[**gameCenterLeaderboardSetLocalizationsDeleteInstance**](GameCenterLeaderboardSetLocalizationsAPI.md#gamecenterleaderboardsetlocalizationsdeleteinstance) | **DELETE** /v1/gameCenterLeaderboardSetLocalizations/{id} | 
[**gameCenterLeaderboardSetLocalizationsGameCenterLeaderboardSetImageGetToOneRelated**](GameCenterLeaderboardSetLocalizationsAPI.md#gamecenterleaderboardsetlocalizationsgamecenterleaderboardsetimagegettoonerelated) | **GET** /v1/gameCenterLeaderboardSetLocalizations/{id}/gameCenterLeaderboardSetImage | 
[**gameCenterLeaderboardSetLocalizationsGetInstance**](GameCenterLeaderboardSetLocalizationsAPI.md#gamecenterleaderboardsetlocalizationsgetinstance) | **GET** /v1/gameCenterLeaderboardSetLocalizations/{id} | 
[**gameCenterLeaderboardSetLocalizationsUpdateInstance**](GameCenterLeaderboardSetLocalizationsAPI.md#gamecenterleaderboardsetlocalizationsupdateinstance) | **PATCH** /v1/gameCenterLeaderboardSetLocalizations/{id} | 


# **gameCenterLeaderboardSetLocalizationsCreateInstance**
```swift
    open class func gameCenterLeaderboardSetLocalizationsCreateInstance(gameCenterLeaderboardSetLocalizationCreateRequest: GameCenterLeaderboardSetLocalizationCreateRequest, completion: @escaping (_ data: GameCenterLeaderboardSetLocalizationResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let gameCenterLeaderboardSetLocalizationCreateRequest = GameCenterLeaderboardSetLocalizationCreateRequest(data: GameCenterLeaderboardSetLocalizationCreateRequest_data(type: "type_example", attributes: GameCenterLeaderboardSetLocalizationCreateRequest_data_attributes(locale: "locale_example", name: "name_example"), relationships: GameCenterLeaderboardSetLocalizationCreateRequest_data_relationships(gameCenterLeaderboardSet: GameCenterLeaderboardSetLocalizationCreateRequest_data_relationships_gameCenterLeaderboardSet(data: GameCenterDetail_relationships_gameCenterLeaderboardSets_data_inner(type: "type_example", id: "id_example"))))) // GameCenterLeaderboardSetLocalizationCreateRequest | GameCenterLeaderboardSetLocalization representation

GameCenterLeaderboardSetLocalizationsAPI.gameCenterLeaderboardSetLocalizationsCreateInstance(gameCenterLeaderboardSetLocalizationCreateRequest: gameCenterLeaderboardSetLocalizationCreateRequest) { (response, error) in
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
 **gameCenterLeaderboardSetLocalizationCreateRequest** | [**GameCenterLeaderboardSetLocalizationCreateRequest**](GameCenterLeaderboardSetLocalizationCreateRequest.md) | GameCenterLeaderboardSetLocalization representation | 

### Return type

[**GameCenterLeaderboardSetLocalizationResponse**](GameCenterLeaderboardSetLocalizationResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **gameCenterLeaderboardSetLocalizationsDeleteInstance**
```swift
    open class func gameCenterLeaderboardSetLocalizationsDeleteInstance(id: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource

GameCenterLeaderboardSetLocalizationsAPI.gameCenterLeaderboardSetLocalizationsDeleteInstance(id: id) { (response, error) in
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

# **gameCenterLeaderboardSetLocalizationsGameCenterLeaderboardSetImageGetToOneRelated**
```swift
    open class func gameCenterLeaderboardSetLocalizationsGameCenterLeaderboardSetImageGetToOneRelated(id: String, fieldsGameCenterLeaderboardSetImages: [FieldsGameCenterLeaderboardSetImages_gameCenterLeaderboardSetLocalizationsGameCenterLeaderboardSetImageGetToOneRelated]? = nil, fieldsGameCenterLeaderboardSetLocalizations: [FieldsGameCenterLeaderboardSetLocalizations_gameCenterLeaderboardSetLocalizationsGameCenterLeaderboardSetImageGetToOneRelated]? = nil, include: [Include_gameCenterLeaderboardSetLocalizationsGameCenterLeaderboardSetImageGetToOneRelated]? = nil, completion: @escaping (_ data: GameCenterLeaderboardSetImageResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let fieldsGameCenterLeaderboardSetImages = ["fieldsGameCenterLeaderboardSetImages_example"] // [String] | the fields to include for returned resources of type gameCenterLeaderboardSetImages (optional)
let fieldsGameCenterLeaderboardSetLocalizations = ["fieldsGameCenterLeaderboardSetLocalizations_example"] // [String] | the fields to include for returned resources of type gameCenterLeaderboardSetLocalizations (optional)
let include = ["include_example"] // [String] | comma-separated list of relationships to include (optional)

GameCenterLeaderboardSetLocalizationsAPI.gameCenterLeaderboardSetLocalizationsGameCenterLeaderboardSetImageGetToOneRelated(id: id, fieldsGameCenterLeaderboardSetImages: fieldsGameCenterLeaderboardSetImages, fieldsGameCenterLeaderboardSetLocalizations: fieldsGameCenterLeaderboardSetLocalizations, include: include) { (response, error) in
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
 **fieldsGameCenterLeaderboardSetImages** | [**[String]**](String.md) | the fields to include for returned resources of type gameCenterLeaderboardSetImages | [optional] 
 **fieldsGameCenterLeaderboardSetLocalizations** | [**[String]**](String.md) | the fields to include for returned resources of type gameCenterLeaderboardSetLocalizations | [optional] 
 **include** | [**[String]**](String.md) | comma-separated list of relationships to include | [optional] 

### Return type

[**GameCenterLeaderboardSetImageResponse**](GameCenterLeaderboardSetImageResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **gameCenterLeaderboardSetLocalizationsGetInstance**
```swift
    open class func gameCenterLeaderboardSetLocalizationsGetInstance(id: String, fieldsGameCenterLeaderboardSetLocalizations: [FieldsGameCenterLeaderboardSetLocalizations_gameCenterLeaderboardSetLocalizationsGetInstance]? = nil, fieldsGameCenterLeaderboardSetImages: [FieldsGameCenterLeaderboardSetImages_gameCenterLeaderboardSetLocalizationsGetInstance]? = nil, include: [Include_gameCenterLeaderboardSetLocalizationsGetInstance]? = nil, completion: @escaping (_ data: GameCenterLeaderboardSetLocalizationResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let fieldsGameCenterLeaderboardSetLocalizations = ["fieldsGameCenterLeaderboardSetLocalizations_example"] // [String] | the fields to include for returned resources of type gameCenterLeaderboardSetLocalizations (optional)
let fieldsGameCenterLeaderboardSetImages = ["fieldsGameCenterLeaderboardSetImages_example"] // [String] | the fields to include for returned resources of type gameCenterLeaderboardSetImages (optional)
let include = ["include_example"] // [String] | comma-separated list of relationships to include (optional)

GameCenterLeaderboardSetLocalizationsAPI.gameCenterLeaderboardSetLocalizationsGetInstance(id: id, fieldsGameCenterLeaderboardSetLocalizations: fieldsGameCenterLeaderboardSetLocalizations, fieldsGameCenterLeaderboardSetImages: fieldsGameCenterLeaderboardSetImages, include: include) { (response, error) in
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
 **fieldsGameCenterLeaderboardSetLocalizations** | [**[String]**](String.md) | the fields to include for returned resources of type gameCenterLeaderboardSetLocalizations | [optional] 
 **fieldsGameCenterLeaderboardSetImages** | [**[String]**](String.md) | the fields to include for returned resources of type gameCenterLeaderboardSetImages | [optional] 
 **include** | [**[String]**](String.md) | comma-separated list of relationships to include | [optional] 

### Return type

[**GameCenterLeaderboardSetLocalizationResponse**](GameCenterLeaderboardSetLocalizationResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **gameCenterLeaderboardSetLocalizationsUpdateInstance**
```swift
    open class func gameCenterLeaderboardSetLocalizationsUpdateInstance(id: String, gameCenterLeaderboardSetLocalizationUpdateRequest: GameCenterLeaderboardSetLocalizationUpdateRequest, completion: @escaping (_ data: GameCenterLeaderboardSetLocalizationResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let gameCenterLeaderboardSetLocalizationUpdateRequest = GameCenterLeaderboardSetLocalizationUpdateRequest(data: GameCenterLeaderboardSetLocalizationUpdateRequest_data(type: "type_example", id: "id_example", attributes: BundleIdUpdateRequest_data_attributes(name: "name_example"))) // GameCenterLeaderboardSetLocalizationUpdateRequest | GameCenterLeaderboardSetLocalization representation

GameCenterLeaderboardSetLocalizationsAPI.gameCenterLeaderboardSetLocalizationsUpdateInstance(id: id, gameCenterLeaderboardSetLocalizationUpdateRequest: gameCenterLeaderboardSetLocalizationUpdateRequest) { (response, error) in
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
 **gameCenterLeaderboardSetLocalizationUpdateRequest** | [**GameCenterLeaderboardSetLocalizationUpdateRequest**](GameCenterLeaderboardSetLocalizationUpdateRequest.md) | GameCenterLeaderboardSetLocalization representation | 

### Return type

[**GameCenterLeaderboardSetLocalizationResponse**](GameCenterLeaderboardSetLocalizationResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

