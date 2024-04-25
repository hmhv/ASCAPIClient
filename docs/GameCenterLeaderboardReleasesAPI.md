# GameCenterLeaderboardReleasesAPI

All URIs are relative to *https://api.appstoreconnect.apple.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**gameCenterLeaderboardReleasesCreateInstance**](GameCenterLeaderboardReleasesAPI.md#gamecenterleaderboardreleasescreateinstance) | **POST** /v1/gameCenterLeaderboardReleases | 
[**gameCenterLeaderboardReleasesDeleteInstance**](GameCenterLeaderboardReleasesAPI.md#gamecenterleaderboardreleasesdeleteinstance) | **DELETE** /v1/gameCenterLeaderboardReleases/{id} | 
[**gameCenterLeaderboardReleasesGetInstance**](GameCenterLeaderboardReleasesAPI.md#gamecenterleaderboardreleasesgetinstance) | **GET** /v1/gameCenterLeaderboardReleases/{id} | 


# **gameCenterLeaderboardReleasesCreateInstance**
```swift
    open class func gameCenterLeaderboardReleasesCreateInstance(gameCenterLeaderboardReleaseCreateRequest: GameCenterLeaderboardReleaseCreateRequest, completion: @escaping (_ data: GameCenterLeaderboardReleaseResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let gameCenterLeaderboardReleaseCreateRequest = GameCenterLeaderboardReleaseCreateRequest(data: GameCenterLeaderboardReleaseCreateRequest_data(type: "type_example", relationships: GameCenterLeaderboardReleaseCreateRequest_data_relationships(gameCenterDetail: GameCenterAchievementReleaseCreateRequest_data_relationships_gameCenterDetail(data: App_relationships_gameCenterDetail_data(type: "type_example", id: "id_example")), gameCenterLeaderboard: GameCenterLeaderboardLocalizationCreateRequest_data_relationships_gameCenterLeaderboard(data: GameCenterDetail_relationships_gameCenterLeaderboards_data_inner(type: "type_example", id: "id_example"))))) // GameCenterLeaderboardReleaseCreateRequest | GameCenterLeaderboardRelease representation

GameCenterLeaderboardReleasesAPI.gameCenterLeaderboardReleasesCreateInstance(gameCenterLeaderboardReleaseCreateRequest: gameCenterLeaderboardReleaseCreateRequest) { (response, error) in
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
 **gameCenterLeaderboardReleaseCreateRequest** | [**GameCenterLeaderboardReleaseCreateRequest**](GameCenterLeaderboardReleaseCreateRequest.md) | GameCenterLeaderboardRelease representation | 

### Return type

[**GameCenterLeaderboardReleaseResponse**](GameCenterLeaderboardReleaseResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **gameCenterLeaderboardReleasesDeleteInstance**
```swift
    open class func gameCenterLeaderboardReleasesDeleteInstance(id: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource

GameCenterLeaderboardReleasesAPI.gameCenterLeaderboardReleasesDeleteInstance(id: id) { (response, error) in
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

# **gameCenterLeaderboardReleasesGetInstance**
```swift
    open class func gameCenterLeaderboardReleasesGetInstance(id: String, fieldsGameCenterLeaderboardReleases: [FieldsGameCenterLeaderboardReleases_gameCenterLeaderboardReleasesGetInstance]? = nil, include: [Include_gameCenterLeaderboardReleasesGetInstance]? = nil, completion: @escaping (_ data: GameCenterLeaderboardReleaseResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let fieldsGameCenterLeaderboardReleases = ["fieldsGameCenterLeaderboardReleases_example"] // [String] | the fields to include for returned resources of type gameCenterLeaderboardReleases (optional)
let include = ["include_example"] // [String] | comma-separated list of relationships to include (optional)

GameCenterLeaderboardReleasesAPI.gameCenterLeaderboardReleasesGetInstance(id: id, fieldsGameCenterLeaderboardReleases: fieldsGameCenterLeaderboardReleases, include: include) { (response, error) in
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
 **fieldsGameCenterLeaderboardReleases** | [**[String]**](String.md) | the fields to include for returned resources of type gameCenterLeaderboardReleases | [optional] 
 **include** | [**[String]**](String.md) | comma-separated list of relationships to include | [optional] 

### Return type

[**GameCenterLeaderboardReleaseResponse**](GameCenterLeaderboardReleaseResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

