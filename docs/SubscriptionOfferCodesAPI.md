# SubscriptionOfferCodesAPI

All URIs are relative to *https://api.appstoreconnect.apple.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**subscriptionOfferCodesCreateInstance**](SubscriptionOfferCodesAPI.md#subscriptionoffercodescreateinstance) | **POST** /v1/subscriptionOfferCodes | 
[**subscriptionOfferCodesCustomCodesGetToManyRelated**](SubscriptionOfferCodesAPI.md#subscriptionoffercodescustomcodesgettomanyrelated) | **GET** /v1/subscriptionOfferCodes/{id}/customCodes | 
[**subscriptionOfferCodesGetInstance**](SubscriptionOfferCodesAPI.md#subscriptionoffercodesgetinstance) | **GET** /v1/subscriptionOfferCodes/{id} | 
[**subscriptionOfferCodesOneTimeUseCodesGetToManyRelated**](SubscriptionOfferCodesAPI.md#subscriptionoffercodesonetimeusecodesgettomanyrelated) | **GET** /v1/subscriptionOfferCodes/{id}/oneTimeUseCodes | 
[**subscriptionOfferCodesPricesGetToManyRelated**](SubscriptionOfferCodesAPI.md#subscriptionoffercodespricesgettomanyrelated) | **GET** /v1/subscriptionOfferCodes/{id}/prices | 
[**subscriptionOfferCodesUpdateInstance**](SubscriptionOfferCodesAPI.md#subscriptionoffercodesupdateinstance) | **PATCH** /v1/subscriptionOfferCodes/{id} | 


# **subscriptionOfferCodesCreateInstance**
```swift
    open class func subscriptionOfferCodesCreateInstance(subscriptionOfferCodeCreateRequest: SubscriptionOfferCodeCreateRequest, completion: @escaping (_ data: SubscriptionOfferCodeResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let subscriptionOfferCodeCreateRequest = SubscriptionOfferCodeCreateRequest(data: SubscriptionOfferCodeCreateRequest_data(type: "type_example", attributes: SubscriptionOfferCodeCreateRequest_data_attributes(name: "name_example", customerEligibilities: [SubscriptionCustomerEligibility()], offerEligibility: SubscriptionOfferEligibility(), duration: SubscriptionOfferDuration(), offerMode: SubscriptionOfferMode(), numberOfPeriods: 123), relationships: SubscriptionOfferCodeCreateRequest_data_relationships(subscription: SubscriptionAppStoreReviewScreenshotCreateRequest_data_relationships_subscription(data: PromotedPurchase_relationships_subscription_data(type: "type_example", id: "id_example")), prices: SubscriptionOfferCodeCreateRequest_data_relationships_prices(data: [SubscriptionOfferCode_relationships_prices_data_inner(type: "type_example", id: "id_example")]))), included: [SubscriptionOfferCodePriceInlineCreate(type: "type_example", id: "id_example", relationships: SubscriptionOfferCodePrice_relationships(territory: AppPricePointV3_relationships_territory(data: AppPricePointV3_relationships_territory_data(type: "type_example", id: "id_example")), subscriptionPricePoint: SubscriptionIntroductoryOffer_relationships_subscriptionPricePoint(data: SubscriptionIntroductoryOffer_relationships_subscriptionPricePoint_data(type: "type_example", id: "id_example"))))]) // SubscriptionOfferCodeCreateRequest | SubscriptionOfferCode representation

SubscriptionOfferCodesAPI.subscriptionOfferCodesCreateInstance(subscriptionOfferCodeCreateRequest: subscriptionOfferCodeCreateRequest) { (response, error) in
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
 **subscriptionOfferCodeCreateRequest** | [**SubscriptionOfferCodeCreateRequest**](SubscriptionOfferCodeCreateRequest.md) | SubscriptionOfferCode representation | 

### Return type

[**SubscriptionOfferCodeResponse**](SubscriptionOfferCodeResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **subscriptionOfferCodesCustomCodesGetToManyRelated**
```swift
    open class func subscriptionOfferCodesCustomCodesGetToManyRelated(id: String, fieldsSubscriptionOfferCodeCustomCodes: [FieldsSubscriptionOfferCodeCustomCodes_subscriptionOfferCodesCustomCodesGetToManyRelated]? = nil, fieldsSubscriptionOfferCodes: [FieldsSubscriptionOfferCodes_subscriptionOfferCodesCustomCodesGetToManyRelated]? = nil, limit: Int? = nil, include: [Include_subscriptionOfferCodesCustomCodesGetToManyRelated]? = nil, completion: @escaping (_ data: SubscriptionOfferCodeCustomCodesResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let fieldsSubscriptionOfferCodeCustomCodes = ["fieldsSubscriptionOfferCodeCustomCodes_example"] // [String] | the fields to include for returned resources of type subscriptionOfferCodeCustomCodes (optional)
let fieldsSubscriptionOfferCodes = ["fieldsSubscriptionOfferCodes_example"] // [String] | the fields to include for returned resources of type subscriptionOfferCodes (optional)
let limit = 987 // Int | maximum resources per page (optional)
let include = ["include_example"] // [String] | comma-separated list of relationships to include (optional)

SubscriptionOfferCodesAPI.subscriptionOfferCodesCustomCodesGetToManyRelated(id: id, fieldsSubscriptionOfferCodeCustomCodes: fieldsSubscriptionOfferCodeCustomCodes, fieldsSubscriptionOfferCodes: fieldsSubscriptionOfferCodes, limit: limit, include: include) { (response, error) in
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
 **fieldsSubscriptionOfferCodeCustomCodes** | [**[String]**](String.md) | the fields to include for returned resources of type subscriptionOfferCodeCustomCodes | [optional] 
 **fieldsSubscriptionOfferCodes** | [**[String]**](String.md) | the fields to include for returned resources of type subscriptionOfferCodes | [optional] 
 **limit** | **Int** | maximum resources per page | [optional] 
 **include** | [**[String]**](String.md) | comma-separated list of relationships to include | [optional] 

### Return type

[**SubscriptionOfferCodeCustomCodesResponse**](SubscriptionOfferCodeCustomCodesResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **subscriptionOfferCodesGetInstance**
```swift
    open class func subscriptionOfferCodesGetInstance(id: String, fieldsSubscriptionOfferCodes: [FieldsSubscriptionOfferCodes_subscriptionOfferCodesGetInstance]? = nil, fieldsSubscriptionOfferCodeOneTimeUseCodes: [FieldsSubscriptionOfferCodeOneTimeUseCodes_subscriptionOfferCodesGetInstance]? = nil, fieldsSubscriptionOfferCodeCustomCodes: [FieldsSubscriptionOfferCodeCustomCodes_subscriptionOfferCodesGetInstance]? = nil, fieldsSubscriptionOfferCodePrices: [FieldsSubscriptionOfferCodePrices_subscriptionOfferCodesGetInstance]? = nil, include: [Include_subscriptionOfferCodesGetInstance]? = nil, limitCustomCodes: Int? = nil, limitOneTimeUseCodes: Int? = nil, limitPrices: Int? = nil, completion: @escaping (_ data: SubscriptionOfferCodeResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let fieldsSubscriptionOfferCodes = ["fieldsSubscriptionOfferCodes_example"] // [String] | the fields to include for returned resources of type subscriptionOfferCodes (optional)
let fieldsSubscriptionOfferCodeOneTimeUseCodes = ["fieldsSubscriptionOfferCodeOneTimeUseCodes_example"] // [String] | the fields to include for returned resources of type subscriptionOfferCodeOneTimeUseCodes (optional)
let fieldsSubscriptionOfferCodeCustomCodes = ["fieldsSubscriptionOfferCodeCustomCodes_example"] // [String] | the fields to include for returned resources of type subscriptionOfferCodeCustomCodes (optional)
let fieldsSubscriptionOfferCodePrices = ["fieldsSubscriptionOfferCodePrices_example"] // [String] | the fields to include for returned resources of type subscriptionOfferCodePrices (optional)
let include = ["include_example"] // [String] | comma-separated list of relationships to include (optional)
let limitCustomCodes = 987 // Int | maximum number of related customCodes returned (when they are included) (optional)
let limitOneTimeUseCodes = 987 // Int | maximum number of related oneTimeUseCodes returned (when they are included) (optional)
let limitPrices = 987 // Int | maximum number of related prices returned (when they are included) (optional)

SubscriptionOfferCodesAPI.subscriptionOfferCodesGetInstance(id: id, fieldsSubscriptionOfferCodes: fieldsSubscriptionOfferCodes, fieldsSubscriptionOfferCodeOneTimeUseCodes: fieldsSubscriptionOfferCodeOneTimeUseCodes, fieldsSubscriptionOfferCodeCustomCodes: fieldsSubscriptionOfferCodeCustomCodes, fieldsSubscriptionOfferCodePrices: fieldsSubscriptionOfferCodePrices, include: include, limitCustomCodes: limitCustomCodes, limitOneTimeUseCodes: limitOneTimeUseCodes, limitPrices: limitPrices) { (response, error) in
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
 **fieldsSubscriptionOfferCodes** | [**[String]**](String.md) | the fields to include for returned resources of type subscriptionOfferCodes | [optional] 
 **fieldsSubscriptionOfferCodeOneTimeUseCodes** | [**[String]**](String.md) | the fields to include for returned resources of type subscriptionOfferCodeOneTimeUseCodes | [optional] 
 **fieldsSubscriptionOfferCodeCustomCodes** | [**[String]**](String.md) | the fields to include for returned resources of type subscriptionOfferCodeCustomCodes | [optional] 
 **fieldsSubscriptionOfferCodePrices** | [**[String]**](String.md) | the fields to include for returned resources of type subscriptionOfferCodePrices | [optional] 
 **include** | [**[String]**](String.md) | comma-separated list of relationships to include | [optional] 
 **limitCustomCodes** | **Int** | maximum number of related customCodes returned (when they are included) | [optional] 
 **limitOneTimeUseCodes** | **Int** | maximum number of related oneTimeUseCodes returned (when they are included) | [optional] 
 **limitPrices** | **Int** | maximum number of related prices returned (when they are included) | [optional] 

### Return type

[**SubscriptionOfferCodeResponse**](SubscriptionOfferCodeResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **subscriptionOfferCodesOneTimeUseCodesGetToManyRelated**
```swift
    open class func subscriptionOfferCodesOneTimeUseCodesGetToManyRelated(id: String, fieldsSubscriptionOfferCodeOneTimeUseCodes: [FieldsSubscriptionOfferCodeOneTimeUseCodes_subscriptionOfferCodesOneTimeUseCodesGetToManyRelated]? = nil, fieldsSubscriptionOfferCodes: [FieldsSubscriptionOfferCodes_subscriptionOfferCodesOneTimeUseCodesGetToManyRelated]? = nil, limit: Int? = nil, include: [Include_subscriptionOfferCodesOneTimeUseCodesGetToManyRelated]? = nil, completion: @escaping (_ data: SubscriptionOfferCodeOneTimeUseCodesResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let fieldsSubscriptionOfferCodeOneTimeUseCodes = ["fieldsSubscriptionOfferCodeOneTimeUseCodes_example"] // [String] | the fields to include for returned resources of type subscriptionOfferCodeOneTimeUseCodes (optional)
let fieldsSubscriptionOfferCodes = ["fieldsSubscriptionOfferCodes_example"] // [String] | the fields to include for returned resources of type subscriptionOfferCodes (optional)
let limit = 987 // Int | maximum resources per page (optional)
let include = ["include_example"] // [String] | comma-separated list of relationships to include (optional)

SubscriptionOfferCodesAPI.subscriptionOfferCodesOneTimeUseCodesGetToManyRelated(id: id, fieldsSubscriptionOfferCodeOneTimeUseCodes: fieldsSubscriptionOfferCodeOneTimeUseCodes, fieldsSubscriptionOfferCodes: fieldsSubscriptionOfferCodes, limit: limit, include: include) { (response, error) in
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
 **fieldsSubscriptionOfferCodeOneTimeUseCodes** | [**[String]**](String.md) | the fields to include for returned resources of type subscriptionOfferCodeOneTimeUseCodes | [optional] 
 **fieldsSubscriptionOfferCodes** | [**[String]**](String.md) | the fields to include for returned resources of type subscriptionOfferCodes | [optional] 
 **limit** | **Int** | maximum resources per page | [optional] 
 **include** | [**[String]**](String.md) | comma-separated list of relationships to include | [optional] 

### Return type

[**SubscriptionOfferCodeOneTimeUseCodesResponse**](SubscriptionOfferCodeOneTimeUseCodesResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **subscriptionOfferCodesPricesGetToManyRelated**
```swift
    open class func subscriptionOfferCodesPricesGetToManyRelated(id: String, filterTerritory: [String]? = nil, fieldsSubscriptionOfferCodePrices: [FieldsSubscriptionOfferCodePrices_subscriptionOfferCodesPricesGetToManyRelated]? = nil, fieldsTerritories: [FieldsTerritories_subscriptionOfferCodesPricesGetToManyRelated]? = nil, fieldsSubscriptionPricePoints: [FieldsSubscriptionPricePoints_subscriptionOfferCodesPricesGetToManyRelated]? = nil, limit: Int? = nil, include: [Include_subscriptionOfferCodesPricesGetToManyRelated]? = nil, completion: @escaping (_ data: SubscriptionOfferCodePricesResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let filterTerritory = ["inner_example"] // [String] | filter by id(s) of related 'territory' (optional)
let fieldsSubscriptionOfferCodePrices = ["fieldsSubscriptionOfferCodePrices_example"] // [String] | the fields to include for returned resources of type subscriptionOfferCodePrices (optional)
let fieldsTerritories = ["fieldsTerritories_example"] // [String] | the fields to include for returned resources of type territories (optional)
let fieldsSubscriptionPricePoints = ["fieldsSubscriptionPricePoints_example"] // [String] | the fields to include for returned resources of type subscriptionPricePoints (optional)
let limit = 987 // Int | maximum resources per page (optional)
let include = ["include_example"] // [String] | comma-separated list of relationships to include (optional)

SubscriptionOfferCodesAPI.subscriptionOfferCodesPricesGetToManyRelated(id: id, filterTerritory: filterTerritory, fieldsSubscriptionOfferCodePrices: fieldsSubscriptionOfferCodePrices, fieldsTerritories: fieldsTerritories, fieldsSubscriptionPricePoints: fieldsSubscriptionPricePoints, limit: limit, include: include) { (response, error) in
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
 **fieldsSubscriptionOfferCodePrices** | [**[String]**](String.md) | the fields to include for returned resources of type subscriptionOfferCodePrices | [optional] 
 **fieldsTerritories** | [**[String]**](String.md) | the fields to include for returned resources of type territories | [optional] 
 **fieldsSubscriptionPricePoints** | [**[String]**](String.md) | the fields to include for returned resources of type subscriptionPricePoints | [optional] 
 **limit** | **Int** | maximum resources per page | [optional] 
 **include** | [**[String]**](String.md) | comma-separated list of relationships to include | [optional] 

### Return type

[**SubscriptionOfferCodePricesResponse**](SubscriptionOfferCodePricesResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **subscriptionOfferCodesUpdateInstance**
```swift
    open class func subscriptionOfferCodesUpdateInstance(id: String, subscriptionOfferCodeUpdateRequest: SubscriptionOfferCodeUpdateRequest, completion: @escaping (_ data: SubscriptionOfferCodeResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let subscriptionOfferCodeUpdateRequest = SubscriptionOfferCodeUpdateRequest(data: SubscriptionOfferCodeUpdateRequest_data(type: "type_example", id: "id_example", attributes: SubscriptionOfferCodeCustomCodeUpdateRequest_data_attributes(active: false))) // SubscriptionOfferCodeUpdateRequest | SubscriptionOfferCode representation

SubscriptionOfferCodesAPI.subscriptionOfferCodesUpdateInstance(id: id, subscriptionOfferCodeUpdateRequest: subscriptionOfferCodeUpdateRequest) { (response, error) in
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
 **subscriptionOfferCodeUpdateRequest** | [**SubscriptionOfferCodeUpdateRequest**](SubscriptionOfferCodeUpdateRequest.md) | SubscriptionOfferCode representation | 

### Return type

[**SubscriptionOfferCodeResponse**](SubscriptionOfferCodeResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

