# InAppPurchaseSubmissionsAPI

All URIs are relative to *https://api.appstoreconnect.apple.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**inAppPurchaseSubmissionsCreateInstance**](InAppPurchaseSubmissionsAPI.md#inapppurchasesubmissionscreateinstance) | **POST** /v1/inAppPurchaseSubmissions | 


# **inAppPurchaseSubmissionsCreateInstance**
```swift
    open class func inAppPurchaseSubmissionsCreateInstance(inAppPurchaseSubmissionCreateRequest: InAppPurchaseSubmissionCreateRequest, completion: @escaping (_ data: InAppPurchaseSubmissionResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let inAppPurchaseSubmissionCreateRequest = InAppPurchaseSubmissionCreateRequest(data: InAppPurchaseSubmissionCreateRequest_data(type: "type_example", relationships: InAppPurchaseAppStoreReviewScreenshotCreateRequest_data_relationships(inAppPurchaseV2: InAppPurchaseAppStoreReviewScreenshotCreateRequest_data_relationships_inAppPurchaseV2(data: App_relationships_inAppPurchases_data_inner(type: "type_example", id: "id_example"))))) // InAppPurchaseSubmissionCreateRequest | InAppPurchaseSubmission representation

InAppPurchaseSubmissionsAPI.inAppPurchaseSubmissionsCreateInstance(inAppPurchaseSubmissionCreateRequest: inAppPurchaseSubmissionCreateRequest) { (response, error) in
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
 **inAppPurchaseSubmissionCreateRequest** | [**InAppPurchaseSubmissionCreateRequest**](InAppPurchaseSubmissionCreateRequest.md) | InAppPurchaseSubmission representation | 

### Return type

[**InAppPurchaseSubmissionResponse**](InAppPurchaseSubmissionResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

