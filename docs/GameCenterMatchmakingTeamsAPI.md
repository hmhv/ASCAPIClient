# GameCenterMatchmakingTeamsAPI

All URIs are relative to *https://api.appstoreconnect.apple.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**gameCenterMatchmakingTeamsCreateInstance**](GameCenterMatchmakingTeamsAPI.md#gamecentermatchmakingteamscreateinstance) | **POST** /v1/gameCenterMatchmakingTeams | 
[**gameCenterMatchmakingTeamsDeleteInstance**](GameCenterMatchmakingTeamsAPI.md#gamecentermatchmakingteamsdeleteinstance) | **DELETE** /v1/gameCenterMatchmakingTeams/{id} | 
[**gameCenterMatchmakingTeamsUpdateInstance**](GameCenterMatchmakingTeamsAPI.md#gamecentermatchmakingteamsupdateinstance) | **PATCH** /v1/gameCenterMatchmakingTeams/{id} | 


# **gameCenterMatchmakingTeamsCreateInstance**
```swift
    open class func gameCenterMatchmakingTeamsCreateInstance(gameCenterMatchmakingTeamCreateRequest: GameCenterMatchmakingTeamCreateRequest, completion: @escaping (_ data: GameCenterMatchmakingTeamResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let gameCenterMatchmakingTeamCreateRequest = GameCenterMatchmakingTeamCreateRequest(data: GameCenterMatchmakingTeamCreateRequest_data(type: "type_example", attributes: GameCenterMatchmakingTeamCreateRequest_data_attributes(referenceName: "referenceName_example", minPlayers: 123, maxPlayers: 123), relationships: GameCenterMatchmakingRuleCreateRequest_data_relationships(ruleSet: GameCenterMatchmakingQueueCreateRequest_data_relationships_ruleSet(data: GameCenterMatchmakingQueue_relationships_ruleSet_data(type: "type_example", id: "id_example"))))) // GameCenterMatchmakingTeamCreateRequest | GameCenterMatchmakingTeam representation

GameCenterMatchmakingTeamsAPI.gameCenterMatchmakingTeamsCreateInstance(gameCenterMatchmakingTeamCreateRequest: gameCenterMatchmakingTeamCreateRequest) { (response, error) in
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
 **gameCenterMatchmakingTeamCreateRequest** | [**GameCenterMatchmakingTeamCreateRequest**](GameCenterMatchmakingTeamCreateRequest.md) | GameCenterMatchmakingTeam representation | 

### Return type

[**GameCenterMatchmakingTeamResponse**](GameCenterMatchmakingTeamResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **gameCenterMatchmakingTeamsDeleteInstance**
```swift
    open class func gameCenterMatchmakingTeamsDeleteInstance(id: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource

GameCenterMatchmakingTeamsAPI.gameCenterMatchmakingTeamsDeleteInstance(id: id) { (response, error) in
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

# **gameCenterMatchmakingTeamsUpdateInstance**
```swift
    open class func gameCenterMatchmakingTeamsUpdateInstance(id: String, gameCenterMatchmakingTeamUpdateRequest: GameCenterMatchmakingTeamUpdateRequest, completion: @escaping (_ data: GameCenterMatchmakingTeamResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let gameCenterMatchmakingTeamUpdateRequest = GameCenterMatchmakingTeamUpdateRequest(data: GameCenterMatchmakingTeamUpdateRequest_data(type: "type_example", id: "id_example", attributes: GameCenterMatchmakingRuleSetUpdateRequest_data_attributes(minPlayers: 123, maxPlayers: 123))) // GameCenterMatchmakingTeamUpdateRequest | GameCenterMatchmakingTeam representation

GameCenterMatchmakingTeamsAPI.gameCenterMatchmakingTeamsUpdateInstance(id: id, gameCenterMatchmakingTeamUpdateRequest: gameCenterMatchmakingTeamUpdateRequest) { (response, error) in
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
 **gameCenterMatchmakingTeamUpdateRequest** | [**GameCenterMatchmakingTeamUpdateRequest**](GameCenterMatchmakingTeamUpdateRequest.md) | GameCenterMatchmakingTeam representation | 

### Return type

[**GameCenterMatchmakingTeamResponse**](GameCenterMatchmakingTeamResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

