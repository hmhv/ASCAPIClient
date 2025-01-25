# GameCenterDetailsAPI

All URIs are relative to *https://api.appstoreconnect.apple.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**gameCenterDetailsAchievementReleasesGetToManyRelated**](GameCenterDetailsAPI.md#gamecenterdetailsachievementreleasesgettomanyrelated) | **GET** /v1/gameCenterDetails/{id}/achievementReleases | 
[**gameCenterDetailsClassicMatchmakingRequestsGetMetrics**](GameCenterDetailsAPI.md#gamecenterdetailsclassicmatchmakingrequestsgetmetrics) | **GET** /v1/gameCenterDetails/{id}/metrics/classicMatchmakingRequests | 
[**gameCenterDetailsCreateInstance**](GameCenterDetailsAPI.md#gamecenterdetailscreateinstance) | **POST** /v1/gameCenterDetails | 
[**gameCenterDetailsGameCenterAchievementsGetToManyRelated**](GameCenterDetailsAPI.md#gamecenterdetailsgamecenterachievementsgettomanyrelated) | **GET** /v1/gameCenterDetails/{id}/gameCenterAchievements | 
[**gameCenterDetailsGameCenterAchievementsGetToManyRelationship**](GameCenterDetailsAPI.md#gamecenterdetailsgamecenterachievementsgettomanyrelationship) | **GET** /v1/gameCenterDetails/{id}/relationships/gameCenterAchievements | 
[**gameCenterDetailsGameCenterAchievementsReplaceToManyRelationship**](GameCenterDetailsAPI.md#gamecenterdetailsgamecenterachievementsreplacetomanyrelationship) | **PATCH** /v1/gameCenterDetails/{id}/relationships/gameCenterAchievements | 
[**gameCenterDetailsGameCenterAppVersionsGetToManyRelated**](GameCenterDetailsAPI.md#gamecenterdetailsgamecenterappversionsgettomanyrelated) | **GET** /v1/gameCenterDetails/{id}/gameCenterAppVersions | 
[**gameCenterDetailsGameCenterGroupGetToOneRelated**](GameCenterDetailsAPI.md#gamecenterdetailsgamecentergroupgettoonerelated) | **GET** /v1/gameCenterDetails/{id}/gameCenterGroup | 
[**gameCenterDetailsGameCenterLeaderboardSetsGetToManyRelated**](GameCenterDetailsAPI.md#gamecenterdetailsgamecenterleaderboardsetsgettomanyrelated) | **GET** /v1/gameCenterDetails/{id}/gameCenterLeaderboardSets | 
[**gameCenterDetailsGameCenterLeaderboardSetsGetToManyRelationship**](GameCenterDetailsAPI.md#gamecenterdetailsgamecenterleaderboardsetsgettomanyrelationship) | **GET** /v1/gameCenterDetails/{id}/relationships/gameCenterLeaderboardSets | 
[**gameCenterDetailsGameCenterLeaderboardSetsReplaceToManyRelationship**](GameCenterDetailsAPI.md#gamecenterdetailsgamecenterleaderboardsetsreplacetomanyrelationship) | **PATCH** /v1/gameCenterDetails/{id}/relationships/gameCenterLeaderboardSets | 
[**gameCenterDetailsGameCenterLeaderboardsGetToManyRelated**](GameCenterDetailsAPI.md#gamecenterdetailsgamecenterleaderboardsgettomanyrelated) | **GET** /v1/gameCenterDetails/{id}/gameCenterLeaderboards | 
[**gameCenterDetailsGameCenterLeaderboardsGetToManyRelationship**](GameCenterDetailsAPI.md#gamecenterdetailsgamecenterleaderboardsgettomanyrelationship) | **GET** /v1/gameCenterDetails/{id}/relationships/gameCenterLeaderboards | 
[**gameCenterDetailsGameCenterLeaderboardsReplaceToManyRelationship**](GameCenterDetailsAPI.md#gamecenterdetailsgamecenterleaderboardsreplacetomanyrelationship) | **PATCH** /v1/gameCenterDetails/{id}/relationships/gameCenterLeaderboards | 
[**gameCenterDetailsGetInstance**](GameCenterDetailsAPI.md#gamecenterdetailsgetinstance) | **GET** /v1/gameCenterDetails/{id} | 
[**gameCenterDetailsLeaderboardReleasesGetToManyRelated**](GameCenterDetailsAPI.md#gamecenterdetailsleaderboardreleasesgettomanyrelated) | **GET** /v1/gameCenterDetails/{id}/leaderboardReleases | 
[**gameCenterDetailsLeaderboardSetReleasesGetToManyRelated**](GameCenterDetailsAPI.md#gamecenterdetailsleaderboardsetreleasesgettomanyrelated) | **GET** /v1/gameCenterDetails/{id}/leaderboardSetReleases | 
[**gameCenterDetailsRuleBasedMatchmakingRequestsGetMetrics**](GameCenterDetailsAPI.md#gamecenterdetailsrulebasedmatchmakingrequestsgetmetrics) | **GET** /v1/gameCenterDetails/{id}/metrics/ruleBasedMatchmakingRequests | 
[**gameCenterDetailsUpdateInstance**](GameCenterDetailsAPI.md#gamecenterdetailsupdateinstance) | **PATCH** /v1/gameCenterDetails/{id} | 


# **gameCenterDetailsAchievementReleasesGetToManyRelated**
```swift
    open class func gameCenterDetailsAchievementReleasesGetToManyRelated(id: String, filterLive: [String]? = nil, filterGameCenterAchievement: [String]? = nil, fieldsGameCenterAchievementReleases: [FieldsGameCenterAchievementReleases_gameCenterDetailsAchievementReleasesGetToManyRelated]? = nil, fieldsGameCenterDetails: [FieldsGameCenterDetails_gameCenterDetailsAchievementReleasesGetToManyRelated]? = nil, fieldsGameCenterAchievements: [FieldsGameCenterAchievements_gameCenterDetailsAchievementReleasesGetToManyRelated]? = nil, limit: Int? = nil, include: [Include_gameCenterDetailsAchievementReleasesGetToManyRelated]? = nil, completion: @escaping (_ data: GameCenterAchievementReleasesResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let filterLive = ["inner_example"] // [String] | filter by attribute 'live' (optional)
let filterGameCenterAchievement = ["inner_example"] // [String] | filter by id(s) of related 'gameCenterAchievement' (optional)
let fieldsGameCenterAchievementReleases = ["fieldsGameCenterAchievementReleases_example"] // [String] | the fields to include for returned resources of type gameCenterAchievementReleases (optional)
let fieldsGameCenterDetails = ["fieldsGameCenterDetails_example"] // [String] | the fields to include for returned resources of type gameCenterDetails (optional)
let fieldsGameCenterAchievements = ["fieldsGameCenterAchievements_example"] // [String] | the fields to include for returned resources of type gameCenterAchievements (optional)
let limit = 987 // Int | maximum resources per page (optional)
let include = ["include_example"] // [String] | comma-separated list of relationships to include (optional)

GameCenterDetailsAPI.gameCenterDetailsAchievementReleasesGetToManyRelated(id: id, filterLive: filterLive, filterGameCenterAchievement: filterGameCenterAchievement, fieldsGameCenterAchievementReleases: fieldsGameCenterAchievementReleases, fieldsGameCenterDetails: fieldsGameCenterDetails, fieldsGameCenterAchievements: fieldsGameCenterAchievements, limit: limit, include: include) { (response, error) in
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
 **filterLive** | [**[String]**](String.md) | filter by attribute &#39;live&#39; | [optional] 
 **filterGameCenterAchievement** | [**[String]**](String.md) | filter by id(s) of related &#39;gameCenterAchievement&#39; | [optional] 
 **fieldsGameCenterAchievementReleases** | [**[String]**](String.md) | the fields to include for returned resources of type gameCenterAchievementReleases | [optional] 
 **fieldsGameCenterDetails** | [**[String]**](String.md) | the fields to include for returned resources of type gameCenterDetails | [optional] 
 **fieldsGameCenterAchievements** | [**[String]**](String.md) | the fields to include for returned resources of type gameCenterAchievements | [optional] 
 **limit** | **Int** | maximum resources per page | [optional] 
 **include** | [**[String]**](String.md) | comma-separated list of relationships to include | [optional] 

### Return type

[**GameCenterAchievementReleasesResponse**](GameCenterAchievementReleasesResponse.md)

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

GameCenterDetailsAPI.gameCenterDetailsClassicMatchmakingRequestsGetMetrics(id: id, granularity: granularity, groupBy: groupBy, filterResult: filterResult, sort: sort, limit: limit) { (response, error) in
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

# **gameCenterDetailsCreateInstance**
```swift
    open class func gameCenterDetailsCreateInstance(gameCenterDetailCreateRequest: GameCenterDetailCreateRequest, completion: @escaping (_ data: GameCenterDetailResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let gameCenterDetailCreateRequest = GameCenterDetailCreateRequest(data: GameCenterDetailCreateRequest_data(type: "type_example", attributes: GameCenterDetailCreateRequest_data_attributes(challengeEnabled: false), relationships: AnalyticsReportRequestCreateRequest_data_relationships(app: AnalyticsReportRequestCreateRequest_data_relationships_app(data: AlternativeDistributionKeyCreateRequest_data_relationships_app_data(type: "type_example", id: "id_example"))))) // GameCenterDetailCreateRequest | GameCenterDetail representation

GameCenterDetailsAPI.gameCenterDetailsCreateInstance(gameCenterDetailCreateRequest: gameCenterDetailCreateRequest) { (response, error) in
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
 **gameCenterDetailCreateRequest** | [**GameCenterDetailCreateRequest**](GameCenterDetailCreateRequest.md) | GameCenterDetail representation | 

### Return type

[**GameCenterDetailResponse**](GameCenterDetailResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **gameCenterDetailsGameCenterAchievementsGetToManyRelated**
```swift
    open class func gameCenterDetailsGameCenterAchievementsGetToManyRelated(id: String, filterReferenceName: [String]? = nil, filterArchived: [String]? = nil, filterId: [String]? = nil, fieldsGameCenterAchievements: [FieldsGameCenterAchievements_gameCenterDetailsGameCenterAchievementsGetToManyRelated]? = nil, fieldsGameCenterDetails: [FieldsGameCenterDetails_gameCenterDetailsGameCenterAchievementsGetToManyRelated]? = nil, fieldsGameCenterGroups: [FieldsGameCenterGroups_gameCenterDetailsGameCenterAchievementsGetToManyRelated]? = nil, fieldsGameCenterAchievementLocalizations: [FieldsGameCenterAchievementLocalizations_gameCenterDetailsGameCenterAchievementsGetToManyRelated]? = nil, fieldsGameCenterAchievementReleases: [FieldsGameCenterAchievementReleases_gameCenterDetailsGameCenterAchievementsGetToManyRelated]? = nil, limit: Int? = nil, include: [Include_gameCenterDetailsGameCenterAchievementsGetToManyRelated]? = nil, limitLocalizations: Int? = nil, limitReleases: Int? = nil, completion: @escaping (_ data: GameCenterAchievementsResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let filterReferenceName = ["inner_example"] // [String] | filter by attribute 'referenceName' (optional)
let filterArchived = ["inner_example"] // [String] | filter by attribute 'archived' (optional)
let filterId = ["inner_example"] // [String] | filter by id(s) (optional)
let fieldsGameCenterAchievements = ["fieldsGameCenterAchievements_example"] // [String] | the fields to include for returned resources of type gameCenterAchievements (optional)
let fieldsGameCenterDetails = ["fieldsGameCenterDetails_example"] // [String] | the fields to include for returned resources of type gameCenterDetails (optional)
let fieldsGameCenterGroups = ["fieldsGameCenterGroups_example"] // [String] | the fields to include for returned resources of type gameCenterGroups (optional)
let fieldsGameCenterAchievementLocalizations = ["fieldsGameCenterAchievementLocalizations_example"] // [String] | the fields to include for returned resources of type gameCenterAchievementLocalizations (optional)
let fieldsGameCenterAchievementReleases = ["fieldsGameCenterAchievementReleases_example"] // [String] | the fields to include for returned resources of type gameCenterAchievementReleases (optional)
let limit = 987 // Int | maximum resources per page (optional)
let include = ["include_example"] // [String] | comma-separated list of relationships to include (optional)
let limitLocalizations = 987 // Int | maximum number of related localizations returned (when they are included) (optional)
let limitReleases = 987 // Int | maximum number of related releases returned (when they are included) (optional)

GameCenterDetailsAPI.gameCenterDetailsGameCenterAchievementsGetToManyRelated(id: id, filterReferenceName: filterReferenceName, filterArchived: filterArchived, filterId: filterId, fieldsGameCenterAchievements: fieldsGameCenterAchievements, fieldsGameCenterDetails: fieldsGameCenterDetails, fieldsGameCenterGroups: fieldsGameCenterGroups, fieldsGameCenterAchievementLocalizations: fieldsGameCenterAchievementLocalizations, fieldsGameCenterAchievementReleases: fieldsGameCenterAchievementReleases, limit: limit, include: include, limitLocalizations: limitLocalizations, limitReleases: limitReleases) { (response, error) in
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
 **filterReferenceName** | [**[String]**](String.md) | filter by attribute &#39;referenceName&#39; | [optional] 
 **filterArchived** | [**[String]**](String.md) | filter by attribute &#39;archived&#39; | [optional] 
 **filterId** | [**[String]**](String.md) | filter by id(s) | [optional] 
 **fieldsGameCenterAchievements** | [**[String]**](String.md) | the fields to include for returned resources of type gameCenterAchievements | [optional] 
 **fieldsGameCenterDetails** | [**[String]**](String.md) | the fields to include for returned resources of type gameCenterDetails | [optional] 
 **fieldsGameCenterGroups** | [**[String]**](String.md) | the fields to include for returned resources of type gameCenterGroups | [optional] 
 **fieldsGameCenterAchievementLocalizations** | [**[String]**](String.md) | the fields to include for returned resources of type gameCenterAchievementLocalizations | [optional] 
 **fieldsGameCenterAchievementReleases** | [**[String]**](String.md) | the fields to include for returned resources of type gameCenterAchievementReleases | [optional] 
 **limit** | **Int** | maximum resources per page | [optional] 
 **include** | [**[String]**](String.md) | comma-separated list of relationships to include | [optional] 
 **limitLocalizations** | **Int** | maximum number of related localizations returned (when they are included) | [optional] 
 **limitReleases** | **Int** | maximum number of related releases returned (when they are included) | [optional] 

### Return type

[**GameCenterAchievementsResponse**](GameCenterAchievementsResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **gameCenterDetailsGameCenterAchievementsGetToManyRelationship**
```swift
    open class func gameCenterDetailsGameCenterAchievementsGetToManyRelationship(id: String, limit: Int? = nil, completion: @escaping (_ data: GameCenterDetailGameCenterAchievementsLinkagesResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let limit = 987 // Int | maximum resources per page (optional)

GameCenterDetailsAPI.gameCenterDetailsGameCenterAchievementsGetToManyRelationship(id: id, limit: limit) { (response, error) in
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
 **limit** | **Int** | maximum resources per page | [optional] 

### Return type

[**GameCenterDetailGameCenterAchievementsLinkagesResponse**](GameCenterDetailGameCenterAchievementsLinkagesResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **gameCenterDetailsGameCenterAchievementsReplaceToManyRelationship**
```swift
    open class func gameCenterDetailsGameCenterAchievementsReplaceToManyRelationship(id: String, gameCenterDetailGameCenterAchievementsLinkagesRequest: GameCenterDetailGameCenterAchievementsLinkagesRequest, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let gameCenterDetailGameCenterAchievementsLinkagesRequest = GameCenterDetailGameCenterAchievementsLinkagesRequest(data: [GameCenterAchievementLocalization_relationships_gameCenterAchievement_data(type: "type_example", id: "id_example")]) // GameCenterDetailGameCenterAchievementsLinkagesRequest | List of related linkages

GameCenterDetailsAPI.gameCenterDetailsGameCenterAchievementsReplaceToManyRelationship(id: id, gameCenterDetailGameCenterAchievementsLinkagesRequest: gameCenterDetailGameCenterAchievementsLinkagesRequest) { (response, error) in
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
 **gameCenterDetailGameCenterAchievementsLinkagesRequest** | [**GameCenterDetailGameCenterAchievementsLinkagesRequest**](GameCenterDetailGameCenterAchievementsLinkagesRequest.md) | List of related linkages | 

### Return type

Void (empty response body)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **gameCenterDetailsGameCenterAppVersionsGetToManyRelated**
```swift
    open class func gameCenterDetailsGameCenterAppVersionsGetToManyRelated(id: String, filterEnabled: [String]? = nil, fieldsGameCenterAppVersions: [FieldsGameCenterAppVersions_gameCenterDetailsGameCenterAppVersionsGetToManyRelated]? = nil, fieldsAppStoreVersions: [FieldsAppStoreVersions_gameCenterDetailsGameCenterAppVersionsGetToManyRelated]? = nil, limit: Int? = nil, include: [Include_gameCenterDetailsGameCenterAppVersionsGetToManyRelated]? = nil, limitCompatibilityVersions: Int? = nil, completion: @escaping (_ data: GameCenterAppVersionsResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let filterEnabled = ["inner_example"] // [String] | filter by attribute 'enabled' (optional)
let fieldsGameCenterAppVersions = ["fieldsGameCenterAppVersions_example"] // [String] | the fields to include for returned resources of type gameCenterAppVersions (optional)
let fieldsAppStoreVersions = ["fieldsAppStoreVersions_example"] // [String] | the fields to include for returned resources of type appStoreVersions (optional)
let limit = 987 // Int | maximum resources per page (optional)
let include = ["include_example"] // [String] | comma-separated list of relationships to include (optional)
let limitCompatibilityVersions = 987 // Int | maximum number of related compatibilityVersions returned (when they are included) (optional)

GameCenterDetailsAPI.gameCenterDetailsGameCenterAppVersionsGetToManyRelated(id: id, filterEnabled: filterEnabled, fieldsGameCenterAppVersions: fieldsGameCenterAppVersions, fieldsAppStoreVersions: fieldsAppStoreVersions, limit: limit, include: include, limitCompatibilityVersions: limitCompatibilityVersions) { (response, error) in
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
 **filterEnabled** | [**[String]**](String.md) | filter by attribute &#39;enabled&#39; | [optional] 
 **fieldsGameCenterAppVersions** | [**[String]**](String.md) | the fields to include for returned resources of type gameCenterAppVersions | [optional] 
 **fieldsAppStoreVersions** | [**[String]**](String.md) | the fields to include for returned resources of type appStoreVersions | [optional] 
 **limit** | **Int** | maximum resources per page | [optional] 
 **include** | [**[String]**](String.md) | comma-separated list of relationships to include | [optional] 
 **limitCompatibilityVersions** | **Int** | maximum number of related compatibilityVersions returned (when they are included) | [optional] 

### Return type

[**GameCenterAppVersionsResponse**](GameCenterAppVersionsResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **gameCenterDetailsGameCenterGroupGetToOneRelated**
```swift
    open class func gameCenterDetailsGameCenterGroupGetToOneRelated(id: String, fieldsGameCenterGroups: [FieldsGameCenterGroups_gameCenterDetailsGameCenterGroupGetToOneRelated]? = nil, fieldsGameCenterDetails: [FieldsGameCenterDetails_gameCenterDetailsGameCenterGroupGetToOneRelated]? = nil, fieldsGameCenterLeaderboards: [FieldsGameCenterLeaderboards_gameCenterDetailsGameCenterGroupGetToOneRelated]? = nil, fieldsGameCenterLeaderboardSets: [FieldsGameCenterLeaderboardSets_gameCenterDetailsGameCenterGroupGetToOneRelated]? = nil, fieldsGameCenterAchievements: [FieldsGameCenterAchievements_gameCenterDetailsGameCenterGroupGetToOneRelated]? = nil, include: [Include_gameCenterDetailsGameCenterGroupGetToOneRelated]? = nil, limitGameCenterDetails: Int? = nil, limitGameCenterLeaderboards: Int? = nil, limitGameCenterLeaderboardSets: Int? = nil, limitGameCenterAchievements: Int? = nil, completion: @escaping (_ data: GameCenterGroupResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let fieldsGameCenterGroups = ["fieldsGameCenterGroups_example"] // [String] | the fields to include for returned resources of type gameCenterGroups (optional)
let fieldsGameCenterDetails = ["fieldsGameCenterDetails_example"] // [String] | the fields to include for returned resources of type gameCenterDetails (optional)
let fieldsGameCenterLeaderboards = ["fieldsGameCenterLeaderboards_example"] // [String] | the fields to include for returned resources of type gameCenterLeaderboards (optional)
let fieldsGameCenterLeaderboardSets = ["fieldsGameCenterLeaderboardSets_example"] // [String] | the fields to include for returned resources of type gameCenterLeaderboardSets (optional)
let fieldsGameCenterAchievements = ["fieldsGameCenterAchievements_example"] // [String] | the fields to include for returned resources of type gameCenterAchievements (optional)
let include = ["include_example"] // [String] | comma-separated list of relationships to include (optional)
let limitGameCenterDetails = 987 // Int | maximum number of related gameCenterDetails returned (when they are included) (optional)
let limitGameCenterLeaderboards = 987 // Int | maximum number of related gameCenterLeaderboards returned (when they are included) (optional)
let limitGameCenterLeaderboardSets = 987 // Int | maximum number of related gameCenterLeaderboardSets returned (when they are included) (optional)
let limitGameCenterAchievements = 987 // Int | maximum number of related gameCenterAchievements returned (when they are included) (optional)

GameCenterDetailsAPI.gameCenterDetailsGameCenterGroupGetToOneRelated(id: id, fieldsGameCenterGroups: fieldsGameCenterGroups, fieldsGameCenterDetails: fieldsGameCenterDetails, fieldsGameCenterLeaderboards: fieldsGameCenterLeaderboards, fieldsGameCenterLeaderboardSets: fieldsGameCenterLeaderboardSets, fieldsGameCenterAchievements: fieldsGameCenterAchievements, include: include, limitGameCenterDetails: limitGameCenterDetails, limitGameCenterLeaderboards: limitGameCenterLeaderboards, limitGameCenterLeaderboardSets: limitGameCenterLeaderboardSets, limitGameCenterAchievements: limitGameCenterAchievements) { (response, error) in
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
 **fieldsGameCenterGroups** | [**[String]**](String.md) | the fields to include for returned resources of type gameCenterGroups | [optional] 
 **fieldsGameCenterDetails** | [**[String]**](String.md) | the fields to include for returned resources of type gameCenterDetails | [optional] 
 **fieldsGameCenterLeaderboards** | [**[String]**](String.md) | the fields to include for returned resources of type gameCenterLeaderboards | [optional] 
 **fieldsGameCenterLeaderboardSets** | [**[String]**](String.md) | the fields to include for returned resources of type gameCenterLeaderboardSets | [optional] 
 **fieldsGameCenterAchievements** | [**[String]**](String.md) | the fields to include for returned resources of type gameCenterAchievements | [optional] 
 **include** | [**[String]**](String.md) | comma-separated list of relationships to include | [optional] 
 **limitGameCenterDetails** | **Int** | maximum number of related gameCenterDetails returned (when they are included) | [optional] 
 **limitGameCenterLeaderboards** | **Int** | maximum number of related gameCenterLeaderboards returned (when they are included) | [optional] 
 **limitGameCenterLeaderboardSets** | **Int** | maximum number of related gameCenterLeaderboardSets returned (when they are included) | [optional] 
 **limitGameCenterAchievements** | **Int** | maximum number of related gameCenterAchievements returned (when they are included) | [optional] 

### Return type

[**GameCenterGroupResponse**](GameCenterGroupResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **gameCenterDetailsGameCenterLeaderboardSetsGetToManyRelated**
```swift
    open class func gameCenterDetailsGameCenterLeaderboardSetsGetToManyRelated(id: String, filterReferenceName: [String]? = nil, filterId: [String]? = nil, fieldsGameCenterLeaderboardSets: [FieldsGameCenterLeaderboardSets_gameCenterDetailsGameCenterLeaderboardSetsGetToManyRelated]? = nil, fieldsGameCenterDetails: [FieldsGameCenterDetails_gameCenterDetailsGameCenterLeaderboardSetsGetToManyRelated]? = nil, fieldsGameCenterGroups: [FieldsGameCenterGroups_gameCenterDetailsGameCenterLeaderboardSetsGetToManyRelated]? = nil, fieldsGameCenterLeaderboardSetLocalizations: [FieldsGameCenterLeaderboardSetLocalizations_gameCenterDetailsGameCenterLeaderboardSetsGetToManyRelated]? = nil, fieldsGameCenterLeaderboards: [FieldsGameCenterLeaderboards_gameCenterDetailsGameCenterLeaderboardSetsGetToManyRelated]? = nil, fieldsGameCenterLeaderboardSetReleases: [FieldsGameCenterLeaderboardSetReleases_gameCenterDetailsGameCenterLeaderboardSetsGetToManyRelated]? = nil, limit: Int? = nil, include: [Include_gameCenterDetailsGameCenterLeaderboardSetsGetToManyRelated]? = nil, limitLocalizations: Int? = nil, limitGameCenterLeaderboards: Int? = nil, limitReleases: Int? = nil, completion: @escaping (_ data: GameCenterLeaderboardSetsResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let filterReferenceName = ["inner_example"] // [String] | filter by attribute 'referenceName' (optional)
let filterId = ["inner_example"] // [String] | filter by id(s) (optional)
let fieldsGameCenterLeaderboardSets = ["fieldsGameCenterLeaderboardSets_example"] // [String] | the fields to include for returned resources of type gameCenterLeaderboardSets (optional)
let fieldsGameCenterDetails = ["fieldsGameCenterDetails_example"] // [String] | the fields to include for returned resources of type gameCenterDetails (optional)
let fieldsGameCenterGroups = ["fieldsGameCenterGroups_example"] // [String] | the fields to include for returned resources of type gameCenterGroups (optional)
let fieldsGameCenterLeaderboardSetLocalizations = ["fieldsGameCenterLeaderboardSetLocalizations_example"] // [String] | the fields to include for returned resources of type gameCenterLeaderboardSetLocalizations (optional)
let fieldsGameCenterLeaderboards = ["fieldsGameCenterLeaderboards_example"] // [String] | the fields to include for returned resources of type gameCenterLeaderboards (optional)
let fieldsGameCenterLeaderboardSetReleases = ["fieldsGameCenterLeaderboardSetReleases_example"] // [String] | the fields to include for returned resources of type gameCenterLeaderboardSetReleases (optional)
let limit = 987 // Int | maximum resources per page (optional)
let include = ["include_example"] // [String] | comma-separated list of relationships to include (optional)
let limitLocalizations = 987 // Int | maximum number of related localizations returned (when they are included) (optional)
let limitGameCenterLeaderboards = 987 // Int | maximum number of related gameCenterLeaderboards returned (when they are included) (optional)
let limitReleases = 987 // Int | maximum number of related releases returned (when they are included) (optional)

GameCenterDetailsAPI.gameCenterDetailsGameCenterLeaderboardSetsGetToManyRelated(id: id, filterReferenceName: filterReferenceName, filterId: filterId, fieldsGameCenterLeaderboardSets: fieldsGameCenterLeaderboardSets, fieldsGameCenterDetails: fieldsGameCenterDetails, fieldsGameCenterGroups: fieldsGameCenterGroups, fieldsGameCenterLeaderboardSetLocalizations: fieldsGameCenterLeaderboardSetLocalizations, fieldsGameCenterLeaderboards: fieldsGameCenterLeaderboards, fieldsGameCenterLeaderboardSetReleases: fieldsGameCenterLeaderboardSetReleases, limit: limit, include: include, limitLocalizations: limitLocalizations, limitGameCenterLeaderboards: limitGameCenterLeaderboards, limitReleases: limitReleases) { (response, error) in
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
 **filterReferenceName** | [**[String]**](String.md) | filter by attribute &#39;referenceName&#39; | [optional] 
 **filterId** | [**[String]**](String.md) | filter by id(s) | [optional] 
 **fieldsGameCenterLeaderboardSets** | [**[String]**](String.md) | the fields to include for returned resources of type gameCenterLeaderboardSets | [optional] 
 **fieldsGameCenterDetails** | [**[String]**](String.md) | the fields to include for returned resources of type gameCenterDetails | [optional] 
 **fieldsGameCenterGroups** | [**[String]**](String.md) | the fields to include for returned resources of type gameCenterGroups | [optional] 
 **fieldsGameCenterLeaderboardSetLocalizations** | [**[String]**](String.md) | the fields to include for returned resources of type gameCenterLeaderboardSetLocalizations | [optional] 
 **fieldsGameCenterLeaderboards** | [**[String]**](String.md) | the fields to include for returned resources of type gameCenterLeaderboards | [optional] 
 **fieldsGameCenterLeaderboardSetReleases** | [**[String]**](String.md) | the fields to include for returned resources of type gameCenterLeaderboardSetReleases | [optional] 
 **limit** | **Int** | maximum resources per page | [optional] 
 **include** | [**[String]**](String.md) | comma-separated list of relationships to include | [optional] 
 **limitLocalizations** | **Int** | maximum number of related localizations returned (when they are included) | [optional] 
 **limitGameCenterLeaderboards** | **Int** | maximum number of related gameCenterLeaderboards returned (when they are included) | [optional] 
 **limitReleases** | **Int** | maximum number of related releases returned (when they are included) | [optional] 

### Return type

[**GameCenterLeaderboardSetsResponse**](GameCenterLeaderboardSetsResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **gameCenterDetailsGameCenterLeaderboardSetsGetToManyRelationship**
```swift
    open class func gameCenterDetailsGameCenterLeaderboardSetsGetToManyRelationship(id: String, limit: Int? = nil, completion: @escaping (_ data: GameCenterDetailGameCenterLeaderboardSetsLinkagesResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let limit = 987 // Int | maximum resources per page (optional)

GameCenterDetailsAPI.gameCenterDetailsGameCenterLeaderboardSetsGetToManyRelationship(id: id, limit: limit) { (response, error) in
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
 **limit** | **Int** | maximum resources per page | [optional] 

### Return type

[**GameCenterDetailGameCenterLeaderboardSetsLinkagesResponse**](GameCenterDetailGameCenterLeaderboardSetsLinkagesResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **gameCenterDetailsGameCenterLeaderboardSetsReplaceToManyRelationship**
```swift
    open class func gameCenterDetailsGameCenterLeaderboardSetsReplaceToManyRelationship(id: String, gameCenterDetailGameCenterLeaderboardSetsLinkagesRequest: GameCenterDetailGameCenterLeaderboardSetsLinkagesRequest, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let gameCenterDetailGameCenterLeaderboardSetsLinkagesRequest = GameCenterDetailGameCenterLeaderboardSetsLinkagesRequest(data: [GameCenterDetail_relationships_gameCenterLeaderboardSets_data_inner(type: "type_example", id: "id_example")]) // GameCenterDetailGameCenterLeaderboardSetsLinkagesRequest | List of related linkages

GameCenterDetailsAPI.gameCenterDetailsGameCenterLeaderboardSetsReplaceToManyRelationship(id: id, gameCenterDetailGameCenterLeaderboardSetsLinkagesRequest: gameCenterDetailGameCenterLeaderboardSetsLinkagesRequest) { (response, error) in
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
 **gameCenterDetailGameCenterLeaderboardSetsLinkagesRequest** | [**GameCenterDetailGameCenterLeaderboardSetsLinkagesRequest**](GameCenterDetailGameCenterLeaderboardSetsLinkagesRequest.md) | List of related linkages | 

### Return type

Void (empty response body)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **gameCenterDetailsGameCenterLeaderboardsGetToManyRelated**
```swift
    open class func gameCenterDetailsGameCenterLeaderboardsGetToManyRelated(id: String, filterReferenceName: [String]? = nil, filterArchived: [String]? = nil, filterId: [String]? = nil, fieldsGameCenterLeaderboards: [FieldsGameCenterLeaderboards_gameCenterDetailsGameCenterLeaderboardsGetToManyRelated]? = nil, fieldsGameCenterDetails: [FieldsGameCenterDetails_gameCenterDetailsGameCenterLeaderboardsGetToManyRelated]? = nil, fieldsGameCenterGroups: [FieldsGameCenterGroups_gameCenterDetailsGameCenterLeaderboardsGetToManyRelated]? = nil, fieldsGameCenterLeaderboardSets: [FieldsGameCenterLeaderboardSets_gameCenterDetailsGameCenterLeaderboardsGetToManyRelated]? = nil, fieldsGameCenterLeaderboardLocalizations: [FieldsGameCenterLeaderboardLocalizations_gameCenterDetailsGameCenterLeaderboardsGetToManyRelated]? = nil, fieldsGameCenterLeaderboardReleases: [FieldsGameCenterLeaderboardReleases_gameCenterDetailsGameCenterLeaderboardsGetToManyRelated]? = nil, limit: Int? = nil, include: [Include_gameCenterDetailsGameCenterLeaderboardsGetToManyRelated]? = nil, limitGameCenterLeaderboardSets: Int? = nil, limitLocalizations: Int? = nil, limitReleases: Int? = nil, completion: @escaping (_ data: GameCenterLeaderboardsResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let filterReferenceName = ["inner_example"] // [String] | filter by attribute 'referenceName' (optional)
let filterArchived = ["inner_example"] // [String] | filter by attribute 'archived' (optional)
let filterId = ["inner_example"] // [String] | filter by id(s) (optional)
let fieldsGameCenterLeaderboards = ["fieldsGameCenterLeaderboards_example"] // [String] | the fields to include for returned resources of type gameCenterLeaderboards (optional)
let fieldsGameCenterDetails = ["fieldsGameCenterDetails_example"] // [String] | the fields to include for returned resources of type gameCenterDetails (optional)
let fieldsGameCenterGroups = ["fieldsGameCenterGroups_example"] // [String] | the fields to include for returned resources of type gameCenterGroups (optional)
let fieldsGameCenterLeaderboardSets = ["fieldsGameCenterLeaderboardSets_example"] // [String] | the fields to include for returned resources of type gameCenterLeaderboardSets (optional)
let fieldsGameCenterLeaderboardLocalizations = ["fieldsGameCenterLeaderboardLocalizations_example"] // [String] | the fields to include for returned resources of type gameCenterLeaderboardLocalizations (optional)
let fieldsGameCenterLeaderboardReleases = ["fieldsGameCenterLeaderboardReleases_example"] // [String] | the fields to include for returned resources of type gameCenterLeaderboardReleases (optional)
let limit = 987 // Int | maximum resources per page (optional)
let include = ["include_example"] // [String] | comma-separated list of relationships to include (optional)
let limitGameCenterLeaderboardSets = 987 // Int | maximum number of related gameCenterLeaderboardSets returned (when they are included) (optional)
let limitLocalizations = 987 // Int | maximum number of related localizations returned (when they are included) (optional)
let limitReleases = 987 // Int | maximum number of related releases returned (when they are included) (optional)

GameCenterDetailsAPI.gameCenterDetailsGameCenterLeaderboardsGetToManyRelated(id: id, filterReferenceName: filterReferenceName, filterArchived: filterArchived, filterId: filterId, fieldsGameCenterLeaderboards: fieldsGameCenterLeaderboards, fieldsGameCenterDetails: fieldsGameCenterDetails, fieldsGameCenterGroups: fieldsGameCenterGroups, fieldsGameCenterLeaderboardSets: fieldsGameCenterLeaderboardSets, fieldsGameCenterLeaderboardLocalizations: fieldsGameCenterLeaderboardLocalizations, fieldsGameCenterLeaderboardReleases: fieldsGameCenterLeaderboardReleases, limit: limit, include: include, limitGameCenterLeaderboardSets: limitGameCenterLeaderboardSets, limitLocalizations: limitLocalizations, limitReleases: limitReleases) { (response, error) in
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
 **filterReferenceName** | [**[String]**](String.md) | filter by attribute &#39;referenceName&#39; | [optional] 
 **filterArchived** | [**[String]**](String.md) | filter by attribute &#39;archived&#39; | [optional] 
 **filterId** | [**[String]**](String.md) | filter by id(s) | [optional] 
 **fieldsGameCenterLeaderboards** | [**[String]**](String.md) | the fields to include for returned resources of type gameCenterLeaderboards | [optional] 
 **fieldsGameCenterDetails** | [**[String]**](String.md) | the fields to include for returned resources of type gameCenterDetails | [optional] 
 **fieldsGameCenterGroups** | [**[String]**](String.md) | the fields to include for returned resources of type gameCenterGroups | [optional] 
 **fieldsGameCenterLeaderboardSets** | [**[String]**](String.md) | the fields to include for returned resources of type gameCenterLeaderboardSets | [optional] 
 **fieldsGameCenterLeaderboardLocalizations** | [**[String]**](String.md) | the fields to include for returned resources of type gameCenterLeaderboardLocalizations | [optional] 
 **fieldsGameCenterLeaderboardReleases** | [**[String]**](String.md) | the fields to include for returned resources of type gameCenterLeaderboardReleases | [optional] 
 **limit** | **Int** | maximum resources per page | [optional] 
 **include** | [**[String]**](String.md) | comma-separated list of relationships to include | [optional] 
 **limitGameCenterLeaderboardSets** | **Int** | maximum number of related gameCenterLeaderboardSets returned (when they are included) | [optional] 
 **limitLocalizations** | **Int** | maximum number of related localizations returned (when they are included) | [optional] 
 **limitReleases** | **Int** | maximum number of related releases returned (when they are included) | [optional] 

### Return type

[**GameCenterLeaderboardsResponse**](GameCenterLeaderboardsResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **gameCenterDetailsGameCenterLeaderboardsGetToManyRelationship**
```swift
    open class func gameCenterDetailsGameCenterLeaderboardsGetToManyRelationship(id: String, limit: Int? = nil, completion: @escaping (_ data: GameCenterDetailGameCenterLeaderboardsLinkagesResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let limit = 987 // Int | maximum resources per page (optional)

GameCenterDetailsAPI.gameCenterDetailsGameCenterLeaderboardsGetToManyRelationship(id: id, limit: limit) { (response, error) in
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
 **limit** | **Int** | maximum resources per page | [optional] 

### Return type

[**GameCenterDetailGameCenterLeaderboardsLinkagesResponse**](GameCenterDetailGameCenterLeaderboardsLinkagesResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **gameCenterDetailsGameCenterLeaderboardsReplaceToManyRelationship**
```swift
    open class func gameCenterDetailsGameCenterLeaderboardsReplaceToManyRelationship(id: String, gameCenterDetailGameCenterLeaderboardsLinkagesRequest: GameCenterDetailGameCenterLeaderboardsLinkagesRequest, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let gameCenterDetailGameCenterLeaderboardsLinkagesRequest = GameCenterDetailGameCenterLeaderboardsLinkagesRequest(data: [GameCenterDetail_relationships_gameCenterLeaderboards_data_inner(type: "type_example", id: "id_example")]) // GameCenterDetailGameCenterLeaderboardsLinkagesRequest | List of related linkages

GameCenterDetailsAPI.gameCenterDetailsGameCenterLeaderboardsReplaceToManyRelationship(id: id, gameCenterDetailGameCenterLeaderboardsLinkagesRequest: gameCenterDetailGameCenterLeaderboardsLinkagesRequest) { (response, error) in
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
 **gameCenterDetailGameCenterLeaderboardsLinkagesRequest** | [**GameCenterDetailGameCenterLeaderboardsLinkagesRequest**](GameCenterDetailGameCenterLeaderboardsLinkagesRequest.md) | List of related linkages | 

### Return type

Void (empty response body)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **gameCenterDetailsGetInstance**
```swift
    open class func gameCenterDetailsGetInstance(id: String, fieldsGameCenterDetails: [FieldsGameCenterDetails_gameCenterDetailsGetInstance]? = nil, fieldsGameCenterAppVersions: [FieldsGameCenterAppVersions_gameCenterDetailsGetInstance]? = nil, fieldsGameCenterGroups: [FieldsGameCenterGroups_gameCenterDetailsGetInstance]? = nil, fieldsGameCenterLeaderboards: [FieldsGameCenterLeaderboards_gameCenterDetailsGetInstance]? = nil, fieldsGameCenterLeaderboardSets: [FieldsGameCenterLeaderboardSets_gameCenterDetailsGetInstance]? = nil, fieldsGameCenterAchievements: [FieldsGameCenterAchievements_gameCenterDetailsGetInstance]? = nil, fieldsGameCenterAchievementReleases: [FieldsGameCenterAchievementReleases_gameCenterDetailsGetInstance]? = nil, fieldsGameCenterLeaderboardReleases: [FieldsGameCenterLeaderboardReleases_gameCenterDetailsGetInstance]? = nil, fieldsGameCenterLeaderboardSetReleases: [FieldsGameCenterLeaderboardSetReleases_gameCenterDetailsGetInstance]? = nil, include: [Include_gameCenterDetailsGetInstance]? = nil, limitAchievementReleases: Int? = nil, limitGameCenterAchievements: Int? = nil, limitGameCenterAppVersions: Int? = nil, limitGameCenterLeaderboardSets: Int? = nil, limitGameCenterLeaderboards: Int? = nil, limitLeaderboardReleases: Int? = nil, limitLeaderboardSetReleases: Int? = nil, completion: @escaping (_ data: GameCenterDetailResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let fieldsGameCenterDetails = ["fieldsGameCenterDetails_example"] // [String] | the fields to include for returned resources of type gameCenterDetails (optional)
let fieldsGameCenterAppVersions = ["fieldsGameCenterAppVersions_example"] // [String] | the fields to include for returned resources of type gameCenterAppVersions (optional)
let fieldsGameCenterGroups = ["fieldsGameCenterGroups_example"] // [String] | the fields to include for returned resources of type gameCenterGroups (optional)
let fieldsGameCenterLeaderboards = ["fieldsGameCenterLeaderboards_example"] // [String] | the fields to include for returned resources of type gameCenterLeaderboards (optional)
let fieldsGameCenterLeaderboardSets = ["fieldsGameCenterLeaderboardSets_example"] // [String] | the fields to include for returned resources of type gameCenterLeaderboardSets (optional)
let fieldsGameCenterAchievements = ["fieldsGameCenterAchievements_example"] // [String] | the fields to include for returned resources of type gameCenterAchievements (optional)
let fieldsGameCenterAchievementReleases = ["fieldsGameCenterAchievementReleases_example"] // [String] | the fields to include for returned resources of type gameCenterAchievementReleases (optional)
let fieldsGameCenterLeaderboardReleases = ["fieldsGameCenterLeaderboardReleases_example"] // [String] | the fields to include for returned resources of type gameCenterLeaderboardReleases (optional)
let fieldsGameCenterLeaderboardSetReleases = ["fieldsGameCenterLeaderboardSetReleases_example"] // [String] | the fields to include for returned resources of type gameCenterLeaderboardSetReleases (optional)
let include = ["include_example"] // [String] | comma-separated list of relationships to include (optional)
let limitAchievementReleases = 987 // Int | maximum number of related achievementReleases returned (when they are included) (optional)
let limitGameCenterAchievements = 987 // Int | maximum number of related gameCenterAchievements returned (when they are included) (optional)
let limitGameCenterAppVersions = 987 // Int | maximum number of related gameCenterAppVersions returned (when they are included) (optional)
let limitGameCenterLeaderboardSets = 987 // Int | maximum number of related gameCenterLeaderboardSets returned (when they are included) (optional)
let limitGameCenterLeaderboards = 987 // Int | maximum number of related gameCenterLeaderboards returned (when they are included) (optional)
let limitLeaderboardReleases = 987 // Int | maximum number of related leaderboardReleases returned (when they are included) (optional)
let limitLeaderboardSetReleases = 987 // Int | maximum number of related leaderboardSetReleases returned (when they are included) (optional)

GameCenterDetailsAPI.gameCenterDetailsGetInstance(id: id, fieldsGameCenterDetails: fieldsGameCenterDetails, fieldsGameCenterAppVersions: fieldsGameCenterAppVersions, fieldsGameCenterGroups: fieldsGameCenterGroups, fieldsGameCenterLeaderboards: fieldsGameCenterLeaderboards, fieldsGameCenterLeaderboardSets: fieldsGameCenterLeaderboardSets, fieldsGameCenterAchievements: fieldsGameCenterAchievements, fieldsGameCenterAchievementReleases: fieldsGameCenterAchievementReleases, fieldsGameCenterLeaderboardReleases: fieldsGameCenterLeaderboardReleases, fieldsGameCenterLeaderboardSetReleases: fieldsGameCenterLeaderboardSetReleases, include: include, limitAchievementReleases: limitAchievementReleases, limitGameCenterAchievements: limitGameCenterAchievements, limitGameCenterAppVersions: limitGameCenterAppVersions, limitGameCenterLeaderboardSets: limitGameCenterLeaderboardSets, limitGameCenterLeaderboards: limitGameCenterLeaderboards, limitLeaderboardReleases: limitLeaderboardReleases, limitLeaderboardSetReleases: limitLeaderboardSetReleases) { (response, error) in
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
 **fieldsGameCenterDetails** | [**[String]**](String.md) | the fields to include for returned resources of type gameCenterDetails | [optional] 
 **fieldsGameCenterAppVersions** | [**[String]**](String.md) | the fields to include for returned resources of type gameCenterAppVersions | [optional] 
 **fieldsGameCenterGroups** | [**[String]**](String.md) | the fields to include for returned resources of type gameCenterGroups | [optional] 
 **fieldsGameCenterLeaderboards** | [**[String]**](String.md) | the fields to include for returned resources of type gameCenterLeaderboards | [optional] 
 **fieldsGameCenterLeaderboardSets** | [**[String]**](String.md) | the fields to include for returned resources of type gameCenterLeaderboardSets | [optional] 
 **fieldsGameCenterAchievements** | [**[String]**](String.md) | the fields to include for returned resources of type gameCenterAchievements | [optional] 
 **fieldsGameCenterAchievementReleases** | [**[String]**](String.md) | the fields to include for returned resources of type gameCenterAchievementReleases | [optional] 
 **fieldsGameCenterLeaderboardReleases** | [**[String]**](String.md) | the fields to include for returned resources of type gameCenterLeaderboardReleases | [optional] 
 **fieldsGameCenterLeaderboardSetReleases** | [**[String]**](String.md) | the fields to include for returned resources of type gameCenterLeaderboardSetReleases | [optional] 
 **include** | [**[String]**](String.md) | comma-separated list of relationships to include | [optional] 
 **limitAchievementReleases** | **Int** | maximum number of related achievementReleases returned (when they are included) | [optional] 
 **limitGameCenterAchievements** | **Int** | maximum number of related gameCenterAchievements returned (when they are included) | [optional] 
 **limitGameCenterAppVersions** | **Int** | maximum number of related gameCenterAppVersions returned (when they are included) | [optional] 
 **limitGameCenterLeaderboardSets** | **Int** | maximum number of related gameCenterLeaderboardSets returned (when they are included) | [optional] 
 **limitGameCenterLeaderboards** | **Int** | maximum number of related gameCenterLeaderboards returned (when they are included) | [optional] 
 **limitLeaderboardReleases** | **Int** | maximum number of related leaderboardReleases returned (when they are included) | [optional] 
 **limitLeaderboardSetReleases** | **Int** | maximum number of related leaderboardSetReleases returned (when they are included) | [optional] 

### Return type

[**GameCenterDetailResponse**](GameCenterDetailResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **gameCenterDetailsLeaderboardReleasesGetToManyRelated**
```swift
    open class func gameCenterDetailsLeaderboardReleasesGetToManyRelated(id: String, filterLive: [String]? = nil, filterGameCenterLeaderboard: [String]? = nil, fieldsGameCenterLeaderboardReleases: [FieldsGameCenterLeaderboardReleases_gameCenterDetailsLeaderboardReleasesGetToManyRelated]? = nil, fieldsGameCenterDetails: [FieldsGameCenterDetails_gameCenterDetailsLeaderboardReleasesGetToManyRelated]? = nil, fieldsGameCenterLeaderboards: [FieldsGameCenterLeaderboards_gameCenterDetailsLeaderboardReleasesGetToManyRelated]? = nil, limit: Int? = nil, include: [Include_gameCenterDetailsLeaderboardReleasesGetToManyRelated]? = nil, completion: @escaping (_ data: GameCenterLeaderboardReleasesResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let filterLive = ["inner_example"] // [String] | filter by attribute 'live' (optional)
let filterGameCenterLeaderboard = ["inner_example"] // [String] | filter by id(s) of related 'gameCenterLeaderboard' (optional)
let fieldsGameCenterLeaderboardReleases = ["fieldsGameCenterLeaderboardReleases_example"] // [String] | the fields to include for returned resources of type gameCenterLeaderboardReleases (optional)
let fieldsGameCenterDetails = ["fieldsGameCenterDetails_example"] // [String] | the fields to include for returned resources of type gameCenterDetails (optional)
let fieldsGameCenterLeaderboards = ["fieldsGameCenterLeaderboards_example"] // [String] | the fields to include for returned resources of type gameCenterLeaderboards (optional)
let limit = 987 // Int | maximum resources per page (optional)
let include = ["include_example"] // [String] | comma-separated list of relationships to include (optional)

GameCenterDetailsAPI.gameCenterDetailsLeaderboardReleasesGetToManyRelated(id: id, filterLive: filterLive, filterGameCenterLeaderboard: filterGameCenterLeaderboard, fieldsGameCenterLeaderboardReleases: fieldsGameCenterLeaderboardReleases, fieldsGameCenterDetails: fieldsGameCenterDetails, fieldsGameCenterLeaderboards: fieldsGameCenterLeaderboards, limit: limit, include: include) { (response, error) in
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
 **filterLive** | [**[String]**](String.md) | filter by attribute &#39;live&#39; | [optional] 
 **filterGameCenterLeaderboard** | [**[String]**](String.md) | filter by id(s) of related &#39;gameCenterLeaderboard&#39; | [optional] 
 **fieldsGameCenterLeaderboardReleases** | [**[String]**](String.md) | the fields to include for returned resources of type gameCenterLeaderboardReleases | [optional] 
 **fieldsGameCenterDetails** | [**[String]**](String.md) | the fields to include for returned resources of type gameCenterDetails | [optional] 
 **fieldsGameCenterLeaderboards** | [**[String]**](String.md) | the fields to include for returned resources of type gameCenterLeaderboards | [optional] 
 **limit** | **Int** | maximum resources per page | [optional] 
 **include** | [**[String]**](String.md) | comma-separated list of relationships to include | [optional] 

### Return type

[**GameCenterLeaderboardReleasesResponse**](GameCenterLeaderboardReleasesResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **gameCenterDetailsLeaderboardSetReleasesGetToManyRelated**
```swift
    open class func gameCenterDetailsLeaderboardSetReleasesGetToManyRelated(id: String, filterLive: [String]? = nil, filterGameCenterLeaderboardSet: [String]? = nil, fieldsGameCenterLeaderboardSetReleases: [FieldsGameCenterLeaderboardSetReleases_gameCenterDetailsLeaderboardSetReleasesGetToManyRelated]? = nil, fieldsGameCenterDetails: [FieldsGameCenterDetails_gameCenterDetailsLeaderboardSetReleasesGetToManyRelated]? = nil, fieldsGameCenterLeaderboardSets: [FieldsGameCenterLeaderboardSets_gameCenterDetailsLeaderboardSetReleasesGetToManyRelated]? = nil, limit: Int? = nil, include: [Include_gameCenterDetailsLeaderboardSetReleasesGetToManyRelated]? = nil, completion: @escaping (_ data: GameCenterLeaderboardSetReleasesResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let filterLive = ["inner_example"] // [String] | filter by attribute 'live' (optional)
let filterGameCenterLeaderboardSet = ["inner_example"] // [String] | filter by id(s) of related 'gameCenterLeaderboardSet' (optional)
let fieldsGameCenterLeaderboardSetReleases = ["fieldsGameCenterLeaderboardSetReleases_example"] // [String] | the fields to include for returned resources of type gameCenterLeaderboardSetReleases (optional)
let fieldsGameCenterDetails = ["fieldsGameCenterDetails_example"] // [String] | the fields to include for returned resources of type gameCenterDetails (optional)
let fieldsGameCenterLeaderboardSets = ["fieldsGameCenterLeaderboardSets_example"] // [String] | the fields to include for returned resources of type gameCenterLeaderboardSets (optional)
let limit = 987 // Int | maximum resources per page (optional)
let include = ["include_example"] // [String] | comma-separated list of relationships to include (optional)

GameCenterDetailsAPI.gameCenterDetailsLeaderboardSetReleasesGetToManyRelated(id: id, filterLive: filterLive, filterGameCenterLeaderboardSet: filterGameCenterLeaderboardSet, fieldsGameCenterLeaderboardSetReleases: fieldsGameCenterLeaderboardSetReleases, fieldsGameCenterDetails: fieldsGameCenterDetails, fieldsGameCenterLeaderboardSets: fieldsGameCenterLeaderboardSets, limit: limit, include: include) { (response, error) in
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
 **filterLive** | [**[String]**](String.md) | filter by attribute &#39;live&#39; | [optional] 
 **filterGameCenterLeaderboardSet** | [**[String]**](String.md) | filter by id(s) of related &#39;gameCenterLeaderboardSet&#39; | [optional] 
 **fieldsGameCenterLeaderboardSetReleases** | [**[String]**](String.md) | the fields to include for returned resources of type gameCenterLeaderboardSetReleases | [optional] 
 **fieldsGameCenterDetails** | [**[String]**](String.md) | the fields to include for returned resources of type gameCenterDetails | [optional] 
 **fieldsGameCenterLeaderboardSets** | [**[String]**](String.md) | the fields to include for returned resources of type gameCenterLeaderboardSets | [optional] 
 **limit** | **Int** | maximum resources per page | [optional] 
 **include** | [**[String]**](String.md) | comma-separated list of relationships to include | [optional] 

### Return type

[**GameCenterLeaderboardSetReleasesResponse**](GameCenterLeaderboardSetReleasesResponse.md)

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

GameCenterDetailsAPI.gameCenterDetailsRuleBasedMatchmakingRequestsGetMetrics(id: id, granularity: granularity, groupBy: groupBy, filterResult: filterResult, sort: sort, limit: limit) { (response, error) in
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

# **gameCenterDetailsUpdateInstance**
```swift
    open class func gameCenterDetailsUpdateInstance(id: String, gameCenterDetailUpdateRequest: GameCenterDetailUpdateRequest, completion: @escaping (_ data: GameCenterDetailResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let gameCenterDetailUpdateRequest = GameCenterDetailUpdateRequest(data: GameCenterDetailUpdateRequest_data(type: "type_example", id: "id_example", attributes: GameCenterDetailCreateRequest_data_attributes(challengeEnabled: false), relationships: GameCenterDetailUpdateRequest_data_relationships(gameCenterGroup: GameCenterAchievement_relationships_gameCenterGroup(data: GameCenterAchievement_relationships_gameCenterGroup_data(type: "type_example", id: "id_example")), defaultLeaderboard: GameCenterDetail_relationships_defaultLeaderboard(data: GameCenterDetail_relationships_gameCenterLeaderboards_data_inner(type: "type_example", id: "id_example")), defaultGroupLeaderboard: nil))) // GameCenterDetailUpdateRequest | GameCenterDetail representation

GameCenterDetailsAPI.gameCenterDetailsUpdateInstance(id: id, gameCenterDetailUpdateRequest: gameCenterDetailUpdateRequest) { (response, error) in
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
 **gameCenterDetailUpdateRequest** | [**GameCenterDetailUpdateRequest**](GameCenterDetailUpdateRequest.md) | GameCenterDetail representation | 

### Return type

[**GameCenterDetailResponse**](GameCenterDetailResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

