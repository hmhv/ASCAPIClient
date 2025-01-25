# GameCenterLeaderboardSetMemberLocalizationsAPI

All URIs are relative to *https://api.appstoreconnect.apple.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**gameCenterLeaderboardSetMemberLocalizationsCreateInstance**](GameCenterLeaderboardSetMemberLocalizationsAPI.md#gamecenterleaderboardsetmemberlocalizationscreateinstance) | **POST** /v1/gameCenterLeaderboardSetMemberLocalizations | 
[**gameCenterLeaderboardSetMemberLocalizationsDeleteInstance**](GameCenterLeaderboardSetMemberLocalizationsAPI.md#gamecenterleaderboardsetmemberlocalizationsdeleteinstance) | **DELETE** /v1/gameCenterLeaderboardSetMemberLocalizations/{id} | 
[**gameCenterLeaderboardSetMemberLocalizationsGameCenterLeaderboardGetToOneRelated**](GameCenterLeaderboardSetMemberLocalizationsAPI.md#gamecenterleaderboardsetmemberlocalizationsgamecenterleaderboardgettoonerelated) | **GET** /v1/gameCenterLeaderboardSetMemberLocalizations/{id}/gameCenterLeaderboard | 
[**gameCenterLeaderboardSetMemberLocalizationsGameCenterLeaderboardSetGetToOneRelated**](GameCenterLeaderboardSetMemberLocalizationsAPI.md#gamecenterleaderboardsetmemberlocalizationsgamecenterleaderboardsetgettoonerelated) | **GET** /v1/gameCenterLeaderboardSetMemberLocalizations/{id}/gameCenterLeaderboardSet | 
[**gameCenterLeaderboardSetMemberLocalizationsGetCollection**](GameCenterLeaderboardSetMemberLocalizationsAPI.md#gamecenterleaderboardsetmemberlocalizationsgetcollection) | **GET** /v1/gameCenterLeaderboardSetMemberLocalizations | 
[**gameCenterLeaderboardSetMemberLocalizationsUpdateInstance**](GameCenterLeaderboardSetMemberLocalizationsAPI.md#gamecenterleaderboardsetmemberlocalizationsupdateinstance) | **PATCH** /v1/gameCenterLeaderboardSetMemberLocalizations/{id} | 


# **gameCenterLeaderboardSetMemberLocalizationsCreateInstance**
```swift
    open class func gameCenterLeaderboardSetMemberLocalizationsCreateInstance(gameCenterLeaderboardSetMemberLocalizationCreateRequest: GameCenterLeaderboardSetMemberLocalizationCreateRequest, completion: @escaping (_ data: GameCenterLeaderboardSetMemberLocalizationResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let gameCenterLeaderboardSetMemberLocalizationCreateRequest = GameCenterLeaderboardSetMemberLocalizationCreateRequest(data: GameCenterLeaderboardSetMemberLocalizationCreateRequest_data(type: "type_example", attributes: GameCenterLeaderboardSetMemberLocalization_attributes(name: "name_example", locale: "locale_example"), relationships: GameCenterLeaderboardSetMemberLocalizationCreateRequest_data_relationships(gameCenterLeaderboardSet: GameCenterLeaderboardSetLocalizationCreateRequest_data_relationships_gameCenterLeaderboardSet(data: GameCenterDetail_relationships_gameCenterLeaderboardSets_data_inner(type: "type_example", id: "id_example")), gameCenterLeaderboard: GameCenterLeaderboardLocalizationCreateRequest_data_relationships_gameCenterLeaderboard(data: GameCenterDetail_relationships_gameCenterLeaderboards_data_inner(type: "type_example", id: "id_example"))))) // GameCenterLeaderboardSetMemberLocalizationCreateRequest | GameCenterLeaderboardSetMemberLocalization representation

GameCenterLeaderboardSetMemberLocalizationsAPI.gameCenterLeaderboardSetMemberLocalizationsCreateInstance(gameCenterLeaderboardSetMemberLocalizationCreateRequest: gameCenterLeaderboardSetMemberLocalizationCreateRequest) { (response, error) in
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
 **gameCenterLeaderboardSetMemberLocalizationCreateRequest** | [**GameCenterLeaderboardSetMemberLocalizationCreateRequest**](GameCenterLeaderboardSetMemberLocalizationCreateRequest.md) | GameCenterLeaderboardSetMemberLocalization representation | 

### Return type

[**GameCenterLeaderboardSetMemberLocalizationResponse**](GameCenterLeaderboardSetMemberLocalizationResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **gameCenterLeaderboardSetMemberLocalizationsDeleteInstance**
```swift
    open class func gameCenterLeaderboardSetMemberLocalizationsDeleteInstance(id: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource

GameCenterLeaderboardSetMemberLocalizationsAPI.gameCenterLeaderboardSetMemberLocalizationsDeleteInstance(id: id) { (response, error) in
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

# **gameCenterLeaderboardSetMemberLocalizationsGameCenterLeaderboardGetToOneRelated**
```swift
    open class func gameCenterLeaderboardSetMemberLocalizationsGameCenterLeaderboardGetToOneRelated(id: String, fieldsGameCenterLeaderboards: [FieldsGameCenterLeaderboards_gameCenterLeaderboardSetMemberLocalizationsGameCenterLeaderboardGetToOneRelated]? = nil, fieldsGameCenterDetails: [FieldsGameCenterDetails_gameCenterLeaderboardSetMemberLocalizationsGameCenterLeaderboardGetToOneRelated]? = nil, fieldsGameCenterGroups: [FieldsGameCenterGroups_gameCenterLeaderboardSetMemberLocalizationsGameCenterLeaderboardGetToOneRelated]? = nil, fieldsGameCenterLeaderboardSets: [FieldsGameCenterLeaderboardSets_gameCenterLeaderboardSetMemberLocalizationsGameCenterLeaderboardGetToOneRelated]? = nil, fieldsGameCenterLeaderboardLocalizations: [FieldsGameCenterLeaderboardLocalizations_gameCenterLeaderboardSetMemberLocalizationsGameCenterLeaderboardGetToOneRelated]? = nil, fieldsGameCenterLeaderboardReleases: [FieldsGameCenterLeaderboardReleases_gameCenterLeaderboardSetMemberLocalizationsGameCenterLeaderboardGetToOneRelated]? = nil, include: [Include_gameCenterLeaderboardSetMemberLocalizationsGameCenterLeaderboardGetToOneRelated]? = nil, limitGameCenterLeaderboardSets: Int? = nil, limitLocalizations: Int? = nil, limitReleases: Int? = nil, completion: @escaping (_ data: GameCenterLeaderboardResponse?, _ error: Error?) -> Void)
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

GameCenterLeaderboardSetMemberLocalizationsAPI.gameCenterLeaderboardSetMemberLocalizationsGameCenterLeaderboardGetToOneRelated(id: id, fieldsGameCenterLeaderboards: fieldsGameCenterLeaderboards, fieldsGameCenterDetails: fieldsGameCenterDetails, fieldsGameCenterGroups: fieldsGameCenterGroups, fieldsGameCenterLeaderboardSets: fieldsGameCenterLeaderboardSets, fieldsGameCenterLeaderboardLocalizations: fieldsGameCenterLeaderboardLocalizations, fieldsGameCenterLeaderboardReleases: fieldsGameCenterLeaderboardReleases, include: include, limitGameCenterLeaderboardSets: limitGameCenterLeaderboardSets, limitLocalizations: limitLocalizations, limitReleases: limitReleases) { (response, error) in
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

# **gameCenterLeaderboardSetMemberLocalizationsGameCenterLeaderboardSetGetToOneRelated**
```swift
    open class func gameCenterLeaderboardSetMemberLocalizationsGameCenterLeaderboardSetGetToOneRelated(id: String, fieldsGameCenterLeaderboardSets: [FieldsGameCenterLeaderboardSets_gameCenterLeaderboardSetMemberLocalizationsGameCenterLeaderboardSetGetToOneRelated]? = nil, fieldsGameCenterDetails: [FieldsGameCenterDetails_gameCenterLeaderboardSetMemberLocalizationsGameCenterLeaderboardSetGetToOneRelated]? = nil, fieldsGameCenterGroups: [FieldsGameCenterGroups_gameCenterLeaderboardSetMemberLocalizationsGameCenterLeaderboardSetGetToOneRelated]? = nil, fieldsGameCenterLeaderboardSetLocalizations: [FieldsGameCenterLeaderboardSetLocalizations_gameCenterLeaderboardSetMemberLocalizationsGameCenterLeaderboardSetGetToOneRelated]? = nil, fieldsGameCenterLeaderboards: [FieldsGameCenterLeaderboards_gameCenterLeaderboardSetMemberLocalizationsGameCenterLeaderboardSetGetToOneRelated]? = nil, fieldsGameCenterLeaderboardSetReleases: [FieldsGameCenterLeaderboardSetReleases_gameCenterLeaderboardSetMemberLocalizationsGameCenterLeaderboardSetGetToOneRelated]? = nil, include: [Include_gameCenterLeaderboardSetMemberLocalizationsGameCenterLeaderboardSetGetToOneRelated]? = nil, limitLocalizations: Int? = nil, limitGameCenterLeaderboards: Int? = nil, limitReleases: Int? = nil, completion: @escaping (_ data: GameCenterLeaderboardSetResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let fieldsGameCenterLeaderboardSets = ["fieldsGameCenterLeaderboardSets_example"] // [String] | the fields to include for returned resources of type gameCenterLeaderboardSets (optional)
let fieldsGameCenterDetails = ["fieldsGameCenterDetails_example"] // [String] | the fields to include for returned resources of type gameCenterDetails (optional)
let fieldsGameCenterGroups = ["fieldsGameCenterGroups_example"] // [String] | the fields to include for returned resources of type gameCenterGroups (optional)
let fieldsGameCenterLeaderboardSetLocalizations = ["fieldsGameCenterLeaderboardSetLocalizations_example"] // [String] | the fields to include for returned resources of type gameCenterLeaderboardSetLocalizations (optional)
let fieldsGameCenterLeaderboards = ["fieldsGameCenterLeaderboards_example"] // [String] | the fields to include for returned resources of type gameCenterLeaderboards (optional)
let fieldsGameCenterLeaderboardSetReleases = ["fieldsGameCenterLeaderboardSetReleases_example"] // [String] | the fields to include for returned resources of type gameCenterLeaderboardSetReleases (optional)
let include = ["include_example"] // [String] | comma-separated list of relationships to include (optional)
let limitLocalizations = 987 // Int | maximum number of related localizations returned (when they are included) (optional)
let limitGameCenterLeaderboards = 987 // Int | maximum number of related gameCenterLeaderboards returned (when they are included) (optional)
let limitReleases = 987 // Int | maximum number of related releases returned (when they are included) (optional)

GameCenterLeaderboardSetMemberLocalizationsAPI.gameCenterLeaderboardSetMemberLocalizationsGameCenterLeaderboardSetGetToOneRelated(id: id, fieldsGameCenterLeaderboardSets: fieldsGameCenterLeaderboardSets, fieldsGameCenterDetails: fieldsGameCenterDetails, fieldsGameCenterGroups: fieldsGameCenterGroups, fieldsGameCenterLeaderboardSetLocalizations: fieldsGameCenterLeaderboardSetLocalizations, fieldsGameCenterLeaderboards: fieldsGameCenterLeaderboards, fieldsGameCenterLeaderboardSetReleases: fieldsGameCenterLeaderboardSetReleases, include: include, limitLocalizations: limitLocalizations, limitGameCenterLeaderboards: limitGameCenterLeaderboards, limitReleases: limitReleases) { (response, error) in
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
 **fieldsGameCenterLeaderboardSets** | [**[String]**](String.md) | the fields to include for returned resources of type gameCenterLeaderboardSets | [optional] 
 **fieldsGameCenterDetails** | [**[String]**](String.md) | the fields to include for returned resources of type gameCenterDetails | [optional] 
 **fieldsGameCenterGroups** | [**[String]**](String.md) | the fields to include for returned resources of type gameCenterGroups | [optional] 
 **fieldsGameCenterLeaderboardSetLocalizations** | [**[String]**](String.md) | the fields to include for returned resources of type gameCenterLeaderboardSetLocalizations | [optional] 
 **fieldsGameCenterLeaderboards** | [**[String]**](String.md) | the fields to include for returned resources of type gameCenterLeaderboards | [optional] 
 **fieldsGameCenterLeaderboardSetReleases** | [**[String]**](String.md) | the fields to include for returned resources of type gameCenterLeaderboardSetReleases | [optional] 
 **include** | [**[String]**](String.md) | comma-separated list of relationships to include | [optional] 
 **limitLocalizations** | **Int** | maximum number of related localizations returned (when they are included) | [optional] 
 **limitGameCenterLeaderboards** | **Int** | maximum number of related gameCenterLeaderboards returned (when they are included) | [optional] 
 **limitReleases** | **Int** | maximum number of related releases returned (when they are included) | [optional] 

### Return type

[**GameCenterLeaderboardSetResponse**](GameCenterLeaderboardSetResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **gameCenterLeaderboardSetMemberLocalizationsGetCollection**
```swift
    open class func gameCenterLeaderboardSetMemberLocalizationsGetCollection(filterGameCenterLeaderboardSet: [String], filterGameCenterLeaderboard: [String], fieldsGameCenterLeaderboardSetMemberLocalizations: [FieldsGameCenterLeaderboardSetMemberLocalizations_gameCenterLeaderboardSetMemberLocalizationsGetCollection]? = nil, fieldsGameCenterLeaderboardSets: [FieldsGameCenterLeaderboardSets_gameCenterLeaderboardSetMemberLocalizationsGetCollection]? = nil, fieldsGameCenterLeaderboards: [FieldsGameCenterLeaderboards_gameCenterLeaderboardSetMemberLocalizationsGetCollection]? = nil, limit: Int? = nil, include: [Include_gameCenterLeaderboardSetMemberLocalizationsGetCollection]? = nil, completion: @escaping (_ data: GameCenterLeaderboardSetMemberLocalizationsResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let filterGameCenterLeaderboardSet = ["inner_example"] // [String] | filter by id(s) of related 'gameCenterLeaderboardSet'
let filterGameCenterLeaderboard = ["inner_example"] // [String] | filter by id(s) of related 'gameCenterLeaderboard'
let fieldsGameCenterLeaderboardSetMemberLocalizations = ["fieldsGameCenterLeaderboardSetMemberLocalizations_example"] // [String] | the fields to include for returned resources of type gameCenterLeaderboardSetMemberLocalizations (optional)
let fieldsGameCenterLeaderboardSets = ["fieldsGameCenterLeaderboardSets_example"] // [String] | the fields to include for returned resources of type gameCenterLeaderboardSets (optional)
let fieldsGameCenterLeaderboards = ["fieldsGameCenterLeaderboards_example"] // [String] | the fields to include for returned resources of type gameCenterLeaderboards (optional)
let limit = 987 // Int | maximum resources per page (optional)
let include = ["include_example"] // [String] | comma-separated list of relationships to include (optional)

GameCenterLeaderboardSetMemberLocalizationsAPI.gameCenterLeaderboardSetMemberLocalizationsGetCollection(filterGameCenterLeaderboardSet: filterGameCenterLeaderboardSet, filterGameCenterLeaderboard: filterGameCenterLeaderboard, fieldsGameCenterLeaderboardSetMemberLocalizations: fieldsGameCenterLeaderboardSetMemberLocalizations, fieldsGameCenterLeaderboardSets: fieldsGameCenterLeaderboardSets, fieldsGameCenterLeaderboards: fieldsGameCenterLeaderboards, limit: limit, include: include) { (response, error) in
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
 **filterGameCenterLeaderboardSet** | [**[String]**](String.md) | filter by id(s) of related &#39;gameCenterLeaderboardSet&#39; | 
 **filterGameCenterLeaderboard** | [**[String]**](String.md) | filter by id(s) of related &#39;gameCenterLeaderboard&#39; | 
 **fieldsGameCenterLeaderboardSetMemberLocalizations** | [**[String]**](String.md) | the fields to include for returned resources of type gameCenterLeaderboardSetMemberLocalizations | [optional] 
 **fieldsGameCenterLeaderboardSets** | [**[String]**](String.md) | the fields to include for returned resources of type gameCenterLeaderboardSets | [optional] 
 **fieldsGameCenterLeaderboards** | [**[String]**](String.md) | the fields to include for returned resources of type gameCenterLeaderboards | [optional] 
 **limit** | **Int** | maximum resources per page | [optional] 
 **include** | [**[String]**](String.md) | comma-separated list of relationships to include | [optional] 

### Return type

[**GameCenterLeaderboardSetMemberLocalizationsResponse**](GameCenterLeaderboardSetMemberLocalizationsResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **gameCenterLeaderboardSetMemberLocalizationsUpdateInstance**
```swift
    open class func gameCenterLeaderboardSetMemberLocalizationsUpdateInstance(id: String, gameCenterLeaderboardSetMemberLocalizationUpdateRequest: GameCenterLeaderboardSetMemberLocalizationUpdateRequest, completion: @escaping (_ data: GameCenterLeaderboardSetMemberLocalizationResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let gameCenterLeaderboardSetMemberLocalizationUpdateRequest = GameCenterLeaderboardSetMemberLocalizationUpdateRequest(data: GameCenterLeaderboardSetMemberLocalizationUpdateRequest_data(type: "type_example", id: "id_example", attributes: BundleIdUpdateRequest_data_attributes(name: "name_example"))) // GameCenterLeaderboardSetMemberLocalizationUpdateRequest | GameCenterLeaderboardSetMemberLocalization representation

GameCenterLeaderboardSetMemberLocalizationsAPI.gameCenterLeaderboardSetMemberLocalizationsUpdateInstance(id: id, gameCenterLeaderboardSetMemberLocalizationUpdateRequest: gameCenterLeaderboardSetMemberLocalizationUpdateRequest) { (response, error) in
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
 **gameCenterLeaderboardSetMemberLocalizationUpdateRequest** | [**GameCenterLeaderboardSetMemberLocalizationUpdateRequest**](GameCenterLeaderboardSetMemberLocalizationUpdateRequest.md) | GameCenterLeaderboardSetMemberLocalization representation | 

### Return type

[**GameCenterLeaderboardSetMemberLocalizationResponse**](GameCenterLeaderboardSetMemberLocalizationResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

