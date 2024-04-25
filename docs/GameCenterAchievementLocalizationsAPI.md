# GameCenterAchievementLocalizationsAPI

All URIs are relative to *https://api.appstoreconnect.apple.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**gameCenterAchievementLocalizationsCreateInstance**](GameCenterAchievementLocalizationsAPI.md#gamecenterachievementlocalizationscreateinstance) | **POST** /v1/gameCenterAchievementLocalizations | 
[**gameCenterAchievementLocalizationsDeleteInstance**](GameCenterAchievementLocalizationsAPI.md#gamecenterachievementlocalizationsdeleteinstance) | **DELETE** /v1/gameCenterAchievementLocalizations/{id} | 
[**gameCenterAchievementLocalizationsGameCenterAchievementGetToOneRelated**](GameCenterAchievementLocalizationsAPI.md#gamecenterachievementlocalizationsgamecenterachievementgettoonerelated) | **GET** /v1/gameCenterAchievementLocalizations/{id}/gameCenterAchievement | 
[**gameCenterAchievementLocalizationsGameCenterAchievementImageGetToOneRelated**](GameCenterAchievementLocalizationsAPI.md#gamecenterachievementlocalizationsgamecenterachievementimagegettoonerelated) | **GET** /v1/gameCenterAchievementLocalizations/{id}/gameCenterAchievementImage | 
[**gameCenterAchievementLocalizationsGetInstance**](GameCenterAchievementLocalizationsAPI.md#gamecenterachievementlocalizationsgetinstance) | **GET** /v1/gameCenterAchievementLocalizations/{id} | 
[**gameCenterAchievementLocalizationsUpdateInstance**](GameCenterAchievementLocalizationsAPI.md#gamecenterachievementlocalizationsupdateinstance) | **PATCH** /v1/gameCenterAchievementLocalizations/{id} | 


# **gameCenterAchievementLocalizationsCreateInstance**
```swift
    open class func gameCenterAchievementLocalizationsCreateInstance(gameCenterAchievementLocalizationCreateRequest: GameCenterAchievementLocalizationCreateRequest, completion: @escaping (_ data: GameCenterAchievementLocalizationResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let gameCenterAchievementLocalizationCreateRequest = GameCenterAchievementLocalizationCreateRequest(data: GameCenterAchievementLocalizationCreateRequest_data(type: "type_example", attributes: GameCenterAchievementLocalizationCreateRequest_data_attributes(locale: "locale_example", name: "name_example", beforeEarnedDescription: "beforeEarnedDescription_example", afterEarnedDescription: "afterEarnedDescription_example"), relationships: GameCenterAchievementLocalizationCreateRequest_data_relationships(gameCenterAchievement: GameCenterAchievementLocalizationCreateRequest_data_relationships_gameCenterAchievement(data: GameCenterAchievementLocalization_relationships_gameCenterAchievement_data(type: "type_example", id: "id_example"))))) // GameCenterAchievementLocalizationCreateRequest | GameCenterAchievementLocalization representation

GameCenterAchievementLocalizationsAPI.gameCenterAchievementLocalizationsCreateInstance(gameCenterAchievementLocalizationCreateRequest: gameCenterAchievementLocalizationCreateRequest) { (response, error) in
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
 **gameCenterAchievementLocalizationCreateRequest** | [**GameCenterAchievementLocalizationCreateRequest**](GameCenterAchievementLocalizationCreateRequest.md) | GameCenterAchievementLocalization representation | 

### Return type

[**GameCenterAchievementLocalizationResponse**](GameCenterAchievementLocalizationResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **gameCenterAchievementLocalizationsDeleteInstance**
```swift
    open class func gameCenterAchievementLocalizationsDeleteInstance(id: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource

GameCenterAchievementLocalizationsAPI.gameCenterAchievementLocalizationsDeleteInstance(id: id) { (response, error) in
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

# **gameCenterAchievementLocalizationsGameCenterAchievementGetToOneRelated**
```swift
    open class func gameCenterAchievementLocalizationsGameCenterAchievementGetToOneRelated(id: String, fieldsGameCenterAchievementReleases: [FieldsGameCenterAchievementReleases_gameCenterAchievementLocalizationsGameCenterAchievementGetToOneRelated]? = nil, fieldsGameCenterGroups: [FieldsGameCenterGroups_gameCenterAchievementLocalizationsGameCenterAchievementGetToOneRelated]? = nil, fieldsGameCenterDetails: [FieldsGameCenterDetails_gameCenterAchievementLocalizationsGameCenterAchievementGetToOneRelated]? = nil, fieldsGameCenterAchievementLocalizations: [FieldsGameCenterAchievementLocalizations_gameCenterAchievementLocalizationsGameCenterAchievementGetToOneRelated]? = nil, fieldsGameCenterAchievements: [FieldsGameCenterAchievements_gameCenterAchievementLocalizationsGameCenterAchievementGetToOneRelated]? = nil, limitLocalizations: Int? = nil, limitReleases: Int? = nil, include: [Include_gameCenterAchievementLocalizationsGameCenterAchievementGetToOneRelated]? = nil, completion: @escaping (_ data: GameCenterAchievementResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let fieldsGameCenterAchievementReleases = ["fieldsGameCenterAchievementReleases_example"] // [String] | the fields to include for returned resources of type gameCenterAchievementReleases (optional)
let fieldsGameCenterGroups = ["fieldsGameCenterGroups_example"] // [String] | the fields to include for returned resources of type gameCenterGroups (optional)
let fieldsGameCenterDetails = ["fieldsGameCenterDetails_example"] // [String] | the fields to include for returned resources of type gameCenterDetails (optional)
let fieldsGameCenterAchievementLocalizations = ["fieldsGameCenterAchievementLocalizations_example"] // [String] | the fields to include for returned resources of type gameCenterAchievementLocalizations (optional)
let fieldsGameCenterAchievements = ["fieldsGameCenterAchievements_example"] // [String] | the fields to include for returned resources of type gameCenterAchievements (optional)
let limitLocalizations = 987 // Int | maximum number of related localizations returned (when they are included) (optional)
let limitReleases = 987 // Int | maximum number of related releases returned (when they are included) (optional)
let include = ["include_example"] // [String] | comma-separated list of relationships to include (optional)

GameCenterAchievementLocalizationsAPI.gameCenterAchievementLocalizationsGameCenterAchievementGetToOneRelated(id: id, fieldsGameCenterAchievementReleases: fieldsGameCenterAchievementReleases, fieldsGameCenterGroups: fieldsGameCenterGroups, fieldsGameCenterDetails: fieldsGameCenterDetails, fieldsGameCenterAchievementLocalizations: fieldsGameCenterAchievementLocalizations, fieldsGameCenterAchievements: fieldsGameCenterAchievements, limitLocalizations: limitLocalizations, limitReleases: limitReleases, include: include) { (response, error) in
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
 **fieldsGameCenterAchievementReleases** | [**[String]**](String.md) | the fields to include for returned resources of type gameCenterAchievementReleases | [optional] 
 **fieldsGameCenterGroups** | [**[String]**](String.md) | the fields to include for returned resources of type gameCenterGroups | [optional] 
 **fieldsGameCenterDetails** | [**[String]**](String.md) | the fields to include for returned resources of type gameCenterDetails | [optional] 
 **fieldsGameCenterAchievementLocalizations** | [**[String]**](String.md) | the fields to include for returned resources of type gameCenterAchievementLocalizations | [optional] 
 **fieldsGameCenterAchievements** | [**[String]**](String.md) | the fields to include for returned resources of type gameCenterAchievements | [optional] 
 **limitLocalizations** | **Int** | maximum number of related localizations returned (when they are included) | [optional] 
 **limitReleases** | **Int** | maximum number of related releases returned (when they are included) | [optional] 
 **include** | [**[String]**](String.md) | comma-separated list of relationships to include | [optional] 

### Return type

[**GameCenterAchievementResponse**](GameCenterAchievementResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **gameCenterAchievementLocalizationsGameCenterAchievementImageGetToOneRelated**
```swift
    open class func gameCenterAchievementLocalizationsGameCenterAchievementImageGetToOneRelated(id: String, fieldsGameCenterAchievementImages: [FieldsGameCenterAchievementImages_gameCenterAchievementLocalizationsGameCenterAchievementImageGetToOneRelated]? = nil, fieldsGameCenterAchievementLocalizations: [FieldsGameCenterAchievementLocalizations_gameCenterAchievementLocalizationsGameCenterAchievementImageGetToOneRelated]? = nil, include: [Include_gameCenterAchievementLocalizationsGameCenterAchievementImageGetToOneRelated]? = nil, completion: @escaping (_ data: GameCenterAchievementImageResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let fieldsGameCenterAchievementImages = ["fieldsGameCenterAchievementImages_example"] // [String] | the fields to include for returned resources of type gameCenterAchievementImages (optional)
let fieldsGameCenterAchievementLocalizations = ["fieldsGameCenterAchievementLocalizations_example"] // [String] | the fields to include for returned resources of type gameCenterAchievementLocalizations (optional)
let include = ["include_example"] // [String] | comma-separated list of relationships to include (optional)

GameCenterAchievementLocalizationsAPI.gameCenterAchievementLocalizationsGameCenterAchievementImageGetToOneRelated(id: id, fieldsGameCenterAchievementImages: fieldsGameCenterAchievementImages, fieldsGameCenterAchievementLocalizations: fieldsGameCenterAchievementLocalizations, include: include) { (response, error) in
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
 **fieldsGameCenterAchievementImages** | [**[String]**](String.md) | the fields to include for returned resources of type gameCenterAchievementImages | [optional] 
 **fieldsGameCenterAchievementLocalizations** | [**[String]**](String.md) | the fields to include for returned resources of type gameCenterAchievementLocalizations | [optional] 
 **include** | [**[String]**](String.md) | comma-separated list of relationships to include | [optional] 

### Return type

[**GameCenterAchievementImageResponse**](GameCenterAchievementImageResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **gameCenterAchievementLocalizationsGetInstance**
```swift
    open class func gameCenterAchievementLocalizationsGetInstance(id: String, fieldsGameCenterAchievementLocalizations: [FieldsGameCenterAchievementLocalizations_gameCenterAchievementLocalizationsGetInstance]? = nil, include: [Include_gameCenterAchievementLocalizationsGetInstance]? = nil, fieldsGameCenterAchievementImages: [FieldsGameCenterAchievementImages_gameCenterAchievementLocalizationsGetInstance]? = nil, fieldsGameCenterAchievements: [FieldsGameCenterAchievements_gameCenterAchievementLocalizationsGetInstance]? = nil, completion: @escaping (_ data: GameCenterAchievementLocalizationResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let fieldsGameCenterAchievementLocalizations = ["fieldsGameCenterAchievementLocalizations_example"] // [String] | the fields to include for returned resources of type gameCenterAchievementLocalizations (optional)
let include = ["include_example"] // [String] | comma-separated list of relationships to include (optional)
let fieldsGameCenterAchievementImages = ["fieldsGameCenterAchievementImages_example"] // [String] | the fields to include for returned resources of type gameCenterAchievementImages (optional)
let fieldsGameCenterAchievements = ["fieldsGameCenterAchievements_example"] // [String] | the fields to include for returned resources of type gameCenterAchievements (optional)

GameCenterAchievementLocalizationsAPI.gameCenterAchievementLocalizationsGetInstance(id: id, fieldsGameCenterAchievementLocalizations: fieldsGameCenterAchievementLocalizations, include: include, fieldsGameCenterAchievementImages: fieldsGameCenterAchievementImages, fieldsGameCenterAchievements: fieldsGameCenterAchievements) { (response, error) in
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
 **fieldsGameCenterAchievementLocalizations** | [**[String]**](String.md) | the fields to include for returned resources of type gameCenterAchievementLocalizations | [optional] 
 **include** | [**[String]**](String.md) | comma-separated list of relationships to include | [optional] 
 **fieldsGameCenterAchievementImages** | [**[String]**](String.md) | the fields to include for returned resources of type gameCenterAchievementImages | [optional] 
 **fieldsGameCenterAchievements** | [**[String]**](String.md) | the fields to include for returned resources of type gameCenterAchievements | [optional] 

### Return type

[**GameCenterAchievementLocalizationResponse**](GameCenterAchievementLocalizationResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **gameCenterAchievementLocalizationsUpdateInstance**
```swift
    open class func gameCenterAchievementLocalizationsUpdateInstance(id: String, gameCenterAchievementLocalizationUpdateRequest: GameCenterAchievementLocalizationUpdateRequest, completion: @escaping (_ data: GameCenterAchievementLocalizationResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let gameCenterAchievementLocalizationUpdateRequest = GameCenterAchievementLocalizationUpdateRequest(data: GameCenterAchievementLocalizationUpdateRequest_data(type: "type_example", id: "id_example", attributes: GameCenterAchievementLocalizationUpdateRequest_data_attributes(name: "name_example", beforeEarnedDescription: "beforeEarnedDescription_example", afterEarnedDescription: "afterEarnedDescription_example"))) // GameCenterAchievementLocalizationUpdateRequest | GameCenterAchievementLocalization representation

GameCenterAchievementLocalizationsAPI.gameCenterAchievementLocalizationsUpdateInstance(id: id, gameCenterAchievementLocalizationUpdateRequest: gameCenterAchievementLocalizationUpdateRequest) { (response, error) in
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
 **gameCenterAchievementLocalizationUpdateRequest** | [**GameCenterAchievementLocalizationUpdateRequest**](GameCenterAchievementLocalizationUpdateRequest.md) | GameCenterAchievementLocalization representation | 

### Return type

[**GameCenterAchievementLocalizationResponse**](GameCenterAchievementLocalizationResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

