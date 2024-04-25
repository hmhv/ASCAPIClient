# GameCenterPlayerAchievementSubmissionsAPI

All URIs are relative to *https://api.appstoreconnect.apple.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**gameCenterPlayerAchievementSubmissionsCreateInstance**](GameCenterPlayerAchievementSubmissionsAPI.md#gamecenterplayerachievementsubmissionscreateinstance) | **POST** /v1/gameCenterPlayerAchievementSubmissions | 


# **gameCenterPlayerAchievementSubmissionsCreateInstance**
```swift
    open class func gameCenterPlayerAchievementSubmissionsCreateInstance(gameCenterPlayerAchievementSubmissionCreateRequest: GameCenterPlayerAchievementSubmissionCreateRequest, completion: @escaping (_ data: GameCenterPlayerAchievementSubmissionResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let gameCenterPlayerAchievementSubmissionCreateRequest = GameCenterPlayerAchievementSubmissionCreateRequest(data: GameCenterPlayerAchievementSubmissionCreateRequest_data(type: "type_example", attributes: GameCenterPlayerAchievementSubmissionCreateRequest_data_attributes(bundleId: "bundleId_example", challengeIds: ["challengeIds_example"], percentageAchieved: 123, scopedPlayerId: "scopedPlayerId_example", submittedDate: Date(), vendorIdentifier: "vendorIdentifier_example"))) // GameCenterPlayerAchievementSubmissionCreateRequest | GameCenterPlayerAchievementSubmission representation

GameCenterPlayerAchievementSubmissionsAPI.gameCenterPlayerAchievementSubmissionsCreateInstance(gameCenterPlayerAchievementSubmissionCreateRequest: gameCenterPlayerAchievementSubmissionCreateRequest) { (response, error) in
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
 **gameCenterPlayerAchievementSubmissionCreateRequest** | [**GameCenterPlayerAchievementSubmissionCreateRequest**](GameCenterPlayerAchievementSubmissionCreateRequest.md) | GameCenterPlayerAchievementSubmission representation | 

### Return type

[**GameCenterPlayerAchievementSubmissionResponse**](GameCenterPlayerAchievementSubmissionResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

