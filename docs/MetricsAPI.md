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
    open class func appsBetaTesterUsagesGetMetrics(id: String, period: Period_appsBetaTesterUsagesGetMetrics? = nil, groupBy: [GroupBy_appsBetaTesterUsagesGetMetrics]? = nil, filterBetaTesters: String? = nil, limit: Int? = nil, completion: @escaping (_ data: AppsBetaTesterUsagesV1MetricResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let period = "period_example" // String | the duration of the reporting period (optional)
let groupBy = ["groupBy_example"] // [String] | the dimension by which to group the results (optional)
let filterBetaTesters = "filterBetaTesters_example" // String | filter by 'betaTesters' relationship dimension (optional)
let limit = 987 // Int | maximum number of groups to return per page (optional)

MetricsAPI.appsBetaTesterUsagesGetMetrics(id: id, period: period, groupBy: groupBy, filterBetaTesters: filterBetaTesters, limit: limit) { (response, error) in
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
 **period** | **String** | the duration of the reporting period | [optional] 
 **groupBy** | [**[String]**](String.md) | the dimension by which to group the results | [optional] 
 **filterBetaTesters** | **String** | filter by &#39;betaTesters&#39; relationship dimension | [optional] 
 **limit** | **Int** | maximum number of groups to return per page | [optional] 

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
    open class func betaGroupsBetaTesterUsagesGetMetrics(id: String, period: Period_betaGroupsBetaTesterUsagesGetMetrics? = nil, groupBy: [GroupBy_betaGroupsBetaTesterUsagesGetMetrics]? = nil, filterBetaTesters: String? = nil, limit: Int? = nil, completion: @escaping (_ data: AppsBetaTesterUsagesV1MetricResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let period = "period_example" // String | the duration of the reporting period (optional)
let groupBy = ["groupBy_example"] // [String] | the dimension by which to group the results (optional)
let filterBetaTesters = "filterBetaTesters_example" // String | filter by 'betaTesters' relationship dimension (optional)
let limit = 987 // Int | maximum number of groups to return per page (optional)

MetricsAPI.betaGroupsBetaTesterUsagesGetMetrics(id: id, period: period, groupBy: groupBy, filterBetaTesters: filterBetaTesters, limit: limit) { (response, error) in
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
 **period** | **String** | the duration of the reporting period | [optional] 
 **groupBy** | [**[String]**](String.md) | the dimension by which to group the results | [optional] 
 **filterBetaTesters** | **String** | filter by &#39;betaTesters&#39; relationship dimension | [optional] 
 **limit** | **Int** | maximum number of groups to return per page | [optional] 

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
    open class func betaTestersBetaTesterUsagesGetMetrics(id: String, filterApps: String, period: Period_betaTestersBetaTesterUsagesGetMetrics? = nil, limit: Int? = nil, completion: @escaping (_ data: BetaTesterUsagesV1MetricResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let filterApps = "filterApps_example" // String | filter by 'apps' relationship dimension
let period = "period_example" // String | the duration of the reporting period (optional)
let limit = 987 // Int | maximum number of groups to return per page (optional)

MetricsAPI.betaTestersBetaTesterUsagesGetMetrics(id: id, filterApps: filterApps, period: period, limit: limit) { (response, error) in
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
 **period** | **String** | the duration of the reporting period | [optional] 
 **limit** | **Int** | maximum number of groups to return per page | [optional] 

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
    open class func gameCenterDetailsClassicMatchmakingRequestsGetMetrics(id: String, granularity: Granularity_gameCenterDetailsClassicMatchmakingRequestsGetMetrics, groupBy: [GroupBy_gameCenterDetailsClassicMatchmakingRequestsGetMetrics]? = nil, filterResult: FilterResult_gameCenterDetailsClassicMatchmakingRequestsGetMetrics? = nil, sort: [Sort_gameCenterDetailsClassicMatchmakingRequestsGetMetrics]? = nil, limit: Int? = nil, completion: @escaping (_ data: GameCenterMatchmakingAppRequestsV1MetricResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let granularity = "granularity_example" // String | the granularity of the per-group dataset
let groupBy = ["groupBy_example"] // [String] | the dimension by which to group the results (optional)
let filterResult = "filterResult_example" // String | filter by 'result' attribute dimension (optional)
let sort = ["sort_example"] // [String] | comma-separated list of sort expressions; metrics will be sorted as specified (optional)
let limit = 987 // Int | maximum number of groups to return per page (optional)

MetricsAPI.gameCenterDetailsClassicMatchmakingRequestsGetMetrics(id: id, granularity: granularity, groupBy: groupBy, filterResult: filterResult, sort: sort, limit: limit) { (response, error) in
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
 **sort** | [**[String]**](String.md) | comma-separated list of sort expressions; metrics will be sorted as specified | [optional] 
 **limit** | **Int** | maximum number of groups to return per page | [optional] 

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
    open class func gameCenterDetailsRuleBasedMatchmakingRequestsGetMetrics(id: String, granularity: Granularity_gameCenterDetailsRuleBasedMatchmakingRequestsGetMetrics, groupBy: [GroupBy_gameCenterDetailsRuleBasedMatchmakingRequestsGetMetrics]? = nil, filterResult: FilterResult_gameCenterDetailsRuleBasedMatchmakingRequestsGetMetrics? = nil, sort: [Sort_gameCenterDetailsRuleBasedMatchmakingRequestsGetMetrics]? = nil, limit: Int? = nil, completion: @escaping (_ data: GameCenterMatchmakingAppRequestsV1MetricResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let granularity = "granularity_example" // String | the granularity of the per-group dataset
let groupBy = ["groupBy_example"] // [String] | the dimension by which to group the results (optional)
let filterResult = "filterResult_example" // String | filter by 'result' attribute dimension (optional)
let sort = ["sort_example"] // [String] | comma-separated list of sort expressions; metrics will be sorted as specified (optional)
let limit = 987 // Int | maximum number of groups to return per page (optional)

MetricsAPI.gameCenterDetailsRuleBasedMatchmakingRequestsGetMetrics(id: id, granularity: granularity, groupBy: groupBy, filterResult: filterResult, sort: sort, limit: limit) { (response, error) in
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
 **sort** | [**[String]**](String.md) | comma-separated list of sort expressions; metrics will be sorted as specified | [optional] 
 **limit** | **Int** | maximum number of groups to return per page | [optional] 

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

MetricsAPI.gameCenterMatchmakingQueuesExperimentMatchmakingQueueSizesGetMetrics(id: id, granularity: granularity, sort: sort, limit: limit) { (response, error) in
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

MetricsAPI.gameCenterMatchmakingQueuesExperimentMatchmakingRequestsGetMetrics(id: id, granularity: granularity, groupBy: groupBy, filterResult: filterResult, filterGameCenterDetail: filterGameCenterDetail, sort: sort, limit: limit) { (response, error) in
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

MetricsAPI.gameCenterMatchmakingQueuesMatchmakingQueueSizesGetMetrics(id: id, granularity: granularity, sort: sort, limit: limit) { (response, error) in
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

MetricsAPI.gameCenterMatchmakingQueuesMatchmakingRequestsGetMetrics(id: id, granularity: granularity, groupBy: groupBy, filterResult: filterResult, filterGameCenterDetail: filterGameCenterDetail, sort: sort, limit: limit) { (response, error) in
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

MetricsAPI.gameCenterMatchmakingQueuesMatchmakingSessionsGetMetrics(id: id, granularity: granularity, sort: sort, limit: limit) { (response, error) in
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

MetricsAPI.gameCenterMatchmakingRulesMatchmakingBooleanRuleResultsGetMetrics(id: id, granularity: granularity, groupBy: groupBy, filterResult: filterResult, filterGameCenterMatchmakingQueue: filterGameCenterMatchmakingQueue, sort: sort, limit: limit) { (response, error) in
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

MetricsAPI.gameCenterMatchmakingRulesMatchmakingNumberRuleResultsGetMetrics(id: id, granularity: granularity, groupBy: groupBy, filterGameCenterMatchmakingQueue: filterGameCenterMatchmakingQueue, sort: sort, limit: limit) { (response, error) in
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

MetricsAPI.gameCenterMatchmakingRulesMatchmakingRuleErrorsGetMetrics(id: id, granularity: granularity, groupBy: groupBy, filterGameCenterMatchmakingQueue: filterGameCenterMatchmakingQueue, sort: sort, limit: limit) { (response, error) in
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

