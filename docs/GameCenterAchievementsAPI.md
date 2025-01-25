# GameCenterAchievementsAPI

All URIs are relative to *https://api.appstoreconnect.apple.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**gameCenterAchievementsCreateInstance**](GameCenterAchievementsAPI.md#gamecenterachievementscreateinstance) | **POST** /v1/gameCenterAchievements | 
[**gameCenterAchievementsDeleteInstance**](GameCenterAchievementsAPI.md#gamecenterachievementsdeleteinstance) | **DELETE** /v1/gameCenterAchievements/{id} | 
[**gameCenterAchievementsGetInstance**](GameCenterAchievementsAPI.md#gamecenterachievementsgetinstance) | **GET** /v1/gameCenterAchievements/{id} | 
[**gameCenterAchievementsGroupAchievementGetToOneRelated**](GameCenterAchievementsAPI.md#gamecenterachievementsgroupachievementgettoonerelated) | **GET** /v1/gameCenterAchievements/{id}/groupAchievement | 
[**gameCenterAchievementsGroupAchievementGetToOneRelationship**](GameCenterAchievementsAPI.md#gamecenterachievementsgroupachievementgettoonerelationship) | **GET** /v1/gameCenterAchievements/{id}/relationships/groupAchievement | 
[**gameCenterAchievementsGroupAchievementUpdateToOneRelationship**](GameCenterAchievementsAPI.md#gamecenterachievementsgroupachievementupdatetoonerelationship) | **PATCH** /v1/gameCenterAchievements/{id}/relationships/groupAchievement | 
[**gameCenterAchievementsLocalizationsGetToManyRelated**](GameCenterAchievementsAPI.md#gamecenterachievementslocalizationsgettomanyrelated) | **GET** /v1/gameCenterAchievements/{id}/localizations | 
[**gameCenterAchievementsReleasesGetToManyRelated**](GameCenterAchievementsAPI.md#gamecenterachievementsreleasesgettomanyrelated) | **GET** /v1/gameCenterAchievements/{id}/releases | 
[**gameCenterAchievementsUpdateInstance**](GameCenterAchievementsAPI.md#gamecenterachievementsupdateinstance) | **PATCH** /v1/gameCenterAchievements/{id} | 


# **gameCenterAchievementsCreateInstance**
```swift
    open class func gameCenterAchievementsCreateInstance(gameCenterAchievementCreateRequest: GameCenterAchievementCreateRequest, completion: @escaping (_ data: GameCenterAchievementResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let gameCenterAchievementCreateRequest = GameCenterAchievementCreateRequest(data: GameCenterAchievementCreateRequest_data(type: "type_example", attributes: GameCenterAchievementCreateRequest_data_attributes(referenceName: "referenceName_example", vendorIdentifier: "vendorIdentifier_example", points: 123, showBeforeEarned: false, repeatable: false), relationships: GameCenterAchievementCreateRequest_data_relationships(gameCenterDetail: GameCenterAchievementRelease_relationships_gameCenterDetail(data: App_relationships_gameCenterDetail_data(type: "type_example", id: "id_example")), gameCenterGroup: GameCenterAchievement_relationships_gameCenterGroup(data: GameCenterAchievement_relationships_gameCenterGroup_data(type: "type_example", id: "id_example"))))) // GameCenterAchievementCreateRequest | GameCenterAchievement representation

GameCenterAchievementsAPI.gameCenterAchievementsCreateInstance(gameCenterAchievementCreateRequest: gameCenterAchievementCreateRequest) { (response, error) in
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
 **gameCenterAchievementCreateRequest** | [**GameCenterAchievementCreateRequest**](GameCenterAchievementCreateRequest.md) | GameCenterAchievement representation | 

### Return type

[**GameCenterAchievementResponse**](GameCenterAchievementResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **gameCenterAchievementsDeleteInstance**
```swift
    open class func gameCenterAchievementsDeleteInstance(id: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource

GameCenterAchievementsAPI.gameCenterAchievementsDeleteInstance(id: id) { (response, error) in
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

# **gameCenterAchievementsGetInstance**
```swift
    open class func gameCenterAchievementsGetInstance(id: String, fieldsGameCenterAchievements: [FieldsGameCenterAchievements_gameCenterAchievementsGetInstance]? = nil, fieldsGameCenterAchievementLocalizations: [FieldsGameCenterAchievementLocalizations_gameCenterAchievementsGetInstance]? = nil, fieldsGameCenterAchievementReleases: [FieldsGameCenterAchievementReleases_gameCenterAchievementsGetInstance]? = nil, include: [Include_gameCenterAchievementsGetInstance]? = nil, limitLocalizations: Int? = nil, limitReleases: Int? = nil, completion: @escaping (_ data: GameCenterAchievementResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let fieldsGameCenterAchievements = ["fieldsGameCenterAchievements_example"] // [String] | the fields to include for returned resources of type gameCenterAchievements (optional)
let fieldsGameCenterAchievementLocalizations = ["fieldsGameCenterAchievementLocalizations_example"] // [String] | the fields to include for returned resources of type gameCenterAchievementLocalizations (optional)
let fieldsGameCenterAchievementReleases = ["fieldsGameCenterAchievementReleases_example"] // [String] | the fields to include for returned resources of type gameCenterAchievementReleases (optional)
let include = ["include_example"] // [String] | comma-separated list of relationships to include (optional)
let limitLocalizations = 987 // Int | maximum number of related localizations returned (when they are included) (optional)
let limitReleases = 987 // Int | maximum number of related releases returned (when they are included) (optional)

GameCenterAchievementsAPI.gameCenterAchievementsGetInstance(id: id, fieldsGameCenterAchievements: fieldsGameCenterAchievements, fieldsGameCenterAchievementLocalizations: fieldsGameCenterAchievementLocalizations, fieldsGameCenterAchievementReleases: fieldsGameCenterAchievementReleases, include: include, limitLocalizations: limitLocalizations, limitReleases: limitReleases) { (response, error) in
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
 **fieldsGameCenterAchievements** | [**[String]**](String.md) | the fields to include for returned resources of type gameCenterAchievements | [optional] 
 **fieldsGameCenterAchievementLocalizations** | [**[String]**](String.md) | the fields to include for returned resources of type gameCenterAchievementLocalizations | [optional] 
 **fieldsGameCenterAchievementReleases** | [**[String]**](String.md) | the fields to include for returned resources of type gameCenterAchievementReleases | [optional] 
 **include** | [**[String]**](String.md) | comma-separated list of relationships to include | [optional] 
 **limitLocalizations** | **Int** | maximum number of related localizations returned (when they are included) | [optional] 
 **limitReleases** | **Int** | maximum number of related releases returned (when they are included) | [optional] 

### Return type

[**GameCenterAchievementResponse**](GameCenterAchievementResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **gameCenterAchievementsGroupAchievementGetToOneRelated**
```swift
    open class func gameCenterAchievementsGroupAchievementGetToOneRelated(id: String, fieldsGameCenterAchievements: [FieldsGameCenterAchievements_gameCenterAchievementsGroupAchievementGetToOneRelated]? = nil, fieldsGameCenterDetails: [FieldsGameCenterDetails_gameCenterAchievementsGroupAchievementGetToOneRelated]? = nil, fieldsGameCenterGroups: [FieldsGameCenterGroups_gameCenterAchievementsGroupAchievementGetToOneRelated]? = nil, fieldsGameCenterAchievementLocalizations: [FieldsGameCenterAchievementLocalizations_gameCenterAchievementsGroupAchievementGetToOneRelated]? = nil, fieldsGameCenterAchievementReleases: [FieldsGameCenterAchievementReleases_gameCenterAchievementsGroupAchievementGetToOneRelated]? = nil, include: [Include_gameCenterAchievementsGroupAchievementGetToOneRelated]? = nil, limitLocalizations: Int? = nil, limitReleases: Int? = nil, completion: @escaping (_ data: GameCenterAchievementResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let fieldsGameCenterAchievements = ["fieldsGameCenterAchievements_example"] // [String] | the fields to include for returned resources of type gameCenterAchievements (optional)
let fieldsGameCenterDetails = ["fieldsGameCenterDetails_example"] // [String] | the fields to include for returned resources of type gameCenterDetails (optional)
let fieldsGameCenterGroups = ["fieldsGameCenterGroups_example"] // [String] | the fields to include for returned resources of type gameCenterGroups (optional)
let fieldsGameCenterAchievementLocalizations = ["fieldsGameCenterAchievementLocalizations_example"] // [String] | the fields to include for returned resources of type gameCenterAchievementLocalizations (optional)
let fieldsGameCenterAchievementReleases = ["fieldsGameCenterAchievementReleases_example"] // [String] | the fields to include for returned resources of type gameCenterAchievementReleases (optional)
let include = ["include_example"] // [String] | comma-separated list of relationships to include (optional)
let limitLocalizations = 987 // Int | maximum number of related localizations returned (when they are included) (optional)
let limitReleases = 987 // Int | maximum number of related releases returned (when they are included) (optional)

GameCenterAchievementsAPI.gameCenterAchievementsGroupAchievementGetToOneRelated(id: id, fieldsGameCenterAchievements: fieldsGameCenterAchievements, fieldsGameCenterDetails: fieldsGameCenterDetails, fieldsGameCenterGroups: fieldsGameCenterGroups, fieldsGameCenterAchievementLocalizations: fieldsGameCenterAchievementLocalizations, fieldsGameCenterAchievementReleases: fieldsGameCenterAchievementReleases, include: include, limitLocalizations: limitLocalizations, limitReleases: limitReleases) { (response, error) in
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
 **fieldsGameCenterAchievements** | [**[String]**](String.md) | the fields to include for returned resources of type gameCenterAchievements | [optional] 
 **fieldsGameCenterDetails** | [**[String]**](String.md) | the fields to include for returned resources of type gameCenterDetails | [optional] 
 **fieldsGameCenterGroups** | [**[String]**](String.md) | the fields to include for returned resources of type gameCenterGroups | [optional] 
 **fieldsGameCenterAchievementLocalizations** | [**[String]**](String.md) | the fields to include for returned resources of type gameCenterAchievementLocalizations | [optional] 
 **fieldsGameCenterAchievementReleases** | [**[String]**](String.md) | the fields to include for returned resources of type gameCenterAchievementReleases | [optional] 
 **include** | [**[String]**](String.md) | comma-separated list of relationships to include | [optional] 
 **limitLocalizations** | **Int** | maximum number of related localizations returned (when they are included) | [optional] 
 **limitReleases** | **Int** | maximum number of related releases returned (when they are included) | [optional] 

### Return type

[**GameCenterAchievementResponse**](GameCenterAchievementResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **gameCenterAchievementsGroupAchievementGetToOneRelationship**
```swift
    open class func gameCenterAchievementsGroupAchievementGetToOneRelationship(id: String, completion: @escaping (_ data: GameCenterAchievementGroupAchievementLinkageResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource

GameCenterAchievementsAPI.gameCenterAchievementsGroupAchievementGetToOneRelationship(id: id) { (response, error) in
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

[**GameCenterAchievementGroupAchievementLinkageResponse**](GameCenterAchievementGroupAchievementLinkageResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **gameCenterAchievementsGroupAchievementUpdateToOneRelationship**
```swift
    open class func gameCenterAchievementsGroupAchievementUpdateToOneRelationship(id: String, gameCenterAchievementGroupAchievementLinkageRequest: GameCenterAchievementGroupAchievementLinkageRequest, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let gameCenterAchievementGroupAchievementLinkageRequest = GameCenterAchievementGroupAchievementLinkageRequest(data: GameCenterAchievementLocalization_relationships_gameCenterAchievement_data(type: "type_example", id: "id_example")) // GameCenterAchievementGroupAchievementLinkageRequest | Related linkage

GameCenterAchievementsAPI.gameCenterAchievementsGroupAchievementUpdateToOneRelationship(id: id, gameCenterAchievementGroupAchievementLinkageRequest: gameCenterAchievementGroupAchievementLinkageRequest) { (response, error) in
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
 **gameCenterAchievementGroupAchievementLinkageRequest** | [**GameCenterAchievementGroupAchievementLinkageRequest**](GameCenterAchievementGroupAchievementLinkageRequest.md) | Related linkage | 

### Return type

Void (empty response body)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **gameCenterAchievementsLocalizationsGetToManyRelated**
```swift
    open class func gameCenterAchievementsLocalizationsGetToManyRelated(id: String, fieldsGameCenterAchievementLocalizations: [FieldsGameCenterAchievementLocalizations_gameCenterAchievementsLocalizationsGetToManyRelated]? = nil, fieldsGameCenterAchievements: [FieldsGameCenterAchievements_gameCenterAchievementsLocalizationsGetToManyRelated]? = nil, fieldsGameCenterAchievementImages: [FieldsGameCenterAchievementImages_gameCenterAchievementsLocalizationsGetToManyRelated]? = nil, limit: Int? = nil, include: [Include_gameCenterAchievementsLocalizationsGetToManyRelated]? = nil, completion: @escaping (_ data: GameCenterAchievementLocalizationsResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let fieldsGameCenterAchievementLocalizations = ["fieldsGameCenterAchievementLocalizations_example"] // [String] | the fields to include for returned resources of type gameCenterAchievementLocalizations (optional)
let fieldsGameCenterAchievements = ["fieldsGameCenterAchievements_example"] // [String] | the fields to include for returned resources of type gameCenterAchievements (optional)
let fieldsGameCenterAchievementImages = ["fieldsGameCenterAchievementImages_example"] // [String] | the fields to include for returned resources of type gameCenterAchievementImages (optional)
let limit = 987 // Int | maximum resources per page (optional)
let include = ["include_example"] // [String] | comma-separated list of relationships to include (optional)

GameCenterAchievementsAPI.gameCenterAchievementsLocalizationsGetToManyRelated(id: id, fieldsGameCenterAchievementLocalizations: fieldsGameCenterAchievementLocalizations, fieldsGameCenterAchievements: fieldsGameCenterAchievements, fieldsGameCenterAchievementImages: fieldsGameCenterAchievementImages, limit: limit, include: include) { (response, error) in
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
 **fieldsGameCenterAchievementLocalizations** | [**[String]**](String.md) | the fields to include for returned resources of type gameCenterAchievementLocalizations | [optional] 
 **fieldsGameCenterAchievements** | [**[String]**](String.md) | the fields to include for returned resources of type gameCenterAchievements | [optional] 
 **fieldsGameCenterAchievementImages** | [**[String]**](String.md) | the fields to include for returned resources of type gameCenterAchievementImages | [optional] 
 **limit** | **Int** | maximum resources per page | [optional] 
 **include** | [**[String]**](String.md) | comma-separated list of relationships to include | [optional] 

### Return type

[**GameCenterAchievementLocalizationsResponse**](GameCenterAchievementLocalizationsResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **gameCenterAchievementsReleasesGetToManyRelated**
```swift
    open class func gameCenterAchievementsReleasesGetToManyRelated(id: String, filterLive: [String]? = nil, filterGameCenterDetail: [String]? = nil, fieldsGameCenterAchievementReleases: [FieldsGameCenterAchievementReleases_gameCenterAchievementsReleasesGetToManyRelated]? = nil, fieldsGameCenterDetails: [FieldsGameCenterDetails_gameCenterAchievementsReleasesGetToManyRelated]? = nil, fieldsGameCenterAchievements: [FieldsGameCenterAchievements_gameCenterAchievementsReleasesGetToManyRelated]? = nil, limit: Int? = nil, include: [Include_gameCenterAchievementsReleasesGetToManyRelated]? = nil, completion: @escaping (_ data: GameCenterAchievementReleasesResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let filterLive = ["inner_example"] // [String] | filter by attribute 'live' (optional)
let filterGameCenterDetail = ["inner_example"] // [String] | filter by id(s) of related 'gameCenterDetail' (optional)
let fieldsGameCenterAchievementReleases = ["fieldsGameCenterAchievementReleases_example"] // [String] | the fields to include for returned resources of type gameCenterAchievementReleases (optional)
let fieldsGameCenterDetails = ["fieldsGameCenterDetails_example"] // [String] | the fields to include for returned resources of type gameCenterDetails (optional)
let fieldsGameCenterAchievements = ["fieldsGameCenterAchievements_example"] // [String] | the fields to include for returned resources of type gameCenterAchievements (optional)
let limit = 987 // Int | maximum resources per page (optional)
let include = ["include_example"] // [String] | comma-separated list of relationships to include (optional)

GameCenterAchievementsAPI.gameCenterAchievementsReleasesGetToManyRelated(id: id, filterLive: filterLive, filterGameCenterDetail: filterGameCenterDetail, fieldsGameCenterAchievementReleases: fieldsGameCenterAchievementReleases, fieldsGameCenterDetails: fieldsGameCenterDetails, fieldsGameCenterAchievements: fieldsGameCenterAchievements, limit: limit, include: include) { (response, error) in
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

# **gameCenterAchievementsUpdateInstance**
```swift
    open class func gameCenterAchievementsUpdateInstance(id: String, gameCenterAchievementUpdateRequest: GameCenterAchievementUpdateRequest, completion: @escaping (_ data: GameCenterAchievementResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let gameCenterAchievementUpdateRequest = GameCenterAchievementUpdateRequest(data: GameCenterAchievementUpdateRequest_data(type: "type_example", id: "id_example", attributes: GameCenterAchievementUpdateRequest_data_attributes(referenceName: "referenceName_example", points: 123, showBeforeEarned: false, repeatable: false, archived: false))) // GameCenterAchievementUpdateRequest | GameCenterAchievement representation

GameCenterAchievementsAPI.gameCenterAchievementsUpdateInstance(id: id, gameCenterAchievementUpdateRequest: gameCenterAchievementUpdateRequest) { (response, error) in
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
 **gameCenterAchievementUpdateRequest** | [**GameCenterAchievementUpdateRequest**](GameCenterAchievementUpdateRequest.md) | GameCenterAchievement representation | 

### Return type

[**GameCenterAchievementResponse**](GameCenterAchievementResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

