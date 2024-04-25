# GameCenterGroupsAPI

All URIs are relative to *https://api.appstoreconnect.apple.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**gameCenterGroupsCreateInstance**](GameCenterGroupsAPI.md#gamecentergroupscreateinstance) | **POST** /v1/gameCenterGroups | 
[**gameCenterGroupsDeleteInstance**](GameCenterGroupsAPI.md#gamecentergroupsdeleteinstance) | **DELETE** /v1/gameCenterGroups/{id} | 
[**gameCenterGroupsGameCenterAchievementsGetToManyRelated**](GameCenterGroupsAPI.md#gamecentergroupsgamecenterachievementsgettomanyrelated) | **GET** /v1/gameCenterGroups/{id}/gameCenterAchievements | 
[**gameCenterGroupsGameCenterAchievementsGetToManyRelationship**](GameCenterGroupsAPI.md#gamecentergroupsgamecenterachievementsgettomanyrelationship) | **GET** /v1/gameCenterGroups/{id}/relationships/gameCenterAchievements | 
[**gameCenterGroupsGameCenterAchievementsReplaceToManyRelationship**](GameCenterGroupsAPI.md#gamecentergroupsgamecenterachievementsreplacetomanyrelationship) | **PATCH** /v1/gameCenterGroups/{id}/relationships/gameCenterAchievements | 
[**gameCenterGroupsGameCenterDetailsGetToManyRelated**](GameCenterGroupsAPI.md#gamecentergroupsgamecenterdetailsgettomanyrelated) | **GET** /v1/gameCenterGroups/{id}/gameCenterDetails | 
[**gameCenterGroupsGameCenterLeaderboardSetsGetToManyRelated**](GameCenterGroupsAPI.md#gamecentergroupsgamecenterleaderboardsetsgettomanyrelated) | **GET** /v1/gameCenterGroups/{id}/gameCenterLeaderboardSets | 
[**gameCenterGroupsGameCenterLeaderboardSetsGetToManyRelationship**](GameCenterGroupsAPI.md#gamecentergroupsgamecenterleaderboardsetsgettomanyrelationship) | **GET** /v1/gameCenterGroups/{id}/relationships/gameCenterLeaderboardSets | 
[**gameCenterGroupsGameCenterLeaderboardSetsReplaceToManyRelationship**](GameCenterGroupsAPI.md#gamecentergroupsgamecenterleaderboardsetsreplacetomanyrelationship) | **PATCH** /v1/gameCenterGroups/{id}/relationships/gameCenterLeaderboardSets | 
[**gameCenterGroupsGameCenterLeaderboardsGetToManyRelated**](GameCenterGroupsAPI.md#gamecentergroupsgamecenterleaderboardsgettomanyrelated) | **GET** /v1/gameCenterGroups/{id}/gameCenterLeaderboards | 
[**gameCenterGroupsGameCenterLeaderboardsGetToManyRelationship**](GameCenterGroupsAPI.md#gamecentergroupsgamecenterleaderboardsgettomanyrelationship) | **GET** /v1/gameCenterGroups/{id}/relationships/gameCenterLeaderboards | 
[**gameCenterGroupsGameCenterLeaderboardsReplaceToManyRelationship**](GameCenterGroupsAPI.md#gamecentergroupsgamecenterleaderboardsreplacetomanyrelationship) | **PATCH** /v1/gameCenterGroups/{id}/relationships/gameCenterLeaderboards | 
[**gameCenterGroupsGetCollection**](GameCenterGroupsAPI.md#gamecentergroupsgetcollection) | **GET** /v1/gameCenterGroups | 
[**gameCenterGroupsGetInstance**](GameCenterGroupsAPI.md#gamecentergroupsgetinstance) | **GET** /v1/gameCenterGroups/{id} | 
[**gameCenterGroupsUpdateInstance**](GameCenterGroupsAPI.md#gamecentergroupsupdateinstance) | **PATCH** /v1/gameCenterGroups/{id} | 


# **gameCenterGroupsCreateInstance**
```swift
    open class func gameCenterGroupsCreateInstance(gameCenterGroupCreateRequest: GameCenterGroupCreateRequest, completion: @escaping (_ data: GameCenterGroupResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let gameCenterGroupCreateRequest = GameCenterGroupCreateRequest(data: GameCenterGroupCreateRequest_data(type: "type_example", attributes: GameCenterGroup_attributes(referenceName: "referenceName_example"))) // GameCenterGroupCreateRequest | GameCenterGroup representation

GameCenterGroupsAPI.gameCenterGroupsCreateInstance(gameCenterGroupCreateRequest: gameCenterGroupCreateRequest) { (response, error) in
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
 **gameCenterGroupCreateRequest** | [**GameCenterGroupCreateRequest**](GameCenterGroupCreateRequest.md) | GameCenterGroup representation | 

### Return type

[**GameCenterGroupResponse**](GameCenterGroupResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **gameCenterGroupsDeleteInstance**
```swift
    open class func gameCenterGroupsDeleteInstance(id: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource

GameCenterGroupsAPI.gameCenterGroupsDeleteInstance(id: id) { (response, error) in
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

# **gameCenterGroupsGameCenterAchievementsGetToManyRelated**
```swift
    open class func gameCenterGroupsGameCenterAchievementsGetToManyRelated(id: String, filterArchived: [String]? = nil, filterReferenceName: [String]? = nil, filterId: [String]? = nil, fieldsGameCenterAchievementReleases: [FieldsGameCenterAchievementReleases_gameCenterGroupsGameCenterAchievementsGetToManyRelated]? = nil, fieldsGameCenterGroups: [FieldsGameCenterGroups_gameCenterGroupsGameCenterAchievementsGetToManyRelated]? = nil, fieldsGameCenterDetails: [FieldsGameCenterDetails_gameCenterGroupsGameCenterAchievementsGetToManyRelated]? = nil, fieldsGameCenterAchievementLocalizations: [FieldsGameCenterAchievementLocalizations_gameCenterGroupsGameCenterAchievementsGetToManyRelated]? = nil, fieldsGameCenterAchievements: [FieldsGameCenterAchievements_gameCenterGroupsGameCenterAchievementsGetToManyRelated]? = nil, limit: Int? = nil, limitLocalizations: Int? = nil, limitReleases: Int? = nil, include: [Include_gameCenterGroupsGameCenterAchievementsGetToManyRelated]? = nil, completion: @escaping (_ data: GameCenterAchievementsResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let filterArchived = ["inner_example"] // [String] | filter by attribute 'archived' (optional)
let filterReferenceName = ["inner_example"] // [String] | filter by attribute 'referenceName' (optional)
let filterId = ["inner_example"] // [String] | filter by id(s) (optional)
let fieldsGameCenterAchievementReleases = ["fieldsGameCenterAchievementReleases_example"] // [String] | the fields to include for returned resources of type gameCenterAchievementReleases (optional)
let fieldsGameCenterGroups = ["fieldsGameCenterGroups_example"] // [String] | the fields to include for returned resources of type gameCenterGroups (optional)
let fieldsGameCenterDetails = ["fieldsGameCenterDetails_example"] // [String] | the fields to include for returned resources of type gameCenterDetails (optional)
let fieldsGameCenterAchievementLocalizations = ["fieldsGameCenterAchievementLocalizations_example"] // [String] | the fields to include for returned resources of type gameCenterAchievementLocalizations (optional)
let fieldsGameCenterAchievements = ["fieldsGameCenterAchievements_example"] // [String] | the fields to include for returned resources of type gameCenterAchievements (optional)
let limit = 987 // Int | maximum resources per page (optional)
let limitLocalizations = 987 // Int | maximum number of related localizations returned (when they are included) (optional)
let limitReleases = 987 // Int | maximum number of related releases returned (when they are included) (optional)
let include = ["include_example"] // [String] | comma-separated list of relationships to include (optional)

GameCenterGroupsAPI.gameCenterGroupsGameCenterAchievementsGetToManyRelated(id: id, filterArchived: filterArchived, filterReferenceName: filterReferenceName, filterId: filterId, fieldsGameCenterAchievementReleases: fieldsGameCenterAchievementReleases, fieldsGameCenterGroups: fieldsGameCenterGroups, fieldsGameCenterDetails: fieldsGameCenterDetails, fieldsGameCenterAchievementLocalizations: fieldsGameCenterAchievementLocalizations, fieldsGameCenterAchievements: fieldsGameCenterAchievements, limit: limit, limitLocalizations: limitLocalizations, limitReleases: limitReleases, include: include) { (response, error) in
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
 **filterArchived** | [**[String]**](String.md) | filter by attribute &#39;archived&#39; | [optional] 
 **filterReferenceName** | [**[String]**](String.md) | filter by attribute &#39;referenceName&#39; | [optional] 
 **filterId** | [**[String]**](String.md) | filter by id(s) | [optional] 
 **fieldsGameCenterAchievementReleases** | [**[String]**](String.md) | the fields to include for returned resources of type gameCenterAchievementReleases | [optional] 
 **fieldsGameCenterGroups** | [**[String]**](String.md) | the fields to include for returned resources of type gameCenterGroups | [optional] 
 **fieldsGameCenterDetails** | [**[String]**](String.md) | the fields to include for returned resources of type gameCenterDetails | [optional] 
 **fieldsGameCenterAchievementLocalizations** | [**[String]**](String.md) | the fields to include for returned resources of type gameCenterAchievementLocalizations | [optional] 
 **fieldsGameCenterAchievements** | [**[String]**](String.md) | the fields to include for returned resources of type gameCenterAchievements | [optional] 
 **limit** | **Int** | maximum resources per page | [optional] 
 **limitLocalizations** | **Int** | maximum number of related localizations returned (when they are included) | [optional] 
 **limitReleases** | **Int** | maximum number of related releases returned (when they are included) | [optional] 
 **include** | [**[String]**](String.md) | comma-separated list of relationships to include | [optional] 

### Return type

[**GameCenterAchievementsResponse**](GameCenterAchievementsResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **gameCenterGroupsGameCenterAchievementsGetToManyRelationship**
```swift
    open class func gameCenterGroupsGameCenterAchievementsGetToManyRelationship(id: String, limit: Int? = nil, completion: @escaping (_ data: GameCenterGroupGameCenterAchievementsLinkagesResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let limit = 987 // Int | maximum resources per page (optional)

GameCenterGroupsAPI.gameCenterGroupsGameCenterAchievementsGetToManyRelationship(id: id, limit: limit) { (response, error) in
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

[**GameCenterGroupGameCenterAchievementsLinkagesResponse**](GameCenterGroupGameCenterAchievementsLinkagesResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **gameCenterGroupsGameCenterAchievementsReplaceToManyRelationship**
```swift
    open class func gameCenterGroupsGameCenterAchievementsReplaceToManyRelationship(id: String, gameCenterGroupGameCenterAchievementsLinkagesRequest: GameCenterGroupGameCenterAchievementsLinkagesRequest, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let gameCenterGroupGameCenterAchievementsLinkagesRequest = GameCenterGroupGameCenterAchievementsLinkagesRequest(data: [GameCenterAchievementLocalization_relationships_gameCenterAchievement_data(type: "type_example", id: "id_example")]) // GameCenterGroupGameCenterAchievementsLinkagesRequest | List of related linkages

GameCenterGroupsAPI.gameCenterGroupsGameCenterAchievementsReplaceToManyRelationship(id: id, gameCenterGroupGameCenterAchievementsLinkagesRequest: gameCenterGroupGameCenterAchievementsLinkagesRequest) { (response, error) in
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
 **gameCenterGroupGameCenterAchievementsLinkagesRequest** | [**GameCenterGroupGameCenterAchievementsLinkagesRequest**](GameCenterGroupGameCenterAchievementsLinkagesRequest.md) | List of related linkages | 

### Return type

Void (empty response body)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **gameCenterGroupsGameCenterDetailsGetToManyRelated**
```swift
    open class func gameCenterGroupsGameCenterDetailsGetToManyRelated(id: String, filterGameCenterAppVersionsEnabled: [String]? = nil, fieldsGameCenterAchievementReleases: [FieldsGameCenterAchievementReleases_gameCenterGroupsGameCenterDetailsGetToManyRelated]? = nil, fieldsGameCenterLeaderboardSetReleases: [FieldsGameCenterLeaderboardSetReleases_gameCenterGroupsGameCenterDetailsGetToManyRelated]? = nil, fieldsGameCenterLeaderboardSets: [FieldsGameCenterLeaderboardSets_gameCenterGroupsGameCenterDetailsGetToManyRelated]? = nil, fieldsGameCenterGroups: [FieldsGameCenterGroups_gameCenterGroupsGameCenterDetailsGetToManyRelated]? = nil, fieldsGameCenterDetails: [FieldsGameCenterDetails_gameCenterGroupsGameCenterDetailsGetToManyRelated]? = nil, fieldsGameCenterLeaderboards: [FieldsGameCenterLeaderboards_gameCenterGroupsGameCenterDetailsGetToManyRelated]? = nil, fieldsGameCenterAppVersions: [FieldsGameCenterAppVersions_gameCenterGroupsGameCenterDetailsGetToManyRelated]? = nil, fieldsGameCenterAchievements: [FieldsGameCenterAchievements_gameCenterGroupsGameCenterDetailsGetToManyRelated]? = nil, fieldsApps: [FieldsApps_gameCenterGroupsGameCenterDetailsGetToManyRelated]? = nil, fieldsGameCenterLeaderboardReleases: [FieldsGameCenterLeaderboardReleases_gameCenterGroupsGameCenterDetailsGetToManyRelated]? = nil, limit: Int? = nil, limitGameCenterAppVersions: Int? = nil, limitGameCenterLeaderboards: Int? = nil, limitGameCenterLeaderboardSets: Int? = nil, limitGameCenterAchievements: Int? = nil, limitAchievementReleases: Int? = nil, limitLeaderboardReleases: Int? = nil, limitLeaderboardSetReleases: Int? = nil, include: [Include_gameCenterGroupsGameCenterDetailsGetToManyRelated]? = nil, completion: @escaping (_ data: GameCenterDetailsResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let filterGameCenterAppVersionsEnabled = ["inner_example"] // [String] | filter by attribute 'gameCenterAppVersions.enabled' (optional)
let fieldsGameCenterAchievementReleases = ["fieldsGameCenterAchievementReleases_example"] // [String] | the fields to include for returned resources of type gameCenterAchievementReleases (optional)
let fieldsGameCenterLeaderboardSetReleases = ["fieldsGameCenterLeaderboardSetReleases_example"] // [String] | the fields to include for returned resources of type gameCenterLeaderboardSetReleases (optional)
let fieldsGameCenterLeaderboardSets = ["fieldsGameCenterLeaderboardSets_example"] // [String] | the fields to include for returned resources of type gameCenterLeaderboardSets (optional)
let fieldsGameCenterGroups = ["fieldsGameCenterGroups_example"] // [String] | the fields to include for returned resources of type gameCenterGroups (optional)
let fieldsGameCenterDetails = ["fieldsGameCenterDetails_example"] // [String] | the fields to include for returned resources of type gameCenterDetails (optional)
let fieldsGameCenterLeaderboards = ["fieldsGameCenterLeaderboards_example"] // [String] | the fields to include for returned resources of type gameCenterLeaderboards (optional)
let fieldsGameCenterAppVersions = ["fieldsGameCenterAppVersions_example"] // [String] | the fields to include for returned resources of type gameCenterAppVersions (optional)
let fieldsGameCenterAchievements = ["fieldsGameCenterAchievements_example"] // [String] | the fields to include for returned resources of type gameCenterAchievements (optional)
let fieldsApps = ["fieldsApps_example"] // [String] | the fields to include for returned resources of type apps (optional)
let fieldsGameCenterLeaderboardReleases = ["fieldsGameCenterLeaderboardReleases_example"] // [String] | the fields to include for returned resources of type gameCenterLeaderboardReleases (optional)
let limit = 987 // Int | maximum resources per page (optional)
let limitGameCenterAppVersions = 987 // Int | maximum number of related gameCenterAppVersions returned (when they are included) (optional)
let limitGameCenterLeaderboards = 987 // Int | maximum number of related gameCenterLeaderboards returned (when they are included) (optional)
let limitGameCenterLeaderboardSets = 987 // Int | maximum number of related gameCenterLeaderboardSets returned (when they are included) (optional)
let limitGameCenterAchievements = 987 // Int | maximum number of related gameCenterAchievements returned (when they are included) (optional)
let limitAchievementReleases = 987 // Int | maximum number of related achievementReleases returned (when they are included) (optional)
let limitLeaderboardReleases = 987 // Int | maximum number of related leaderboardReleases returned (when they are included) (optional)
let limitLeaderboardSetReleases = 987 // Int | maximum number of related leaderboardSetReleases returned (when they are included) (optional)
let include = ["include_example"] // [String] | comma-separated list of relationships to include (optional)

GameCenterGroupsAPI.gameCenterGroupsGameCenterDetailsGetToManyRelated(id: id, filterGameCenterAppVersionsEnabled: filterGameCenterAppVersionsEnabled, fieldsGameCenterAchievementReleases: fieldsGameCenterAchievementReleases, fieldsGameCenterLeaderboardSetReleases: fieldsGameCenterLeaderboardSetReleases, fieldsGameCenterLeaderboardSets: fieldsGameCenterLeaderboardSets, fieldsGameCenterGroups: fieldsGameCenterGroups, fieldsGameCenterDetails: fieldsGameCenterDetails, fieldsGameCenterLeaderboards: fieldsGameCenterLeaderboards, fieldsGameCenterAppVersions: fieldsGameCenterAppVersions, fieldsGameCenterAchievements: fieldsGameCenterAchievements, fieldsApps: fieldsApps, fieldsGameCenterLeaderboardReleases: fieldsGameCenterLeaderboardReleases, limit: limit, limitGameCenterAppVersions: limitGameCenterAppVersions, limitGameCenterLeaderboards: limitGameCenterLeaderboards, limitGameCenterLeaderboardSets: limitGameCenterLeaderboardSets, limitGameCenterAchievements: limitGameCenterAchievements, limitAchievementReleases: limitAchievementReleases, limitLeaderboardReleases: limitLeaderboardReleases, limitLeaderboardSetReleases: limitLeaderboardSetReleases, include: include) { (response, error) in
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
 **filterGameCenterAppVersionsEnabled** | [**[String]**](String.md) | filter by attribute &#39;gameCenterAppVersions.enabled&#39; | [optional] 
 **fieldsGameCenterAchievementReleases** | [**[String]**](String.md) | the fields to include for returned resources of type gameCenterAchievementReleases | [optional] 
 **fieldsGameCenterLeaderboardSetReleases** | [**[String]**](String.md) | the fields to include for returned resources of type gameCenterLeaderboardSetReleases | [optional] 
 **fieldsGameCenterLeaderboardSets** | [**[String]**](String.md) | the fields to include for returned resources of type gameCenterLeaderboardSets | [optional] 
 **fieldsGameCenterGroups** | [**[String]**](String.md) | the fields to include for returned resources of type gameCenterGroups | [optional] 
 **fieldsGameCenterDetails** | [**[String]**](String.md) | the fields to include for returned resources of type gameCenterDetails | [optional] 
 **fieldsGameCenterLeaderboards** | [**[String]**](String.md) | the fields to include for returned resources of type gameCenterLeaderboards | [optional] 
 **fieldsGameCenterAppVersions** | [**[String]**](String.md) | the fields to include for returned resources of type gameCenterAppVersions | [optional] 
 **fieldsGameCenterAchievements** | [**[String]**](String.md) | the fields to include for returned resources of type gameCenterAchievements | [optional] 
 **fieldsApps** | [**[String]**](String.md) | the fields to include for returned resources of type apps | [optional] 
 **fieldsGameCenterLeaderboardReleases** | [**[String]**](String.md) | the fields to include for returned resources of type gameCenterLeaderboardReleases | [optional] 
 **limit** | **Int** | maximum resources per page | [optional] 
 **limitGameCenterAppVersions** | **Int** | maximum number of related gameCenterAppVersions returned (when they are included) | [optional] 
 **limitGameCenterLeaderboards** | **Int** | maximum number of related gameCenterLeaderboards returned (when they are included) | [optional] 
 **limitGameCenterLeaderboardSets** | **Int** | maximum number of related gameCenterLeaderboardSets returned (when they are included) | [optional] 
 **limitGameCenterAchievements** | **Int** | maximum number of related gameCenterAchievements returned (when they are included) | [optional] 
 **limitAchievementReleases** | **Int** | maximum number of related achievementReleases returned (when they are included) | [optional] 
 **limitLeaderboardReleases** | **Int** | maximum number of related leaderboardReleases returned (when they are included) | [optional] 
 **limitLeaderboardSetReleases** | **Int** | maximum number of related leaderboardSetReleases returned (when they are included) | [optional] 
 **include** | [**[String]**](String.md) | comma-separated list of relationships to include | [optional] 

### Return type

[**GameCenterDetailsResponse**](GameCenterDetailsResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **gameCenterGroupsGameCenterLeaderboardSetsGetToManyRelated**
```swift
    open class func gameCenterGroupsGameCenterLeaderboardSetsGetToManyRelated(id: String, filterReferenceName: [String]? = nil, filterId: [String]? = nil, fieldsGameCenterLeaderboardSetLocalizations: [FieldsGameCenterLeaderboardSetLocalizations_gameCenterGroupsGameCenterLeaderboardSetsGetToManyRelated]? = nil, fieldsGameCenterLeaderboardSetReleases: [FieldsGameCenterLeaderboardSetReleases_gameCenterGroupsGameCenterLeaderboardSetsGetToManyRelated]? = nil, fieldsGameCenterLeaderboardSets: [FieldsGameCenterLeaderboardSets_gameCenterGroupsGameCenterLeaderboardSetsGetToManyRelated]? = nil, fieldsGameCenterGroups: [FieldsGameCenterGroups_gameCenterGroupsGameCenterLeaderboardSetsGetToManyRelated]? = nil, fieldsGameCenterDetails: [FieldsGameCenterDetails_gameCenterGroupsGameCenterLeaderboardSetsGetToManyRelated]? = nil, fieldsGameCenterLeaderboards: [FieldsGameCenterLeaderboards_gameCenterGroupsGameCenterLeaderboardSetsGetToManyRelated]? = nil, limit: Int? = nil, limitLocalizations: Int? = nil, limitGameCenterLeaderboards: Int? = nil, limitReleases: Int? = nil, include: [Include_gameCenterGroupsGameCenterLeaderboardSetsGetToManyRelated]? = nil, completion: @escaping (_ data: GameCenterLeaderboardSetsResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let filterReferenceName = ["inner_example"] // [String] | filter by attribute 'referenceName' (optional)
let filterId = ["inner_example"] // [String] | filter by id(s) (optional)
let fieldsGameCenterLeaderboardSetLocalizations = ["fieldsGameCenterLeaderboardSetLocalizations_example"] // [String] | the fields to include for returned resources of type gameCenterLeaderboardSetLocalizations (optional)
let fieldsGameCenterLeaderboardSetReleases = ["fieldsGameCenterLeaderboardSetReleases_example"] // [String] | the fields to include for returned resources of type gameCenterLeaderboardSetReleases (optional)
let fieldsGameCenterLeaderboardSets = ["fieldsGameCenterLeaderboardSets_example"] // [String] | the fields to include for returned resources of type gameCenterLeaderboardSets (optional)
let fieldsGameCenterGroups = ["fieldsGameCenterGroups_example"] // [String] | the fields to include for returned resources of type gameCenterGroups (optional)
let fieldsGameCenterDetails = ["fieldsGameCenterDetails_example"] // [String] | the fields to include for returned resources of type gameCenterDetails (optional)
let fieldsGameCenterLeaderboards = ["fieldsGameCenterLeaderboards_example"] // [String] | the fields to include for returned resources of type gameCenterLeaderboards (optional)
let limit = 987 // Int | maximum resources per page (optional)
let limitLocalizations = 987 // Int | maximum number of related localizations returned (when they are included) (optional)
let limitGameCenterLeaderboards = 987 // Int | maximum number of related gameCenterLeaderboards returned (when they are included) (optional)
let limitReleases = 987 // Int | maximum number of related releases returned (when they are included) (optional)
let include = ["include_example"] // [String] | comma-separated list of relationships to include (optional)

GameCenterGroupsAPI.gameCenterGroupsGameCenterLeaderboardSetsGetToManyRelated(id: id, filterReferenceName: filterReferenceName, filterId: filterId, fieldsGameCenterLeaderboardSetLocalizations: fieldsGameCenterLeaderboardSetLocalizations, fieldsGameCenterLeaderboardSetReleases: fieldsGameCenterLeaderboardSetReleases, fieldsGameCenterLeaderboardSets: fieldsGameCenterLeaderboardSets, fieldsGameCenterGroups: fieldsGameCenterGroups, fieldsGameCenterDetails: fieldsGameCenterDetails, fieldsGameCenterLeaderboards: fieldsGameCenterLeaderboards, limit: limit, limitLocalizations: limitLocalizations, limitGameCenterLeaderboards: limitGameCenterLeaderboards, limitReleases: limitReleases, include: include) { (response, error) in
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
 **fieldsGameCenterLeaderboardSetLocalizations** | [**[String]**](String.md) | the fields to include for returned resources of type gameCenterLeaderboardSetLocalizations | [optional] 
 **fieldsGameCenterLeaderboardSetReleases** | [**[String]**](String.md) | the fields to include for returned resources of type gameCenterLeaderboardSetReleases | [optional] 
 **fieldsGameCenterLeaderboardSets** | [**[String]**](String.md) | the fields to include for returned resources of type gameCenterLeaderboardSets | [optional] 
 **fieldsGameCenterGroups** | [**[String]**](String.md) | the fields to include for returned resources of type gameCenterGroups | [optional] 
 **fieldsGameCenterDetails** | [**[String]**](String.md) | the fields to include for returned resources of type gameCenterDetails | [optional] 
 **fieldsGameCenterLeaderboards** | [**[String]**](String.md) | the fields to include for returned resources of type gameCenterLeaderboards | [optional] 
 **limit** | **Int** | maximum resources per page | [optional] 
 **limitLocalizations** | **Int** | maximum number of related localizations returned (when they are included) | [optional] 
 **limitGameCenterLeaderboards** | **Int** | maximum number of related gameCenterLeaderboards returned (when they are included) | [optional] 
 **limitReleases** | **Int** | maximum number of related releases returned (when they are included) | [optional] 
 **include** | [**[String]**](String.md) | comma-separated list of relationships to include | [optional] 

### Return type

[**GameCenterLeaderboardSetsResponse**](GameCenterLeaderboardSetsResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **gameCenterGroupsGameCenterLeaderboardSetsGetToManyRelationship**
```swift
    open class func gameCenterGroupsGameCenterLeaderboardSetsGetToManyRelationship(id: String, limit: Int? = nil, completion: @escaping (_ data: GameCenterGroupGameCenterLeaderboardSetsLinkagesResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let limit = 987 // Int | maximum resources per page (optional)

GameCenterGroupsAPI.gameCenterGroupsGameCenterLeaderboardSetsGetToManyRelationship(id: id, limit: limit) { (response, error) in
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

[**GameCenterGroupGameCenterLeaderboardSetsLinkagesResponse**](GameCenterGroupGameCenterLeaderboardSetsLinkagesResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **gameCenterGroupsGameCenterLeaderboardSetsReplaceToManyRelationship**
```swift
    open class func gameCenterGroupsGameCenterLeaderboardSetsReplaceToManyRelationship(id: String, gameCenterGroupGameCenterLeaderboardSetsLinkagesRequest: GameCenterGroupGameCenterLeaderboardSetsLinkagesRequest, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let gameCenterGroupGameCenterLeaderboardSetsLinkagesRequest = GameCenterGroupGameCenterLeaderboardSetsLinkagesRequest(data: [GameCenterDetail_relationships_gameCenterLeaderboardSets_data_inner(type: "type_example", id: "id_example")]) // GameCenterGroupGameCenterLeaderboardSetsLinkagesRequest | List of related linkages

GameCenterGroupsAPI.gameCenterGroupsGameCenterLeaderboardSetsReplaceToManyRelationship(id: id, gameCenterGroupGameCenterLeaderboardSetsLinkagesRequest: gameCenterGroupGameCenterLeaderboardSetsLinkagesRequest) { (response, error) in
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
 **gameCenterGroupGameCenterLeaderboardSetsLinkagesRequest** | [**GameCenterGroupGameCenterLeaderboardSetsLinkagesRequest**](GameCenterGroupGameCenterLeaderboardSetsLinkagesRequest.md) | List of related linkages | 

### Return type

Void (empty response body)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **gameCenterGroupsGameCenterLeaderboardsGetToManyRelated**
```swift
    open class func gameCenterGroupsGameCenterLeaderboardsGetToManyRelated(id: String, filterArchived: [String]? = nil, filterReferenceName: [String]? = nil, filterId: [String]? = nil, fieldsGameCenterLeaderboardLocalizations: [FieldsGameCenterLeaderboardLocalizations_gameCenterGroupsGameCenterLeaderboardsGetToManyRelated]? = nil, fieldsGameCenterLeaderboardSets: [FieldsGameCenterLeaderboardSets_gameCenterGroupsGameCenterLeaderboardsGetToManyRelated]? = nil, fieldsGameCenterGroups: [FieldsGameCenterGroups_gameCenterGroupsGameCenterLeaderboardsGetToManyRelated]? = nil, fieldsGameCenterDetails: [FieldsGameCenterDetails_gameCenterGroupsGameCenterLeaderboardsGetToManyRelated]? = nil, fieldsGameCenterLeaderboards: [FieldsGameCenterLeaderboards_gameCenterGroupsGameCenterLeaderboardsGetToManyRelated]? = nil, fieldsGameCenterLeaderboardReleases: [FieldsGameCenterLeaderboardReleases_gameCenterGroupsGameCenterLeaderboardsGetToManyRelated]? = nil, limit: Int? = nil, limitGameCenterLeaderboardSets: Int? = nil, limitLocalizations: Int? = nil, limitReleases: Int? = nil, include: [Include_gameCenterGroupsGameCenterLeaderboardsGetToManyRelated]? = nil, completion: @escaping (_ data: GameCenterLeaderboardsResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let filterArchived = ["inner_example"] // [String] | filter by attribute 'archived' (optional)
let filterReferenceName = ["inner_example"] // [String] | filter by attribute 'referenceName' (optional)
let filterId = ["inner_example"] // [String] | filter by id(s) (optional)
let fieldsGameCenterLeaderboardLocalizations = ["fieldsGameCenterLeaderboardLocalizations_example"] // [String] | the fields to include for returned resources of type gameCenterLeaderboardLocalizations (optional)
let fieldsGameCenterLeaderboardSets = ["fieldsGameCenterLeaderboardSets_example"] // [String] | the fields to include for returned resources of type gameCenterLeaderboardSets (optional)
let fieldsGameCenterGroups = ["fieldsGameCenterGroups_example"] // [String] | the fields to include for returned resources of type gameCenterGroups (optional)
let fieldsGameCenterDetails = ["fieldsGameCenterDetails_example"] // [String] | the fields to include for returned resources of type gameCenterDetails (optional)
let fieldsGameCenterLeaderboards = ["fieldsGameCenterLeaderboards_example"] // [String] | the fields to include for returned resources of type gameCenterLeaderboards (optional)
let fieldsGameCenterLeaderboardReleases = ["fieldsGameCenterLeaderboardReleases_example"] // [String] | the fields to include for returned resources of type gameCenterLeaderboardReleases (optional)
let limit = 987 // Int | maximum resources per page (optional)
let limitGameCenterLeaderboardSets = 987 // Int | maximum number of related gameCenterLeaderboardSets returned (when they are included) (optional)
let limitLocalizations = 987 // Int | maximum number of related localizations returned (when they are included) (optional)
let limitReleases = 987 // Int | maximum number of related releases returned (when they are included) (optional)
let include = ["include_example"] // [String] | comma-separated list of relationships to include (optional)

GameCenterGroupsAPI.gameCenterGroupsGameCenterLeaderboardsGetToManyRelated(id: id, filterArchived: filterArchived, filterReferenceName: filterReferenceName, filterId: filterId, fieldsGameCenterLeaderboardLocalizations: fieldsGameCenterLeaderboardLocalizations, fieldsGameCenterLeaderboardSets: fieldsGameCenterLeaderboardSets, fieldsGameCenterGroups: fieldsGameCenterGroups, fieldsGameCenterDetails: fieldsGameCenterDetails, fieldsGameCenterLeaderboards: fieldsGameCenterLeaderboards, fieldsGameCenterLeaderboardReleases: fieldsGameCenterLeaderboardReleases, limit: limit, limitGameCenterLeaderboardSets: limitGameCenterLeaderboardSets, limitLocalizations: limitLocalizations, limitReleases: limitReleases, include: include) { (response, error) in
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
 **filterArchived** | [**[String]**](String.md) | filter by attribute &#39;archived&#39; | [optional] 
 **filterReferenceName** | [**[String]**](String.md) | filter by attribute &#39;referenceName&#39; | [optional] 
 **filterId** | [**[String]**](String.md) | filter by id(s) | [optional] 
 **fieldsGameCenterLeaderboardLocalizations** | [**[String]**](String.md) | the fields to include for returned resources of type gameCenterLeaderboardLocalizations | [optional] 
 **fieldsGameCenterLeaderboardSets** | [**[String]**](String.md) | the fields to include for returned resources of type gameCenterLeaderboardSets | [optional] 
 **fieldsGameCenterGroups** | [**[String]**](String.md) | the fields to include for returned resources of type gameCenterGroups | [optional] 
 **fieldsGameCenterDetails** | [**[String]**](String.md) | the fields to include for returned resources of type gameCenterDetails | [optional] 
 **fieldsGameCenterLeaderboards** | [**[String]**](String.md) | the fields to include for returned resources of type gameCenterLeaderboards | [optional] 
 **fieldsGameCenterLeaderboardReleases** | [**[String]**](String.md) | the fields to include for returned resources of type gameCenterLeaderboardReleases | [optional] 
 **limit** | **Int** | maximum resources per page | [optional] 
 **limitGameCenterLeaderboardSets** | **Int** | maximum number of related gameCenterLeaderboardSets returned (when they are included) | [optional] 
 **limitLocalizations** | **Int** | maximum number of related localizations returned (when they are included) | [optional] 
 **limitReleases** | **Int** | maximum number of related releases returned (when they are included) | [optional] 
 **include** | [**[String]**](String.md) | comma-separated list of relationships to include | [optional] 

### Return type

[**GameCenterLeaderboardsResponse**](GameCenterLeaderboardsResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **gameCenterGroupsGameCenterLeaderboardsGetToManyRelationship**
```swift
    open class func gameCenterGroupsGameCenterLeaderboardsGetToManyRelationship(id: String, limit: Int? = nil, completion: @escaping (_ data: GameCenterGroupGameCenterLeaderboardsLinkagesResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let limit = 987 // Int | maximum resources per page (optional)

GameCenterGroupsAPI.gameCenterGroupsGameCenterLeaderboardsGetToManyRelationship(id: id, limit: limit) { (response, error) in
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

[**GameCenterGroupGameCenterLeaderboardsLinkagesResponse**](GameCenterGroupGameCenterLeaderboardsLinkagesResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **gameCenterGroupsGameCenterLeaderboardsReplaceToManyRelationship**
```swift
    open class func gameCenterGroupsGameCenterLeaderboardsReplaceToManyRelationship(id: String, gameCenterGroupGameCenterLeaderboardsLinkagesRequest: GameCenterGroupGameCenterLeaderboardsLinkagesRequest, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let gameCenterGroupGameCenterLeaderboardsLinkagesRequest = GameCenterGroupGameCenterLeaderboardsLinkagesRequest(data: [GameCenterDetail_relationships_gameCenterLeaderboards_data_inner(type: "type_example", id: "id_example")]) // GameCenterGroupGameCenterLeaderboardsLinkagesRequest | List of related linkages

GameCenterGroupsAPI.gameCenterGroupsGameCenterLeaderboardsReplaceToManyRelationship(id: id, gameCenterGroupGameCenterLeaderboardsLinkagesRequest: gameCenterGroupGameCenterLeaderboardsLinkagesRequest) { (response, error) in
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
 **gameCenterGroupGameCenterLeaderboardsLinkagesRequest** | [**GameCenterGroupGameCenterLeaderboardsLinkagesRequest**](GameCenterGroupGameCenterLeaderboardsLinkagesRequest.md) | List of related linkages | 

### Return type

Void (empty response body)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **gameCenterGroupsGetCollection**
```swift
    open class func gameCenterGroupsGetCollection(filterGameCenterDetails: [String]? = nil, fieldsGameCenterGroups: [FieldsGameCenterGroups_gameCenterGroupsGetCollection]? = nil, limit: Int? = nil, include: [Include_gameCenterGroupsGetCollection]? = nil, fieldsGameCenterLeaderboardSets: [FieldsGameCenterLeaderboardSets_gameCenterGroupsGetCollection]? = nil, fieldsGameCenterDetails: [FieldsGameCenterDetails_gameCenterGroupsGetCollection]? = nil, fieldsGameCenterLeaderboards: [FieldsGameCenterLeaderboards_gameCenterGroupsGetCollection]? = nil, fieldsGameCenterAchievements: [FieldsGameCenterAchievements_gameCenterGroupsGetCollection]? = nil, limitGameCenterAchievements: Int? = nil, limitGameCenterDetails: Int? = nil, limitGameCenterLeaderboardSets: Int? = nil, limitGameCenterLeaderboards: Int? = nil, completion: @escaping (_ data: GameCenterGroupsResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let filterGameCenterDetails = ["inner_example"] // [String] | filter by id(s) of related 'gameCenterDetails' (optional)
let fieldsGameCenterGroups = ["fieldsGameCenterGroups_example"] // [String] | the fields to include for returned resources of type gameCenterGroups (optional)
let limit = 987 // Int | maximum resources per page (optional)
let include = ["include_example"] // [String] | comma-separated list of relationships to include (optional)
let fieldsGameCenterLeaderboardSets = ["fieldsGameCenterLeaderboardSets_example"] // [String] | the fields to include for returned resources of type gameCenterLeaderboardSets (optional)
let fieldsGameCenterDetails = ["fieldsGameCenterDetails_example"] // [String] | the fields to include for returned resources of type gameCenterDetails (optional)
let fieldsGameCenterLeaderboards = ["fieldsGameCenterLeaderboards_example"] // [String] | the fields to include for returned resources of type gameCenterLeaderboards (optional)
let fieldsGameCenterAchievements = ["fieldsGameCenterAchievements_example"] // [String] | the fields to include for returned resources of type gameCenterAchievements (optional)
let limitGameCenterAchievements = 987 // Int | maximum number of related gameCenterAchievements returned (when they are included) (optional)
let limitGameCenterDetails = 987 // Int | maximum number of related gameCenterDetails returned (when they are included) (optional)
let limitGameCenterLeaderboardSets = 987 // Int | maximum number of related gameCenterLeaderboardSets returned (when they are included) (optional)
let limitGameCenterLeaderboards = 987 // Int | maximum number of related gameCenterLeaderboards returned (when they are included) (optional)

GameCenterGroupsAPI.gameCenterGroupsGetCollection(filterGameCenterDetails: filterGameCenterDetails, fieldsGameCenterGroups: fieldsGameCenterGroups, limit: limit, include: include, fieldsGameCenterLeaderboardSets: fieldsGameCenterLeaderboardSets, fieldsGameCenterDetails: fieldsGameCenterDetails, fieldsGameCenterLeaderboards: fieldsGameCenterLeaderboards, fieldsGameCenterAchievements: fieldsGameCenterAchievements, limitGameCenterAchievements: limitGameCenterAchievements, limitGameCenterDetails: limitGameCenterDetails, limitGameCenterLeaderboardSets: limitGameCenterLeaderboardSets, limitGameCenterLeaderboards: limitGameCenterLeaderboards) { (response, error) in
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
 **filterGameCenterDetails** | [**[String]**](String.md) | filter by id(s) of related &#39;gameCenterDetails&#39; | [optional] 
 **fieldsGameCenterGroups** | [**[String]**](String.md) | the fields to include for returned resources of type gameCenterGroups | [optional] 
 **limit** | **Int** | maximum resources per page | [optional] 
 **include** | [**[String]**](String.md) | comma-separated list of relationships to include | [optional] 
 **fieldsGameCenterLeaderboardSets** | [**[String]**](String.md) | the fields to include for returned resources of type gameCenterLeaderboardSets | [optional] 
 **fieldsGameCenterDetails** | [**[String]**](String.md) | the fields to include for returned resources of type gameCenterDetails | [optional] 
 **fieldsGameCenterLeaderboards** | [**[String]**](String.md) | the fields to include for returned resources of type gameCenterLeaderboards | [optional] 
 **fieldsGameCenterAchievements** | [**[String]**](String.md) | the fields to include for returned resources of type gameCenterAchievements | [optional] 
 **limitGameCenterAchievements** | **Int** | maximum number of related gameCenterAchievements returned (when they are included) | [optional] 
 **limitGameCenterDetails** | **Int** | maximum number of related gameCenterDetails returned (when they are included) | [optional] 
 **limitGameCenterLeaderboardSets** | **Int** | maximum number of related gameCenterLeaderboardSets returned (when they are included) | [optional] 
 **limitGameCenterLeaderboards** | **Int** | maximum number of related gameCenterLeaderboards returned (when they are included) | [optional] 

### Return type

[**GameCenterGroupsResponse**](GameCenterGroupsResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **gameCenterGroupsGetInstance**
```swift
    open class func gameCenterGroupsGetInstance(id: String, fieldsGameCenterGroups: [FieldsGameCenterGroups_gameCenterGroupsGetInstance]? = nil, include: [Include_gameCenterGroupsGetInstance]? = nil, fieldsGameCenterLeaderboardSets: [FieldsGameCenterLeaderboardSets_gameCenterGroupsGetInstance]? = nil, fieldsGameCenterDetails: [FieldsGameCenterDetails_gameCenterGroupsGetInstance]? = nil, fieldsGameCenterLeaderboards: [FieldsGameCenterLeaderboards_gameCenterGroupsGetInstance]? = nil, fieldsGameCenterAchievements: [FieldsGameCenterAchievements_gameCenterGroupsGetInstance]? = nil, limitGameCenterAchievements: Int? = nil, limitGameCenterDetails: Int? = nil, limitGameCenterLeaderboardSets: Int? = nil, limitGameCenterLeaderboards: Int? = nil, completion: @escaping (_ data: GameCenterGroupResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let fieldsGameCenterGroups = ["fieldsGameCenterGroups_example"] // [String] | the fields to include for returned resources of type gameCenterGroups (optional)
let include = ["include_example"] // [String] | comma-separated list of relationships to include (optional)
let fieldsGameCenterLeaderboardSets = ["fieldsGameCenterLeaderboardSets_example"] // [String] | the fields to include for returned resources of type gameCenterLeaderboardSets (optional)
let fieldsGameCenterDetails = ["fieldsGameCenterDetails_example"] // [String] | the fields to include for returned resources of type gameCenterDetails (optional)
let fieldsGameCenterLeaderboards = ["fieldsGameCenterLeaderboards_example"] // [String] | the fields to include for returned resources of type gameCenterLeaderboards (optional)
let fieldsGameCenterAchievements = ["fieldsGameCenterAchievements_example"] // [String] | the fields to include for returned resources of type gameCenterAchievements (optional)
let limitGameCenterAchievements = 987 // Int | maximum number of related gameCenterAchievements returned (when they are included) (optional)
let limitGameCenterDetails = 987 // Int | maximum number of related gameCenterDetails returned (when they are included) (optional)
let limitGameCenterLeaderboardSets = 987 // Int | maximum number of related gameCenterLeaderboardSets returned (when they are included) (optional)
let limitGameCenterLeaderboards = 987 // Int | maximum number of related gameCenterLeaderboards returned (when they are included) (optional)

GameCenterGroupsAPI.gameCenterGroupsGetInstance(id: id, fieldsGameCenterGroups: fieldsGameCenterGroups, include: include, fieldsGameCenterLeaderboardSets: fieldsGameCenterLeaderboardSets, fieldsGameCenterDetails: fieldsGameCenterDetails, fieldsGameCenterLeaderboards: fieldsGameCenterLeaderboards, fieldsGameCenterAchievements: fieldsGameCenterAchievements, limitGameCenterAchievements: limitGameCenterAchievements, limitGameCenterDetails: limitGameCenterDetails, limitGameCenterLeaderboardSets: limitGameCenterLeaderboardSets, limitGameCenterLeaderboards: limitGameCenterLeaderboards) { (response, error) in
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
 **include** | [**[String]**](String.md) | comma-separated list of relationships to include | [optional] 
 **fieldsGameCenterLeaderboardSets** | [**[String]**](String.md) | the fields to include for returned resources of type gameCenterLeaderboardSets | [optional] 
 **fieldsGameCenterDetails** | [**[String]**](String.md) | the fields to include for returned resources of type gameCenterDetails | [optional] 
 **fieldsGameCenterLeaderboards** | [**[String]**](String.md) | the fields to include for returned resources of type gameCenterLeaderboards | [optional] 
 **fieldsGameCenterAchievements** | [**[String]**](String.md) | the fields to include for returned resources of type gameCenterAchievements | [optional] 
 **limitGameCenterAchievements** | **Int** | maximum number of related gameCenterAchievements returned (when they are included) | [optional] 
 **limitGameCenterDetails** | **Int** | maximum number of related gameCenterDetails returned (when they are included) | [optional] 
 **limitGameCenterLeaderboardSets** | **Int** | maximum number of related gameCenterLeaderboardSets returned (when they are included) | [optional] 
 **limitGameCenterLeaderboards** | **Int** | maximum number of related gameCenterLeaderboards returned (when they are included) | [optional] 

### Return type

[**GameCenterGroupResponse**](GameCenterGroupResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **gameCenterGroupsUpdateInstance**
```swift
    open class func gameCenterGroupsUpdateInstance(id: String, gameCenterGroupUpdateRequest: GameCenterGroupUpdateRequest, completion: @escaping (_ data: GameCenterGroupResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let gameCenterGroupUpdateRequest = GameCenterGroupUpdateRequest(data: GameCenterGroupUpdateRequest_data(type: "type_example", id: "id_example", attributes: GameCenterGroup_attributes(referenceName: "referenceName_example"))) // GameCenterGroupUpdateRequest | GameCenterGroup representation

GameCenterGroupsAPI.gameCenterGroupsUpdateInstance(id: id, gameCenterGroupUpdateRequest: gameCenterGroupUpdateRequest) { (response, error) in
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
 **gameCenterGroupUpdateRequest** | [**GameCenterGroupUpdateRequest**](GameCenterGroupUpdateRequest.md) | GameCenterGroup representation | 

### Return type

[**GameCenterGroupResponse**](GameCenterGroupResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

