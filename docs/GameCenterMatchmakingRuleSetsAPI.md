# GameCenterMatchmakingRuleSetsAPI

All URIs are relative to *https://api.appstoreconnect.apple.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**gameCenterMatchmakingRuleSetsCreateInstance**](GameCenterMatchmakingRuleSetsAPI.md#gamecentermatchmakingrulesetscreateinstance) | **POST** /v1/gameCenterMatchmakingRuleSets | 
[**gameCenterMatchmakingRuleSetsDeleteInstance**](GameCenterMatchmakingRuleSetsAPI.md#gamecentermatchmakingrulesetsdeleteinstance) | **DELETE** /v1/gameCenterMatchmakingRuleSets/{id} | 
[**gameCenterMatchmakingRuleSetsGetCollection**](GameCenterMatchmakingRuleSetsAPI.md#gamecentermatchmakingrulesetsgetcollection) | **GET** /v1/gameCenterMatchmakingRuleSets | 
[**gameCenterMatchmakingRuleSetsGetInstance**](GameCenterMatchmakingRuleSetsAPI.md#gamecentermatchmakingrulesetsgetinstance) | **GET** /v1/gameCenterMatchmakingRuleSets/{id} | 
[**gameCenterMatchmakingRuleSetsMatchmakingQueuesGetToManyRelated**](GameCenterMatchmakingRuleSetsAPI.md#gamecentermatchmakingrulesetsmatchmakingqueuesgettomanyrelated) | **GET** /v1/gameCenterMatchmakingRuleSets/{id}/matchmakingQueues | 
[**gameCenterMatchmakingRuleSetsRulesGetToManyRelated**](GameCenterMatchmakingRuleSetsAPI.md#gamecentermatchmakingrulesetsrulesgettomanyrelated) | **GET** /v1/gameCenterMatchmakingRuleSets/{id}/rules | 
[**gameCenterMatchmakingRuleSetsTeamsGetToManyRelated**](GameCenterMatchmakingRuleSetsAPI.md#gamecentermatchmakingrulesetsteamsgettomanyrelated) | **GET** /v1/gameCenterMatchmakingRuleSets/{id}/teams | 
[**gameCenterMatchmakingRuleSetsUpdateInstance**](GameCenterMatchmakingRuleSetsAPI.md#gamecentermatchmakingrulesetsupdateinstance) | **PATCH** /v1/gameCenterMatchmakingRuleSets/{id} | 


# **gameCenterMatchmakingRuleSetsCreateInstance**
```swift
    open class func gameCenterMatchmakingRuleSetsCreateInstance(gameCenterMatchmakingRuleSetCreateRequest: GameCenterMatchmakingRuleSetCreateRequest, completion: @escaping (_ data: GameCenterMatchmakingRuleSetResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let gameCenterMatchmakingRuleSetCreateRequest = GameCenterMatchmakingRuleSetCreateRequest(data: GameCenterMatchmakingRuleSetCreateRequest_data(type: "type_example", attributes: GameCenterMatchmakingRuleSetCreateRequest_data_attributes(referenceName: "referenceName_example", ruleLanguageVersion: 123, minPlayers: 123, maxPlayers: 123))) // GameCenterMatchmakingRuleSetCreateRequest | GameCenterMatchmakingRuleSet representation

GameCenterMatchmakingRuleSetsAPI.gameCenterMatchmakingRuleSetsCreateInstance(gameCenterMatchmakingRuleSetCreateRequest: gameCenterMatchmakingRuleSetCreateRequest) { (response, error) in
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
 **gameCenterMatchmakingRuleSetCreateRequest** | [**GameCenterMatchmakingRuleSetCreateRequest**](GameCenterMatchmakingRuleSetCreateRequest.md) | GameCenterMatchmakingRuleSet representation | 

### Return type

[**GameCenterMatchmakingRuleSetResponse**](GameCenterMatchmakingRuleSetResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **gameCenterMatchmakingRuleSetsDeleteInstance**
```swift
    open class func gameCenterMatchmakingRuleSetsDeleteInstance(id: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource

GameCenterMatchmakingRuleSetsAPI.gameCenterMatchmakingRuleSetsDeleteInstance(id: id) { (response, error) in
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

# **gameCenterMatchmakingRuleSetsGetCollection**
```swift
    open class func gameCenterMatchmakingRuleSetsGetCollection(fieldsGameCenterMatchmakingRuleSets: [FieldsGameCenterMatchmakingRuleSets_gameCenterMatchmakingRuleSetsGetCollection]? = nil, limit: Int? = nil, include: [Include_gameCenterMatchmakingRuleSetsGetCollection]? = nil, fieldsGameCenterMatchmakingQueues: [FieldsGameCenterMatchmakingQueues_gameCenterMatchmakingRuleSetsGetCollection]? = nil, fieldsGameCenterMatchmakingTeams: [FieldsGameCenterMatchmakingTeams_gameCenterMatchmakingRuleSetsGetCollection]? = nil, fieldsGameCenterMatchmakingRules: [FieldsGameCenterMatchmakingRules_gameCenterMatchmakingRuleSetsGetCollection]? = nil, limitMatchmakingQueues: Int? = nil, limitRules: Int? = nil, limitTeams: Int? = nil, completion: @escaping (_ data: GameCenterMatchmakingRuleSetsResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let fieldsGameCenterMatchmakingRuleSets = ["fieldsGameCenterMatchmakingRuleSets_example"] // [String] | the fields to include for returned resources of type gameCenterMatchmakingRuleSets (optional)
let limit = 987 // Int | maximum resources per page (optional)
let include = ["include_example"] // [String] | comma-separated list of relationships to include (optional)
let fieldsGameCenterMatchmakingQueues = ["fieldsGameCenterMatchmakingQueues_example"] // [String] | the fields to include for returned resources of type gameCenterMatchmakingQueues (optional)
let fieldsGameCenterMatchmakingTeams = ["fieldsGameCenterMatchmakingTeams_example"] // [String] | the fields to include for returned resources of type gameCenterMatchmakingTeams (optional)
let fieldsGameCenterMatchmakingRules = ["fieldsGameCenterMatchmakingRules_example"] // [String] | the fields to include for returned resources of type gameCenterMatchmakingRules (optional)
let limitMatchmakingQueues = 987 // Int | maximum number of related matchmakingQueues returned (when they are included) (optional)
let limitRules = 987 // Int | maximum number of related rules returned (when they are included) (optional)
let limitTeams = 987 // Int | maximum number of related teams returned (when they are included) (optional)

GameCenterMatchmakingRuleSetsAPI.gameCenterMatchmakingRuleSetsGetCollection(fieldsGameCenterMatchmakingRuleSets: fieldsGameCenterMatchmakingRuleSets, limit: limit, include: include, fieldsGameCenterMatchmakingQueues: fieldsGameCenterMatchmakingQueues, fieldsGameCenterMatchmakingTeams: fieldsGameCenterMatchmakingTeams, fieldsGameCenterMatchmakingRules: fieldsGameCenterMatchmakingRules, limitMatchmakingQueues: limitMatchmakingQueues, limitRules: limitRules, limitTeams: limitTeams) { (response, error) in
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
 **fieldsGameCenterMatchmakingRuleSets** | [**[String]**](String.md) | the fields to include for returned resources of type gameCenterMatchmakingRuleSets | [optional] 
 **limit** | **Int** | maximum resources per page | [optional] 
 **include** | [**[String]**](String.md) | comma-separated list of relationships to include | [optional] 
 **fieldsGameCenterMatchmakingQueues** | [**[String]**](String.md) | the fields to include for returned resources of type gameCenterMatchmakingQueues | [optional] 
 **fieldsGameCenterMatchmakingTeams** | [**[String]**](String.md) | the fields to include for returned resources of type gameCenterMatchmakingTeams | [optional] 
 **fieldsGameCenterMatchmakingRules** | [**[String]**](String.md) | the fields to include for returned resources of type gameCenterMatchmakingRules | [optional] 
 **limitMatchmakingQueues** | **Int** | maximum number of related matchmakingQueues returned (when they are included) | [optional] 
 **limitRules** | **Int** | maximum number of related rules returned (when they are included) | [optional] 
 **limitTeams** | **Int** | maximum number of related teams returned (when they are included) | [optional] 

### Return type

[**GameCenterMatchmakingRuleSetsResponse**](GameCenterMatchmakingRuleSetsResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **gameCenterMatchmakingRuleSetsGetInstance**
```swift
    open class func gameCenterMatchmakingRuleSetsGetInstance(id: String, fieldsGameCenterMatchmakingRuleSets: [FieldsGameCenterMatchmakingRuleSets_gameCenterMatchmakingRuleSetsGetInstance]? = nil, include: [Include_gameCenterMatchmakingRuleSetsGetInstance]? = nil, fieldsGameCenterMatchmakingQueues: [FieldsGameCenterMatchmakingQueues_gameCenterMatchmakingRuleSetsGetInstance]? = nil, fieldsGameCenterMatchmakingTeams: [FieldsGameCenterMatchmakingTeams_gameCenterMatchmakingRuleSetsGetInstance]? = nil, fieldsGameCenterMatchmakingRules: [FieldsGameCenterMatchmakingRules_gameCenterMatchmakingRuleSetsGetInstance]? = nil, limitMatchmakingQueues: Int? = nil, limitRules: Int? = nil, limitTeams: Int? = nil, completion: @escaping (_ data: GameCenterMatchmakingRuleSetResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let fieldsGameCenterMatchmakingRuleSets = ["fieldsGameCenterMatchmakingRuleSets_example"] // [String] | the fields to include for returned resources of type gameCenterMatchmakingRuleSets (optional)
let include = ["include_example"] // [String] | comma-separated list of relationships to include (optional)
let fieldsGameCenterMatchmakingQueues = ["fieldsGameCenterMatchmakingQueues_example"] // [String] | the fields to include for returned resources of type gameCenterMatchmakingQueues (optional)
let fieldsGameCenterMatchmakingTeams = ["fieldsGameCenterMatchmakingTeams_example"] // [String] | the fields to include for returned resources of type gameCenterMatchmakingTeams (optional)
let fieldsGameCenterMatchmakingRules = ["fieldsGameCenterMatchmakingRules_example"] // [String] | the fields to include for returned resources of type gameCenterMatchmakingRules (optional)
let limitMatchmakingQueues = 987 // Int | maximum number of related matchmakingQueues returned (when they are included) (optional)
let limitRules = 987 // Int | maximum number of related rules returned (when they are included) (optional)
let limitTeams = 987 // Int | maximum number of related teams returned (when they are included) (optional)

GameCenterMatchmakingRuleSetsAPI.gameCenterMatchmakingRuleSetsGetInstance(id: id, fieldsGameCenterMatchmakingRuleSets: fieldsGameCenterMatchmakingRuleSets, include: include, fieldsGameCenterMatchmakingQueues: fieldsGameCenterMatchmakingQueues, fieldsGameCenterMatchmakingTeams: fieldsGameCenterMatchmakingTeams, fieldsGameCenterMatchmakingRules: fieldsGameCenterMatchmakingRules, limitMatchmakingQueues: limitMatchmakingQueues, limitRules: limitRules, limitTeams: limitTeams) { (response, error) in
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
 **fieldsGameCenterMatchmakingRuleSets** | [**[String]**](String.md) | the fields to include for returned resources of type gameCenterMatchmakingRuleSets | [optional] 
 **include** | [**[String]**](String.md) | comma-separated list of relationships to include | [optional] 
 **fieldsGameCenterMatchmakingQueues** | [**[String]**](String.md) | the fields to include for returned resources of type gameCenterMatchmakingQueues | [optional] 
 **fieldsGameCenterMatchmakingTeams** | [**[String]**](String.md) | the fields to include for returned resources of type gameCenterMatchmakingTeams | [optional] 
 **fieldsGameCenterMatchmakingRules** | [**[String]**](String.md) | the fields to include for returned resources of type gameCenterMatchmakingRules | [optional] 
 **limitMatchmakingQueues** | **Int** | maximum number of related matchmakingQueues returned (when they are included) | [optional] 
 **limitRules** | **Int** | maximum number of related rules returned (when they are included) | [optional] 
 **limitTeams** | **Int** | maximum number of related teams returned (when they are included) | [optional] 

### Return type

[**GameCenterMatchmakingRuleSetResponse**](GameCenterMatchmakingRuleSetResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **gameCenterMatchmakingRuleSetsMatchmakingQueuesGetToManyRelated**
```swift
    open class func gameCenterMatchmakingRuleSetsMatchmakingQueuesGetToManyRelated(id: String, fieldsGameCenterMatchmakingQueues: [FieldsGameCenterMatchmakingQueues_gameCenterMatchmakingRuleSetsMatchmakingQueuesGetToManyRelated]? = nil, fieldsGameCenterMatchmakingRuleSets: [FieldsGameCenterMatchmakingRuleSets_gameCenterMatchmakingRuleSetsMatchmakingQueuesGetToManyRelated]? = nil, limit: Int? = nil, include: [Include_gameCenterMatchmakingRuleSetsMatchmakingQueuesGetToManyRelated]? = nil, completion: @escaping (_ data: GameCenterMatchmakingQueuesResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let fieldsGameCenterMatchmakingQueues = ["fieldsGameCenterMatchmakingQueues_example"] // [String] | the fields to include for returned resources of type gameCenterMatchmakingQueues (optional)
let fieldsGameCenterMatchmakingRuleSets = ["fieldsGameCenterMatchmakingRuleSets_example"] // [String] | the fields to include for returned resources of type gameCenterMatchmakingRuleSets (optional)
let limit = 987 // Int | maximum resources per page (optional)
let include = ["include_example"] // [String] | comma-separated list of relationships to include (optional)

GameCenterMatchmakingRuleSetsAPI.gameCenterMatchmakingRuleSetsMatchmakingQueuesGetToManyRelated(id: id, fieldsGameCenterMatchmakingQueues: fieldsGameCenterMatchmakingQueues, fieldsGameCenterMatchmakingRuleSets: fieldsGameCenterMatchmakingRuleSets, limit: limit, include: include) { (response, error) in
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
 **fieldsGameCenterMatchmakingQueues** | [**[String]**](String.md) | the fields to include for returned resources of type gameCenterMatchmakingQueues | [optional] 
 **fieldsGameCenterMatchmakingRuleSets** | [**[String]**](String.md) | the fields to include for returned resources of type gameCenterMatchmakingRuleSets | [optional] 
 **limit** | **Int** | maximum resources per page | [optional] 
 **include** | [**[String]**](String.md) | comma-separated list of relationships to include | [optional] 

### Return type

[**GameCenterMatchmakingQueuesResponse**](GameCenterMatchmakingQueuesResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **gameCenterMatchmakingRuleSetsRulesGetToManyRelated**
```swift
    open class func gameCenterMatchmakingRuleSetsRulesGetToManyRelated(id: String, fieldsGameCenterMatchmakingRules: [FieldsGameCenterMatchmakingRules_gameCenterMatchmakingRuleSetsRulesGetToManyRelated]? = nil, limit: Int? = nil, completion: @escaping (_ data: GameCenterMatchmakingRulesResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let fieldsGameCenterMatchmakingRules = ["fieldsGameCenterMatchmakingRules_example"] // [String] | the fields to include for returned resources of type gameCenterMatchmakingRules (optional)
let limit = 987 // Int | maximum resources per page (optional)

GameCenterMatchmakingRuleSetsAPI.gameCenterMatchmakingRuleSetsRulesGetToManyRelated(id: id, fieldsGameCenterMatchmakingRules: fieldsGameCenterMatchmakingRules, limit: limit) { (response, error) in
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
 **fieldsGameCenterMatchmakingRules** | [**[String]**](String.md) | the fields to include for returned resources of type gameCenterMatchmakingRules | [optional] 
 **limit** | **Int** | maximum resources per page | [optional] 

### Return type

[**GameCenterMatchmakingRulesResponse**](GameCenterMatchmakingRulesResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **gameCenterMatchmakingRuleSetsTeamsGetToManyRelated**
```swift
    open class func gameCenterMatchmakingRuleSetsTeamsGetToManyRelated(id: String, fieldsGameCenterMatchmakingTeams: [FieldsGameCenterMatchmakingTeams_gameCenterMatchmakingRuleSetsTeamsGetToManyRelated]? = nil, limit: Int? = nil, completion: @escaping (_ data: GameCenterMatchmakingTeamsResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let fieldsGameCenterMatchmakingTeams = ["fieldsGameCenterMatchmakingTeams_example"] // [String] | the fields to include for returned resources of type gameCenterMatchmakingTeams (optional)
let limit = 987 // Int | maximum resources per page (optional)

GameCenterMatchmakingRuleSetsAPI.gameCenterMatchmakingRuleSetsTeamsGetToManyRelated(id: id, fieldsGameCenterMatchmakingTeams: fieldsGameCenterMatchmakingTeams, limit: limit) { (response, error) in
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
 **fieldsGameCenterMatchmakingTeams** | [**[String]**](String.md) | the fields to include for returned resources of type gameCenterMatchmakingTeams | [optional] 
 **limit** | **Int** | maximum resources per page | [optional] 

### Return type

[**GameCenterMatchmakingTeamsResponse**](GameCenterMatchmakingTeamsResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **gameCenterMatchmakingRuleSetsUpdateInstance**
```swift
    open class func gameCenterMatchmakingRuleSetsUpdateInstance(id: String, gameCenterMatchmakingRuleSetUpdateRequest: GameCenterMatchmakingRuleSetUpdateRequest, completion: @escaping (_ data: GameCenterMatchmakingRuleSetResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let gameCenterMatchmakingRuleSetUpdateRequest = GameCenterMatchmakingRuleSetUpdateRequest(data: GameCenterMatchmakingRuleSetUpdateRequest_data(type: "type_example", id: "id_example", attributes: GameCenterMatchmakingRuleSetUpdateRequest_data_attributes(minPlayers: 123, maxPlayers: 123))) // GameCenterMatchmakingRuleSetUpdateRequest | GameCenterMatchmakingRuleSet representation

GameCenterMatchmakingRuleSetsAPI.gameCenterMatchmakingRuleSetsUpdateInstance(id: id, gameCenterMatchmakingRuleSetUpdateRequest: gameCenterMatchmakingRuleSetUpdateRequest) { (response, error) in
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
 **gameCenterMatchmakingRuleSetUpdateRequest** | [**GameCenterMatchmakingRuleSetUpdateRequest**](GameCenterMatchmakingRuleSetUpdateRequest.md) | GameCenterMatchmakingRuleSet representation | 

### Return type

[**GameCenterMatchmakingRuleSetResponse**](GameCenterMatchmakingRuleSetResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

