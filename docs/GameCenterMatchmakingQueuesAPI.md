# GameCenterMatchmakingQueuesAPI

All URIs are relative to *https://api.appstoreconnect.apple.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**gameCenterMatchmakingQueuesCreateInstance**](GameCenterMatchmakingQueuesAPI.md#gamecentermatchmakingqueuescreateinstance) | **POST** /v1/gameCenterMatchmakingQueues | 
[**gameCenterMatchmakingQueuesDeleteInstance**](GameCenterMatchmakingQueuesAPI.md#gamecentermatchmakingqueuesdeleteinstance) | **DELETE** /v1/gameCenterMatchmakingQueues/{id} | 
[**gameCenterMatchmakingQueuesExperimentMatchmakingQueueSizesGetMetrics**](GameCenterMatchmakingQueuesAPI.md#gamecentermatchmakingqueuesexperimentmatchmakingqueuesizesgetmetrics) | **GET** /v1/gameCenterMatchmakingQueues/{id}/metrics/experimentMatchmakingQueueSizes | 
[**gameCenterMatchmakingQueuesExperimentMatchmakingRequestsGetMetrics**](GameCenterMatchmakingQueuesAPI.md#gamecentermatchmakingqueuesexperimentmatchmakingrequestsgetmetrics) | **GET** /v1/gameCenterMatchmakingQueues/{id}/metrics/experimentMatchmakingRequests | 
[**gameCenterMatchmakingQueuesGetCollection**](GameCenterMatchmakingQueuesAPI.md#gamecentermatchmakingqueuesgetcollection) | **GET** /v1/gameCenterMatchmakingQueues | 
[**gameCenterMatchmakingQueuesGetInstance**](GameCenterMatchmakingQueuesAPI.md#gamecentermatchmakingqueuesgetinstance) | **GET** /v1/gameCenterMatchmakingQueues/{id} | 
[**gameCenterMatchmakingQueuesMatchmakingQueueSizesGetMetrics**](GameCenterMatchmakingQueuesAPI.md#gamecentermatchmakingqueuesmatchmakingqueuesizesgetmetrics) | **GET** /v1/gameCenterMatchmakingQueues/{id}/metrics/matchmakingQueueSizes | 
[**gameCenterMatchmakingQueuesMatchmakingRequestsGetMetrics**](GameCenterMatchmakingQueuesAPI.md#gamecentermatchmakingqueuesmatchmakingrequestsgetmetrics) | **GET** /v1/gameCenterMatchmakingQueues/{id}/metrics/matchmakingRequests | 
[**gameCenterMatchmakingQueuesMatchmakingSessionsGetMetrics**](GameCenterMatchmakingQueuesAPI.md#gamecentermatchmakingqueuesmatchmakingsessionsgetmetrics) | **GET** /v1/gameCenterMatchmakingQueues/{id}/metrics/matchmakingSessions | 
[**gameCenterMatchmakingQueuesUpdateInstance**](GameCenterMatchmakingQueuesAPI.md#gamecentermatchmakingqueuesupdateinstance) | **PATCH** /v1/gameCenterMatchmakingQueues/{id} | 


# **gameCenterMatchmakingQueuesCreateInstance**
```swift
    open class func gameCenterMatchmakingQueuesCreateInstance(gameCenterMatchmakingQueueCreateRequest: GameCenterMatchmakingQueueCreateRequest, completion: @escaping (_ data: GameCenterMatchmakingQueueResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let gameCenterMatchmakingQueueCreateRequest = GameCenterMatchmakingQueueCreateRequest(data: GameCenterMatchmakingQueueCreateRequest_data(type: "type_example", attributes: GameCenterMatchmakingQueueCreateRequest_data_attributes(referenceName: "referenceName_example", classicMatchmakingBundleIds: ["classicMatchmakingBundleIds_example"]), relationships: GameCenterMatchmakingQueueCreateRequest_data_relationships(ruleSet: GameCenterMatchmakingQueueCreateRequest_data_relationships_ruleSet(data: GameCenterMatchmakingQueue_relationships_ruleSet_data(type: "type_example", id: "id_example")), experimentRuleSet: GameCenterMatchmakingQueue_relationships_ruleSet(data: nil)))) // GameCenterMatchmakingQueueCreateRequest | GameCenterMatchmakingQueue representation

GameCenterMatchmakingQueuesAPI.gameCenterMatchmakingQueuesCreateInstance(gameCenterMatchmakingQueueCreateRequest: gameCenterMatchmakingQueueCreateRequest) { (response, error) in
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
 **gameCenterMatchmakingQueueCreateRequest** | [**GameCenterMatchmakingQueueCreateRequest**](GameCenterMatchmakingQueueCreateRequest.md) | GameCenterMatchmakingQueue representation | 

### Return type

[**GameCenterMatchmakingQueueResponse**](GameCenterMatchmakingQueueResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **gameCenterMatchmakingQueuesDeleteInstance**
```swift
    open class func gameCenterMatchmakingQueuesDeleteInstance(id: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource

GameCenterMatchmakingQueuesAPI.gameCenterMatchmakingQueuesDeleteInstance(id: id) { (response, error) in
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

# **gameCenterMatchmakingQueuesExperimentMatchmakingQueueSizesGetMetrics**
```swift
    open class func gameCenterMatchmakingQueuesExperimentMatchmakingQueueSizesGetMetrics(id: String, granularity: Granularity_gameCenterMatchmakingQueuesExperimentMatchmakingQueueSizesGetMetrics, sort: [Sort_gameCenterMatchmakingQueuesExperimentMatchmakingQueueSizesGetMetrics]? = nil, limit: Int? = nil, completion: @escaping (_ data: GameCenterMatchmakingQueueSizesV1MetricResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let granularity = "granularity_example" // String | the granularity of the per-group dataset
let sort = ["sort_example"] // [String] | comma-separated list of sort expressions; metrics will be sorted as specified (optional)
let limit = 987 // Int | maximum number of groups to return per page (optional)

GameCenterMatchmakingQueuesAPI.gameCenterMatchmakingQueuesExperimentMatchmakingQueueSizesGetMetrics(id: id, granularity: granularity, sort: sort, limit: limit) { (response, error) in
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
 **sort** | [**[String]**](String.md) | comma-separated list of sort expressions; metrics will be sorted as specified | [optional] 
 **limit** | **Int** | maximum number of groups to return per page | [optional] 

### Return type

[**GameCenterMatchmakingQueueSizesV1MetricResponse**](GameCenterMatchmakingQueueSizesV1MetricResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **gameCenterMatchmakingQueuesExperimentMatchmakingRequestsGetMetrics**
```swift
    open class func gameCenterMatchmakingQueuesExperimentMatchmakingRequestsGetMetrics(id: String, granularity: Granularity_gameCenterMatchmakingQueuesExperimentMatchmakingRequestsGetMetrics, groupBy: [GroupBy_gameCenterMatchmakingQueuesExperimentMatchmakingRequestsGetMetrics]? = nil, filterResult: FilterResult_gameCenterMatchmakingQueuesExperimentMatchmakingRequestsGetMetrics? = nil, filterGameCenterDetail: String? = nil, sort: [Sort_gameCenterMatchmakingQueuesExperimentMatchmakingRequestsGetMetrics]? = nil, limit: Int? = nil, completion: @escaping (_ data: GameCenterMatchmakingQueueRequestsV1MetricResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let granularity = "granularity_example" // String | the granularity of the per-group dataset
let groupBy = ["groupBy_example"] // [String] | the dimension by which to group the results (optional)
let filterResult = "filterResult_example" // String | filter by 'result' attribute dimension (optional)
let filterGameCenterDetail = "filterGameCenterDetail_example" // String | filter by 'gameCenterDetail' relationship dimension (optional)
let sort = ["sort_example"] // [String] | comma-separated list of sort expressions; metrics will be sorted as specified (optional)
let limit = 987 // Int | maximum number of groups to return per page (optional)

GameCenterMatchmakingQueuesAPI.gameCenterMatchmakingQueuesExperimentMatchmakingRequestsGetMetrics(id: id, granularity: granularity, groupBy: groupBy, filterResult: filterResult, filterGameCenterDetail: filterGameCenterDetail, sort: sort, limit: limit) { (response, error) in
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
 **filterGameCenterDetail** | **String** | filter by &#39;gameCenterDetail&#39; relationship dimension | [optional] 
 **sort** | [**[String]**](String.md) | comma-separated list of sort expressions; metrics will be sorted as specified | [optional] 
 **limit** | **Int** | maximum number of groups to return per page | [optional] 

### Return type

[**GameCenterMatchmakingQueueRequestsV1MetricResponse**](GameCenterMatchmakingQueueRequestsV1MetricResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **gameCenterMatchmakingQueuesGetCollection**
```swift
    open class func gameCenterMatchmakingQueuesGetCollection(fieldsGameCenterMatchmakingQueues: [FieldsGameCenterMatchmakingQueues_gameCenterMatchmakingQueuesGetCollection]? = nil, limit: Int? = nil, include: [Include_gameCenterMatchmakingQueuesGetCollection]? = nil, completion: @escaping (_ data: GameCenterMatchmakingQueuesResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let fieldsGameCenterMatchmakingQueues = ["fieldsGameCenterMatchmakingQueues_example"] // [String] | the fields to include for returned resources of type gameCenterMatchmakingQueues (optional)
let limit = 987 // Int | maximum resources per page (optional)
let include = ["include_example"] // [String] | comma-separated list of relationships to include (optional)

GameCenterMatchmakingQueuesAPI.gameCenterMatchmakingQueuesGetCollection(fieldsGameCenterMatchmakingQueues: fieldsGameCenterMatchmakingQueues, limit: limit, include: include) { (response, error) in
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
 **fieldsGameCenterMatchmakingQueues** | [**[String]**](String.md) | the fields to include for returned resources of type gameCenterMatchmakingQueues | [optional] 
 **limit** | **Int** | maximum resources per page | [optional] 
 **include** | [**[String]**](String.md) | comma-separated list of relationships to include | [optional] 

### Return type

[**GameCenterMatchmakingQueuesResponse**](GameCenterMatchmakingQueuesResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **gameCenterMatchmakingQueuesGetInstance**
```swift
    open class func gameCenterMatchmakingQueuesGetInstance(id: String, fieldsGameCenterMatchmakingQueues: [FieldsGameCenterMatchmakingQueues_gameCenterMatchmakingQueuesGetInstance]? = nil, include: [Include_gameCenterMatchmakingQueuesGetInstance]? = nil, completion: @escaping (_ data: GameCenterMatchmakingQueueResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let fieldsGameCenterMatchmakingQueues = ["fieldsGameCenterMatchmakingQueues_example"] // [String] | the fields to include for returned resources of type gameCenterMatchmakingQueues (optional)
let include = ["include_example"] // [String] | comma-separated list of relationships to include (optional)

GameCenterMatchmakingQueuesAPI.gameCenterMatchmakingQueuesGetInstance(id: id, fieldsGameCenterMatchmakingQueues: fieldsGameCenterMatchmakingQueues, include: include) { (response, error) in
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
 **fieldsGameCenterMatchmakingQueues** | [**[String]**](String.md) | the fields to include for returned resources of type gameCenterMatchmakingQueues | [optional] 
 **include** | [**[String]**](String.md) | comma-separated list of relationships to include | [optional] 

### Return type

[**GameCenterMatchmakingQueueResponse**](GameCenterMatchmakingQueueResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **gameCenterMatchmakingQueuesMatchmakingQueueSizesGetMetrics**
```swift
    open class func gameCenterMatchmakingQueuesMatchmakingQueueSizesGetMetrics(id: String, granularity: Granularity_gameCenterMatchmakingQueuesMatchmakingQueueSizesGetMetrics, sort: [Sort_gameCenterMatchmakingQueuesMatchmakingQueueSizesGetMetrics]? = nil, limit: Int? = nil, completion: @escaping (_ data: GameCenterMatchmakingQueueSizesV1MetricResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let granularity = "granularity_example" // String | the granularity of the per-group dataset
let sort = ["sort_example"] // [String] | comma-separated list of sort expressions; metrics will be sorted as specified (optional)
let limit = 987 // Int | maximum number of groups to return per page (optional)

GameCenterMatchmakingQueuesAPI.gameCenterMatchmakingQueuesMatchmakingQueueSizesGetMetrics(id: id, granularity: granularity, sort: sort, limit: limit) { (response, error) in
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
 **sort** | [**[String]**](String.md) | comma-separated list of sort expressions; metrics will be sorted as specified | [optional] 
 **limit** | **Int** | maximum number of groups to return per page | [optional] 

### Return type

[**GameCenterMatchmakingQueueSizesV1MetricResponse**](GameCenterMatchmakingQueueSizesV1MetricResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **gameCenterMatchmakingQueuesMatchmakingRequestsGetMetrics**
```swift
    open class func gameCenterMatchmakingQueuesMatchmakingRequestsGetMetrics(id: String, granularity: Granularity_gameCenterMatchmakingQueuesMatchmakingRequestsGetMetrics, groupBy: [GroupBy_gameCenterMatchmakingQueuesMatchmakingRequestsGetMetrics]? = nil, filterResult: FilterResult_gameCenterMatchmakingQueuesMatchmakingRequestsGetMetrics? = nil, filterGameCenterDetail: String? = nil, sort: [Sort_gameCenterMatchmakingQueuesMatchmakingRequestsGetMetrics]? = nil, limit: Int? = nil, completion: @escaping (_ data: GameCenterMatchmakingQueueRequestsV1MetricResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let granularity = "granularity_example" // String | the granularity of the per-group dataset
let groupBy = ["groupBy_example"] // [String] | the dimension by which to group the results (optional)
let filterResult = "filterResult_example" // String | filter by 'result' attribute dimension (optional)
let filterGameCenterDetail = "filterGameCenterDetail_example" // String | filter by 'gameCenterDetail' relationship dimension (optional)
let sort = ["sort_example"] // [String] | comma-separated list of sort expressions; metrics will be sorted as specified (optional)
let limit = 987 // Int | maximum number of groups to return per page (optional)

GameCenterMatchmakingQueuesAPI.gameCenterMatchmakingQueuesMatchmakingRequestsGetMetrics(id: id, granularity: granularity, groupBy: groupBy, filterResult: filterResult, filterGameCenterDetail: filterGameCenterDetail, sort: sort, limit: limit) { (response, error) in
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
 **filterGameCenterDetail** | **String** | filter by &#39;gameCenterDetail&#39; relationship dimension | [optional] 
 **sort** | [**[String]**](String.md) | comma-separated list of sort expressions; metrics will be sorted as specified | [optional] 
 **limit** | **Int** | maximum number of groups to return per page | [optional] 

### Return type

[**GameCenterMatchmakingQueueRequestsV1MetricResponse**](GameCenterMatchmakingQueueRequestsV1MetricResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **gameCenterMatchmakingQueuesMatchmakingSessionsGetMetrics**
```swift
    open class func gameCenterMatchmakingQueuesMatchmakingSessionsGetMetrics(id: String, granularity: Granularity_gameCenterMatchmakingQueuesMatchmakingSessionsGetMetrics, sort: [Sort_gameCenterMatchmakingQueuesMatchmakingSessionsGetMetrics]? = nil, limit: Int? = nil, completion: @escaping (_ data: GameCenterMatchmakingSessionsV1MetricResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let granularity = "granularity_example" // String | the granularity of the per-group dataset
let sort = ["sort_example"] // [String] | comma-separated list of sort expressions; metrics will be sorted as specified (optional)
let limit = 987 // Int | maximum number of groups to return per page (optional)

GameCenterMatchmakingQueuesAPI.gameCenterMatchmakingQueuesMatchmakingSessionsGetMetrics(id: id, granularity: granularity, sort: sort, limit: limit) { (response, error) in
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
 **sort** | [**[String]**](String.md) | comma-separated list of sort expressions; metrics will be sorted as specified | [optional] 
 **limit** | **Int** | maximum number of groups to return per page | [optional] 

### Return type

[**GameCenterMatchmakingSessionsV1MetricResponse**](GameCenterMatchmakingSessionsV1MetricResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **gameCenterMatchmakingQueuesUpdateInstance**
```swift
    open class func gameCenterMatchmakingQueuesUpdateInstance(id: String, gameCenterMatchmakingQueueUpdateRequest: GameCenterMatchmakingQueueUpdateRequest, completion: @escaping (_ data: GameCenterMatchmakingQueueResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let gameCenterMatchmakingQueueUpdateRequest = GameCenterMatchmakingQueueUpdateRequest(data: GameCenterMatchmakingQueueUpdateRequest_data(type: "type_example", id: "id_example", attributes: GameCenterMatchmakingQueueUpdateRequest_data_attributes(classicMatchmakingBundleIds: ["classicMatchmakingBundleIds_example"]), relationships: GameCenterMatchmakingQueue_relationships(ruleSet: GameCenterMatchmakingQueue_relationships_ruleSet(data: GameCenterMatchmakingQueue_relationships_ruleSet_data(type: "type_example", id: "id_example")), experimentRuleSet: nil))) // GameCenterMatchmakingQueueUpdateRequest | GameCenterMatchmakingQueue representation

GameCenterMatchmakingQueuesAPI.gameCenterMatchmakingQueuesUpdateInstance(id: id, gameCenterMatchmakingQueueUpdateRequest: gameCenterMatchmakingQueueUpdateRequest) { (response, error) in
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
 **gameCenterMatchmakingQueueUpdateRequest** | [**GameCenterMatchmakingQueueUpdateRequest**](GameCenterMatchmakingQueueUpdateRequest.md) | GameCenterMatchmakingQueue representation | 

### Return type

[**GameCenterMatchmakingQueueResponse**](GameCenterMatchmakingQueueResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

