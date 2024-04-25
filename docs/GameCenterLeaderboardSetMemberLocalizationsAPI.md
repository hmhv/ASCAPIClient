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
    open class func gameCenterLeaderboardSetMemberLocalizationsGameCenterLeaderboardGetToOneRelated(id: String, fieldsGameCenterLeaderboardLocalizations: [FieldsGameCenterLeaderboardLocalizations_gameCenterLeaderboardSetMemberLocalizationsGameCenterLeaderboardGetToOneRelated]? = nil, fieldsGameCenterLeaderboardSets: [FieldsGameCenterLeaderboardSets_gameCenterLeaderboardSetMemberLocalizationsGameCenterLeaderboardGetToOneRelated]? = nil, fieldsGameCenterGroups: [FieldsGameCenterGroups_gameCenterLeaderboardSetMemberLocalizationsGameCenterLeaderboardGetToOneRelated]? = nil, fieldsGameCenterDetails: [FieldsGameCenterDetails_gameCenterLeaderboardSetMemberLocalizationsGameCenterLeaderboardGetToOneRelated]? = nil, fieldsGameCenterLeaderboards: [FieldsGameCenterLeaderboards_gameCenterLeaderboardSetMemberLocalizationsGameCenterLeaderboardGetToOneRelated]? = nil, fieldsGameCenterLeaderboardReleases: [FieldsGameCenterLeaderboardReleases_gameCenterLeaderboardSetMemberLocalizationsGameCenterLeaderboardGetToOneRelated]? = nil, limitGameCenterLeaderboardSets: Int? = nil, limitLocalizations: Int? = nil, limitReleases: Int? = nil, include: [Include_gameCenterLeaderboardSetMemberLocalizationsGameCenterLeaderboardGetToOneRelated]? = nil, completion: @escaping (_ data: GameCenterLeaderboardResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let fieldsGameCenterLeaderboardLocalizations = ["fieldsGameCenterLeaderboardLocalizations_example"] // [String] | the fields to include for returned resources of type gameCenterLeaderboardLocalizations (optional)
let fieldsGameCenterLeaderboardSets = ["fieldsGameCenterLeaderboardSets_example"] // [String] | the fields to include for returned resources of type gameCenterLeaderboardSets (optional)
let fieldsGameCenterGroups = ["fieldsGameCenterGroups_example"] // [String] | the fields to include for returned resources of type gameCenterGroups (optional)
let fieldsGameCenterDetails = ["fieldsGameCenterDetails_example"] // [String] | the fields to include for returned resources of type gameCenterDetails (optional)
let fieldsGameCenterLeaderboards = ["fieldsGameCenterLeaderboards_example"] // [String] | the fields to include for returned resources of type gameCenterLeaderboards (optional)
let fieldsGameCenterLeaderboardReleases = ["fieldsGameCenterLeaderboardReleases_example"] // [String] | the fields to include for returned resources of type gameCenterLeaderboardReleases (optional)
let limitGameCenterLeaderboardSets = 987 // Int | maximum number of related gameCenterLeaderboardSets returned (when they are included) (optional)
let limitLocalizations = 987 // Int | maximum number of related localizations returned (when they are included) (optional)
let limitReleases = 987 // Int | maximum number of related releases returned (when they are included) (optional)
let include = ["include_example"] // [String] | comma-separated list of relationships to include (optional)

GameCenterLeaderboardSetMemberLocalizationsAPI.gameCenterLeaderboardSetMemberLocalizationsGameCenterLeaderboardGetToOneRelated(id: id, fieldsGameCenterLeaderboardLocalizations: fieldsGameCenterLeaderboardLocalizations, fieldsGameCenterLeaderboardSets: fieldsGameCenterLeaderboardSets, fieldsGameCenterGroups: fieldsGameCenterGroups, fieldsGameCenterDetails: fieldsGameCenterDetails, fieldsGameCenterLeaderboards: fieldsGameCenterLeaderboards, fieldsGameCenterLeaderboardReleases: fieldsGameCenterLeaderboardReleases, limitGameCenterLeaderboardSets: limitGameCenterLeaderboardSets, limitLocalizations: limitLocalizations, limitReleases: limitReleases, include: include) { (response, error) in
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
 **fieldsGameCenterLeaderboardSets** | [**[String]**](String.md) | the fields to include for returned resources of type gameCenterLeaderboardSets | [optional] 
 **fieldsGameCenterGroups** | [**[String]**](String.md) | the fields to include for returned resources of type gameCenterGroups | [optional] 
 **fieldsGameCenterDetails** | [**[String]**](String.md) | the fields to include for returned resources of type gameCenterDetails | [optional] 
 **fieldsGameCenterLeaderboards** | [**[String]**](String.md) | the fields to include for returned resources of type gameCenterLeaderboards | [optional] 
 **fieldsGameCenterLeaderboardReleases** | [**[String]**](String.md) | the fields to include for returned resources of type gameCenterLeaderboardReleases | [optional] 
 **limitGameCenterLeaderboardSets** | **Int** | maximum number of related gameCenterLeaderboardSets returned (when they are included) | [optional] 
 **limitLocalizations** | **Int** | maximum number of related localizations returned (when they are included) | [optional] 
 **limitReleases** | **Int** | maximum number of related releases returned (when they are included) | [optional] 
 **include** | [**[String]**](String.md) | comma-separated list of relationships to include | [optional] 

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
    open class func gameCenterLeaderboardSetMemberLocalizationsGameCenterLeaderboardSetGetToOneRelated(id: String, fieldsGameCenterLeaderboardSetLocalizations: [FieldsGameCenterLeaderboardSetLocalizations_gameCenterLeaderboardSetMemberLocalizationsGameCenterLeaderboardSetGetToOneRelated]? = nil, fieldsGameCenterLeaderboardSetReleases: [FieldsGameCenterLeaderboardSetReleases_gameCenterLeaderboardSetMemberLocalizationsGameCenterLeaderboardSetGetToOneRelated]? = nil, fieldsGameCenterLeaderboardSets: [FieldsGameCenterLeaderboardSets_gameCenterLeaderboardSetMemberLocalizationsGameCenterLeaderboardSetGetToOneRelated]? = nil, fieldsGameCenterGroups: [FieldsGameCenterGroups_gameCenterLeaderboardSetMemberLocalizationsGameCenterLeaderboardSetGetToOneRelated]? = nil, fieldsGameCenterDetails: [FieldsGameCenterDetails_gameCenterLeaderboardSetMemberLocalizationsGameCenterLeaderboardSetGetToOneRelated]? = nil, fieldsGameCenterLeaderboards: [FieldsGameCenterLeaderboards_gameCenterLeaderboardSetMemberLocalizationsGameCenterLeaderboardSetGetToOneRelated]? = nil, limitLocalizations: Int? = nil, limitGameCenterLeaderboards: Int? = nil, limitReleases: Int? = nil, include: [Include_gameCenterLeaderboardSetMemberLocalizationsGameCenterLeaderboardSetGetToOneRelated]? = nil, completion: @escaping (_ data: GameCenterLeaderboardSetResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let fieldsGameCenterLeaderboardSetLocalizations = ["fieldsGameCenterLeaderboardSetLocalizations_example"] // [String] | the fields to include for returned resources of type gameCenterLeaderboardSetLocalizations (optional)
let fieldsGameCenterLeaderboardSetReleases = ["fieldsGameCenterLeaderboardSetReleases_example"] // [String] | the fields to include for returned resources of type gameCenterLeaderboardSetReleases (optional)
let fieldsGameCenterLeaderboardSets = ["fieldsGameCenterLeaderboardSets_example"] // [String] | the fields to include for returned resources of type gameCenterLeaderboardSets (optional)
let fieldsGameCenterGroups = ["fieldsGameCenterGroups_example"] // [String] | the fields to include for returned resources of type gameCenterGroups (optional)
let fieldsGameCenterDetails = ["fieldsGameCenterDetails_example"] // [String] | the fields to include for returned resources of type gameCenterDetails (optional)
let fieldsGameCenterLeaderboards = ["fieldsGameCenterLeaderboards_example"] // [String] | the fields to include for returned resources of type gameCenterLeaderboards (optional)
let limitLocalizations = 987 // Int | maximum number of related localizations returned (when they are included) (optional)
let limitGameCenterLeaderboards = 987 // Int | maximum number of related gameCenterLeaderboards returned (when they are included) (optional)
let limitReleases = 987 // Int | maximum number of related releases returned (when they are included) (optional)
let include = ["include_example"] // [String] | comma-separated list of relationships to include (optional)

GameCenterLeaderboardSetMemberLocalizationsAPI.gameCenterLeaderboardSetMemberLocalizationsGameCenterLeaderboardSetGetToOneRelated(id: id, fieldsGameCenterLeaderboardSetLocalizations: fieldsGameCenterLeaderboardSetLocalizations, fieldsGameCenterLeaderboardSetReleases: fieldsGameCenterLeaderboardSetReleases, fieldsGameCenterLeaderboardSets: fieldsGameCenterLeaderboardSets, fieldsGameCenterGroups: fieldsGameCenterGroups, fieldsGameCenterDetails: fieldsGameCenterDetails, fieldsGameCenterLeaderboards: fieldsGameCenterLeaderboards, limitLocalizations: limitLocalizations, limitGameCenterLeaderboards: limitGameCenterLeaderboards, limitReleases: limitReleases, include: include) { (response, error) in
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
 **fieldsGameCenterLeaderboardSetLocalizations** | [**[String]**](String.md) | the fields to include for returned resources of type gameCenterLeaderboardSetLocalizations | [optional] 
 **fieldsGameCenterLeaderboardSetReleases** | [**[String]**](String.md) | the fields to include for returned resources of type gameCenterLeaderboardSetReleases | [optional] 
 **fieldsGameCenterLeaderboardSets** | [**[String]**](String.md) | the fields to include for returned resources of type gameCenterLeaderboardSets | [optional] 
 **fieldsGameCenterGroups** | [**[String]**](String.md) | the fields to include for returned resources of type gameCenterGroups | [optional] 
 **fieldsGameCenterDetails** | [**[String]**](String.md) | the fields to include for returned resources of type gameCenterDetails | [optional] 
 **fieldsGameCenterLeaderboards** | [**[String]**](String.md) | the fields to include for returned resources of type gameCenterLeaderboards | [optional] 
 **limitLocalizations** | **Int** | maximum number of related localizations returned (when they are included) | [optional] 
 **limitGameCenterLeaderboards** | **Int** | maximum number of related gameCenterLeaderboards returned (when they are included) | [optional] 
 **limitReleases** | **Int** | maximum number of related releases returned (when they are included) | [optional] 
 **include** | [**[String]**](String.md) | comma-separated list of relationships to include | [optional] 

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
    open class func gameCenterLeaderboardSetMemberLocalizationsGetCollection(filterGameCenterLeaderboard: [String], filterGameCenterLeaderboardSet: [String], fieldsGameCenterLeaderboardSetMemberLocalizations: [FieldsGameCenterLeaderboardSetMemberLocalizations_gameCenterLeaderboardSetMemberLocalizationsGetCollection]? = nil, limit: Int? = nil, include: [Include_gameCenterLeaderboardSetMemberLocalizationsGetCollection]? = nil, fieldsGameCenterLeaderboardSets: [FieldsGameCenterLeaderboardSets_gameCenterLeaderboardSetMemberLocalizationsGetCollection]? = nil, fieldsGameCenterLeaderboards: [FieldsGameCenterLeaderboards_gameCenterLeaderboardSetMemberLocalizationsGetCollection]? = nil, completion: @escaping (_ data: GameCenterLeaderboardSetMemberLocalizationsResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let filterGameCenterLeaderboard = ["inner_example"] // [String] | filter by id(s) of related 'gameCenterLeaderboard'
let filterGameCenterLeaderboardSet = ["inner_example"] // [String] | filter by id(s) of related 'gameCenterLeaderboardSet'
let fieldsGameCenterLeaderboardSetMemberLocalizations = ["fieldsGameCenterLeaderboardSetMemberLocalizations_example"] // [String] | the fields to include for returned resources of type gameCenterLeaderboardSetMemberLocalizations (optional)
let limit = 987 // Int | maximum resources per page (optional)
let include = ["include_example"] // [String] | comma-separated list of relationships to include (optional)
let fieldsGameCenterLeaderboardSets = ["fieldsGameCenterLeaderboardSets_example"] // [String] | the fields to include for returned resources of type gameCenterLeaderboardSets (optional)
let fieldsGameCenterLeaderboards = ["fieldsGameCenterLeaderboards_example"] // [String] | the fields to include for returned resources of type gameCenterLeaderboards (optional)

GameCenterLeaderboardSetMemberLocalizationsAPI.gameCenterLeaderboardSetMemberLocalizationsGetCollection(filterGameCenterLeaderboard: filterGameCenterLeaderboard, filterGameCenterLeaderboardSet: filterGameCenterLeaderboardSet, fieldsGameCenterLeaderboardSetMemberLocalizations: fieldsGameCenterLeaderboardSetMemberLocalizations, limit: limit, include: include, fieldsGameCenterLeaderboardSets: fieldsGameCenterLeaderboardSets, fieldsGameCenterLeaderboards: fieldsGameCenterLeaderboards) { (response, error) in
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
 **filterGameCenterLeaderboard** | [**[String]**](String.md) | filter by id(s) of related &#39;gameCenterLeaderboard&#39; | 
 **filterGameCenterLeaderboardSet** | [**[String]**](String.md) | filter by id(s) of related &#39;gameCenterLeaderboardSet&#39; | 
 **fieldsGameCenterLeaderboardSetMemberLocalizations** | [**[String]**](String.md) | the fields to include for returned resources of type gameCenterLeaderboardSetMemberLocalizations | [optional] 
 **limit** | **Int** | maximum resources per page | [optional] 
 **include** | [**[String]**](String.md) | comma-separated list of relationships to include | [optional] 
 **fieldsGameCenterLeaderboardSets** | [**[String]**](String.md) | the fields to include for returned resources of type gameCenterLeaderboardSets | [optional] 
 **fieldsGameCenterLeaderboards** | [**[String]**](String.md) | the fields to include for returned resources of type gameCenterLeaderboards | [optional] 

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

