# GameCenterLeaderboardEntrySubmissionsAPI

All URIs are relative to *https://api.appstoreconnect.apple.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**gameCenterLeaderboardEntrySubmissionsCreateInstance**](GameCenterLeaderboardEntrySubmissionsAPI.md#gamecenterleaderboardentrysubmissionscreateinstance) | **POST** /v1/gameCenterLeaderboardEntrySubmissions | 


# **gameCenterLeaderboardEntrySubmissionsCreateInstance**
```swift
    open class func gameCenterLeaderboardEntrySubmissionsCreateInstance(gameCenterLeaderboardEntrySubmissionCreateRequest: GameCenterLeaderboardEntrySubmissionCreateRequest, completion: @escaping (_ data: GameCenterLeaderboardEntrySubmissionResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let gameCenterLeaderboardEntrySubmissionCreateRequest = GameCenterLeaderboardEntrySubmissionCreateRequest(data: GameCenterLeaderboardEntrySubmissionCreateRequest_data(type: "type_example", attributes: GameCenterLeaderboardEntrySubmissionCreateRequest_data_attributes(bundleId: "bundleId_example", challengeIds: ["challengeIds_example"], context: 123, scopedPlayerId: "scopedPlayerId_example", score: 123, submittedDate: Date(), vendorIdentifier: "vendorIdentifier_example"))) // GameCenterLeaderboardEntrySubmissionCreateRequest | GameCenterLeaderboardEntrySubmission representation

GameCenterLeaderboardEntrySubmissionsAPI.gameCenterLeaderboardEntrySubmissionsCreateInstance(gameCenterLeaderboardEntrySubmissionCreateRequest: gameCenterLeaderboardEntrySubmissionCreateRequest) { (response, error) in
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
 **gameCenterLeaderboardEntrySubmissionCreateRequest** | [**GameCenterLeaderboardEntrySubmissionCreateRequest**](GameCenterLeaderboardEntrySubmissionCreateRequest.md) | GameCenterLeaderboardEntrySubmission representation | 

### Return type

[**GameCenterLeaderboardEntrySubmissionResponse**](GameCenterLeaderboardEntrySubmissionResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

