# AppStoreVersionPromotionsAPI

All URIs are relative to *https://api.appstoreconnect.apple.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**appStoreVersionPromotionsCreateInstance**](AppStoreVersionPromotionsAPI.md#appstoreversionpromotionscreateinstance) | **POST** /v1/appStoreVersionPromotions | 


# **appStoreVersionPromotionsCreateInstance**
```swift
    open class func appStoreVersionPromotionsCreateInstance(appStoreVersionPromotionCreateRequest: AppStoreVersionPromotionCreateRequest, completion: @escaping (_ data: AppStoreVersionPromotionResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let appStoreVersionPromotionCreateRequest = AppStoreVersionPromotionCreateRequest(data: AppStoreVersionPromotionCreateRequest_data(type: "type_example", relationships: AppStoreVersionPromotionCreateRequest_data_relationships(appStoreVersion: AlternativeDistributionPackageCreateRequest_data_relationships_appStoreVersion(data: AlternativeDistributionPackageCreateRequest_data_relationships_appStoreVersion_data(type: "type_example", id: "id_example")), appStoreVersionExperimentTreatment: AppStoreVersionExperimentTreatmentLocalizationCreateRequest_data_relationships_appStoreVersionExperimentTreatment(data: AppStoreVersionExperimentTreatmentLocalization_relationships_appStoreVersionExperimentTreatment_data(type: "type_example", id: "id_example"))))) // AppStoreVersionPromotionCreateRequest | AppStoreVersionPromotion representation

AppStoreVersionPromotionsAPI.appStoreVersionPromotionsCreateInstance(appStoreVersionPromotionCreateRequest: appStoreVersionPromotionCreateRequest) { (response, error) in
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
 **appStoreVersionPromotionCreateRequest** | [**AppStoreVersionPromotionCreateRequest**](AppStoreVersionPromotionCreateRequest.md) | AppStoreVersionPromotion representation | 

### Return type

[**AppStoreVersionPromotionResponse**](AppStoreVersionPromotionResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

