# GameCenterLeaderboardSetReleasesAPI

All URIs are relative to *https://api.appstoreconnect.apple.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**gameCenterLeaderboardSetReleasesCreateInstance**](GameCenterLeaderboardSetReleasesAPI.md#gamecenterleaderboardsetreleasescreateinstance) | **POST** /v1/gameCenterLeaderboardSetReleases | 
[**gameCenterLeaderboardSetReleasesDeleteInstance**](GameCenterLeaderboardSetReleasesAPI.md#gamecenterleaderboardsetreleasesdeleteinstance) | **DELETE** /v1/gameCenterLeaderboardSetReleases/{id} | 
[**gameCenterLeaderboardSetReleasesGetInstance**](GameCenterLeaderboardSetReleasesAPI.md#gamecenterleaderboardsetreleasesgetinstance) | **GET** /v1/gameCenterLeaderboardSetReleases/{id} | 


# **gameCenterLeaderboardSetReleasesCreateInstance**
```swift
    open class func gameCenterLeaderboardSetReleasesCreateInstance(gameCenterLeaderboardSetReleaseCreateRequest: GameCenterLeaderboardSetReleaseCreateRequest, completion: @escaping (_ data: GameCenterLeaderboardSetReleaseResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let gameCenterLeaderboardSetReleaseCreateRequest = GameCenterLeaderboardSetReleaseCreateRequest(data: GameCenterLeaderboardSetReleaseCreateRequest_data(type: "type_example", relationships: GameCenterLeaderboardSetReleaseCreateRequest_data_relationships(gameCenterDetail: GameCenterAchievementReleaseCreateRequest_data_relationships_gameCenterDetail(data: App_relationships_gameCenterDetail_data(type: "type_example", id: "id_example")), gameCenterLeaderboardSet: GameCenterLeaderboardSetLocalizationCreateRequest_data_relationships_gameCenterLeaderboardSet(data: GameCenterDetail_relationships_gameCenterLeaderboardSets_data_inner(type: "type_example", id: "id_example"))))) // GameCenterLeaderboardSetReleaseCreateRequest | GameCenterLeaderboardSetRelease representation

GameCenterLeaderboardSetReleasesAPI.gameCenterLeaderboardSetReleasesCreateInstance(gameCenterLeaderboardSetReleaseCreateRequest: gameCenterLeaderboardSetReleaseCreateRequest) { (response, error) in
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
 **gameCenterLeaderboardSetReleaseCreateRequest** | [**GameCenterLeaderboardSetReleaseCreateRequest**](GameCenterLeaderboardSetReleaseCreateRequest.md) | GameCenterLeaderboardSetRelease representation | 

### Return type

[**GameCenterLeaderboardSetReleaseResponse**](GameCenterLeaderboardSetReleaseResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **gameCenterLeaderboardSetReleasesDeleteInstance**
```swift
    open class func gameCenterLeaderboardSetReleasesDeleteInstance(id: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource

GameCenterLeaderboardSetReleasesAPI.gameCenterLeaderboardSetReleasesDeleteInstance(id: id) { (response, error) in
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

# **gameCenterLeaderboardSetReleasesGetInstance**
```swift
    open class func gameCenterLeaderboardSetReleasesGetInstance(id: String, fieldsGameCenterLeaderboardSetReleases: [FieldsGameCenterLeaderboardSetReleases_gameCenterLeaderboardSetReleasesGetInstance]? = nil, include: [Include_gameCenterLeaderboardSetReleasesGetInstance]? = nil, completion: @escaping (_ data: GameCenterLeaderboardSetReleaseResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let fieldsGameCenterLeaderboardSetReleases = ["fieldsGameCenterLeaderboardSetReleases_example"] // [String] | the fields to include for returned resources of type gameCenterLeaderboardSetReleases (optional)
let include = ["include_example"] // [String] | comma-separated list of relationships to include (optional)

GameCenterLeaderboardSetReleasesAPI.gameCenterLeaderboardSetReleasesGetInstance(id: id, fieldsGameCenterLeaderboardSetReleases: fieldsGameCenterLeaderboardSetReleases, include: include) { (response, error) in
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
 **fieldsGameCenterLeaderboardSetReleases** | [**[String]**](String.md) | the fields to include for returned resources of type gameCenterLeaderboardSetReleases | [optional] 
 **include** | [**[String]**](String.md) | comma-separated list of relationships to include | [optional] 

### Return type

[**GameCenterLeaderboardSetReleaseResponse**](GameCenterLeaderboardSetReleaseResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

