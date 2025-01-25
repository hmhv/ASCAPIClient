# GameCenterEnabledVersionsAPI

All URIs are relative to *https://api.appstoreconnect.apple.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**gameCenterEnabledVersionsCompatibleVersionsCreateToManyRelationship**](GameCenterEnabledVersionsAPI.md#gamecenterenabledversionscompatibleversionscreatetomanyrelationship) | **POST** /v1/gameCenterEnabledVersions/{id}/relationships/compatibleVersions | 
[**gameCenterEnabledVersionsCompatibleVersionsDeleteToManyRelationship**](GameCenterEnabledVersionsAPI.md#gamecenterenabledversionscompatibleversionsdeletetomanyrelationship) | **DELETE** /v1/gameCenterEnabledVersions/{id}/relationships/compatibleVersions | 
[**gameCenterEnabledVersionsCompatibleVersionsGetToManyRelated**](GameCenterEnabledVersionsAPI.md#gamecenterenabledversionscompatibleversionsgettomanyrelated) | **GET** /v1/gameCenterEnabledVersions/{id}/compatibleVersions | 
[**gameCenterEnabledVersionsCompatibleVersionsGetToManyRelationship**](GameCenterEnabledVersionsAPI.md#gamecenterenabledversionscompatibleversionsgettomanyrelationship) | **GET** /v1/gameCenterEnabledVersions/{id}/relationships/compatibleVersions | 
[**gameCenterEnabledVersionsCompatibleVersionsReplaceToManyRelationship**](GameCenterEnabledVersionsAPI.md#gamecenterenabledversionscompatibleversionsreplacetomanyrelationship) | **PATCH** /v1/gameCenterEnabledVersions/{id}/relationships/compatibleVersions | 


# **gameCenterEnabledVersionsCompatibleVersionsCreateToManyRelationship**
```swift
    open class func gameCenterEnabledVersionsCompatibleVersionsCreateToManyRelationship(id: String, gameCenterEnabledVersionCompatibleVersionsLinkagesRequest: GameCenterEnabledVersionCompatibleVersionsLinkagesRequest, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let gameCenterEnabledVersionCompatibleVersionsLinkagesRequest = GameCenterEnabledVersionCompatibleVersionsLinkagesRequest(data: [App_relationships_gameCenterEnabledVersions_data_inner(type: "type_example", id: "id_example")]) // GameCenterEnabledVersionCompatibleVersionsLinkagesRequest | List of related linkages

GameCenterEnabledVersionsAPI.gameCenterEnabledVersionsCompatibleVersionsCreateToManyRelationship(id: id, gameCenterEnabledVersionCompatibleVersionsLinkagesRequest: gameCenterEnabledVersionCompatibleVersionsLinkagesRequest) { (response, error) in
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
 **gameCenterEnabledVersionCompatibleVersionsLinkagesRequest** | [**GameCenterEnabledVersionCompatibleVersionsLinkagesRequest**](GameCenterEnabledVersionCompatibleVersionsLinkagesRequest.md) | List of related linkages | 

### Return type

Void (empty response body)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **gameCenterEnabledVersionsCompatibleVersionsDeleteToManyRelationship**
```swift
    open class func gameCenterEnabledVersionsCompatibleVersionsDeleteToManyRelationship(id: String, gameCenterEnabledVersionCompatibleVersionsLinkagesRequest: GameCenterEnabledVersionCompatibleVersionsLinkagesRequest, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let gameCenterEnabledVersionCompatibleVersionsLinkagesRequest = GameCenterEnabledVersionCompatibleVersionsLinkagesRequest(data: [App_relationships_gameCenterEnabledVersions_data_inner(type: "type_example", id: "id_example")]) // GameCenterEnabledVersionCompatibleVersionsLinkagesRequest | List of related linkages

GameCenterEnabledVersionsAPI.gameCenterEnabledVersionsCompatibleVersionsDeleteToManyRelationship(id: id, gameCenterEnabledVersionCompatibleVersionsLinkagesRequest: gameCenterEnabledVersionCompatibleVersionsLinkagesRequest) { (response, error) in
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
 **gameCenterEnabledVersionCompatibleVersionsLinkagesRequest** | [**GameCenterEnabledVersionCompatibleVersionsLinkagesRequest**](GameCenterEnabledVersionCompatibleVersionsLinkagesRequest.md) | List of related linkages | 

### Return type

Void (empty response body)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **gameCenterEnabledVersionsCompatibleVersionsGetToManyRelated**
```swift
    open class func gameCenterEnabledVersionsCompatibleVersionsGetToManyRelated(id: String, filterPlatform: [FilterPlatform_gameCenterEnabledVersionsCompatibleVersionsGetToManyRelated]? = nil, filterVersionString: [String]? = nil, filterApp: [String]? = nil, filterId: [String]? = nil, sort: [Sort_gameCenterEnabledVersionsCompatibleVersionsGetToManyRelated]? = nil, fieldsGameCenterEnabledVersions: [FieldsGameCenterEnabledVersions_gameCenterEnabledVersionsCompatibleVersionsGetToManyRelated]? = nil, fieldsApps: [FieldsApps_gameCenterEnabledVersionsCompatibleVersionsGetToManyRelated]? = nil, limit: Int? = nil, include: [Include_gameCenterEnabledVersionsCompatibleVersionsGetToManyRelated]? = nil, limitCompatibleVersions: Int? = nil, completion: @escaping (_ data: GameCenterEnabledVersionsResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let filterPlatform = ["filterPlatform_example"] // [String] | filter by attribute 'platform' (optional)
let filterVersionString = ["inner_example"] // [String] | filter by attribute 'versionString' (optional)
let filterApp = ["inner_example"] // [String] | filter by id(s) of related 'app' (optional)
let filterId = ["inner_example"] // [String] | filter by id(s) (optional)
let sort = ["sort_example"] // [String] | comma-separated list of sort expressions; resources will be sorted as specified (optional)
let fieldsGameCenterEnabledVersions = ["fieldsGameCenterEnabledVersions_example"] // [String] | the fields to include for returned resources of type gameCenterEnabledVersions (optional)
let fieldsApps = ["fieldsApps_example"] // [String] | the fields to include for returned resources of type apps (optional)
let limit = 987 // Int | maximum resources per page (optional)
let include = ["include_example"] // [String] | comma-separated list of relationships to include (optional)
let limitCompatibleVersions = 987 // Int | maximum number of related compatibleVersions returned (when they are included) (optional)

GameCenterEnabledVersionsAPI.gameCenterEnabledVersionsCompatibleVersionsGetToManyRelated(id: id, filterPlatform: filterPlatform, filterVersionString: filterVersionString, filterApp: filterApp, filterId: filterId, sort: sort, fieldsGameCenterEnabledVersions: fieldsGameCenterEnabledVersions, fieldsApps: fieldsApps, limit: limit, include: include, limitCompatibleVersions: limitCompatibleVersions) { (response, error) in
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
 **filterPlatform** | [**[String]**](String.md) | filter by attribute &#39;platform&#39; | [optional] 
 **filterVersionString** | [**[String]**](String.md) | filter by attribute &#39;versionString&#39; | [optional] 
 **filterApp** | [**[String]**](String.md) | filter by id(s) of related &#39;app&#39; | [optional] 
 **filterId** | [**[String]**](String.md) | filter by id(s) | [optional] 
 **sort** | [**[String]**](String.md) | comma-separated list of sort expressions; resources will be sorted as specified | [optional] 
 **fieldsGameCenterEnabledVersions** | [**[String]**](String.md) | the fields to include for returned resources of type gameCenterEnabledVersions | [optional] 
 **fieldsApps** | [**[String]**](String.md) | the fields to include for returned resources of type apps | [optional] 
 **limit** | **Int** | maximum resources per page | [optional] 
 **include** | [**[String]**](String.md) | comma-separated list of relationships to include | [optional] 
 **limitCompatibleVersions** | **Int** | maximum number of related compatibleVersions returned (when they are included) | [optional] 

### Return type

[**GameCenterEnabledVersionsResponse**](GameCenterEnabledVersionsResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **gameCenterEnabledVersionsCompatibleVersionsGetToManyRelationship**
```swift
    open class func gameCenterEnabledVersionsCompatibleVersionsGetToManyRelationship(id: String, limit: Int? = nil, completion: @escaping (_ data: GameCenterEnabledVersionCompatibleVersionsLinkagesResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let limit = 987 // Int | maximum resources per page (optional)

GameCenterEnabledVersionsAPI.gameCenterEnabledVersionsCompatibleVersionsGetToManyRelationship(id: id, limit: limit) { (response, error) in
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

[**GameCenterEnabledVersionCompatibleVersionsLinkagesResponse**](GameCenterEnabledVersionCompatibleVersionsLinkagesResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **gameCenterEnabledVersionsCompatibleVersionsReplaceToManyRelationship**
```swift
    open class func gameCenterEnabledVersionsCompatibleVersionsReplaceToManyRelationship(id: String, gameCenterEnabledVersionCompatibleVersionsLinkagesRequest: GameCenterEnabledVersionCompatibleVersionsLinkagesRequest, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let gameCenterEnabledVersionCompatibleVersionsLinkagesRequest = GameCenterEnabledVersionCompatibleVersionsLinkagesRequest(data: [App_relationships_gameCenterEnabledVersions_data_inner(type: "type_example", id: "id_example")]) // GameCenterEnabledVersionCompatibleVersionsLinkagesRequest | List of related linkages

GameCenterEnabledVersionsAPI.gameCenterEnabledVersionsCompatibleVersionsReplaceToManyRelationship(id: id, gameCenterEnabledVersionCompatibleVersionsLinkagesRequest: gameCenterEnabledVersionCompatibleVersionsLinkagesRequest) { (response, error) in
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
 **gameCenterEnabledVersionCompatibleVersionsLinkagesRequest** | [**GameCenterEnabledVersionCompatibleVersionsLinkagesRequest**](GameCenterEnabledVersionCompatibleVersionsLinkagesRequest.md) | List of related linkages | 

### Return type

Void (empty response body)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

