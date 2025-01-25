# InAppPurchasesAPI

All URIs are relative to *https://api.appstoreconnect.apple.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**inAppPurchasesGetInstance**](InAppPurchasesAPI.md#inapppurchasesgetinstance) | **GET** /v1/inAppPurchases/{id} | 
[**inAppPurchasesV2AppStoreReviewScreenshotGetToOneRelated**](InAppPurchasesAPI.md#inapppurchasesv2appstorereviewscreenshotgettoonerelated) | **GET** /v2/inAppPurchases/{id}/appStoreReviewScreenshot | 
[**inAppPurchasesV2ContentGetToOneRelated**](InAppPurchasesAPI.md#inapppurchasesv2contentgettoonerelated) | **GET** /v2/inAppPurchases/{id}/content | 
[**inAppPurchasesV2CreateInstance**](InAppPurchasesAPI.md#inapppurchasesv2createinstance) | **POST** /v2/inAppPurchases | 
[**inAppPurchasesV2DeleteInstance**](InAppPurchasesAPI.md#inapppurchasesv2deleteinstance) | **DELETE** /v2/inAppPurchases/{id} | 
[**inAppPurchasesV2GetInstance**](InAppPurchasesAPI.md#inapppurchasesv2getinstance) | **GET** /v2/inAppPurchases/{id} | 
[**inAppPurchasesV2IapPriceScheduleGetToOneRelated**](InAppPurchasesAPI.md#inapppurchasesv2iappriceschedulegettoonerelated) | **GET** /v2/inAppPurchases/{id}/iapPriceSchedule | 
[**inAppPurchasesV2ImagesGetToManyRelated**](InAppPurchasesAPI.md#inapppurchasesv2imagesgettomanyrelated) | **GET** /v2/inAppPurchases/{id}/images | 
[**inAppPurchasesV2InAppPurchaseAvailabilityGetToOneRelated**](InAppPurchasesAPI.md#inapppurchasesv2inapppurchaseavailabilitygettoonerelated) | **GET** /v2/inAppPurchases/{id}/inAppPurchaseAvailability | 
[**inAppPurchasesV2InAppPurchaseLocalizationsGetToManyRelated**](InAppPurchasesAPI.md#inapppurchasesv2inapppurchaselocalizationsgettomanyrelated) | **GET** /v2/inAppPurchases/{id}/inAppPurchaseLocalizations | 
[**inAppPurchasesV2PricePointsGetToManyRelated**](InAppPurchasesAPI.md#inapppurchasesv2pricepointsgettomanyrelated) | **GET** /v2/inAppPurchases/{id}/pricePoints | 
[**inAppPurchasesV2PromotedPurchaseGetToOneRelated**](InAppPurchasesAPI.md#inapppurchasesv2promotedpurchasegettoonerelated) | **GET** /v2/inAppPurchases/{id}/promotedPurchase | 
[**inAppPurchasesV2UpdateInstance**](InAppPurchasesAPI.md#inapppurchasesv2updateinstance) | **PATCH** /v2/inAppPurchases/{id} | 


# **inAppPurchasesGetInstance**
```swift
    open class func inAppPurchasesGetInstance(id: String, fieldsInAppPurchases: [FieldsInAppPurchases_inAppPurchasesGetInstance]? = nil, include: [Include_inAppPurchasesGetInstance]? = nil, limitApps: Int? = nil, completion: @escaping (_ data: InAppPurchaseResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let fieldsInAppPurchases = ["fieldsInAppPurchases_example"] // [String] | the fields to include for returned resources of type inAppPurchases (optional)
let include = ["include_example"] // [String] | comma-separated list of relationships to include (optional)
let limitApps = 987 // Int | maximum number of related apps returned (when they are included) (optional)

InAppPurchasesAPI.inAppPurchasesGetInstance(id: id, fieldsInAppPurchases: fieldsInAppPurchases, include: include, limitApps: limitApps) { (response, error) in
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
 **fieldsInAppPurchases** | [**[String]**](String.md) | the fields to include for returned resources of type inAppPurchases | [optional] 
 **include** | [**[String]**](String.md) | comma-separated list of relationships to include | [optional] 
 **limitApps** | **Int** | maximum number of related apps returned (when they are included) | [optional] 

### Return type

[**InAppPurchaseResponse**](InAppPurchaseResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **inAppPurchasesV2AppStoreReviewScreenshotGetToOneRelated**
```swift
    open class func inAppPurchasesV2AppStoreReviewScreenshotGetToOneRelated(id: String, fieldsInAppPurchaseAppStoreReviewScreenshots: [FieldsInAppPurchaseAppStoreReviewScreenshots_inAppPurchasesV2AppStoreReviewScreenshotGetToOneRelated]? = nil, fieldsInAppPurchases: [FieldsInAppPurchases_inAppPurchasesV2AppStoreReviewScreenshotGetToOneRelated]? = nil, include: [Include_inAppPurchasesV2AppStoreReviewScreenshotGetToOneRelated]? = nil, completion: @escaping (_ data: InAppPurchaseAppStoreReviewScreenshotResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let fieldsInAppPurchaseAppStoreReviewScreenshots = ["fieldsInAppPurchaseAppStoreReviewScreenshots_example"] // [String] | the fields to include for returned resources of type inAppPurchaseAppStoreReviewScreenshots (optional)
let fieldsInAppPurchases = ["fieldsInAppPurchases_example"] // [String] | the fields to include for returned resources of type inAppPurchases (optional)
let include = ["include_example"] // [String] | comma-separated list of relationships to include (optional)

InAppPurchasesAPI.inAppPurchasesV2AppStoreReviewScreenshotGetToOneRelated(id: id, fieldsInAppPurchaseAppStoreReviewScreenshots: fieldsInAppPurchaseAppStoreReviewScreenshots, fieldsInAppPurchases: fieldsInAppPurchases, include: include) { (response, error) in
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
 **fieldsInAppPurchaseAppStoreReviewScreenshots** | [**[String]**](String.md) | the fields to include for returned resources of type inAppPurchaseAppStoreReviewScreenshots | [optional] 
 **fieldsInAppPurchases** | [**[String]**](String.md) | the fields to include for returned resources of type inAppPurchases | [optional] 
 **include** | [**[String]**](String.md) | comma-separated list of relationships to include | [optional] 

### Return type

[**InAppPurchaseAppStoreReviewScreenshotResponse**](InAppPurchaseAppStoreReviewScreenshotResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **inAppPurchasesV2ContentGetToOneRelated**
```swift
    open class func inAppPurchasesV2ContentGetToOneRelated(id: String, fieldsInAppPurchaseContents: [FieldsInAppPurchaseContents_inAppPurchasesV2ContentGetToOneRelated]? = nil, fieldsInAppPurchases: [FieldsInAppPurchases_inAppPurchasesV2ContentGetToOneRelated]? = nil, include: [Include_inAppPurchasesV2ContentGetToOneRelated]? = nil, completion: @escaping (_ data: InAppPurchaseContentResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let fieldsInAppPurchaseContents = ["fieldsInAppPurchaseContents_example"] // [String] | the fields to include for returned resources of type inAppPurchaseContents (optional)
let fieldsInAppPurchases = ["fieldsInAppPurchases_example"] // [String] | the fields to include for returned resources of type inAppPurchases (optional)
let include = ["include_example"] // [String] | comma-separated list of relationships to include (optional)

InAppPurchasesAPI.inAppPurchasesV2ContentGetToOneRelated(id: id, fieldsInAppPurchaseContents: fieldsInAppPurchaseContents, fieldsInAppPurchases: fieldsInAppPurchases, include: include) { (response, error) in
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
 **fieldsInAppPurchaseContents** | [**[String]**](String.md) | the fields to include for returned resources of type inAppPurchaseContents | [optional] 
 **fieldsInAppPurchases** | [**[String]**](String.md) | the fields to include for returned resources of type inAppPurchases | [optional] 
 **include** | [**[String]**](String.md) | comma-separated list of relationships to include | [optional] 

### Return type

[**InAppPurchaseContentResponse**](InAppPurchaseContentResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **inAppPurchasesV2CreateInstance**
```swift
    open class func inAppPurchasesV2CreateInstance(inAppPurchaseV2CreateRequest: InAppPurchaseV2CreateRequest, completion: @escaping (_ data: InAppPurchaseV2Response?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let inAppPurchaseV2CreateRequest = InAppPurchaseV2CreateRequest(data: InAppPurchaseV2CreateRequest_data(type: "type_example", attributes: InAppPurchaseV2CreateRequest_data_attributes(name: "name_example", productId: "productId_example", inAppPurchaseType: InAppPurchaseType(), reviewNote: "reviewNote_example", familySharable: false), relationships: AnalyticsReportRequestCreateRequest_data_relationships(app: AnalyticsReportRequestCreateRequest_data_relationships_app(data: AlternativeDistributionKeyCreateRequest_data_relationships_app_data(type: "type_example", id: "id_example"))))) // InAppPurchaseV2CreateRequest | InAppPurchase representation

InAppPurchasesAPI.inAppPurchasesV2CreateInstance(inAppPurchaseV2CreateRequest: inAppPurchaseV2CreateRequest) { (response, error) in
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
 **inAppPurchaseV2CreateRequest** | [**InAppPurchaseV2CreateRequest**](InAppPurchaseV2CreateRequest.md) | InAppPurchase representation | 

### Return type

[**InAppPurchaseV2Response**](InAppPurchaseV2Response.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **inAppPurchasesV2DeleteInstance**
```swift
    open class func inAppPurchasesV2DeleteInstance(id: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource

InAppPurchasesAPI.inAppPurchasesV2DeleteInstance(id: id) { (response, error) in
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

# **inAppPurchasesV2GetInstance**
```swift
    open class func inAppPurchasesV2GetInstance(id: String, fieldsInAppPurchases: [FieldsInAppPurchases_inAppPurchasesV2GetInstance]? = nil, fieldsInAppPurchaseLocalizations: [FieldsInAppPurchaseLocalizations_inAppPurchasesV2GetInstance]? = nil, fieldsInAppPurchasePricePoints: [FieldsInAppPurchasePricePoints_inAppPurchasesV2GetInstance]? = nil, fieldsInAppPurchaseContents: [FieldsInAppPurchaseContents_inAppPurchasesV2GetInstance]? = nil, fieldsInAppPurchaseAppStoreReviewScreenshots: [FieldsInAppPurchaseAppStoreReviewScreenshots_inAppPurchasesV2GetInstance]? = nil, fieldsPromotedPurchases: [FieldsPromotedPurchases_inAppPurchasesV2GetInstance]? = nil, fieldsInAppPurchasePriceSchedules: [FieldsInAppPurchasePriceSchedules_inAppPurchasesV2GetInstance]? = nil, fieldsInAppPurchaseAvailabilities: [FieldsInAppPurchaseAvailabilities_inAppPurchasesV2GetInstance]? = nil, fieldsInAppPurchaseImages: [FieldsInAppPurchaseImages_inAppPurchasesV2GetInstance]? = nil, include: [Include_inAppPurchasesV2GetInstance]? = nil, limitImages: Int? = nil, limitInAppPurchaseLocalizations: Int? = nil, limitPricePoints: Int? = nil, completion: @escaping (_ data: InAppPurchaseV2Response?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let fieldsInAppPurchases = ["fieldsInAppPurchases_example"] // [String] | the fields to include for returned resources of type inAppPurchases (optional)
let fieldsInAppPurchaseLocalizations = ["fieldsInAppPurchaseLocalizations_example"] // [String] | the fields to include for returned resources of type inAppPurchaseLocalizations (optional)
let fieldsInAppPurchasePricePoints = ["fieldsInAppPurchasePricePoints_example"] // [String] | the fields to include for returned resources of type inAppPurchasePricePoints (optional)
let fieldsInAppPurchaseContents = ["fieldsInAppPurchaseContents_example"] // [String] | the fields to include for returned resources of type inAppPurchaseContents (optional)
let fieldsInAppPurchaseAppStoreReviewScreenshots = ["fieldsInAppPurchaseAppStoreReviewScreenshots_example"] // [String] | the fields to include for returned resources of type inAppPurchaseAppStoreReviewScreenshots (optional)
let fieldsPromotedPurchases = ["fieldsPromotedPurchases_example"] // [String] | the fields to include for returned resources of type promotedPurchases (optional)
let fieldsInAppPurchasePriceSchedules = ["fieldsInAppPurchasePriceSchedules_example"] // [String] | the fields to include for returned resources of type inAppPurchasePriceSchedules (optional)
let fieldsInAppPurchaseAvailabilities = ["fieldsInAppPurchaseAvailabilities_example"] // [String] | the fields to include for returned resources of type inAppPurchaseAvailabilities (optional)
let fieldsInAppPurchaseImages = ["fieldsInAppPurchaseImages_example"] // [String] | the fields to include for returned resources of type inAppPurchaseImages (optional)
let include = ["include_example"] // [String] | comma-separated list of relationships to include (optional)
let limitImages = 987 // Int | maximum number of related images returned (when they are included) (optional)
let limitInAppPurchaseLocalizations = 987 // Int | maximum number of related inAppPurchaseLocalizations returned (when they are included) (optional)
let limitPricePoints = 987 // Int | maximum number of related pricePoints returned (when they are included) (optional)

InAppPurchasesAPI.inAppPurchasesV2GetInstance(id: id, fieldsInAppPurchases: fieldsInAppPurchases, fieldsInAppPurchaseLocalizations: fieldsInAppPurchaseLocalizations, fieldsInAppPurchasePricePoints: fieldsInAppPurchasePricePoints, fieldsInAppPurchaseContents: fieldsInAppPurchaseContents, fieldsInAppPurchaseAppStoreReviewScreenshots: fieldsInAppPurchaseAppStoreReviewScreenshots, fieldsPromotedPurchases: fieldsPromotedPurchases, fieldsInAppPurchasePriceSchedules: fieldsInAppPurchasePriceSchedules, fieldsInAppPurchaseAvailabilities: fieldsInAppPurchaseAvailabilities, fieldsInAppPurchaseImages: fieldsInAppPurchaseImages, include: include, limitImages: limitImages, limitInAppPurchaseLocalizations: limitInAppPurchaseLocalizations, limitPricePoints: limitPricePoints) { (response, error) in
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
 **fieldsInAppPurchases** | [**[String]**](String.md) | the fields to include for returned resources of type inAppPurchases | [optional] 
 **fieldsInAppPurchaseLocalizations** | [**[String]**](String.md) | the fields to include for returned resources of type inAppPurchaseLocalizations | [optional] 
 **fieldsInAppPurchasePricePoints** | [**[String]**](String.md) | the fields to include for returned resources of type inAppPurchasePricePoints | [optional] 
 **fieldsInAppPurchaseContents** | [**[String]**](String.md) | the fields to include for returned resources of type inAppPurchaseContents | [optional] 
 **fieldsInAppPurchaseAppStoreReviewScreenshots** | [**[String]**](String.md) | the fields to include for returned resources of type inAppPurchaseAppStoreReviewScreenshots | [optional] 
 **fieldsPromotedPurchases** | [**[String]**](String.md) | the fields to include for returned resources of type promotedPurchases | [optional] 
 **fieldsInAppPurchasePriceSchedules** | [**[String]**](String.md) | the fields to include for returned resources of type inAppPurchasePriceSchedules | [optional] 
 **fieldsInAppPurchaseAvailabilities** | [**[String]**](String.md) | the fields to include for returned resources of type inAppPurchaseAvailabilities | [optional] 
 **fieldsInAppPurchaseImages** | [**[String]**](String.md) | the fields to include for returned resources of type inAppPurchaseImages | [optional] 
 **include** | [**[String]**](String.md) | comma-separated list of relationships to include | [optional] 
 **limitImages** | **Int** | maximum number of related images returned (when they are included) | [optional] 
 **limitInAppPurchaseLocalizations** | **Int** | maximum number of related inAppPurchaseLocalizations returned (when they are included) | [optional] 
 **limitPricePoints** | **Int** | maximum number of related pricePoints returned (when they are included) | [optional] 

### Return type

[**InAppPurchaseV2Response**](InAppPurchaseV2Response.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **inAppPurchasesV2IapPriceScheduleGetToOneRelated**
```swift
    open class func inAppPurchasesV2IapPriceScheduleGetToOneRelated(id: String, fieldsInAppPurchasePriceSchedules: [FieldsInAppPurchasePriceSchedules_inAppPurchasesV2IapPriceScheduleGetToOneRelated]? = nil, fieldsTerritories: [FieldsTerritories_inAppPurchasesV2IapPriceScheduleGetToOneRelated]? = nil, fieldsInAppPurchasePrices: [FieldsInAppPurchasePrices_inAppPurchasesV2IapPriceScheduleGetToOneRelated]? = nil, include: [Include_inAppPurchasesV2IapPriceScheduleGetToOneRelated]? = nil, limitManualPrices: Int? = nil, limitAutomaticPrices: Int? = nil, completion: @escaping (_ data: InAppPurchasePriceScheduleResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let fieldsInAppPurchasePriceSchedules = ["fieldsInAppPurchasePriceSchedules_example"] // [String] | the fields to include for returned resources of type inAppPurchasePriceSchedules (optional)
let fieldsTerritories = ["fieldsTerritories_example"] // [String] | the fields to include for returned resources of type territories (optional)
let fieldsInAppPurchasePrices = ["fieldsInAppPurchasePrices_example"] // [String] | the fields to include for returned resources of type inAppPurchasePrices (optional)
let include = ["include_example"] // [String] | comma-separated list of relationships to include (optional)
let limitManualPrices = 987 // Int | maximum number of related manualPrices returned (when they are included) (optional)
let limitAutomaticPrices = 987 // Int | maximum number of related automaticPrices returned (when they are included) (optional)

InAppPurchasesAPI.inAppPurchasesV2IapPriceScheduleGetToOneRelated(id: id, fieldsInAppPurchasePriceSchedules: fieldsInAppPurchasePriceSchedules, fieldsTerritories: fieldsTerritories, fieldsInAppPurchasePrices: fieldsInAppPurchasePrices, include: include, limitManualPrices: limitManualPrices, limitAutomaticPrices: limitAutomaticPrices) { (response, error) in
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
 **fieldsInAppPurchasePriceSchedules** | [**[String]**](String.md) | the fields to include for returned resources of type inAppPurchasePriceSchedules | [optional] 
 **fieldsTerritories** | [**[String]**](String.md) | the fields to include for returned resources of type territories | [optional] 
 **fieldsInAppPurchasePrices** | [**[String]**](String.md) | the fields to include for returned resources of type inAppPurchasePrices | [optional] 
 **include** | [**[String]**](String.md) | comma-separated list of relationships to include | [optional] 
 **limitManualPrices** | **Int** | maximum number of related manualPrices returned (when they are included) | [optional] 
 **limitAutomaticPrices** | **Int** | maximum number of related automaticPrices returned (when they are included) | [optional] 

### Return type

[**InAppPurchasePriceScheduleResponse**](InAppPurchasePriceScheduleResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **inAppPurchasesV2ImagesGetToManyRelated**
```swift
    open class func inAppPurchasesV2ImagesGetToManyRelated(id: String, fieldsInAppPurchaseImages: [FieldsInAppPurchaseImages_inAppPurchasesV2ImagesGetToManyRelated]? = nil, fieldsInAppPurchases: [FieldsInAppPurchases_inAppPurchasesV2ImagesGetToManyRelated]? = nil, limit: Int? = nil, include: [Include_inAppPurchasesV2ImagesGetToManyRelated]? = nil, completion: @escaping (_ data: InAppPurchaseImagesResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let fieldsInAppPurchaseImages = ["fieldsInAppPurchaseImages_example"] // [String] | the fields to include for returned resources of type inAppPurchaseImages (optional)
let fieldsInAppPurchases = ["fieldsInAppPurchases_example"] // [String] | the fields to include for returned resources of type inAppPurchases (optional)
let limit = 987 // Int | maximum resources per page (optional)
let include = ["include_example"] // [String] | comma-separated list of relationships to include (optional)

InAppPurchasesAPI.inAppPurchasesV2ImagesGetToManyRelated(id: id, fieldsInAppPurchaseImages: fieldsInAppPurchaseImages, fieldsInAppPurchases: fieldsInAppPurchases, limit: limit, include: include) { (response, error) in
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
 **fieldsInAppPurchaseImages** | [**[String]**](String.md) | the fields to include for returned resources of type inAppPurchaseImages | [optional] 
 **fieldsInAppPurchases** | [**[String]**](String.md) | the fields to include for returned resources of type inAppPurchases | [optional] 
 **limit** | **Int** | maximum resources per page | [optional] 
 **include** | [**[String]**](String.md) | comma-separated list of relationships to include | [optional] 

### Return type

[**InAppPurchaseImagesResponse**](InAppPurchaseImagesResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **inAppPurchasesV2InAppPurchaseAvailabilityGetToOneRelated**
```swift
    open class func inAppPurchasesV2InAppPurchaseAvailabilityGetToOneRelated(id: String, fieldsInAppPurchaseAvailabilities: [FieldsInAppPurchaseAvailabilities_inAppPurchasesV2InAppPurchaseAvailabilityGetToOneRelated]? = nil, fieldsTerritories: [FieldsTerritories_inAppPurchasesV2InAppPurchaseAvailabilityGetToOneRelated]? = nil, include: [Include_inAppPurchasesV2InAppPurchaseAvailabilityGetToOneRelated]? = nil, limitAvailableTerritories: Int? = nil, completion: @escaping (_ data: InAppPurchaseAvailabilityResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let fieldsInAppPurchaseAvailabilities = ["fieldsInAppPurchaseAvailabilities_example"] // [String] | the fields to include for returned resources of type inAppPurchaseAvailabilities (optional)
let fieldsTerritories = ["fieldsTerritories_example"] // [String] | the fields to include for returned resources of type territories (optional)
let include = ["include_example"] // [String] | comma-separated list of relationships to include (optional)
let limitAvailableTerritories = 987 // Int | maximum number of related availableTerritories returned (when they are included) (optional)

InAppPurchasesAPI.inAppPurchasesV2InAppPurchaseAvailabilityGetToOneRelated(id: id, fieldsInAppPurchaseAvailabilities: fieldsInAppPurchaseAvailabilities, fieldsTerritories: fieldsTerritories, include: include, limitAvailableTerritories: limitAvailableTerritories) { (response, error) in
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
 **fieldsInAppPurchaseAvailabilities** | [**[String]**](String.md) | the fields to include for returned resources of type inAppPurchaseAvailabilities | [optional] 
 **fieldsTerritories** | [**[String]**](String.md) | the fields to include for returned resources of type territories | [optional] 
 **include** | [**[String]**](String.md) | comma-separated list of relationships to include | [optional] 
 **limitAvailableTerritories** | **Int** | maximum number of related availableTerritories returned (when they are included) | [optional] 

### Return type

[**InAppPurchaseAvailabilityResponse**](InAppPurchaseAvailabilityResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **inAppPurchasesV2InAppPurchaseLocalizationsGetToManyRelated**
```swift
    open class func inAppPurchasesV2InAppPurchaseLocalizationsGetToManyRelated(id: String, fieldsInAppPurchaseLocalizations: [FieldsInAppPurchaseLocalizations_inAppPurchasesV2InAppPurchaseLocalizationsGetToManyRelated]? = nil, fieldsInAppPurchases: [FieldsInAppPurchases_inAppPurchasesV2InAppPurchaseLocalizationsGetToManyRelated]? = nil, limit: Int? = nil, include: [Include_inAppPurchasesV2InAppPurchaseLocalizationsGetToManyRelated]? = nil, completion: @escaping (_ data: InAppPurchaseLocalizationsResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let fieldsInAppPurchaseLocalizations = ["fieldsInAppPurchaseLocalizations_example"] // [String] | the fields to include for returned resources of type inAppPurchaseLocalizations (optional)
let fieldsInAppPurchases = ["fieldsInAppPurchases_example"] // [String] | the fields to include for returned resources of type inAppPurchases (optional)
let limit = 987 // Int | maximum resources per page (optional)
let include = ["include_example"] // [String] | comma-separated list of relationships to include (optional)

InAppPurchasesAPI.inAppPurchasesV2InAppPurchaseLocalizationsGetToManyRelated(id: id, fieldsInAppPurchaseLocalizations: fieldsInAppPurchaseLocalizations, fieldsInAppPurchases: fieldsInAppPurchases, limit: limit, include: include) { (response, error) in
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
 **fieldsInAppPurchaseLocalizations** | [**[String]**](String.md) | the fields to include for returned resources of type inAppPurchaseLocalizations | [optional] 
 **fieldsInAppPurchases** | [**[String]**](String.md) | the fields to include for returned resources of type inAppPurchases | [optional] 
 **limit** | **Int** | maximum resources per page | [optional] 
 **include** | [**[String]**](String.md) | comma-separated list of relationships to include | [optional] 

### Return type

[**InAppPurchaseLocalizationsResponse**](InAppPurchaseLocalizationsResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **inAppPurchasesV2PricePointsGetToManyRelated**
```swift
    open class func inAppPurchasesV2PricePointsGetToManyRelated(id: String, filterTerritory: [String]? = nil, fieldsInAppPurchasePricePoints: [FieldsInAppPurchasePricePoints_inAppPurchasesV2PricePointsGetToManyRelated]? = nil, fieldsTerritories: [FieldsTerritories_inAppPurchasesV2PricePointsGetToManyRelated]? = nil, limit: Int? = nil, include: [Include_inAppPurchasesV2PricePointsGetToManyRelated]? = nil, completion: @escaping (_ data: InAppPurchasePricePointsResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let filterTerritory = ["inner_example"] // [String] | filter by id(s) of related 'territory' (optional)
let fieldsInAppPurchasePricePoints = ["fieldsInAppPurchasePricePoints_example"] // [String] | the fields to include for returned resources of type inAppPurchasePricePoints (optional)
let fieldsTerritories = ["fieldsTerritories_example"] // [String] | the fields to include for returned resources of type territories (optional)
let limit = 987 // Int | maximum resources per page (optional)
let include = ["include_example"] // [String] | comma-separated list of relationships to include (optional)

InAppPurchasesAPI.inAppPurchasesV2PricePointsGetToManyRelated(id: id, filterTerritory: filterTerritory, fieldsInAppPurchasePricePoints: fieldsInAppPurchasePricePoints, fieldsTerritories: fieldsTerritories, limit: limit, include: include) { (response, error) in
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
 **filterTerritory** | [**[String]**](String.md) | filter by id(s) of related &#39;territory&#39; | [optional] 
 **fieldsInAppPurchasePricePoints** | [**[String]**](String.md) | the fields to include for returned resources of type inAppPurchasePricePoints | [optional] 
 **fieldsTerritories** | [**[String]**](String.md) | the fields to include for returned resources of type territories | [optional] 
 **limit** | **Int** | maximum resources per page | [optional] 
 **include** | [**[String]**](String.md) | comma-separated list of relationships to include | [optional] 

### Return type

[**InAppPurchasePricePointsResponse**](InAppPurchasePricePointsResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/csv

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **inAppPurchasesV2PromotedPurchaseGetToOneRelated**
```swift
    open class func inAppPurchasesV2PromotedPurchaseGetToOneRelated(id: String, fieldsPromotedPurchases: [FieldsPromotedPurchases_inAppPurchasesV2PromotedPurchaseGetToOneRelated]? = nil, fieldsInAppPurchases: [FieldsInAppPurchases_inAppPurchasesV2PromotedPurchaseGetToOneRelated]? = nil, fieldsSubscriptions: [FieldsSubscriptions_inAppPurchasesV2PromotedPurchaseGetToOneRelated]? = nil, fieldsPromotedPurchaseImages: [FieldsPromotedPurchaseImages_inAppPurchasesV2PromotedPurchaseGetToOneRelated]? = nil, include: [Include_inAppPurchasesV2PromotedPurchaseGetToOneRelated]? = nil, limitPromotionImages: Int? = nil, completion: @escaping (_ data: PromotedPurchaseResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let fieldsPromotedPurchases = ["fieldsPromotedPurchases_example"] // [String] | the fields to include for returned resources of type promotedPurchases (optional)
let fieldsInAppPurchases = ["fieldsInAppPurchases_example"] // [String] | the fields to include for returned resources of type inAppPurchases (optional)
let fieldsSubscriptions = ["fieldsSubscriptions_example"] // [String] | the fields to include for returned resources of type subscriptions (optional)
let fieldsPromotedPurchaseImages = ["fieldsPromotedPurchaseImages_example"] // [String] | the fields to include for returned resources of type promotedPurchaseImages (optional)
let include = ["include_example"] // [String] | comma-separated list of relationships to include (optional)
let limitPromotionImages = 987 // Int | maximum number of related promotionImages returned (when they are included) (optional)

InAppPurchasesAPI.inAppPurchasesV2PromotedPurchaseGetToOneRelated(id: id, fieldsPromotedPurchases: fieldsPromotedPurchases, fieldsInAppPurchases: fieldsInAppPurchases, fieldsSubscriptions: fieldsSubscriptions, fieldsPromotedPurchaseImages: fieldsPromotedPurchaseImages, include: include, limitPromotionImages: limitPromotionImages) { (response, error) in
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
 **fieldsPromotedPurchases** | [**[String]**](String.md) | the fields to include for returned resources of type promotedPurchases | [optional] 
 **fieldsInAppPurchases** | [**[String]**](String.md) | the fields to include for returned resources of type inAppPurchases | [optional] 
 **fieldsSubscriptions** | [**[String]**](String.md) | the fields to include for returned resources of type subscriptions | [optional] 
 **fieldsPromotedPurchaseImages** | [**[String]**](String.md) | the fields to include for returned resources of type promotedPurchaseImages | [optional] 
 **include** | [**[String]**](String.md) | comma-separated list of relationships to include | [optional] 
 **limitPromotionImages** | **Int** | maximum number of related promotionImages returned (when they are included) | [optional] 

### Return type

[**PromotedPurchaseResponse**](PromotedPurchaseResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **inAppPurchasesV2UpdateInstance**
```swift
    open class func inAppPurchasesV2UpdateInstance(id: String, inAppPurchaseV2UpdateRequest: InAppPurchaseV2UpdateRequest, completion: @escaping (_ data: InAppPurchaseV2Response?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let inAppPurchaseV2UpdateRequest = InAppPurchaseV2UpdateRequest(data: InAppPurchaseV2UpdateRequest_data(type: "type_example", id: "id_example", attributes: InAppPurchaseV2UpdateRequest_data_attributes(name: "name_example", reviewNote: "reviewNote_example", familySharable: false))) // InAppPurchaseV2UpdateRequest | InAppPurchase representation

InAppPurchasesAPI.inAppPurchasesV2UpdateInstance(id: id, inAppPurchaseV2UpdateRequest: inAppPurchaseV2UpdateRequest) { (response, error) in
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
 **inAppPurchaseV2UpdateRequest** | [**InAppPurchaseV2UpdateRequest**](InAppPurchaseV2UpdateRequest.md) | InAppPurchase representation | 

### Return type

[**InAppPurchaseV2Response**](InAppPurchaseV2Response.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

