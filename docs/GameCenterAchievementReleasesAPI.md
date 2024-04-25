# GameCenterAchievementReleasesAPI

All URIs are relative to *https://api.appstoreconnect.apple.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**gameCenterAchievementReleasesCreateInstance**](GameCenterAchievementReleasesAPI.md#gamecenterachievementreleasescreateinstance) | **POST** /v1/gameCenterAchievementReleases | 
[**gameCenterAchievementReleasesDeleteInstance**](GameCenterAchievementReleasesAPI.md#gamecenterachievementreleasesdeleteinstance) | **DELETE** /v1/gameCenterAchievementReleases/{id} | 
[**gameCenterAchievementReleasesGetInstance**](GameCenterAchievementReleasesAPI.md#gamecenterachievementreleasesgetinstance) | **GET** /v1/gameCenterAchievementReleases/{id} | 


# **gameCenterAchievementReleasesCreateInstance**
```swift
    open class func gameCenterAchievementReleasesCreateInstance(gameCenterAchievementReleaseCreateRequest: GameCenterAchievementReleaseCreateRequest, completion: @escaping (_ data: GameCenterAchievementReleaseResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let gameCenterAchievementReleaseCreateRequest = GameCenterAchievementReleaseCreateRequest(data: GameCenterAchievementReleaseCreateRequest_data(type: "type_example", relationships: GameCenterAchievementReleaseCreateRequest_data_relationships(gameCenterDetail: GameCenterAchievementReleaseCreateRequest_data_relationships_gameCenterDetail(data: App_relationships_gameCenterDetail_data(type: "type_example", id: "id_example")), gameCenterAchievement: GameCenterAchievementLocalizationCreateRequest_data_relationships_gameCenterAchievement(data: GameCenterAchievementLocalization_relationships_gameCenterAchievement_data(type: "type_example", id: "id_example"))))) // GameCenterAchievementReleaseCreateRequest | GameCenterAchievementRelease representation

GameCenterAchievementReleasesAPI.gameCenterAchievementReleasesCreateInstance(gameCenterAchievementReleaseCreateRequest: gameCenterAchievementReleaseCreateRequest) { (response, error) in
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
 **gameCenterAchievementReleaseCreateRequest** | [**GameCenterAchievementReleaseCreateRequest**](GameCenterAchievementReleaseCreateRequest.md) | GameCenterAchievementRelease representation | 

### Return type

[**GameCenterAchievementReleaseResponse**](GameCenterAchievementReleaseResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **gameCenterAchievementReleasesDeleteInstance**
```swift
    open class func gameCenterAchievementReleasesDeleteInstance(id: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource

GameCenterAchievementReleasesAPI.gameCenterAchievementReleasesDeleteInstance(id: id) { (response, error) in
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

# **gameCenterAchievementReleasesGetInstance**
```swift
    open class func gameCenterAchievementReleasesGetInstance(id: String, fieldsGameCenterAchievementReleases: [FieldsGameCenterAchievementReleases_gameCenterAchievementReleasesGetInstance]? = nil, include: [Include_gameCenterAchievementReleasesGetInstance]? = nil, completion: @escaping (_ data: GameCenterAchievementReleaseResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let fieldsGameCenterAchievementReleases = ["fieldsGameCenterAchievementReleases_example"] // [String] | the fields to include for returned resources of type gameCenterAchievementReleases (optional)
let include = ["include_example"] // [String] | comma-separated list of relationships to include (optional)

GameCenterAchievementReleasesAPI.gameCenterAchievementReleasesGetInstance(id: id, fieldsGameCenterAchievementReleases: fieldsGameCenterAchievementReleases, include: include) { (response, error) in
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
 **include** | [**[String]**](String.md) | comma-separated list of relationships to include | [optional] 

### Return type

[**GameCenterAchievementReleaseResponse**](GameCenterAchievementReleaseResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

