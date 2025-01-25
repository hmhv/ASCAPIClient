# GameCenterLeaderboardsAPI

All URIs are relative to *https://api.appstoreconnect.apple.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**gameCenterLeaderboardsCreateInstance**](GameCenterLeaderboardsAPI.md#gamecenterleaderboardscreateinstance) | **POST** /v1/gameCenterLeaderboards | 
[**gameCenterLeaderboardsDeleteInstance**](GameCenterLeaderboardsAPI.md#gamecenterleaderboardsdeleteinstance) | **DELETE** /v1/gameCenterLeaderboards/{id} | 
[**gameCenterLeaderboardsGetInstance**](GameCenterLeaderboardsAPI.md#gamecenterleaderboardsgetinstance) | **GET** /v1/gameCenterLeaderboards/{id} | 
[**gameCenterLeaderboardsGroupLeaderboardGetToOneRelated**](GameCenterLeaderboardsAPI.md#gamecenterleaderboardsgroupleaderboardgettoonerelated) | **GET** /v1/gameCenterLeaderboards/{id}/groupLeaderboard | 
[**gameCenterLeaderboardsGroupLeaderboardGetToOneRelationship**](GameCenterLeaderboardsAPI.md#gamecenterleaderboardsgroupleaderboardgettoonerelationship) | **GET** /v1/gameCenterLeaderboards/{id}/relationships/groupLeaderboard | 
[**gameCenterLeaderboardsGroupLeaderboardUpdateToOneRelationship**](GameCenterLeaderboardsAPI.md#gamecenterleaderboardsgroupleaderboardupdatetoonerelationship) | **PATCH** /v1/gameCenterLeaderboards/{id}/relationships/groupLeaderboard | 
[**gameCenterLeaderboardsLocalizationsGetToManyRelated**](GameCenterLeaderboardsAPI.md#gamecenterleaderboardslocalizationsgettomanyrelated) | **GET** /v1/gameCenterLeaderboards/{id}/localizations | 
[**gameCenterLeaderboardsReleasesGetToManyRelated**](GameCenterLeaderboardsAPI.md#gamecenterleaderboardsreleasesgettomanyrelated) | **GET** /v1/gameCenterLeaderboards/{id}/releases | 
[**gameCenterLeaderboardsUpdateInstance**](GameCenterLeaderboardsAPI.md#gamecenterleaderboardsupdateinstance) | **PATCH** /v1/gameCenterLeaderboards/{id} | 


# **gameCenterLeaderboardsCreateInstance**
```swift
    open class func gameCenterLeaderboardsCreateInstance(gameCenterLeaderboardCreateRequest: GameCenterLeaderboardCreateRequest, completion: @escaping (_ data: GameCenterLeaderboardResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let gameCenterLeaderboardCreateRequest = GameCenterLeaderboardCreateRequest(data: GameCenterLeaderboardCreateRequest_data(type: "type_example", attributes: GameCenterLeaderboardCreateRequest_data_attributes(defaultFormatter: GameCenterLeaderboardFormatter(), referenceName: "referenceName_example", vendorIdentifier: "vendorIdentifier_example", submissionType: "submissionType_example", scoreSortType: "scoreSortType_example", scoreRangeStart: 123, scoreRangeEnd: 123, recurrenceStartDate: Date(), recurrenceDuration: "recurrenceDuration_example", recurrenceRule: "recurrenceRule_example"), relationships: GameCenterLeaderboardCreateRequest_data_relationships(gameCenterDetail: GameCenterAchievementRelease_relationships_gameCenterDetail(data: App_relationships_gameCenterDetail_data(type: "type_example", id: "id_example")), gameCenterGroup: GameCenterAchievement_relationships_gameCenterGroup(data: GameCenterAchievement_relationships_gameCenterGroup_data(type: "type_example", id: "id_example")), gameCenterLeaderboardSets: GameCenterLeaderboardCreateRequest_data_relationships_gameCenterLeaderboardSets(data: [GameCenterDetail_relationships_gameCenterLeaderboardSets_data_inner(type: "type_example", id: "id_example")])))) // GameCenterLeaderboardCreateRequest | GameCenterLeaderboard representation

GameCenterLeaderboardsAPI.gameCenterLeaderboardsCreateInstance(gameCenterLeaderboardCreateRequest: gameCenterLeaderboardCreateRequest) { (response, error) in
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
 **gameCenterLeaderboardCreateRequest** | [**GameCenterLeaderboardCreateRequest**](GameCenterLeaderboardCreateRequest.md) | GameCenterLeaderboard representation | 

### Return type

[**GameCenterLeaderboardResponse**](GameCenterLeaderboardResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **gameCenterLeaderboardsDeleteInstance**
```swift
    open class func gameCenterLeaderboardsDeleteInstance(id: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource

GameCenterLeaderboardsAPI.gameCenterLeaderboardsDeleteInstance(id: id) { (response, error) in
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

# **gameCenterLeaderboardsGetInstance**
```swift
    open class func gameCenterLeaderboardsGetInstance(id: String, fieldsGameCenterLeaderboards: [FieldsGameCenterLeaderboards_gameCenterLeaderboardsGetInstance]? = nil, fieldsGameCenterLeaderboardLocalizations: [FieldsGameCenterLeaderboardLocalizations_gameCenterLeaderboardsGetInstance]? = nil, fieldsGameCenterLeaderboardReleases: [FieldsGameCenterLeaderboardReleases_gameCenterLeaderboardsGetInstance]? = nil, include: [Include_gameCenterLeaderboardsGetInstance]? = nil, limitGameCenterLeaderboardSets: Int? = nil, limitLocalizations: Int? = nil, limitReleases: Int? = nil, completion: @escaping (_ data: GameCenterLeaderboardResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let fieldsGameCenterLeaderboards = ["fieldsGameCenterLeaderboards_example"] // [String] | the fields to include for returned resources of type gameCenterLeaderboards (optional)
let fieldsGameCenterLeaderboardLocalizations = ["fieldsGameCenterLeaderboardLocalizations_example"] // [String] | the fields to include for returned resources of type gameCenterLeaderboardLocalizations (optional)
let fieldsGameCenterLeaderboardReleases = ["fieldsGameCenterLeaderboardReleases_example"] // [String] | the fields to include for returned resources of type gameCenterLeaderboardReleases (optional)
let include = ["include_example"] // [String] | comma-separated list of relationships to include (optional)
let limitGameCenterLeaderboardSets = 987 // Int | maximum number of related gameCenterLeaderboardSets returned (when they are included) (optional)
let limitLocalizations = 987 // Int | maximum number of related localizations returned (when they are included) (optional)
let limitReleases = 987 // Int | maximum number of related releases returned (when they are included) (optional)

GameCenterLeaderboardsAPI.gameCenterLeaderboardsGetInstance(id: id, fieldsGameCenterLeaderboards: fieldsGameCenterLeaderboards, fieldsGameCenterLeaderboardLocalizations: fieldsGameCenterLeaderboardLocalizations, fieldsGameCenterLeaderboardReleases: fieldsGameCenterLeaderboardReleases, include: include, limitGameCenterLeaderboardSets: limitGameCenterLeaderboardSets, limitLocalizations: limitLocalizations, limitReleases: limitReleases) { (response, error) in
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
 **fieldsGameCenterLeaderboards** | [**[String]**](String.md) | the fields to include for returned resources of type gameCenterLeaderboards | [optional] 
 **fieldsGameCenterLeaderboardLocalizations** | [**[String]**](String.md) | the fields to include for returned resources of type gameCenterLeaderboardLocalizations | [optional] 
 **fieldsGameCenterLeaderboardReleases** | [**[String]**](String.md) | the fields to include for returned resources of type gameCenterLeaderboardReleases | [optional] 
 **include** | [**[String]**](String.md) | comma-separated list of relationships to include | [optional] 
 **limitGameCenterLeaderboardSets** | **Int** | maximum number of related gameCenterLeaderboardSets returned (when they are included) | [optional] 
 **limitLocalizations** | **Int** | maximum number of related localizations returned (when they are included) | [optional] 
 **limitReleases** | **Int** | maximum number of related releases returned (when they are included) | [optional] 

### Return type

[**GameCenterLeaderboardResponse**](GameCenterLeaderboardResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **gameCenterLeaderboardsGroupLeaderboardGetToOneRelated**
```swift
    open class func gameCenterLeaderboardsGroupLeaderboardGetToOneRelated(id: String, fieldsGameCenterLeaderboards: [FieldsGameCenterLeaderboards_gameCenterLeaderboardsGroupLeaderboardGetToOneRelated]? = nil, fieldsGameCenterDetails: [FieldsGameCenterDetails_gameCenterLeaderboardsGroupLeaderboardGetToOneRelated]? = nil, fieldsGameCenterGroups: [FieldsGameCenterGroups_gameCenterLeaderboardsGroupLeaderboardGetToOneRelated]? = nil, fieldsGameCenterLeaderboardSets: [FieldsGameCenterLeaderboardSets_gameCenterLeaderboardsGroupLeaderboardGetToOneRelated]? = nil, fieldsGameCenterLeaderboardLocalizations: [FieldsGameCenterLeaderboardLocalizations_gameCenterLeaderboardsGroupLeaderboardGetToOneRelated]? = nil, fieldsGameCenterLeaderboardReleases: [FieldsGameCenterLeaderboardReleases_gameCenterLeaderboardsGroupLeaderboardGetToOneRelated]? = nil, include: [Include_gameCenterLeaderboardsGroupLeaderboardGetToOneRelated]? = nil, limitGameCenterLeaderboardSets: Int? = nil, limitLocalizations: Int? = nil, limitReleases: Int? = nil, completion: @escaping (_ data: GameCenterLeaderboardResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let fieldsGameCenterLeaderboards = ["fieldsGameCenterLeaderboards_example"] // [String] | the fields to include for returned resources of type gameCenterLeaderboards (optional)
let fieldsGameCenterDetails = ["fieldsGameCenterDetails_example"] // [String] | the fields to include for returned resources of type gameCenterDetails (optional)
let fieldsGameCenterGroups = ["fieldsGameCenterGroups_example"] // [String] | the fields to include for returned resources of type gameCenterGroups (optional)
let fieldsGameCenterLeaderboardSets = ["fieldsGameCenterLeaderboardSets_example"] // [String] | the fields to include for returned resources of type gameCenterLeaderboardSets (optional)
let fieldsGameCenterLeaderboardLocalizations = ["fieldsGameCenterLeaderboardLocalizations_example"] // [String] | the fields to include for returned resources of type gameCenterLeaderboardLocalizations (optional)
let fieldsGameCenterLeaderboardReleases = ["fieldsGameCenterLeaderboardReleases_example"] // [String] | the fields to include for returned resources of type gameCenterLeaderboardReleases (optional)
let include = ["include_example"] // [String] | comma-separated list of relationships to include (optional)
let limitGameCenterLeaderboardSets = 987 // Int | maximum number of related gameCenterLeaderboardSets returned (when they are included) (optional)
let limitLocalizations = 987 // Int | maximum number of related localizations returned (when they are included) (optional)
let limitReleases = 987 // Int | maximum number of related releases returned (when they are included) (optional)

GameCenterLeaderboardsAPI.gameCenterLeaderboardsGroupLeaderboardGetToOneRelated(id: id, fieldsGameCenterLeaderboards: fieldsGameCenterLeaderboards, fieldsGameCenterDetails: fieldsGameCenterDetails, fieldsGameCenterGroups: fieldsGameCenterGroups, fieldsGameCenterLeaderboardSets: fieldsGameCenterLeaderboardSets, fieldsGameCenterLeaderboardLocalizations: fieldsGameCenterLeaderboardLocalizations, fieldsGameCenterLeaderboardReleases: fieldsGameCenterLeaderboardReleases, include: include, limitGameCenterLeaderboardSets: limitGameCenterLeaderboardSets, limitLocalizations: limitLocalizations, limitReleases: limitReleases) { (response, error) in
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
 **fieldsGameCenterLeaderboards** | [**[String]**](String.md) | the fields to include for returned resources of type gameCenterLeaderboards | [optional] 
 **fieldsGameCenterDetails** | [**[String]**](String.md) | the fields to include for returned resources of type gameCenterDetails | [optional] 
 **fieldsGameCenterGroups** | [**[String]**](String.md) | the fields to include for returned resources of type gameCenterGroups | [optional] 
 **fieldsGameCenterLeaderboardSets** | [**[String]**](String.md) | the fields to include for returned resources of type gameCenterLeaderboardSets | [optional] 
 **fieldsGameCenterLeaderboardLocalizations** | [**[String]**](String.md) | the fields to include for returned resources of type gameCenterLeaderboardLocalizations | [optional] 
 **fieldsGameCenterLeaderboardReleases** | [**[String]**](String.md) | the fields to include for returned resources of type gameCenterLeaderboardReleases | [optional] 
 **include** | [**[String]**](String.md) | comma-separated list of relationships to include | [optional] 
 **limitGameCenterLeaderboardSets** | **Int** | maximum number of related gameCenterLeaderboardSets returned (when they are included) | [optional] 
 **limitLocalizations** | **Int** | maximum number of related localizations returned (when they are included) | [optional] 
 **limitReleases** | **Int** | maximum number of related releases returned (when they are included) | [optional] 

### Return type

[**GameCenterLeaderboardResponse**](GameCenterLeaderboardResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **gameCenterLeaderboardsGroupLeaderboardGetToOneRelationship**
```swift
    open class func gameCenterLeaderboardsGroupLeaderboardGetToOneRelationship(id: String, completion: @escaping (_ data: GameCenterLeaderboardGroupLeaderboardLinkageResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource

GameCenterLeaderboardsAPI.gameCenterLeaderboardsGroupLeaderboardGetToOneRelationship(id: id) { (response, error) in
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

[**GameCenterLeaderboardGroupLeaderboardLinkageResponse**](GameCenterLeaderboardGroupLeaderboardLinkageResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **gameCenterLeaderboardsGroupLeaderboardUpdateToOneRelationship**
```swift
    open class func gameCenterLeaderboardsGroupLeaderboardUpdateToOneRelationship(id: String, gameCenterLeaderboardGroupLeaderboardLinkageRequest: GameCenterLeaderboardGroupLeaderboardLinkageRequest, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let gameCenterLeaderboardGroupLeaderboardLinkageRequest = GameCenterLeaderboardGroupLeaderboardLinkageRequest(data: GameCenterDetail_relationships_gameCenterLeaderboards_data_inner(type: "type_example", id: "id_example")) // GameCenterLeaderboardGroupLeaderboardLinkageRequest | Related linkage

GameCenterLeaderboardsAPI.gameCenterLeaderboardsGroupLeaderboardUpdateToOneRelationship(id: id, gameCenterLeaderboardGroupLeaderboardLinkageRequest: gameCenterLeaderboardGroupLeaderboardLinkageRequest) { (response, error) in
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
 **gameCenterLeaderboardGroupLeaderboardLinkageRequest** | [**GameCenterLeaderboardGroupLeaderboardLinkageRequest**](GameCenterLeaderboardGroupLeaderboardLinkageRequest.md) | Related linkage | 

### Return type

Void (empty response body)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **gameCenterLeaderboardsLocalizationsGetToManyRelated**
```swift
    open class func gameCenterLeaderboardsLocalizationsGetToManyRelated(id: String, fieldsGameCenterLeaderboardLocalizations: [FieldsGameCenterLeaderboardLocalizations_gameCenterLeaderboardsLocalizationsGetToManyRelated]? = nil, fieldsGameCenterLeaderboards: [FieldsGameCenterLeaderboards_gameCenterLeaderboardsLocalizationsGetToManyRelated]? = nil, fieldsGameCenterLeaderboardImages: [FieldsGameCenterLeaderboardImages_gameCenterLeaderboardsLocalizationsGetToManyRelated]? = nil, limit: Int? = nil, include: [Include_gameCenterLeaderboardsLocalizationsGetToManyRelated]? = nil, completion: @escaping (_ data: GameCenterLeaderboardLocalizationsResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let fieldsGameCenterLeaderboardLocalizations = ["fieldsGameCenterLeaderboardLocalizations_example"] // [String] | the fields to include for returned resources of type gameCenterLeaderboardLocalizations (optional)
let fieldsGameCenterLeaderboards = ["fieldsGameCenterLeaderboards_example"] // [String] | the fields to include for returned resources of type gameCenterLeaderboards (optional)
let fieldsGameCenterLeaderboardImages = ["fieldsGameCenterLeaderboardImages_example"] // [String] | the fields to include for returned resources of type gameCenterLeaderboardImages (optional)
let limit = 987 // Int | maximum resources per page (optional)
let include = ["include_example"] // [String] | comma-separated list of relationships to include (optional)

GameCenterLeaderboardsAPI.gameCenterLeaderboardsLocalizationsGetToManyRelated(id: id, fieldsGameCenterLeaderboardLocalizations: fieldsGameCenterLeaderboardLocalizations, fieldsGameCenterLeaderboards: fieldsGameCenterLeaderboards, fieldsGameCenterLeaderboardImages: fieldsGameCenterLeaderboardImages, limit: limit, include: include) { (response, error) in
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
 **fieldsGameCenterLeaderboardLocalizations** | [**[String]**](String.md) | the fields to include for returned resources of type gameCenterLeaderboardLocalizations | [optional] 
 **fieldsGameCenterLeaderboards** | [**[String]**](String.md) | the fields to include for returned resources of type gameCenterLeaderboards | [optional] 
 **fieldsGameCenterLeaderboardImages** | [**[String]**](String.md) | the fields to include for returned resources of type gameCenterLeaderboardImages | [optional] 
 **limit** | **Int** | maximum resources per page | [optional] 
 **include** | [**[String]**](String.md) | comma-separated list of relationships to include | [optional] 

### Return type

[**GameCenterLeaderboardLocalizationsResponse**](GameCenterLeaderboardLocalizationsResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **gameCenterLeaderboardsReleasesGetToManyRelated**
```swift
    open class func gameCenterLeaderboardsReleasesGetToManyRelated(id: String, filterLive: [String]? = nil, filterGameCenterDetail: [String]? = nil, fieldsGameCenterLeaderboardReleases: [FieldsGameCenterLeaderboardReleases_gameCenterLeaderboardsReleasesGetToManyRelated]? = nil, fieldsGameCenterDetails: [FieldsGameCenterDetails_gameCenterLeaderboardsReleasesGetToManyRelated]? = nil, fieldsGameCenterLeaderboards: [FieldsGameCenterLeaderboards_gameCenterLeaderboardsReleasesGetToManyRelated]? = nil, limit: Int? = nil, include: [Include_gameCenterLeaderboardsReleasesGetToManyRelated]? = nil, completion: @escaping (_ data: GameCenterLeaderboardReleasesResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let filterLive = ["inner_example"] // [String] | filter by attribute 'live' (optional)
let filterGameCenterDetail = ["inner_example"] // [String] | filter by id(s) of related 'gameCenterDetail' (optional)
let fieldsGameCenterLeaderboardReleases = ["fieldsGameCenterLeaderboardReleases_example"] // [String] | the fields to include for returned resources of type gameCenterLeaderboardReleases (optional)
let fieldsGameCenterDetails = ["fieldsGameCenterDetails_example"] // [String] | the fields to include for returned resources of type gameCenterDetails (optional)
let fieldsGameCenterLeaderboards = ["fieldsGameCenterLeaderboards_example"] // [String] | the fields to include for returned resources of type gameCenterLeaderboards (optional)
let limit = 987 // Int | maximum resources per page (optional)
let include = ["include_example"] // [String] | comma-separated list of relationships to include (optional)

GameCenterLeaderboardsAPI.gameCenterLeaderboardsReleasesGetToManyRelated(id: id, filterLive: filterLive, filterGameCenterDetail: filterGameCenterDetail, fieldsGameCenterLeaderboardReleases: fieldsGameCenterLeaderboardReleases, fieldsGameCenterDetails: fieldsGameCenterDetails, fieldsGameCenterLeaderboards: fieldsGameCenterLeaderboards, limit: limit, include: include) { (response, error) in
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
 **filterGameCenterDetail** | [**[String]**](String.md) | filter by id(s) of related &#39;gameCenterDetail&#39; | [optional] 
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

# **gameCenterLeaderboardsUpdateInstance**
```swift
    open class func gameCenterLeaderboardsUpdateInstance(id: String, gameCenterLeaderboardUpdateRequest: GameCenterLeaderboardUpdateRequest, completion: @escaping (_ data: GameCenterLeaderboardResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let gameCenterLeaderboardUpdateRequest = GameCenterLeaderboardUpdateRequest(data: GameCenterLeaderboardUpdateRequest_data(type: "type_example", id: "id_example", attributes: GameCenterLeaderboardUpdateRequest_data_attributes(defaultFormatter: GameCenterLeaderboardFormatter(), referenceName: "referenceName_example", submissionType: "submissionType_example", scoreSortType: "scoreSortType_example", scoreRangeStart: 123, scoreRangeEnd: 123, recurrenceStartDate: Date(), recurrenceDuration: "recurrenceDuration_example", recurrenceRule: "recurrenceRule_example", archived: false))) // GameCenterLeaderboardUpdateRequest | GameCenterLeaderboard representation

GameCenterLeaderboardsAPI.gameCenterLeaderboardsUpdateInstance(id: id, gameCenterLeaderboardUpdateRequest: gameCenterLeaderboardUpdateRequest) { (response, error) in
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
 **gameCenterLeaderboardUpdateRequest** | [**GameCenterLeaderboardUpdateRequest**](GameCenterLeaderboardUpdateRequest.md) | GameCenterLeaderboard representation | 

### Return type

[**GameCenterLeaderboardResponse**](GameCenterLeaderboardResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

