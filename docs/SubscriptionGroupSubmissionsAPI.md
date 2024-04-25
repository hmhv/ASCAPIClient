# SubscriptionGroupSubmissionsAPI

All URIs are relative to *https://api.appstoreconnect.apple.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**subscriptionGroupSubmissionsCreateInstance**](SubscriptionGroupSubmissionsAPI.md#subscriptiongroupsubmissionscreateinstance) | **POST** /v1/subscriptionGroupSubmissions | 


# **subscriptionGroupSubmissionsCreateInstance**
```swift
    open class func subscriptionGroupSubmissionsCreateInstance(subscriptionGroupSubmissionCreateRequest: SubscriptionGroupSubmissionCreateRequest, completion: @escaping (_ data: SubscriptionGroupSubmissionResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let subscriptionGroupSubmissionCreateRequest = SubscriptionGroupSubmissionCreateRequest(data: SubscriptionGroupSubmissionCreateRequest_data(type: "type_example", relationships: SubscriptionGroupLocalizationCreateRequest_data_relationships(subscriptionGroup: SubscriptionGroupLocalizationCreateRequest_data_relationships_subscriptionGroup(data: App_relationships_subscriptionGroups_data_inner(type: "type_example", id: "id_example"))))) // SubscriptionGroupSubmissionCreateRequest | SubscriptionGroupSubmission representation

SubscriptionGroupSubmissionsAPI.subscriptionGroupSubmissionsCreateInstance(subscriptionGroupSubmissionCreateRequest: subscriptionGroupSubmissionCreateRequest) { (response, error) in
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
 **subscriptionGroupSubmissionCreateRequest** | [**SubscriptionGroupSubmissionCreateRequest**](SubscriptionGroupSubmissionCreateRequest.md) | SubscriptionGroupSubmission representation | 

### Return type

[**SubscriptionGroupSubmissionResponse**](SubscriptionGroupSubmissionResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

