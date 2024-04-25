# GameCenterMatchmakingRuleSetTestsAPI

All URIs are relative to *https://api.appstoreconnect.apple.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**gameCenterMatchmakingRuleSetTestsCreateInstance**](GameCenterMatchmakingRuleSetTestsAPI.md#gamecentermatchmakingrulesettestscreateinstance) | **POST** /v1/gameCenterMatchmakingRuleSetTests | 


# **gameCenterMatchmakingRuleSetTestsCreateInstance**
```swift
    open class func gameCenterMatchmakingRuleSetTestsCreateInstance(gameCenterMatchmakingRuleSetTestCreateRequest: GameCenterMatchmakingRuleSetTestCreateRequest, completion: @escaping (_ data: GameCenterMatchmakingRuleSetTestResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let gameCenterMatchmakingRuleSetTestCreateRequest = GameCenterMatchmakingRuleSetTestCreateRequest(data: GameCenterMatchmakingRuleSetTestCreateRequest_data(type: "type_example", relationships: GameCenterMatchmakingRuleSetTestCreateRequest_data_relationships(matchmakingRuleSet: GameCenterMatchmakingQueueCreateRequest_data_relationships_ruleSet(data: GameCenterMatchmakingQueue_relationships_ruleSet_data(type: "type_example", id: "id_example")), matchmakingRequests: GameCenterMatchmakingRuleSetTestCreateRequest_data_relationships_matchmakingRequests(data: [GameCenterMatchmakingRuleSetTestCreateRequest_data_relationships_matchmakingRequests_data_inner(type: "type_example", id: "id_example")]))), included: [GameCenterMatchmakingRuleSetTestCreateRequest_included_inner(type: "type_example", id: "id_example", attributes: GameCenterMatchmakingTestRequestInlineCreate_attributes(requestName: "requestName_example", secondsInQueue: 123, locale: "locale_example", location: Location(latitude: 123, longitude: 123), minPlayers: 123, maxPlayers: 123, playerCount: 123, bundleId: "bundleId_example", platform: Platform(), appVersion: "appVersion_example"), relationships: GameCenterMatchmakingTestRequestInlineCreate_relationships(matchmakingPlayerProperties: GameCenterMatchmakingTestRequestInlineCreate_relationships_matchmakingPlayerProperties(data: [GameCenterMatchmakingTestRequestInlineCreate_relationships_matchmakingPlayerProperties_data_inner(type: "type_example", id: "id_example")])))]) // GameCenterMatchmakingRuleSetTestCreateRequest | GameCenterMatchmakingRuleSetTest representation

GameCenterMatchmakingRuleSetTestsAPI.gameCenterMatchmakingRuleSetTestsCreateInstance(gameCenterMatchmakingRuleSetTestCreateRequest: gameCenterMatchmakingRuleSetTestCreateRequest) { (response, error) in
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
 **gameCenterMatchmakingRuleSetTestCreateRequest** | [**GameCenterMatchmakingRuleSetTestCreateRequest**](GameCenterMatchmakingRuleSetTestCreateRequest.md) | GameCenterMatchmakingRuleSetTest representation | 

### Return type

[**GameCenterMatchmakingRuleSetTestResponse**](GameCenterMatchmakingRuleSetTestResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

