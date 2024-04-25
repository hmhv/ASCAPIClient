# SubscriptionSubmissionsAPI

All URIs are relative to *https://api.appstoreconnect.apple.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**subscriptionSubmissionsCreateInstance**](SubscriptionSubmissionsAPI.md#subscriptionsubmissionscreateinstance) | **POST** /v1/subscriptionSubmissions | 


# **subscriptionSubmissionsCreateInstance**
```swift
    open class func subscriptionSubmissionsCreateInstance(subscriptionSubmissionCreateRequest: SubscriptionSubmissionCreateRequest, completion: @escaping (_ data: SubscriptionSubmissionResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let subscriptionSubmissionCreateRequest = SubscriptionSubmissionCreateRequest(data: SubscriptionSubmissionCreateRequest_data(type: "type_example", relationships: SubscriptionAppStoreReviewScreenshotCreateRequest_data_relationships(subscription: SubscriptionAppStoreReviewScreenshotCreateRequest_data_relationships_subscription(data: PromotedPurchase_relationships_subscription_data(type: "type_example", id: "id_example"))))) // SubscriptionSubmissionCreateRequest | SubscriptionSubmission representation

SubscriptionSubmissionsAPI.subscriptionSubmissionsCreateInstance(subscriptionSubmissionCreateRequest: subscriptionSubmissionCreateRequest) { (response, error) in
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
 **subscriptionSubmissionCreateRequest** | [**SubscriptionSubmissionCreateRequest**](SubscriptionSubmissionCreateRequest.md) | SubscriptionSubmission representation | 

### Return type

[**SubscriptionSubmissionResponse**](SubscriptionSubmissionResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

