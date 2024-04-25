# MetricsAPI

All URIs are relative to *https://api.appstoreconnect.apple.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**appsBetaTesterUsagesGetMetrics**](MetricsAPI.md#appsbetatesterusagesgetmetrics) | **GET** /v1/apps/{id}/metrics/betaTesterUsages | 
[**betaGroupsBetaTesterUsagesGetMetrics**](MetricsAPI.md#betagroupsbetatesterusagesgetmetrics) | **GET** /v1/betaGroups/{id}/metrics/betaTesterUsages | 
[**betaTestersBetaTesterUsagesGetMetrics**](MetricsAPI.md#betatestersbetatesterusagesgetmetrics) | **GET** /v1/betaTesters/{id}/metrics/betaTesterUsages | 
[**buildsBetaBuildUsagesGetMetrics**](MetricsAPI.md#buildsbetabuildusagesgetmetrics) | **GET** /v1/builds/{id}/metrics/betaBuildUsages | 
[**gameCenterDetailsClassicMatchmakingRequestsGetMetrics**](MetricsAPI.md#gamecenterdetailsclassicmatchmakingrequestsgetmetrics) | **GET** /v1/gameCenterDetails/{id}/metrics/classicMatchmakingRequests | 
[**gameCenterDetailsRuleBasedMatchmakingRequestsGetMetrics**](MetricsAPI.md#gamecenterdetailsrulebasedmatchmakingrequestsgetmetrics) | **GET** /v1/gameCenterDetails/{id}/metrics/ruleBasedMatchmakingRequests | 
[**gameCenterMatchmakingQueuesExperimentMatchmakingQueueSizesGetMetrics**](MetricsAPI.md#gamecentermatchmakingqueuesexperimentmatchmakingqueuesizesgetmetrics) | **GET** /v1/gameCenterMatchmakingQueues/{id}/metrics/experimentMatchmakingQueueSizes | 
[**gameCenterMatchmakingQueuesExperimentMatchmakingRequestsGetMetrics**](MetricsAPI.md#gamecentermatchmakingqueuesexperimentmatchmakingrequestsgetmetrics) | **GET** /v1/gameCenterMatchmakingQueues/{id}/metrics/experimentMatchmakingRequests | 
[**gameCenterMatchmakingQueuesMatchmakingQueueSizesGetMetrics**](MetricsAPI.md#gamecentermatchmakingqueuesmatchmakingqueuesizesgetmetrics) | **GET** /v1/gameCenterMatchmakingQueues/{id}/metrics/matchmakingQueueSizes | 
[**gameCenterMatchmakingQueuesMatchmakingRequestsGetMetrics**](MetricsAPI.md#gamecentermatchmakingqueuesmatchmakingrequestsgetmetrics) | **GET** /v1/gameCenterMatchmakingQueues/{id}/metrics/matchmakingRequests | 
[**gameCenterMatchmakingQueuesMatchmakingSessionsGetMetrics**](MetricsAPI.md#gamecentermatchmakingqueuesmatchmakingsessionsgetmetrics) | **GET** /v1/gameCenterMatchmakingQueues/{id}/metrics/matchmakingSessions | 
[**gameCenterMatchmakingRulesMatchmakingBooleanRuleResultsGetMetrics**](MetricsAPI.md#gamecentermatchmakingrulesmatchmakingbooleanruleresultsgetmetrics) | **GET** /v1/gameCenterMatchmakingRules/{id}/metrics/matchmakingBooleanRuleResults | 
[**gameCenterMatchmakingRulesMatchmakingNumberRuleResultsGetMetrics**](MetricsAPI.md#gamecentermatchmakingrulesmatchmakingnumberruleresultsgetmetrics) | **GET** /v1/gameCenterMatchmakingRules/{id}/metrics/matchmakingNumberRuleResults | 
[**gameCenterMatchmakingRulesMatchmakingRuleErrorsGetMetrics**](MetricsAPI.md#gamecentermatchmakingrulesmatchmakingruleerrorsgetmetrics) | **GET** /v1/gameCenterMatchmakingRules/{id}/metrics/matchmakingRuleErrors | 


# **appsBetaTesterUsagesGetMetrics**
```swift
    open class func appsBetaTesterUsagesGetMetrics(id: String, limit: Int? = nil, groupBy: [GroupBy_appsBetaTesterUsagesGetMetrics]? = nil, filterBetaTesters: String? = nil, period: Period_appsBetaTesterUsagesGetMetrics? = nil, completion: @escaping (_ data: AppsBetaTesterUsagesV1MetricResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let limit = 987 // Int | maximum number of groups to return per page (optional)
let groupBy = ["groupBy_example"] // [String] | the dimension by which to group the results (optional)
let filterBetaTesters = "filterBetaTesters_example" // String | filter by 'betaTesters' relationship dimension (optional)
let period = "period_example" // String | the duration of the reporting period (optional)

MetricsAPI.appsBetaTesterUsagesGetMetrics(id: id, limit: limit, groupBy: groupBy, filterBetaTesters: filterBetaTesters, period: period) { (response, error) in
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
 **limit** | **Int** | maximum number of groups to return per page | [optional] 
 **groupBy** | [**[String]**](String.md) | the dimension by which to group the results | [optional] 
 **filterBetaTesters** | **String** | filter by &#39;betaTesters&#39; relationship dimension | [optional] 
 **period** | **String** | the duration of the reporting period | [optional] 

### Return type

[**AppsBetaTesterUsagesV1MetricResponse**](AppsBetaTesterUsagesV1MetricResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **betaGroupsBetaTesterUsagesGetMetrics**
```swift
    open class func betaGroupsBetaTesterUsagesGetMetrics(id: String, limit: Int? = nil, groupBy: [GroupBy_betaGroupsBetaTesterUsagesGetMetrics]? = nil, filterBetaTesters: String? = nil, period: Period_betaGroupsBetaTesterUsagesGetMetrics? = nil, completion: @escaping (_ data: AppsBetaTesterUsagesV1MetricResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let limit = 987 // Int | maximum number of groups to return per page (optional)
let groupBy = ["groupBy_example"] // [String] | the dimension by which to group the results (optional)
let filterBetaTesters = "filterBetaTesters_example" // String | filter by 'betaTesters' relationship dimension (optional)
let period = "period_example" // String | the duration of the reporting period (optional)

MetricsAPI.betaGroupsBetaTesterUsagesGetMetrics(id: id, limit: limit, groupBy: groupBy, filterBetaTesters: filterBetaTesters, period: period) { (response, error) in
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
 **limit** | **Int** | maximum number of groups to return per page | [optional] 
 **groupBy** | [**[String]**](String.md) | the dimension by which to group the results | [optional] 
 **filterBetaTesters** | **String** | filter by &#39;betaTesters&#39; relationship dimension | [optional] 
 **period** | **String** | the duration of the reporting period | [optional] 

### Return type

[**AppsBetaTesterUsagesV1MetricResponse**](AppsBetaTesterUsagesV1MetricResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **betaTestersBetaTesterUsagesGetMetrics**
```swift
    open class func betaTestersBetaTesterUsagesGetMetrics(id: String, filterApps: String, limit: Int? = nil, period: Period_betaTestersBetaTesterUsagesGetMetrics? = nil, completion: @escaping (_ data: BetaTesterUsagesV1MetricResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let filterApps = "filterApps_example" // String | filter by 'apps' relationship dimension
let limit = 987 // Int | maximum number of groups to return per page (optional)
let period = "period_example" // String | the duration of the reporting period (optional)

MetricsAPI.betaTestersBetaTesterUsagesGetMetrics(id: id, filterApps: filterApps, limit: limit, period: period) { (response, error) in
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
 **filterApps** | **String** | filter by &#39;apps&#39; relationship dimension | 
 **limit** | **Int** | maximum number of groups to return per page | [optional] 
 **period** | **String** | the duration of the reporting period | [optional] 

### Return type

[**BetaTesterUsagesV1MetricResponse**](BetaTesterUsagesV1MetricResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **buildsBetaBuildUsagesGetMetrics**
```swift
    open class func buildsBetaBuildUsagesGetMetrics(id: String, limit: Int? = nil, completion: @escaping (_ data: BetaBuildUsagesV1MetricResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let limit = 987 // Int | maximum number of groups to return per page (optional)

MetricsAPI.buildsBetaBuildUsagesGetMetrics(id: id, limit: limit) { (response, error) in
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
 **limit** | **Int** | maximum number of groups to return per page | [optional] 

### Return type

[**BetaBuildUsagesV1MetricResponse**](BetaBuildUsagesV1MetricResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **gameCenterDetailsClassicMatchmakingRequestsGetMetrics**
```swift
    open class func gameCenterDetailsClassicMatchmakingRequestsGetMetrics(id: String, granularity: Granularity_gameCenterDetailsClassicMatchmakingRequestsGetMetrics, limit: Int? = nil, groupBy: [GroupBy_gameCenterDetailsClassicMatchmakingRequestsGetMetrics]? = nil, filterResult: FilterResult_gameCenterDetailsClassicMatchmakingRequestsGetMetrics? = nil, sort: [Sort_gameCenterDetailsClassicMatchmakingRequestsGetMetrics]? = nil, completion: @escaping (_ data: GameCenterMatchmakingAppRequestsV1MetricResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let granularity = "granularity_example" // String | the granularity of the per-group dataset
let limit = 987 // Int | maximum number of groups to return per page (optional)
let groupBy = ["groupBy_example"] // [String] | the dimension by which to group the results (optional)
let filterResult = "filterResult_example" // String | filter by 'result' attribute dimension (optional)
let sort = ["sort_example"] // [String] | comma-separated list of sort expressions; metrics will be sorted as specified (optional)

MetricsAPI.gameCenterDetailsClassicMatchmakingRequestsGetMetrics(id: id, granularity: granularity, limit: limit, groupBy: groupBy, filterResult: filterResult, sort: sort) { (response, error) in
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
 **limit** | **Int** | maximum number of groups to return per page | [optional] 
 **groupBy** | [**[String]**](String.md) | the dimension by which to group the results | [optional] 
 **filterResult** | **String** | filter by &#39;result&#39; attribute dimension | [optional] 
 **sort** | [**[String]**](String.md) | comma-separated list of sort expressions; metrics will be sorted as specified | [optional] 

### Return type

[**GameCenterMatchmakingAppRequestsV1MetricResponse**](GameCenterMatchmakingAppRequestsV1MetricResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **gameCenterDetailsRuleBasedMatchmakingRequestsGetMetrics**
```swift
    open class func gameCenterDetailsRuleBasedMatchmakingRequestsGetMetrics(id: String, granularity: Granularity_gameCenterDetailsRuleBasedMatchmakingRequestsGetMetrics, limit: Int? = nil, groupBy: [GroupBy_gameCenterDetailsRuleBasedMatchmakingRequestsGetMetrics]? = nil, filterResult: FilterResult_gameCenterDetailsRuleBasedMatchmakingRequestsGetMetrics? = nil, sort: [Sort_gameCenterDetailsRuleBasedMatchmakingRequestsGetMetrics]? = nil, completion: @escaping (_ data: GameCenterMatchmakingAppRequestsV1MetricResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let granularity = "granularity_example" // String | the granularity of the per-group dataset
let limit = 987 // Int | maximum number of groups to return per page (optional)
let groupBy = ["groupBy_example"] // [String] | the dimension by which to group the results (optional)
let filterResult = "filterResult_example" // String | filter by 'result' attribute dimension (optional)
let sort = ["sort_example"] // [String] | comma-separated list of sort expressions; metrics will be sorted as specified (optional)

MetricsAPI.gameCenterDetailsRuleBasedMatchmakingRequestsGetMetrics(id: id, granularity: granularity, limit: limit, groupBy: groupBy, filterResult: filterResult, sort: sort) { (response, error) in
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
 **limit** | **Int** | maximum number of groups to return per page | [optional] 
 **groupBy** | [**[String]**](String.md) | the dimension by which to group the results | [optional] 
 **filterResult** | **String** | filter by &#39;result&#39; attribute dimension | [optional] 
 **sort** | [**[String]**](String.md) | comma-separated list of sort expressions; metrics will be sorted as specified | [optional] 

### Return type

[**GameCenterMatchmakingAppRequestsV1MetricResponse**](GameCenterMatchmakingAppRequestsV1MetricResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **gameCenterMatchmakingQueuesExperimentMatchmakingQueueSizesGetMetrics**
```swift
    open class func gameCenterMatchmakingQueuesExperimentMatchmakingQueueSizesGetMetrics(id: String, granularity: Granularity_gameCenterMatchmakingQueuesExperimentMatchmakingQueueSizesGetMetrics, limit: Int? = nil, sort: [Sort_gameCenterMatchmakingQueuesExperimentMatchmakingQueueSizesGetMetrics]? = nil, completion: @escaping (_ data: GameCenterMatchmakingQueueSizesV1MetricResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let granularity = "granularity_example" // String | the granularity of the per-group dataset
let limit = 987 // Int | maximum number of groups to return per page (optional)
let sort = ["sort_example"] // [String] | comma-separated list of sort expressions; metrics will be sorted as specified (optional)

MetricsAPI.gameCenterMatchmakingQueuesExperimentMatchmakingQueueSizesGetMetrics(id: id, granularity: granularity, limit: limit, sort: sort) { (response, error) in
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
 **limit** | **Int** | maximum number of groups to return per page | [optional] 
 **sort** | [**[String]**](String.md) | comma-separated list of sort expressions; metrics will be sorted as specified | [optional] 

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
    open class func gameCenterMatchmakingQueuesExperimentMatchmakingRequestsGetMetrics(id: String, granularity: Granularity_gameCenterMatchmakingQueuesExperimentMatchmakingRequestsGetMetrics, limit: Int? = nil, groupBy: [GroupBy_gameCenterMatchmakingQueuesExperimentMatchmakingRequestsGetMetrics]? = nil, filterResult: FilterResult_gameCenterMatchmakingQueuesExperimentMatchmakingRequestsGetMetrics? = nil, filterGameCenterDetail: String? = nil, sort: [Sort_gameCenterMatchmakingQueuesExperimentMatchmakingRequestsGetMetrics]? = nil, completion: @escaping (_ data: GameCenterMatchmakingQueueRequestsV1MetricResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let granularity = "granularity_example" // String | the granularity of the per-group dataset
let limit = 987 // Int | maximum number of groups to return per page (optional)
let groupBy = ["groupBy_example"] // [String] | the dimension by which to group the results (optional)
let filterResult = "filterResult_example" // String | filter by 'result' attribute dimension (optional)
let filterGameCenterDetail = "filterGameCenterDetail_example" // String | filter by 'gameCenterDetail' relationship dimension (optional)
let sort = ["sort_example"] // [String] | comma-separated list of sort expressions; metrics will be sorted as specified (optional)

MetricsAPI.gameCenterMatchmakingQueuesExperimentMatchmakingRequestsGetMetrics(id: id, granularity: granularity, limit: limit, groupBy: groupBy, filterResult: filterResult, filterGameCenterDetail: filterGameCenterDetail, sort: sort) { (response, error) in
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
 **limit** | **Int** | maximum number of groups to return per page | [optional] 
 **groupBy** | [**[String]**](String.md) | the dimension by which to group the results | [optional] 
 **filterResult** | **String** | filter by &#39;result&#39; attribute dimension | [optional] 
 **filterGameCenterDetail** | **String** | filter by &#39;gameCenterDetail&#39; relationship dimension | [optional] 
 **sort** | [**[String]**](String.md) | comma-separated list of sort expressions; metrics will be sorted as specified | [optional] 

### Return type

[**GameCenterMatchmakingQueueRequestsV1MetricResponse**](GameCenterMatchmakingQueueRequestsV1MetricResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **gameCenterMatchmakingQueuesMatchmakingQueueSizesGetMetrics**
```swift
    open class func gameCenterMatchmakingQueuesMatchmakingQueueSizesGetMetrics(id: String, granularity: Granularity_gameCenterMatchmakingQueuesMatchmakingQueueSizesGetMetrics, limit: Int? = nil, sort: [Sort_gameCenterMatchmakingQueuesMatchmakingQueueSizesGetMetrics]? = nil, completion: @escaping (_ data: GameCenterMatchmakingQueueSizesV1MetricResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let granularity = "granularity_example" // String | the granularity of the per-group dataset
let limit = 987 // Int | maximum number of groups to return per page (optional)
let sort = ["sort_example"] // [String] | comma-separated list of sort expressions; metrics will be sorted as specified (optional)

MetricsAPI.gameCenterMatchmakingQueuesMatchmakingQueueSizesGetMetrics(id: id, granularity: granularity, limit: limit, sort: sort) { (response, error) in
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
 **limit** | **Int** | maximum number of groups to return per page | [optional] 
 **sort** | [**[String]**](String.md) | comma-separated list of sort expressions; metrics will be sorted as specified | [optional] 

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
    open class func gameCenterMatchmakingQueuesMatchmakingRequestsGetMetrics(id: String, granularity: Granularity_gameCenterMatchmakingQueuesMatchmakingRequestsGetMetrics, limit: Int? = nil, groupBy: [GroupBy_gameCenterMatchmakingQueuesMatchmakingRequestsGetMetrics]? = nil, filterResult: FilterResult_gameCenterMatchmakingQueuesMatchmakingRequestsGetMetrics? = nil, filterGameCenterDetail: String? = nil, sort: [Sort_gameCenterMatchmakingQueuesMatchmakingRequestsGetMetrics]? = nil, completion: @escaping (_ data: GameCenterMatchmakingQueueRequestsV1MetricResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let granularity = "granularity_example" // String | the granularity of the per-group dataset
let limit = 987 // Int | maximum number of groups to return per page (optional)
let groupBy = ["groupBy_example"] // [String] | the dimension by which to group the results (optional)
let filterResult = "filterResult_example" // String | filter by 'result' attribute dimension (optional)
let filterGameCenterDetail = "filterGameCenterDetail_example" // String | filter by 'gameCenterDetail' relationship dimension (optional)
let sort = ["sort_example"] // [String] | comma-separated list of sort expressions; metrics will be sorted as specified (optional)

MetricsAPI.gameCenterMatchmakingQueuesMatchmakingRequestsGetMetrics(id: id, granularity: granularity, limit: limit, groupBy: groupBy, filterResult: filterResult, filterGameCenterDetail: filterGameCenterDetail, sort: sort) { (response, error) in
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
 **limit** | **Int** | maximum number of groups to return per page | [optional] 
 **groupBy** | [**[String]**](String.md) | the dimension by which to group the results | [optional] 
 **filterResult** | **String** | filter by &#39;result&#39; attribute dimension | [optional] 
 **filterGameCenterDetail** | **String** | filter by &#39;gameCenterDetail&#39; relationship dimension | [optional] 
 **sort** | [**[String]**](String.md) | comma-separated list of sort expressions; metrics will be sorted as specified | [optional] 

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
    open class func gameCenterMatchmakingQueuesMatchmakingSessionsGetMetrics(id: String, granularity: Granularity_gameCenterMatchmakingQueuesMatchmakingSessionsGetMetrics, limit: Int? = nil, sort: [Sort_gameCenterMatchmakingQueuesMatchmakingSessionsGetMetrics]? = nil, completion: @escaping (_ data: GameCenterMatchmakingSessionsV1MetricResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let granularity = "granularity_example" // String | the granularity of the per-group dataset
let limit = 987 // Int | maximum number of groups to return per page (optional)
let sort = ["sort_example"] // [String] | comma-separated list of sort expressions; metrics will be sorted as specified (optional)

MetricsAPI.gameCenterMatchmakingQueuesMatchmakingSessionsGetMetrics(id: id, granularity: granularity, limit: limit, sort: sort) { (response, error) in
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
 **limit** | **Int** | maximum number of groups to return per page | [optional] 
 **sort** | [**[String]**](String.md) | comma-separated list of sort expressions; metrics will be sorted as specified | [optional] 

### Return type

[**GameCenterMatchmakingSessionsV1MetricResponse**](GameCenterMatchmakingSessionsV1MetricResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **gameCenterMatchmakingRulesMatchmakingBooleanRuleResultsGetMetrics**
```swift
    open class func gameCenterMatchmakingRulesMatchmakingBooleanRuleResultsGetMetrics(id: String, granularity: Granularity_gameCenterMatchmakingRulesMatchmakingBooleanRuleResultsGetMetrics, limit: Int? = nil, groupBy: [GroupBy_gameCenterMatchmakingRulesMatchmakingBooleanRuleResultsGetMetrics]? = nil, filterResult: String? = nil, filterGameCenterMatchmakingQueue: String? = nil, sort: [Sort_gameCenterMatchmakingRulesMatchmakingBooleanRuleResultsGetMetrics]? = nil, completion: @escaping (_ data: GameCenterMatchmakingBooleanRuleResultsV1MetricResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let granularity = "granularity_example" // String | the granularity of the per-group dataset
let limit = 987 // Int | maximum number of groups to return per page (optional)
let groupBy = ["groupBy_example"] // [String] | the dimension by which to group the results (optional)
let filterResult = "filterResult_example" // String | filter by 'result' attribute dimension (optional)
let filterGameCenterMatchmakingQueue = "filterGameCenterMatchmakingQueue_example" // String | filter by 'gameCenterMatchmakingQueue' relationship dimension (optional)
let sort = ["sort_example"] // [String] | comma-separated list of sort expressions; metrics will be sorted as specified (optional)

MetricsAPI.gameCenterMatchmakingRulesMatchmakingBooleanRuleResultsGetMetrics(id: id, granularity: granularity, limit: limit, groupBy: groupBy, filterResult: filterResult, filterGameCenterMatchmakingQueue: filterGameCenterMatchmakingQueue, sort: sort) { (response, error) in
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
 **limit** | **Int** | maximum number of groups to return per page | [optional] 
 **groupBy** | [**[String]**](String.md) | the dimension by which to group the results | [optional] 
 **filterResult** | **String** | filter by &#39;result&#39; attribute dimension | [optional] 
 **filterGameCenterMatchmakingQueue** | **String** | filter by &#39;gameCenterMatchmakingQueue&#39; relationship dimension | [optional] 
 **sort** | [**[String]**](String.md) | comma-separated list of sort expressions; metrics will be sorted as specified | [optional] 

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
    open class func gameCenterMatchmakingRulesMatchmakingNumberRuleResultsGetMetrics(id: String, granularity: Granularity_gameCenterMatchmakingRulesMatchmakingNumberRuleResultsGetMetrics, limit: Int? = nil, groupBy: [GroupBy_gameCenterMatchmakingRulesMatchmakingNumberRuleResultsGetMetrics]? = nil, filterGameCenterMatchmakingQueue: String? = nil, sort: [Sort_gameCenterMatchmakingRulesMatchmakingNumberRuleResultsGetMetrics]? = nil, completion: @escaping (_ data: GameCenterMatchmakingNumberRuleResultsV1MetricResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let granularity = "granularity_example" // String | the granularity of the per-group dataset
let limit = 987 // Int | maximum number of groups to return per page (optional)
let groupBy = ["groupBy_example"] // [String] | the dimension by which to group the results (optional)
let filterGameCenterMatchmakingQueue = "filterGameCenterMatchmakingQueue_example" // String | filter by 'gameCenterMatchmakingQueue' relationship dimension (optional)
let sort = ["sort_example"] // [String] | comma-separated list of sort expressions; metrics will be sorted as specified (optional)

MetricsAPI.gameCenterMatchmakingRulesMatchmakingNumberRuleResultsGetMetrics(id: id, granularity: granularity, limit: limit, groupBy: groupBy, filterGameCenterMatchmakingQueue: filterGameCenterMatchmakingQueue, sort: sort) { (response, error) in
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
 **limit** | **Int** | maximum number of groups to return per page | [optional] 
 **groupBy** | [**[String]**](String.md) | the dimension by which to group the results | [optional] 
 **filterGameCenterMatchmakingQueue** | **String** | filter by &#39;gameCenterMatchmakingQueue&#39; relationship dimension | [optional] 
 **sort** | [**[String]**](String.md) | comma-separated list of sort expressions; metrics will be sorted as specified | [optional] 

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
    open class func gameCenterMatchmakingRulesMatchmakingRuleErrorsGetMetrics(id: String, granularity: Granularity_gameCenterMatchmakingRulesMatchmakingRuleErrorsGetMetrics, limit: Int? = nil, groupBy: [GroupBy_gameCenterMatchmakingRulesMatchmakingRuleErrorsGetMetrics]? = nil, filterGameCenterMatchmakingQueue: String? = nil, sort: [Sort_gameCenterMatchmakingRulesMatchmakingRuleErrorsGetMetrics]? = nil, completion: @escaping (_ data: GameCenterMatchmakingRuleErrorsV1MetricResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let granularity = "granularity_example" // String | the granularity of the per-group dataset
let limit = 987 // Int | maximum number of groups to return per page (optional)
let groupBy = ["groupBy_example"] // [String] | the dimension by which to group the results (optional)
let filterGameCenterMatchmakingQueue = "filterGameCenterMatchmakingQueue_example" // String | filter by 'gameCenterMatchmakingQueue' relationship dimension (optional)
let sort = ["sort_example"] // [String] | comma-separated list of sort expressions; metrics will be sorted as specified (optional)

MetricsAPI.gameCenterMatchmakingRulesMatchmakingRuleErrorsGetMetrics(id: id, granularity: granularity, limit: limit, groupBy: groupBy, filterGameCenterMatchmakingQueue: filterGameCenterMatchmakingQueue, sort: sort) { (response, error) in
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
 **limit** | **Int** | maximum number of groups to return per page | [optional] 
 **groupBy** | [**[String]**](String.md) | the dimension by which to group the results | [optional] 
 **filterGameCenterMatchmakingQueue** | **String** | filter by &#39;gameCenterMatchmakingQueue&#39; relationship dimension | [optional] 
 **sort** | [**[String]**](String.md) | comma-separated list of sort expressions; metrics will be sorted as specified | [optional] 

### Return type

[**GameCenterMatchmakingRuleErrorsV1MetricResponse**](GameCenterMatchmakingRuleErrorsV1MetricResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

