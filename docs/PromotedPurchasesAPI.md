# PromotedPurchasesAPI

All URIs are relative to *https://api.appstoreconnect.apple.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**promotedPurchasesCreateInstance**](PromotedPurchasesAPI.md#promotedpurchasescreateinstance) | **POST** /v1/promotedPurchases | 
[**promotedPurchasesDeleteInstance**](PromotedPurchasesAPI.md#promotedpurchasesdeleteinstance) | **DELETE** /v1/promotedPurchases/{id} | 
[**promotedPurchasesGetInstance**](PromotedPurchasesAPI.md#promotedpurchasesgetinstance) | **GET** /v1/promotedPurchases/{id} | 
[**promotedPurchasesPromotionImagesGetToManyRelated**](PromotedPurchasesAPI.md#promotedpurchasespromotionimagesgettomanyrelated) | **GET** /v1/promotedPurchases/{id}/promotionImages | 
[**promotedPurchasesUpdateInstance**](PromotedPurchasesAPI.md#promotedpurchasesupdateinstance) | **PATCH** /v1/promotedPurchases/{id} | 


# **promotedPurchasesCreateInstance**
```swift
    open class func promotedPurchasesCreateInstance(promotedPurchaseCreateRequest: PromotedPurchaseCreateRequest, completion: @escaping (_ data: PromotedPurchaseResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let promotedPurchaseCreateRequest = PromotedPurchaseCreateRequest(data: PromotedPurchaseCreateRequest_data(type: "type_example", attributes: PromotedPurchaseCreateRequest_data_attributes(visibleForAllUsers: false, enabled: false), relationships: PromotedPurchaseCreateRequest_data_relationships(app: AnalyticsReportRequestCreateRequest_data_relationships_app(data: AlternativeDistributionKeyCreateRequest_data_relationships_app_data(type: "type_example", id: "id_example")), inAppPurchaseV2: InAppPurchasePriceInlineCreate_relationships_inAppPurchaseV2(data: App_relationships_inAppPurchases_data_inner(type: "type_example", id: "id_example")), subscription: PromotedPurchaseCreateRequest_data_relationships_subscription(data: PromotedPurchase_relationships_subscription_data(type: "type_example", id: "id_example"))))) // PromotedPurchaseCreateRequest | PromotedPurchase representation

PromotedPurchasesAPI.promotedPurchasesCreateInstance(promotedPurchaseCreateRequest: promotedPurchaseCreateRequest) { (response, error) in
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
 **promotedPurchaseCreateRequest** | [**PromotedPurchaseCreateRequest**](PromotedPurchaseCreateRequest.md) | PromotedPurchase representation | 

### Return type

[**PromotedPurchaseResponse**](PromotedPurchaseResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **promotedPurchasesDeleteInstance**
```swift
    open class func promotedPurchasesDeleteInstance(id: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource

PromotedPurchasesAPI.promotedPurchasesDeleteInstance(id: id) { (response, error) in
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

# **promotedPurchasesGetInstance**
```swift
    open class func promotedPurchasesGetInstance(id: String, fieldsPromotedPurchases: [FieldsPromotedPurchases_promotedPurchasesGetInstance]? = nil, include: [Include_promotedPurchasesGetInstance]? = nil, fieldsPromotedPurchaseImages: [FieldsPromotedPurchaseImages_promotedPurchasesGetInstance]? = nil, limitPromotionImages: Int? = nil, completion: @escaping (_ data: PromotedPurchaseResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let fieldsPromotedPurchases = ["fieldsPromotedPurchases_example"] // [String] | the fields to include for returned resources of type promotedPurchases (optional)
let include = ["include_example"] // [String] | comma-separated list of relationships to include (optional)
let fieldsPromotedPurchaseImages = ["fieldsPromotedPurchaseImages_example"] // [String] | the fields to include for returned resources of type promotedPurchaseImages (optional)
let limitPromotionImages = 987 // Int | maximum number of related promotionImages returned (when they are included) (optional)

PromotedPurchasesAPI.promotedPurchasesGetInstance(id: id, fieldsPromotedPurchases: fieldsPromotedPurchases, include: include, fieldsPromotedPurchaseImages: fieldsPromotedPurchaseImages, limitPromotionImages: limitPromotionImages) { (response, error) in
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
 **include** | [**[String]**](String.md) | comma-separated list of relationships to include | [optional] 
 **fieldsPromotedPurchaseImages** | [**[String]**](String.md) | the fields to include for returned resources of type promotedPurchaseImages | [optional] 
 **limitPromotionImages** | **Int** | maximum number of related promotionImages returned (when they are included) | [optional] 

### Return type

[**PromotedPurchaseResponse**](PromotedPurchaseResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **promotedPurchasesPromotionImagesGetToManyRelated**
```swift
    open class func promotedPurchasesPromotionImagesGetToManyRelated(id: String, fieldsPromotedPurchases: [FieldsPromotedPurchases_promotedPurchasesPromotionImagesGetToManyRelated]? = nil, fieldsPromotedPurchaseImages: [FieldsPromotedPurchaseImages_promotedPurchasesPromotionImagesGetToManyRelated]? = nil, limit: Int? = nil, include: [Include_promotedPurchasesPromotionImagesGetToManyRelated]? = nil, completion: @escaping (_ data: PromotedPurchaseImagesResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let fieldsPromotedPurchases = ["fieldsPromotedPurchases_example"] // [String] | the fields to include for returned resources of type promotedPurchases (optional)
let fieldsPromotedPurchaseImages = ["fieldsPromotedPurchaseImages_example"] // [String] | the fields to include for returned resources of type promotedPurchaseImages (optional)
let limit = 987 // Int | maximum resources per page (optional)
let include = ["include_example"] // [String] | comma-separated list of relationships to include (optional)

PromotedPurchasesAPI.promotedPurchasesPromotionImagesGetToManyRelated(id: id, fieldsPromotedPurchases: fieldsPromotedPurchases, fieldsPromotedPurchaseImages: fieldsPromotedPurchaseImages, limit: limit, include: include) { (response, error) in
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
 **fieldsPromotedPurchaseImages** | [**[String]**](String.md) | the fields to include for returned resources of type promotedPurchaseImages | [optional] 
 **limit** | **Int** | maximum resources per page | [optional] 
 **include** | [**[String]**](String.md) | comma-separated list of relationships to include | [optional] 

### Return type

[**PromotedPurchaseImagesResponse**](PromotedPurchaseImagesResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **promotedPurchasesUpdateInstance**
```swift
    open class func promotedPurchasesUpdateInstance(id: String, promotedPurchaseUpdateRequest: PromotedPurchaseUpdateRequest, completion: @escaping (_ data: PromotedPurchaseResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let promotedPurchaseUpdateRequest = PromotedPurchaseUpdateRequest(data: PromotedPurchaseUpdateRequest_data(type: "type_example", id: "id_example", attributes: PromotedPurchaseUpdateRequest_data_attributes(visibleForAllUsers: false, enabled: false))) // PromotedPurchaseUpdateRequest | PromotedPurchase representation

PromotedPurchasesAPI.promotedPurchasesUpdateInstance(id: id, promotedPurchaseUpdateRequest: promotedPurchaseUpdateRequest) { (response, error) in
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
 **promotedPurchaseUpdateRequest** | [**PromotedPurchaseUpdateRequest**](PromotedPurchaseUpdateRequest.md) | PromotedPurchase representation | 

### Return type

[**PromotedPurchaseResponse**](PromotedPurchaseResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

