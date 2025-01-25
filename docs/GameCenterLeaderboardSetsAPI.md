# GameCenterLeaderboardSetsAPI

All URIs are relative to *https://api.appstoreconnect.apple.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**gameCenterLeaderboardSetsCreateInstance**](GameCenterLeaderboardSetsAPI.md#gamecenterleaderboardsetscreateinstance) | **POST** /v1/gameCenterLeaderboardSets | 
[**gameCenterLeaderboardSetsDeleteInstance**](GameCenterLeaderboardSetsAPI.md#gamecenterleaderboardsetsdeleteinstance) | **DELETE** /v1/gameCenterLeaderboardSets/{id} | 
[**gameCenterLeaderboardSetsGameCenterLeaderboardsCreateToManyRelationship**](GameCenterLeaderboardSetsAPI.md#gamecenterleaderboardsetsgamecenterleaderboardscreatetomanyrelationship) | **POST** /v1/gameCenterLeaderboardSets/{id}/relationships/gameCenterLeaderboards | 
[**gameCenterLeaderboardSetsGameCenterLeaderboardsDeleteToManyRelationship**](GameCenterLeaderboardSetsAPI.md#gamecenterleaderboardsetsgamecenterleaderboardsdeletetomanyrelationship) | **DELETE** /v1/gameCenterLeaderboardSets/{id}/relationships/gameCenterLeaderboards | 
[**gameCenterLeaderboardSetsGameCenterLeaderboardsGetToManyRelated**](GameCenterLeaderboardSetsAPI.md#gamecenterleaderboardsetsgamecenterleaderboardsgettomanyrelated) | **GET** /v1/gameCenterLeaderboardSets/{id}/gameCenterLeaderboards | 
[**gameCenterLeaderboardSetsGameCenterLeaderboardsGetToManyRelationship**](GameCenterLeaderboardSetsAPI.md#gamecenterleaderboardsetsgamecenterleaderboardsgettomanyrelationship) | **GET** /v1/gameCenterLeaderboardSets/{id}/relationships/gameCenterLeaderboards | 
[**gameCenterLeaderboardSetsGameCenterLeaderboardsReplaceToManyRelationship**](GameCenterLeaderboardSetsAPI.md#gamecenterleaderboardsetsgamecenterleaderboardsreplacetomanyrelationship) | **PATCH** /v1/gameCenterLeaderboardSets/{id}/relationships/gameCenterLeaderboards | 
[**gameCenterLeaderboardSetsGetInstance**](GameCenterLeaderboardSetsAPI.md#gamecenterleaderboardsetsgetinstance) | **GET** /v1/gameCenterLeaderboardSets/{id} | 
[**gameCenterLeaderboardSetsGroupLeaderboardSetGetToOneRelated**](GameCenterLeaderboardSetsAPI.md#gamecenterleaderboardsetsgroupleaderboardsetgettoonerelated) | **GET** /v1/gameCenterLeaderboardSets/{id}/groupLeaderboardSet | 
[**gameCenterLeaderboardSetsGroupLeaderboardSetGetToOneRelationship**](GameCenterLeaderboardSetsAPI.md#gamecenterleaderboardsetsgroupleaderboardsetgettoonerelationship) | **GET** /v1/gameCenterLeaderboardSets/{id}/relationships/groupLeaderboardSet | 
[**gameCenterLeaderboardSetsGroupLeaderboardSetUpdateToOneRelationship**](GameCenterLeaderboardSetsAPI.md#gamecenterleaderboardsetsgroupleaderboardsetupdatetoonerelationship) | **PATCH** /v1/gameCenterLeaderboardSets/{id}/relationships/groupLeaderboardSet | 
[**gameCenterLeaderboardSetsLocalizationsGetToManyRelated**](GameCenterLeaderboardSetsAPI.md#gamecenterleaderboardsetslocalizationsgettomanyrelated) | **GET** /v1/gameCenterLeaderboardSets/{id}/localizations | 
[**gameCenterLeaderboardSetsReleasesGetToManyRelated**](GameCenterLeaderboardSetsAPI.md#gamecenterleaderboardsetsreleasesgettomanyrelated) | **GET** /v1/gameCenterLeaderboardSets/{id}/releases | 
[**gameCenterLeaderboardSetsUpdateInstance**](GameCenterLeaderboardSetsAPI.md#gamecenterleaderboardsetsupdateinstance) | **PATCH** /v1/gameCenterLeaderboardSets/{id} | 


# **gameCenterLeaderboardSetsCreateInstance**
```swift
    open class func gameCenterLeaderboardSetsCreateInstance(gameCenterLeaderboardSetCreateRequest: GameCenterLeaderboardSetCreateRequest, completion: @escaping (_ data: GameCenterLeaderboardSetResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let gameCenterLeaderboardSetCreateRequest = GameCenterLeaderboardSetCreateRequest(data: GameCenterLeaderboardSetCreateRequest_data(type: "type_example", attributes: GameCenterLeaderboardSetCreateRequest_data_attributes(referenceName: "referenceName_example", vendorIdentifier: "vendorIdentifier_example"), relationships: GameCenterLeaderboardSetCreateRequest_data_relationships(gameCenterDetail: GameCenterAchievementRelease_relationships_gameCenterDetail(data: App_relationships_gameCenterDetail_data(type: "type_example", id: "id_example")), gameCenterGroup: GameCenterAchievement_relationships_gameCenterGroup(data: GameCenterAchievement_relationships_gameCenterGroup_data(type: "type_example", id: "id_example")), gameCenterLeaderboards: GameCenterLeaderboardSetCreateRequest_data_relationships_gameCenterLeaderboards(data: [GameCenterDetail_relationships_gameCenterLeaderboards_data_inner(type: "type_example", id: "id_example")])))) // GameCenterLeaderboardSetCreateRequest | GameCenterLeaderboardSet representation

GameCenterLeaderboardSetsAPI.gameCenterLeaderboardSetsCreateInstance(gameCenterLeaderboardSetCreateRequest: gameCenterLeaderboardSetCreateRequest) { (response, error) in
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
 **gameCenterLeaderboardSetCreateRequest** | [**GameCenterLeaderboardSetCreateRequest**](GameCenterLeaderboardSetCreateRequest.md) | GameCenterLeaderboardSet representation | 

### Return type

[**GameCenterLeaderboardSetResponse**](GameCenterLeaderboardSetResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **gameCenterLeaderboardSetsDeleteInstance**
```swift
    open class func gameCenterLeaderboardSetsDeleteInstance(id: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource

GameCenterLeaderboardSetsAPI.gameCenterLeaderboardSetsDeleteInstance(id: id) { (response, error) in
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

# **gameCenterLeaderboardSetsGameCenterLeaderboardsCreateToManyRelationship**
```swift
    open class func gameCenterLeaderboardSetsGameCenterLeaderboardsCreateToManyRelationship(id: String, gameCenterLeaderboardSetGameCenterLeaderboardsLinkagesRequest: GameCenterLeaderboardSetGameCenterLeaderboardsLinkagesRequest, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let gameCenterLeaderboardSetGameCenterLeaderboardsLinkagesRequest = GameCenterLeaderboardSetGameCenterLeaderboardsLinkagesRequest(data: [GameCenterDetail_relationships_gameCenterLeaderboards_data_inner(type: "type_example", id: "id_example")]) // GameCenterLeaderboardSetGameCenterLeaderboardsLinkagesRequest | List of related linkages

GameCenterLeaderboardSetsAPI.gameCenterLeaderboardSetsGameCenterLeaderboardsCreateToManyRelationship(id: id, gameCenterLeaderboardSetGameCenterLeaderboardsLinkagesRequest: gameCenterLeaderboardSetGameCenterLeaderboardsLinkagesRequest) { (response, error) in
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
 **gameCenterLeaderboardSetGameCenterLeaderboardsLinkagesRequest** | [**GameCenterLeaderboardSetGameCenterLeaderboardsLinkagesRequest**](GameCenterLeaderboardSetGameCenterLeaderboardsLinkagesRequest.md) | List of related linkages | 

### Return type

Void (empty response body)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **gameCenterLeaderboardSetsGameCenterLeaderboardsDeleteToManyRelationship**
```swift
    open class func gameCenterLeaderboardSetsGameCenterLeaderboardsDeleteToManyRelationship(id: String, gameCenterLeaderboardSetGameCenterLeaderboardsLinkagesRequest: GameCenterLeaderboardSetGameCenterLeaderboardsLinkagesRequest, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let gameCenterLeaderboardSetGameCenterLeaderboardsLinkagesRequest = GameCenterLeaderboardSetGameCenterLeaderboardsLinkagesRequest(data: [GameCenterDetail_relationships_gameCenterLeaderboards_data_inner(type: "type_example", id: "id_example")]) // GameCenterLeaderboardSetGameCenterLeaderboardsLinkagesRequest | List of related linkages

GameCenterLeaderboardSetsAPI.gameCenterLeaderboardSetsGameCenterLeaderboardsDeleteToManyRelationship(id: id, gameCenterLeaderboardSetGameCenterLeaderboardsLinkagesRequest: gameCenterLeaderboardSetGameCenterLeaderboardsLinkagesRequest) { (response, error) in
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
 **gameCenterLeaderboardSetGameCenterLeaderboardsLinkagesRequest** | [**GameCenterLeaderboardSetGameCenterLeaderboardsLinkagesRequest**](GameCenterLeaderboardSetGameCenterLeaderboardsLinkagesRequest.md) | List of related linkages | 

### Return type

Void (empty response body)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **gameCenterLeaderboardSetsGameCenterLeaderboardsGetToManyRelated**
```swift
    open class func gameCenterLeaderboardSetsGameCenterLeaderboardsGetToManyRelated(id: String, filterReferenceName: [String]? = nil, filterArchived: [String]? = nil, filterId: [String]? = nil, fieldsGameCenterLeaderboards: [FieldsGameCenterLeaderboards_gameCenterLeaderboardSetsGameCenterLeaderboardsGetToManyRelated]? = nil, fieldsGameCenterDetails: [FieldsGameCenterDetails_gameCenterLeaderboardSetsGameCenterLeaderboardsGetToManyRelated]? = nil, fieldsGameCenterGroups: [FieldsGameCenterGroups_gameCenterLeaderboardSetsGameCenterLeaderboardsGetToManyRelated]? = nil, fieldsGameCenterLeaderboardSets: [FieldsGameCenterLeaderboardSets_gameCenterLeaderboardSetsGameCenterLeaderboardsGetToManyRelated]? = nil, fieldsGameCenterLeaderboardLocalizations: [FieldsGameCenterLeaderboardLocalizations_gameCenterLeaderboardSetsGameCenterLeaderboardsGetToManyRelated]? = nil, fieldsGameCenterLeaderboardReleases: [FieldsGameCenterLeaderboardReleases_gameCenterLeaderboardSetsGameCenterLeaderboardsGetToManyRelated]? = nil, limit: Int? = nil, include: [Include_gameCenterLeaderboardSetsGameCenterLeaderboardsGetToManyRelated]? = nil, limitGameCenterLeaderboardSets: Int? = nil, limitLocalizations: Int? = nil, limitReleases: Int? = nil, completion: @escaping (_ data: GameCenterLeaderboardsResponse?, _ error: Error?) -> Void)
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

GameCenterLeaderboardSetsAPI.gameCenterLeaderboardSetsGameCenterLeaderboardsGetToManyRelated(id: id, filterReferenceName: filterReferenceName, filterArchived: filterArchived, filterId: filterId, fieldsGameCenterLeaderboards: fieldsGameCenterLeaderboards, fieldsGameCenterDetails: fieldsGameCenterDetails, fieldsGameCenterGroups: fieldsGameCenterGroups, fieldsGameCenterLeaderboardSets: fieldsGameCenterLeaderboardSets, fieldsGameCenterLeaderboardLocalizations: fieldsGameCenterLeaderboardLocalizations, fieldsGameCenterLeaderboardReleases: fieldsGameCenterLeaderboardReleases, limit: limit, include: include, limitGameCenterLeaderboardSets: limitGameCenterLeaderboardSets, limitLocalizations: limitLocalizations, limitReleases: limitReleases) { (response, error) in
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

# **gameCenterLeaderboardSetsGameCenterLeaderboardsGetToManyRelationship**
```swift
    open class func gameCenterLeaderboardSetsGameCenterLeaderboardsGetToManyRelationship(id: String, limit: Int? = nil, completion: @escaping (_ data: GameCenterLeaderboardSetGameCenterLeaderboardsLinkagesResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let limit = 987 // Int | maximum resources per page (optional)

GameCenterLeaderboardSetsAPI.gameCenterLeaderboardSetsGameCenterLeaderboardsGetToManyRelationship(id: id, limit: limit) { (response, error) in
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

[**GameCenterLeaderboardSetGameCenterLeaderboardsLinkagesResponse**](GameCenterLeaderboardSetGameCenterLeaderboardsLinkagesResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **gameCenterLeaderboardSetsGameCenterLeaderboardsReplaceToManyRelationship**
```swift
    open class func gameCenterLeaderboardSetsGameCenterLeaderboardsReplaceToManyRelationship(id: String, gameCenterLeaderboardSetGameCenterLeaderboardsLinkagesRequest: GameCenterLeaderboardSetGameCenterLeaderboardsLinkagesRequest, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let gameCenterLeaderboardSetGameCenterLeaderboardsLinkagesRequest = GameCenterLeaderboardSetGameCenterLeaderboardsLinkagesRequest(data: [GameCenterDetail_relationships_gameCenterLeaderboards_data_inner(type: "type_example", id: "id_example")]) // GameCenterLeaderboardSetGameCenterLeaderboardsLinkagesRequest | List of related linkages

GameCenterLeaderboardSetsAPI.gameCenterLeaderboardSetsGameCenterLeaderboardsReplaceToManyRelationship(id: id, gameCenterLeaderboardSetGameCenterLeaderboardsLinkagesRequest: gameCenterLeaderboardSetGameCenterLeaderboardsLinkagesRequest) { (response, error) in
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
 **gameCenterLeaderboardSetGameCenterLeaderboardsLinkagesRequest** | [**GameCenterLeaderboardSetGameCenterLeaderboardsLinkagesRequest**](GameCenterLeaderboardSetGameCenterLeaderboardsLinkagesRequest.md) | List of related linkages | 

### Return type

Void (empty response body)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **gameCenterLeaderboardSetsGetInstance**
```swift
    open class func gameCenterLeaderboardSetsGetInstance(id: String, fieldsGameCenterLeaderboardSets: [FieldsGameCenterLeaderboardSets_gameCenterLeaderboardSetsGetInstance]? = nil, fieldsGameCenterLeaderboardSetLocalizations: [FieldsGameCenterLeaderboardSetLocalizations_gameCenterLeaderboardSetsGetInstance]? = nil, fieldsGameCenterLeaderboards: [FieldsGameCenterLeaderboards_gameCenterLeaderboardSetsGetInstance]? = nil, fieldsGameCenterLeaderboardSetReleases: [FieldsGameCenterLeaderboardSetReleases_gameCenterLeaderboardSetsGetInstance]? = nil, include: [Include_gameCenterLeaderboardSetsGetInstance]? = nil, limitGameCenterLeaderboards: Int? = nil, limitLocalizations: Int? = nil, limitReleases: Int? = nil, completion: @escaping (_ data: GameCenterLeaderboardSetResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let fieldsGameCenterLeaderboardSets = ["fieldsGameCenterLeaderboardSets_example"] // [String] | the fields to include for returned resources of type gameCenterLeaderboardSets (optional)
let fieldsGameCenterLeaderboardSetLocalizations = ["fieldsGameCenterLeaderboardSetLocalizations_example"] // [String] | the fields to include for returned resources of type gameCenterLeaderboardSetLocalizations (optional)
let fieldsGameCenterLeaderboards = ["fieldsGameCenterLeaderboards_example"] // [String] | the fields to include for returned resources of type gameCenterLeaderboards (optional)
let fieldsGameCenterLeaderboardSetReleases = ["fieldsGameCenterLeaderboardSetReleases_example"] // [String] | the fields to include for returned resources of type gameCenterLeaderboardSetReleases (optional)
let include = ["include_example"] // [String] | comma-separated list of relationships to include (optional)
let limitGameCenterLeaderboards = 987 // Int | maximum number of related gameCenterLeaderboards returned (when they are included) (optional)
let limitLocalizations = 987 // Int | maximum number of related localizations returned (when they are included) (optional)
let limitReleases = 987 // Int | maximum number of related releases returned (when they are included) (optional)

GameCenterLeaderboardSetsAPI.gameCenterLeaderboardSetsGetInstance(id: id, fieldsGameCenterLeaderboardSets: fieldsGameCenterLeaderboardSets, fieldsGameCenterLeaderboardSetLocalizations: fieldsGameCenterLeaderboardSetLocalizations, fieldsGameCenterLeaderboards: fieldsGameCenterLeaderboards, fieldsGameCenterLeaderboardSetReleases: fieldsGameCenterLeaderboardSetReleases, include: include, limitGameCenterLeaderboards: limitGameCenterLeaderboards, limitLocalizations: limitLocalizations, limitReleases: limitReleases) { (response, error) in
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
 **fieldsGameCenterLeaderboardSetLocalizations** | [**[String]**](String.md) | the fields to include for returned resources of type gameCenterLeaderboardSetLocalizations | [optional] 
 **fieldsGameCenterLeaderboards** | [**[String]**](String.md) | the fields to include for returned resources of type gameCenterLeaderboards | [optional] 
 **fieldsGameCenterLeaderboardSetReleases** | [**[String]**](String.md) | the fields to include for returned resources of type gameCenterLeaderboardSetReleases | [optional] 
 **include** | [**[String]**](String.md) | comma-separated list of relationships to include | [optional] 
 **limitGameCenterLeaderboards** | **Int** | maximum number of related gameCenterLeaderboards returned (when they are included) | [optional] 
 **limitLocalizations** | **Int** | maximum number of related localizations returned (when they are included) | [optional] 
 **limitReleases** | **Int** | maximum number of related releases returned (when they are included) | [optional] 

### Return type

[**GameCenterLeaderboardSetResponse**](GameCenterLeaderboardSetResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **gameCenterLeaderboardSetsGroupLeaderboardSetGetToOneRelated**
```swift
    open class func gameCenterLeaderboardSetsGroupLeaderboardSetGetToOneRelated(id: String, fieldsGameCenterLeaderboardSets: [FieldsGameCenterLeaderboardSets_gameCenterLeaderboardSetsGroupLeaderboardSetGetToOneRelated]? = nil, fieldsGameCenterDetails: [FieldsGameCenterDetails_gameCenterLeaderboardSetsGroupLeaderboardSetGetToOneRelated]? = nil, fieldsGameCenterGroups: [FieldsGameCenterGroups_gameCenterLeaderboardSetsGroupLeaderboardSetGetToOneRelated]? = nil, fieldsGameCenterLeaderboardSetLocalizations: [FieldsGameCenterLeaderboardSetLocalizations_gameCenterLeaderboardSetsGroupLeaderboardSetGetToOneRelated]? = nil, fieldsGameCenterLeaderboards: [FieldsGameCenterLeaderboards_gameCenterLeaderboardSetsGroupLeaderboardSetGetToOneRelated]? = nil, fieldsGameCenterLeaderboardSetReleases: [FieldsGameCenterLeaderboardSetReleases_gameCenterLeaderboardSetsGroupLeaderboardSetGetToOneRelated]? = nil, include: [Include_gameCenterLeaderboardSetsGroupLeaderboardSetGetToOneRelated]? = nil, limitLocalizations: Int? = nil, limitGameCenterLeaderboards: Int? = nil, limitReleases: Int? = nil, completion: @escaping (_ data: GameCenterLeaderboardSetResponse?, _ error: Error?) -> Void)
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

GameCenterLeaderboardSetsAPI.gameCenterLeaderboardSetsGroupLeaderboardSetGetToOneRelated(id: id, fieldsGameCenterLeaderboardSets: fieldsGameCenterLeaderboardSets, fieldsGameCenterDetails: fieldsGameCenterDetails, fieldsGameCenterGroups: fieldsGameCenterGroups, fieldsGameCenterLeaderboardSetLocalizations: fieldsGameCenterLeaderboardSetLocalizations, fieldsGameCenterLeaderboards: fieldsGameCenterLeaderboards, fieldsGameCenterLeaderboardSetReleases: fieldsGameCenterLeaderboardSetReleases, include: include, limitLocalizations: limitLocalizations, limitGameCenterLeaderboards: limitGameCenterLeaderboards, limitReleases: limitReleases) { (response, error) in
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

# **gameCenterLeaderboardSetsGroupLeaderboardSetGetToOneRelationship**
```swift
    open class func gameCenterLeaderboardSetsGroupLeaderboardSetGetToOneRelationship(id: String, completion: @escaping (_ data: GameCenterLeaderboardSetGroupLeaderboardSetLinkageResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource

GameCenterLeaderboardSetsAPI.gameCenterLeaderboardSetsGroupLeaderboardSetGetToOneRelationship(id: id) { (response, error) in
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

[**GameCenterLeaderboardSetGroupLeaderboardSetLinkageResponse**](GameCenterLeaderboardSetGroupLeaderboardSetLinkageResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **gameCenterLeaderboardSetsGroupLeaderboardSetUpdateToOneRelationship**
```swift
    open class func gameCenterLeaderboardSetsGroupLeaderboardSetUpdateToOneRelationship(id: String, gameCenterLeaderboardSetGroupLeaderboardSetLinkageRequest: GameCenterLeaderboardSetGroupLeaderboardSetLinkageRequest, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let gameCenterLeaderboardSetGroupLeaderboardSetLinkageRequest = GameCenterLeaderboardSetGroupLeaderboardSetLinkageRequest(data: GameCenterDetail_relationships_gameCenterLeaderboardSets_data_inner(type: "type_example", id: "id_example")) // GameCenterLeaderboardSetGroupLeaderboardSetLinkageRequest | Related linkage

GameCenterLeaderboardSetsAPI.gameCenterLeaderboardSetsGroupLeaderboardSetUpdateToOneRelationship(id: id, gameCenterLeaderboardSetGroupLeaderboardSetLinkageRequest: gameCenterLeaderboardSetGroupLeaderboardSetLinkageRequest) { (response, error) in
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
 **gameCenterLeaderboardSetGroupLeaderboardSetLinkageRequest** | [**GameCenterLeaderboardSetGroupLeaderboardSetLinkageRequest**](GameCenterLeaderboardSetGroupLeaderboardSetLinkageRequest.md) | Related linkage | 

### Return type

Void (empty response body)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **gameCenterLeaderboardSetsLocalizationsGetToManyRelated**
```swift
    open class func gameCenterLeaderboardSetsLocalizationsGetToManyRelated(id: String, fieldsGameCenterLeaderboardSetLocalizations: [FieldsGameCenterLeaderboardSetLocalizations_gameCenterLeaderboardSetsLocalizationsGetToManyRelated]? = nil, fieldsGameCenterLeaderboardSets: [FieldsGameCenterLeaderboardSets_gameCenterLeaderboardSetsLocalizationsGetToManyRelated]? = nil, fieldsGameCenterLeaderboardSetImages: [FieldsGameCenterLeaderboardSetImages_gameCenterLeaderboardSetsLocalizationsGetToManyRelated]? = nil, limit: Int? = nil, include: [Include_gameCenterLeaderboardSetsLocalizationsGetToManyRelated]? = nil, completion: @escaping (_ data: GameCenterLeaderboardSetLocalizationsResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let fieldsGameCenterLeaderboardSetLocalizations = ["fieldsGameCenterLeaderboardSetLocalizations_example"] // [String] | the fields to include for returned resources of type gameCenterLeaderboardSetLocalizations (optional)
let fieldsGameCenterLeaderboardSets = ["fieldsGameCenterLeaderboardSets_example"] // [String] | the fields to include for returned resources of type gameCenterLeaderboardSets (optional)
let fieldsGameCenterLeaderboardSetImages = ["fieldsGameCenterLeaderboardSetImages_example"] // [String] | the fields to include for returned resources of type gameCenterLeaderboardSetImages (optional)
let limit = 987 // Int | maximum resources per page (optional)
let include = ["include_example"] // [String] | comma-separated list of relationships to include (optional)

GameCenterLeaderboardSetsAPI.gameCenterLeaderboardSetsLocalizationsGetToManyRelated(id: id, fieldsGameCenterLeaderboardSetLocalizations: fieldsGameCenterLeaderboardSetLocalizations, fieldsGameCenterLeaderboardSets: fieldsGameCenterLeaderboardSets, fieldsGameCenterLeaderboardSetImages: fieldsGameCenterLeaderboardSetImages, limit: limit, include: include) { (response, error) in
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
 **fieldsGameCenterLeaderboardSets** | [**[String]**](String.md) | the fields to include for returned resources of type gameCenterLeaderboardSets | [optional] 
 **fieldsGameCenterLeaderboardSetImages** | [**[String]**](String.md) | the fields to include for returned resources of type gameCenterLeaderboardSetImages | [optional] 
 **limit** | **Int** | maximum resources per page | [optional] 
 **include** | [**[String]**](String.md) | comma-separated list of relationships to include | [optional] 

### Return type

[**GameCenterLeaderboardSetLocalizationsResponse**](GameCenterLeaderboardSetLocalizationsResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **gameCenterLeaderboardSetsReleasesGetToManyRelated**
```swift
    open class func gameCenterLeaderboardSetsReleasesGetToManyRelated(id: String, filterLive: [String]? = nil, filterGameCenterDetail: [String]? = nil, fieldsGameCenterLeaderboardSetReleases: [FieldsGameCenterLeaderboardSetReleases_gameCenterLeaderboardSetsReleasesGetToManyRelated]? = nil, fieldsGameCenterDetails: [FieldsGameCenterDetails_gameCenterLeaderboardSetsReleasesGetToManyRelated]? = nil, fieldsGameCenterLeaderboardSets: [FieldsGameCenterLeaderboardSets_gameCenterLeaderboardSetsReleasesGetToManyRelated]? = nil, limit: Int? = nil, include: [Include_gameCenterLeaderboardSetsReleasesGetToManyRelated]? = nil, completion: @escaping (_ data: GameCenterLeaderboardSetReleasesResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let filterLive = ["inner_example"] // [String] | filter by attribute 'live' (optional)
let filterGameCenterDetail = ["inner_example"] // [String] | filter by id(s) of related 'gameCenterDetail' (optional)
let fieldsGameCenterLeaderboardSetReleases = ["fieldsGameCenterLeaderboardSetReleases_example"] // [String] | the fields to include for returned resources of type gameCenterLeaderboardSetReleases (optional)
let fieldsGameCenterDetails = ["fieldsGameCenterDetails_example"] // [String] | the fields to include for returned resources of type gameCenterDetails (optional)
let fieldsGameCenterLeaderboardSets = ["fieldsGameCenterLeaderboardSets_example"] // [String] | the fields to include for returned resources of type gameCenterLeaderboardSets (optional)
let limit = 987 // Int | maximum resources per page (optional)
let include = ["include_example"] // [String] | comma-separated list of relationships to include (optional)

GameCenterLeaderboardSetsAPI.gameCenterLeaderboardSetsReleasesGetToManyRelated(id: id, filterLive: filterLive, filterGameCenterDetail: filterGameCenterDetail, fieldsGameCenterLeaderboardSetReleases: fieldsGameCenterLeaderboardSetReleases, fieldsGameCenterDetails: fieldsGameCenterDetails, fieldsGameCenterLeaderboardSets: fieldsGameCenterLeaderboardSets, limit: limit, include: include) { (response, error) in
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

# **gameCenterLeaderboardSetsUpdateInstance**
```swift
    open class func gameCenterLeaderboardSetsUpdateInstance(id: String, gameCenterLeaderboardSetUpdateRequest: GameCenterLeaderboardSetUpdateRequest, completion: @escaping (_ data: GameCenterLeaderboardSetResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let gameCenterLeaderboardSetUpdateRequest = GameCenterLeaderboardSetUpdateRequest(data: GameCenterLeaderboardSetUpdateRequest_data(type: "type_example", id: "id_example", attributes: GameCenterGroup_attributes(referenceName: "referenceName_example"))) // GameCenterLeaderboardSetUpdateRequest | GameCenterLeaderboardSet representation

GameCenterLeaderboardSetsAPI.gameCenterLeaderboardSetsUpdateInstance(id: id, gameCenterLeaderboardSetUpdateRequest: gameCenterLeaderboardSetUpdateRequest) { (response, error) in
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
 **gameCenterLeaderboardSetUpdateRequest** | [**GameCenterLeaderboardSetUpdateRequest**](GameCenterLeaderboardSetUpdateRequest.md) | GameCenterLeaderboardSet representation | 

### Return type

[**GameCenterLeaderboardSetResponse**](GameCenterLeaderboardSetResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

