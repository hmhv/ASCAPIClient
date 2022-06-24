# BuildBetaNotificationsAPI

All URIs are relative to *https://api.appstoreconnect.apple.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**buildBetaNotificationsCreateInstance**](BuildBetaNotificationsAPI.md#buildbetanotificationscreateinstance) | **POST** /v1/buildBetaNotifications | 


# **buildBetaNotificationsCreateInstance**
```swift
    open class func buildBetaNotificationsCreateInstance(buildBetaNotificationCreateRequest: BuildBetaNotificationCreateRequest, completion: @escaping (_ data: BuildBetaNotificationResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let buildBetaNotificationCreateRequest = BuildBetaNotificationCreateRequest(data: BuildBetaNotificationCreateRequest_data(type: "type_example", relationships: BetaAppReviewSubmissionCreateRequest_data_relationships(build: BetaAppReviewSubmissionCreateRequest_data_relationships_build(data: AppStoreVersion_relationships_build_data(type: "type_example", id: "id_example"))))) // BuildBetaNotificationCreateRequest | BuildBetaNotification representation

BuildBetaNotificationsAPI.buildBetaNotificationsCreateInstance(buildBetaNotificationCreateRequest: buildBetaNotificationCreateRequest) { (response, error) in
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
 **buildBetaNotificationCreateRequest** | [**BuildBetaNotificationCreateRequest**](BuildBetaNotificationCreateRequest.md) | BuildBetaNotification representation | 

### Return type

[**BuildBetaNotificationResponse**](BuildBetaNotificationResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

