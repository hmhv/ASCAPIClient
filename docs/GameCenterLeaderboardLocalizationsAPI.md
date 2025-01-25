# GameCenterLeaderboardLocalizationsAPI

All URIs are relative to *https://api.appstoreconnect.apple.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**gameCenterLeaderboardLocalizationsCreateInstance**](GameCenterLeaderboardLocalizationsAPI.md#gamecenterleaderboardlocalizationscreateinstance) | **POST** /v1/gameCenterLeaderboardLocalizations | 
[**gameCenterLeaderboardLocalizationsDeleteInstance**](GameCenterLeaderboardLocalizationsAPI.md#gamecenterleaderboardlocalizationsdeleteinstance) | **DELETE** /v1/gameCenterLeaderboardLocalizations/{id} | 
[**gameCenterLeaderboardLocalizationsGameCenterLeaderboardImageGetToOneRelated**](GameCenterLeaderboardLocalizationsAPI.md#gamecenterleaderboardlocalizationsgamecenterleaderboardimagegettoonerelated) | **GET** /v1/gameCenterLeaderboardLocalizations/{id}/gameCenterLeaderboardImage | 
[**gameCenterLeaderboardLocalizationsGetInstance**](GameCenterLeaderboardLocalizationsAPI.md#gamecenterleaderboardlocalizationsgetinstance) | **GET** /v1/gameCenterLeaderboardLocalizations/{id} | 
[**gameCenterLeaderboardLocalizationsUpdateInstance**](GameCenterLeaderboardLocalizationsAPI.md#gamecenterleaderboardlocalizationsupdateinstance) | **PATCH** /v1/gameCenterLeaderboardLocalizations/{id} | 


# **gameCenterLeaderboardLocalizationsCreateInstance**
```swift
    open class func gameCenterLeaderboardLocalizationsCreateInstance(gameCenterLeaderboardLocalizationCreateRequest: GameCenterLeaderboardLocalizationCreateRequest, completion: @escaping (_ data: GameCenterLeaderboardLocalizationResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let gameCenterLeaderboardLocalizationCreateRequest = GameCenterLeaderboardLocalizationCreateRequest(data: GameCenterLeaderboardLocalizationCreateRequest_data(type: "type_example", attributes: GameCenterLeaderboardLocalizationCreateRequest_data_attributes(locale: "locale_example", name: "name_example", formatterOverride: GameCenterLeaderboardFormatter(), formatterSuffix: "formatterSuffix_example", formatterSuffixSingular: "formatterSuffixSingular_example"), relationships: GameCenterLeaderboardLocalizationCreateRequest_data_relationships(gameCenterLeaderboard: GameCenterLeaderboardLocalizationCreateRequest_data_relationships_gameCenterLeaderboard(data: GameCenterDetail_relationships_gameCenterLeaderboards_data_inner(type: "type_example", id: "id_example"))))) // GameCenterLeaderboardLocalizationCreateRequest | GameCenterLeaderboardLocalization representation

GameCenterLeaderboardLocalizationsAPI.gameCenterLeaderboardLocalizationsCreateInstance(gameCenterLeaderboardLocalizationCreateRequest: gameCenterLeaderboardLocalizationCreateRequest) { (response, error) in
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
 **gameCenterLeaderboardLocalizationCreateRequest** | [**GameCenterLeaderboardLocalizationCreateRequest**](GameCenterLeaderboardLocalizationCreateRequest.md) | GameCenterLeaderboardLocalization representation | 

### Return type

[**GameCenterLeaderboardLocalizationResponse**](GameCenterLeaderboardLocalizationResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **gameCenterLeaderboardLocalizationsDeleteInstance**
```swift
    open class func gameCenterLeaderboardLocalizationsDeleteInstance(id: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource

GameCenterLeaderboardLocalizationsAPI.gameCenterLeaderboardLocalizationsDeleteInstance(id: id) { (response, error) in
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

# **gameCenterLeaderboardLocalizationsGameCenterLeaderboardImageGetToOneRelated**
```swift
    open class func gameCenterLeaderboardLocalizationsGameCenterLeaderboardImageGetToOneRelated(id: String, fieldsGameCenterLeaderboardImages: [FieldsGameCenterLeaderboardImages_gameCenterLeaderboardLocalizationsGameCenterLeaderboardImageGetToOneRelated]? = nil, fieldsGameCenterLeaderboardLocalizations: [FieldsGameCenterLeaderboardLocalizations_gameCenterLeaderboardLocalizationsGameCenterLeaderboardImageGetToOneRelated]? = nil, include: [Include_gameCenterLeaderboardLocalizationsGameCenterLeaderboardImageGetToOneRelated]? = nil, completion: @escaping (_ data: GameCenterLeaderboardImageResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let fieldsGameCenterLeaderboardImages = ["fieldsGameCenterLeaderboardImages_example"] // [String] | the fields to include for returned resources of type gameCenterLeaderboardImages (optional)
let fieldsGameCenterLeaderboardLocalizations = ["fieldsGameCenterLeaderboardLocalizations_example"] // [String] | the fields to include for returned resources of type gameCenterLeaderboardLocalizations (optional)
let include = ["include_example"] // [String] | comma-separated list of relationships to include (optional)

GameCenterLeaderboardLocalizationsAPI.gameCenterLeaderboardLocalizationsGameCenterLeaderboardImageGetToOneRelated(id: id, fieldsGameCenterLeaderboardImages: fieldsGameCenterLeaderboardImages, fieldsGameCenterLeaderboardLocalizations: fieldsGameCenterLeaderboardLocalizations, include: include) { (response, error) in
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
 **fieldsGameCenterLeaderboardImages** | [**[String]**](String.md) | the fields to include for returned resources of type gameCenterLeaderboardImages | [optional] 
 **fieldsGameCenterLeaderboardLocalizations** | [**[String]**](String.md) | the fields to include for returned resources of type gameCenterLeaderboardLocalizations | [optional] 
 **include** | [**[String]**](String.md) | comma-separated list of relationships to include | [optional] 

### Return type

[**GameCenterLeaderboardImageResponse**](GameCenterLeaderboardImageResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **gameCenterLeaderboardLocalizationsGetInstance**
```swift
    open class func gameCenterLeaderboardLocalizationsGetInstance(id: String, fieldsGameCenterLeaderboardLocalizations: [FieldsGameCenterLeaderboardLocalizations_gameCenterLeaderboardLocalizationsGetInstance]? = nil, fieldsGameCenterLeaderboardImages: [FieldsGameCenterLeaderboardImages_gameCenterLeaderboardLocalizationsGetInstance]? = nil, include: [Include_gameCenterLeaderboardLocalizationsGetInstance]? = nil, completion: @escaping (_ data: GameCenterLeaderboardLocalizationResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let fieldsGameCenterLeaderboardLocalizations = ["fieldsGameCenterLeaderboardLocalizations_example"] // [String] | the fields to include for returned resources of type gameCenterLeaderboardLocalizations (optional)
let fieldsGameCenterLeaderboardImages = ["fieldsGameCenterLeaderboardImages_example"] // [String] | the fields to include for returned resources of type gameCenterLeaderboardImages (optional)
let include = ["include_example"] // [String] | comma-separated list of relationships to include (optional)

GameCenterLeaderboardLocalizationsAPI.gameCenterLeaderboardLocalizationsGetInstance(id: id, fieldsGameCenterLeaderboardLocalizations: fieldsGameCenterLeaderboardLocalizations, fieldsGameCenterLeaderboardImages: fieldsGameCenterLeaderboardImages, include: include) { (response, error) in
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
 **fieldsGameCenterLeaderboardLocalizations** | [**[String]**](String.md) | the fields to include for returned resources of type gameCenterLeaderboardLocalizations | [optional] 
 **fieldsGameCenterLeaderboardImages** | [**[String]**](String.md) | the fields to include for returned resources of type gameCenterLeaderboardImages | [optional] 
 **include** | [**[String]**](String.md) | comma-separated list of relationships to include | [optional] 

### Return type

[**GameCenterLeaderboardLocalizationResponse**](GameCenterLeaderboardLocalizationResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **gameCenterLeaderboardLocalizationsUpdateInstance**
```swift
    open class func gameCenterLeaderboardLocalizationsUpdateInstance(id: String, gameCenterLeaderboardLocalizationUpdateRequest: GameCenterLeaderboardLocalizationUpdateRequest, completion: @escaping (_ data: GameCenterLeaderboardLocalizationResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let gameCenterLeaderboardLocalizationUpdateRequest = GameCenterLeaderboardLocalizationUpdateRequest(data: GameCenterLeaderboardLocalizationUpdateRequest_data(type: "type_example", id: "id_example", attributes: GameCenterLeaderboardLocalizationUpdateRequest_data_attributes(name: "name_example", formatterOverride: GameCenterLeaderboardFormatter(), formatterSuffix: "formatterSuffix_example", formatterSuffixSingular: "formatterSuffixSingular_example"))) // GameCenterLeaderboardLocalizationUpdateRequest | GameCenterLeaderboardLocalization representation

GameCenterLeaderboardLocalizationsAPI.gameCenterLeaderboardLocalizationsUpdateInstance(id: id, gameCenterLeaderboardLocalizationUpdateRequest: gameCenterLeaderboardLocalizationUpdateRequest) { (response, error) in
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
 **gameCenterLeaderboardLocalizationUpdateRequest** | [**GameCenterLeaderboardLocalizationUpdateRequest**](GameCenterLeaderboardLocalizationUpdateRequest.md) | GameCenterLeaderboardLocalization representation | 

### Return type

[**GameCenterLeaderboardLocalizationResponse**](GameCenterLeaderboardLocalizationResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

