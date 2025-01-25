# GameCenterMatchmakingRulesAPI

All URIs are relative to *https://api.appstoreconnect.apple.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**gameCenterMatchmakingRulesCreateInstance**](GameCenterMatchmakingRulesAPI.md#gamecentermatchmakingrulescreateinstance) | **POST** /v1/gameCenterMatchmakingRules | 
[**gameCenterMatchmakingRulesDeleteInstance**](GameCenterMatchmakingRulesAPI.md#gamecentermatchmakingrulesdeleteinstance) | **DELETE** /v1/gameCenterMatchmakingRules/{id} | 
[**gameCenterMatchmakingRulesMatchmakingBooleanRuleResultsGetMetrics**](GameCenterMatchmakingRulesAPI.md#gamecentermatchmakingrulesmatchmakingbooleanruleresultsgetmetrics) | **GET** /v1/gameCenterMatchmakingRules/{id}/metrics/matchmakingBooleanRuleResults | 
[**gameCenterMatchmakingRulesMatchmakingNumberRuleResultsGetMetrics**](GameCenterMatchmakingRulesAPI.md#gamecentermatchmakingrulesmatchmakingnumberruleresultsgetmetrics) | **GET** /v1/gameCenterMatchmakingRules/{id}/metrics/matchmakingNumberRuleResults | 
[**gameCenterMatchmakingRulesMatchmakingRuleErrorsGetMetrics**](GameCenterMatchmakingRulesAPI.md#gamecentermatchmakingrulesmatchmakingruleerrorsgetmetrics) | **GET** /v1/gameCenterMatchmakingRules/{id}/metrics/matchmakingRuleErrors | 
[**gameCenterMatchmakingRulesUpdateInstance**](GameCenterMatchmakingRulesAPI.md#gamecentermatchmakingrulesupdateinstance) | **PATCH** /v1/gameCenterMatchmakingRules/{id} | 


# **gameCenterMatchmakingRulesCreateInstance**
```swift
    open class func gameCenterMatchmakingRulesCreateInstance(gameCenterMatchmakingRuleCreateRequest: GameCenterMatchmakingRuleCreateRequest, completion: @escaping (_ data: GameCenterMatchmakingRuleResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let gameCenterMatchmakingRuleCreateRequest = GameCenterMatchmakingRuleCreateRequest(data: GameCenterMatchmakingRuleCreateRequest_data(type: "type_example", attributes: GameCenterMatchmakingRuleCreateRequest_data_attributes(referenceName: "referenceName_example", description: "description_example", type: "type_example", expression: "expression_example", weight: 123), relationships: GameCenterMatchmakingRuleCreateRequest_data_relationships(ruleSet: GameCenterMatchmakingQueueCreateRequest_data_relationships_ruleSet(data: GameCenterMatchmakingQueue_relationships_ruleSet_data(type: "type_example", id: "id_example"))))) // GameCenterMatchmakingRuleCreateRequest | GameCenterMatchmakingRule representation

GameCenterMatchmakingRulesAPI.gameCenterMatchmakingRulesCreateInstance(gameCenterMatchmakingRuleCreateRequest: gameCenterMatchmakingRuleCreateRequest) { (response, error) in
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
 **gameCenterMatchmakingRuleCreateRequest** | [**GameCenterMatchmakingRuleCreateRequest**](GameCenterMatchmakingRuleCreateRequest.md) | GameCenterMatchmakingRule representation | 

### Return type

[**GameCenterMatchmakingRuleResponse**](GameCenterMatchmakingRuleResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **gameCenterMatchmakingRulesDeleteInstance**
```swift
    open class func gameCenterMatchmakingRulesDeleteInstance(id: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource

GameCenterMatchmakingRulesAPI.gameCenterMatchmakingRulesDeleteInstance(id: id) { (response, error) in
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

# **gameCenterMatchmakingRulesMatchmakingBooleanRuleResultsGetMetrics**
```swift
    open class func gameCenterMatchmakingRulesMatchmakingBooleanRuleResultsGetMetrics(id: String, granularity: Granularity_gameCenterMatchmakingRulesMatchmakingBooleanRuleResultsGetMetrics, groupBy: [GroupBy_gameCenterMatchmakingRulesMatchmakingBooleanRuleResultsGetMetrics]? = nil, filterResult: String? = nil, filterGameCenterMatchmakingQueue: String? = nil, sort: [Sort_gameCenterMatchmakingRulesMatchmakingBooleanRuleResultsGetMetrics]? = nil, limit: Int? = nil, completion: @escaping (_ data: GameCenterMatchmakingBooleanRuleResultsV1MetricResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let granularity = "granularity_example" // String | the granularity of the per-group dataset
let groupBy = ["groupBy_example"] // [String] | the dimension by which to group the results (optional)
let filterResult = "filterResult_example" // String | filter by 'result' attribute dimension (optional)
let filterGameCenterMatchmakingQueue = "filterGameCenterMatchmakingQueue_example" // String | filter by 'gameCenterMatchmakingQueue' relationship dimension (optional)
let sort = ["sort_example"] // [String] | comma-separated list of sort expressions; metrics will be sorted as specified (optional)
let limit = 987 // Int | maximum number of groups to return per page (optional)

GameCenterMatchmakingRulesAPI.gameCenterMatchmakingRulesMatchmakingBooleanRuleResultsGetMetrics(id: id, granularity: granularity, groupBy: groupBy, filterResult: filterResult, filterGameCenterMatchmakingQueue: filterGameCenterMatchmakingQueue, sort: sort, limit: limit) { (response, error) in
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
 **granularity** | **String** | the granularity of the per-group dataset | 
 **groupBy** | [**[String]**](String.md) | the dimension by which to group the results | [optional] 
 **filterResult** | **String** | filter by &#39;result&#39; attribute dimension | [optional] 
 **filterGameCenterMatchmakingQueue** | **String** | filter by &#39;gameCenterMatchmakingQueue&#39; relationship dimension | [optional] 
 **sort** | [**[String]**](String.md) | comma-separated list of sort expressions; metrics will be sorted as specified | [optional] 
 **limit** | **Int** | maximum number of groups to return per page | [optional] 

### Return type

[**GameCenterMatchmakingBooleanRuleResultsV1MetricResponse**](GameCenterMatchmakingBooleanRuleResultsV1MetricResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **gameCenterMatchmakingRulesMatchmakingNumberRuleResultsGetMetrics**
```swift
    open class func gameCenterMatchmakingRulesMatchmakingNumberRuleResultsGetMetrics(id: String, granularity: Granularity_gameCenterMatchmakingRulesMatchmakingNumberRuleResultsGetMetrics, groupBy: [GroupBy_gameCenterMatchmakingRulesMatchmakingNumberRuleResultsGetMetrics]? = nil, filterGameCenterMatchmakingQueue: String? = nil, sort: [Sort_gameCenterMatchmakingRulesMatchmakingNumberRuleResultsGetMetrics]? = nil, limit: Int? = nil, completion: @escaping (_ data: GameCenterMatchmakingNumberRuleResultsV1MetricResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let granularity = "granularity_example" // String | the granularity of the per-group dataset
let groupBy = ["groupBy_example"] // [String] | the dimension by which to group the results (optional)
let filterGameCenterMatchmakingQueue = "filterGameCenterMatchmakingQueue_example" // String | filter by 'gameCenterMatchmakingQueue' relationship dimension (optional)
let sort = ["sort_example"] // [String] | comma-separated list of sort expressions; metrics will be sorted as specified (optional)
let limit = 987 // Int | maximum number of groups to return per page (optional)

GameCenterMatchmakingRulesAPI.gameCenterMatchmakingRulesMatchmakingNumberRuleResultsGetMetrics(id: id, granularity: granularity, groupBy: groupBy, filterGameCenterMatchmakingQueue: filterGameCenterMatchmakingQueue, sort: sort, limit: limit) { (response, error) in
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
 **granularity** | **String** | the granularity of the per-group dataset | 
 **groupBy** | [**[String]**](String.md) | the dimension by which to group the results | [optional] 
 **filterGameCenterMatchmakingQueue** | **String** | filter by &#39;gameCenterMatchmakingQueue&#39; relationship dimension | [optional] 
 **sort** | [**[String]**](String.md) | comma-separated list of sort expressions; metrics will be sorted as specified | [optional] 
 **limit** | **Int** | maximum number of groups to return per page | [optional] 

### Return type

[**GameCenterMatchmakingNumberRuleResultsV1MetricResponse**](GameCenterMatchmakingNumberRuleResultsV1MetricResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **gameCenterMatchmakingRulesMatchmakingRuleErrorsGetMetrics**
```swift
    open class func gameCenterMatchmakingRulesMatchmakingRuleErrorsGetMetrics(id: String, granularity: Granularity_gameCenterMatchmakingRulesMatchmakingRuleErrorsGetMetrics, groupBy: [GroupBy_gameCenterMatchmakingRulesMatchmakingRuleErrorsGetMetrics]? = nil, filterGameCenterMatchmakingQueue: String? = nil, sort: [Sort_gameCenterMatchmakingRulesMatchmakingRuleErrorsGetMetrics]? = nil, limit: Int? = nil, completion: @escaping (_ data: GameCenterMatchmakingRuleErrorsV1MetricResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let granularity = "granularity_example" // String | the granularity of the per-group dataset
let groupBy = ["groupBy_example"] // [String] | the dimension by which to group the results (optional)
let filterGameCenterMatchmakingQueue = "filterGameCenterMatchmakingQueue_example" // String | filter by 'gameCenterMatchmakingQueue' relationship dimension (optional)
let sort = ["sort_example"] // [String] | comma-separated list of sort expressions; metrics will be sorted as specified (optional)
let limit = 987 // Int | maximum number of groups to return per page (optional)

GameCenterMatchmakingRulesAPI.gameCenterMatchmakingRulesMatchmakingRuleErrorsGetMetrics(id: id, granularity: granularity, groupBy: groupBy, filterGameCenterMatchmakingQueue: filterGameCenterMatchmakingQueue, sort: sort, limit: limit) { (response, error) in
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
 **granularity** | **String** | the granularity of the per-group dataset | 
 **groupBy** | [**[String]**](String.md) | the dimension by which to group the results | [optional] 
 **filterGameCenterMatchmakingQueue** | **String** | filter by &#39;gameCenterMatchmakingQueue&#39; relationship dimension | [optional] 
 **sort** | [**[String]**](String.md) | comma-separated list of sort expressions; metrics will be sorted as specified | [optional] 
 **limit** | **Int** | maximum number of groups to return per page | [optional] 

### Return type

[**GameCenterMatchmakingRuleErrorsV1MetricResponse**](GameCenterMatchmakingRuleErrorsV1MetricResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **gameCenterMatchmakingRulesUpdateInstance**
```swift
    open class func gameCenterMatchmakingRulesUpdateInstance(id: String, gameCenterMatchmakingRuleUpdateRequest: GameCenterMatchmakingRuleUpdateRequest, completion: @escaping (_ data: GameCenterMatchmakingRuleResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let gameCenterMatchmakingRuleUpdateRequest = GameCenterMatchmakingRuleUpdateRequest(data: GameCenterMatchmakingRuleUpdateRequest_data(type: "type_example", id: "id_example", attributes: GameCenterMatchmakingRuleUpdateRequest_data_attributes(description: "description_example", expression: "expression_example", weight: 123))) // GameCenterMatchmakingRuleUpdateRequest | GameCenterMatchmakingRule representation

GameCenterMatchmakingRulesAPI.gameCenterMatchmakingRulesUpdateInstance(id: id, gameCenterMatchmakingRuleUpdateRequest: gameCenterMatchmakingRuleUpdateRequest) { (response, error) in
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
 **gameCenterMatchmakingRuleUpdateRequest** | [**GameCenterMatchmakingRuleUpdateRequest**](GameCenterMatchmakingRuleUpdateRequest.md) | GameCenterMatchmakingRule representation | 

### Return type

[**GameCenterMatchmakingRuleResponse**](GameCenterMatchmakingRuleResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

