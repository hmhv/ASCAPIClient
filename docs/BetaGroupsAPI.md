# BetaGroupsAPI

All URIs are relative to *https://api.appstoreconnect.apple.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**betaGroupsAppGetToOneRelated**](BetaGroupsAPI.md#betagroupsappgettoonerelated) | **GET** /v1/betaGroups/{id}/app | 
[**betaGroupsBetaTesterUsagesGetMetrics**](BetaGroupsAPI.md#betagroupsbetatesterusagesgetmetrics) | **GET** /v1/betaGroups/{id}/metrics/betaTesterUsages | 
[**betaGroupsBetaTestersCreateToManyRelationship**](BetaGroupsAPI.md#betagroupsbetatesterscreatetomanyrelationship) | **POST** /v1/betaGroups/{id}/relationships/betaTesters | 
[**betaGroupsBetaTestersDeleteToManyRelationship**](BetaGroupsAPI.md#betagroupsbetatestersdeletetomanyrelationship) | **DELETE** /v1/betaGroups/{id}/relationships/betaTesters | 
[**betaGroupsBetaTestersGetToManyRelated**](BetaGroupsAPI.md#betagroupsbetatestersgettomanyrelated) | **GET** /v1/betaGroups/{id}/betaTesters | 
[**betaGroupsBetaTestersGetToManyRelationship**](BetaGroupsAPI.md#betagroupsbetatestersgettomanyrelationship) | **GET** /v1/betaGroups/{id}/relationships/betaTesters | 
[**betaGroupsBuildsCreateToManyRelationship**](BetaGroupsAPI.md#betagroupsbuildscreatetomanyrelationship) | **POST** /v1/betaGroups/{id}/relationships/builds | 
[**betaGroupsBuildsDeleteToManyRelationship**](BetaGroupsAPI.md#betagroupsbuildsdeletetomanyrelationship) | **DELETE** /v1/betaGroups/{id}/relationships/builds | 
[**betaGroupsBuildsGetToManyRelated**](BetaGroupsAPI.md#betagroupsbuildsgettomanyrelated) | **GET** /v1/betaGroups/{id}/builds | 
[**betaGroupsBuildsGetToManyRelationship**](BetaGroupsAPI.md#betagroupsbuildsgettomanyrelationship) | **GET** /v1/betaGroups/{id}/relationships/builds | 
[**betaGroupsCreateInstance**](BetaGroupsAPI.md#betagroupscreateinstance) | **POST** /v1/betaGroups | 
[**betaGroupsDeleteInstance**](BetaGroupsAPI.md#betagroupsdeleteinstance) | **DELETE** /v1/betaGroups/{id} | 
[**betaGroupsGetCollection**](BetaGroupsAPI.md#betagroupsgetcollection) | **GET** /v1/betaGroups | 
[**betaGroupsGetInstance**](BetaGroupsAPI.md#betagroupsgetinstance) | **GET** /v1/betaGroups/{id} | 
[**betaGroupsUpdateInstance**](BetaGroupsAPI.md#betagroupsupdateinstance) | **PATCH** /v1/betaGroups/{id} | 


# **betaGroupsAppGetToOneRelated**
```swift
    open class func betaGroupsAppGetToOneRelated(id: String, fieldsApps: [FieldsApps_betaGroupsAppGetToOneRelated]? = nil, completion: @escaping (_ data: AppWithoutIncludesResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let fieldsApps = ["fieldsApps_example"] // [String] | the fields to include for returned resources of type apps (optional)

BetaGroupsAPI.betaGroupsAppGetToOneRelated(id: id, fieldsApps: fieldsApps) { (response, error) in
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
 **fieldsApps** | [**[String]**](String.md) | the fields to include for returned resources of type apps | [optional] 

### Return type

[**AppWithoutIncludesResponse**](AppWithoutIncludesResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **betaGroupsBetaTesterUsagesGetMetrics**
```swift
    open class func betaGroupsBetaTesterUsagesGetMetrics(id: String, limit: Int? = nil, groupBy: [GroupBy_betaGroupsBetaTesterUsagesGetMetrics]? = nil, filterBetaTesters: String? = nil, period: Period_betaGroupsBetaTesterUsagesGetMetrics? = nil, completion: @escaping (_ data: AppsBetaTesterUsagesV1MetricResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let limit = 987 // Int | maximum number of groups to return per page (optional)
let groupBy = ["groupBy_example"] // [String] | the dimension by which to group the results (optional)
let filterBetaTesters = "filterBetaTesters_example" // String | filter by 'betaTesters' relationship dimension (optional)
let period = "period_example" // String | the duration of the reporting period (optional)

BetaGroupsAPI.betaGroupsBetaTesterUsagesGetMetrics(id: id, limit: limit, groupBy: groupBy, filterBetaTesters: filterBetaTesters, period: period) { (response, error) in
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
 **groupBy** | [**[String]**](String.md) | the dimension by which to group the results | [optional] 
 **filterBetaTesters** | **String** | filter by &#39;betaTesters&#39; relationship dimension | [optional] 
 **period** | **String** | the duration of the reporting period | [optional] 

### Return type

[**AppsBetaTesterUsagesV1MetricResponse**](AppsBetaTesterUsagesV1MetricResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **betaGroupsBetaTestersCreateToManyRelationship**
```swift
    open class func betaGroupsBetaTestersCreateToManyRelationship(id: String, betaGroupBetaTestersLinkagesRequest: BetaGroupBetaTestersLinkagesRequest, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let betaGroupBetaTestersLinkagesRequest = BetaGroupBetaTestersLinkagesRequest(data: [BetaGroup_relationships_betaTesters_data_inner(type: "type_example", id: "id_example")]) // BetaGroupBetaTestersLinkagesRequest | List of related linkages

BetaGroupsAPI.betaGroupsBetaTestersCreateToManyRelationship(id: id, betaGroupBetaTestersLinkagesRequest: betaGroupBetaTestersLinkagesRequest) { (response, error) in
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
 **betaGroupBetaTestersLinkagesRequest** | [**BetaGroupBetaTestersLinkagesRequest**](BetaGroupBetaTestersLinkagesRequest.md) | List of related linkages | 

### Return type

Void (empty response body)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **betaGroupsBetaTestersDeleteToManyRelationship**
```swift
    open class func betaGroupsBetaTestersDeleteToManyRelationship(id: String, betaGroupBetaTestersLinkagesRequest: BetaGroupBetaTestersLinkagesRequest, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let betaGroupBetaTestersLinkagesRequest = BetaGroupBetaTestersLinkagesRequest(data: [BetaGroup_relationships_betaTesters_data_inner(type: "type_example", id: "id_example")]) // BetaGroupBetaTestersLinkagesRequest | List of related linkages

BetaGroupsAPI.betaGroupsBetaTestersDeleteToManyRelationship(id: id, betaGroupBetaTestersLinkagesRequest: betaGroupBetaTestersLinkagesRequest) { (response, error) in
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
 **betaGroupBetaTestersLinkagesRequest** | [**BetaGroupBetaTestersLinkagesRequest**](BetaGroupBetaTestersLinkagesRequest.md) | List of related linkages | 

### Return type

Void (empty response body)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **betaGroupsBetaTestersGetToManyRelated**
```swift
    open class func betaGroupsBetaTestersGetToManyRelated(id: String, fieldsBetaTesters: [FieldsBetaTesters_betaGroupsBetaTestersGetToManyRelated]? = nil, limit: Int? = nil, completion: @escaping (_ data: BetaTestersWithoutIncludesResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let fieldsBetaTesters = ["fieldsBetaTesters_example"] // [String] | the fields to include for returned resources of type betaTesters (optional)
let limit = 987 // Int | maximum resources per page (optional)

BetaGroupsAPI.betaGroupsBetaTestersGetToManyRelated(id: id, fieldsBetaTesters: fieldsBetaTesters, limit: limit) { (response, error) in
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
 **fieldsBetaTesters** | [**[String]**](String.md) | the fields to include for returned resources of type betaTesters | [optional] 
 **limit** | **Int** | maximum resources per page | [optional] 

### Return type

[**BetaTestersWithoutIncludesResponse**](BetaTestersWithoutIncludesResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **betaGroupsBetaTestersGetToManyRelationship**
```swift
    open class func betaGroupsBetaTestersGetToManyRelationship(id: String, limit: Int? = nil, completion: @escaping (_ data: BetaGroupBetaTestersLinkagesResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let limit = 987 // Int | maximum resources per page (optional)

BetaGroupsAPI.betaGroupsBetaTestersGetToManyRelationship(id: id, limit: limit) { (response, error) in
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

[**BetaGroupBetaTestersLinkagesResponse**](BetaGroupBetaTestersLinkagesResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **betaGroupsBuildsCreateToManyRelationship**
```swift
    open class func betaGroupsBuildsCreateToManyRelationship(id: String, betaGroupBuildsLinkagesRequest: BetaGroupBuildsLinkagesRequest, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let betaGroupBuildsLinkagesRequest = BetaGroupBuildsLinkagesRequest(data: [AppEncryptionDeclaration_relationships_builds_data_inner(type: "type_example", id: "id_example")]) // BetaGroupBuildsLinkagesRequest | List of related linkages

BetaGroupsAPI.betaGroupsBuildsCreateToManyRelationship(id: id, betaGroupBuildsLinkagesRequest: betaGroupBuildsLinkagesRequest) { (response, error) in
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
 **betaGroupBuildsLinkagesRequest** | [**BetaGroupBuildsLinkagesRequest**](BetaGroupBuildsLinkagesRequest.md) | List of related linkages | 

### Return type

Void (empty response body)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **betaGroupsBuildsDeleteToManyRelationship**
```swift
    open class func betaGroupsBuildsDeleteToManyRelationship(id: String, betaGroupBuildsLinkagesRequest: BetaGroupBuildsLinkagesRequest, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let betaGroupBuildsLinkagesRequest = BetaGroupBuildsLinkagesRequest(data: [AppEncryptionDeclaration_relationships_builds_data_inner(type: "type_example", id: "id_example")]) // BetaGroupBuildsLinkagesRequest | List of related linkages

BetaGroupsAPI.betaGroupsBuildsDeleteToManyRelationship(id: id, betaGroupBuildsLinkagesRequest: betaGroupBuildsLinkagesRequest) { (response, error) in
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
 **betaGroupBuildsLinkagesRequest** | [**BetaGroupBuildsLinkagesRequest**](BetaGroupBuildsLinkagesRequest.md) | List of related linkages | 

### Return type

Void (empty response body)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **betaGroupsBuildsGetToManyRelated**
```swift
    open class func betaGroupsBuildsGetToManyRelated(id: String, fieldsBuilds: [FieldsBuilds_betaGroupsBuildsGetToManyRelated]? = nil, limit: Int? = nil, completion: @escaping (_ data: BuildsWithoutIncludesResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let fieldsBuilds = ["fieldsBuilds_example"] // [String] | the fields to include for returned resources of type builds (optional)
let limit = 987 // Int | maximum resources per page (optional)

BetaGroupsAPI.betaGroupsBuildsGetToManyRelated(id: id, fieldsBuilds: fieldsBuilds, limit: limit) { (response, error) in
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
 **fieldsBuilds** | [**[String]**](String.md) | the fields to include for returned resources of type builds | [optional] 
 **limit** | **Int** | maximum resources per page | [optional] 

### Return type

[**BuildsWithoutIncludesResponse**](BuildsWithoutIncludesResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **betaGroupsBuildsGetToManyRelationship**
```swift
    open class func betaGroupsBuildsGetToManyRelationship(id: String, limit: Int? = nil, completion: @escaping (_ data: BetaGroupBuildsLinkagesResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let limit = 987 // Int | maximum resources per page (optional)

BetaGroupsAPI.betaGroupsBuildsGetToManyRelationship(id: id, limit: limit) { (response, error) in
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

[**BetaGroupBuildsLinkagesResponse**](BetaGroupBuildsLinkagesResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **betaGroupsCreateInstance**
```swift
    open class func betaGroupsCreateInstance(betaGroupCreateRequest: BetaGroupCreateRequest, completion: @escaping (_ data: BetaGroupResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let betaGroupCreateRequest = BetaGroupCreateRequest(data: BetaGroupCreateRequest_data(type: "type_example", attributes: BetaGroupCreateRequest_data_attributes(name: "name_example", isInternalGroup: false, hasAccessToAllBuilds: false, publicLinkEnabled: false, publicLinkLimitEnabled: false, publicLinkLimit: 123, feedbackEnabled: false), relationships: BetaGroupCreateRequest_data_relationships(app: AlternativeDistributionKeyCreateRequest_data_relationships_app(data: AlternativeDistributionKeyCreateRequest_data_relationships_app_data(type: "type_example", id: "id_example")), builds: BetaGroupCreateRequest_data_relationships_builds(data: [AppEncryptionDeclaration_relationships_builds_data_inner(type: "type_example", id: "id_example")]), betaTesters: BetaGroupCreateRequest_data_relationships_betaTesters(data: [BetaGroup_relationships_betaTesters_data_inner(type: "type_example", id: "id_example")])))) // BetaGroupCreateRequest | BetaGroup representation

BetaGroupsAPI.betaGroupsCreateInstance(betaGroupCreateRequest: betaGroupCreateRequest) { (response, error) in
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
 **betaGroupCreateRequest** | [**BetaGroupCreateRequest**](BetaGroupCreateRequest.md) | BetaGroup representation | 

### Return type

[**BetaGroupResponse**](BetaGroupResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **betaGroupsDeleteInstance**
```swift
    open class func betaGroupsDeleteInstance(id: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource

BetaGroupsAPI.betaGroupsDeleteInstance(id: id) { (response, error) in
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

# **betaGroupsGetCollection**
```swift
    open class func betaGroupsGetCollection(filterIsInternalGroup: [String]? = nil, filterName: [String]? = nil, filterPublicLink: [String]? = nil, filterPublicLinkEnabled: [String]? = nil, filterPublicLinkLimitEnabled: [String]? = nil, filterApp: [String]? = nil, filterBuilds: [String]? = nil, filterId: [String]? = nil, sort: [Sort_betaGroupsGetCollection]? = nil, fieldsBetaGroups: [FieldsBetaGroups_betaGroupsGetCollection]? = nil, limit: Int? = nil, include: [Include_betaGroupsGetCollection]? = nil, fieldsBetaTesters: [FieldsBetaTesters_betaGroupsGetCollection]? = nil, fieldsApps: [FieldsApps_betaGroupsGetCollection]? = nil, fieldsBuilds: [FieldsBuilds_betaGroupsGetCollection]? = nil, limitBetaTesters: Int? = nil, limitBuilds: Int? = nil, completion: @escaping (_ data: BetaGroupsResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let filterIsInternalGroup = ["inner_example"] // [String] | filter by attribute 'isInternalGroup' (optional)
let filterName = ["inner_example"] // [String] | filter by attribute 'name' (optional)
let filterPublicLink = ["inner_example"] // [String] | filter by attribute 'publicLink' (optional)
let filterPublicLinkEnabled = ["inner_example"] // [String] | filter by attribute 'publicLinkEnabled' (optional)
let filterPublicLinkLimitEnabled = ["inner_example"] // [String] | filter by attribute 'publicLinkLimitEnabled' (optional)
let filterApp = ["inner_example"] // [String] | filter by id(s) of related 'app' (optional)
let filterBuilds = ["inner_example"] // [String] | filter by id(s) of related 'builds' (optional)
let filterId = ["inner_example"] // [String] | filter by id(s) (optional)
let sort = ["sort_example"] // [String] | comma-separated list of sort expressions; resources will be sorted as specified (optional)
let fieldsBetaGroups = ["fieldsBetaGroups_example"] // [String] | the fields to include for returned resources of type betaGroups (optional)
let limit = 987 // Int | maximum resources per page (optional)
let include = ["include_example"] // [String] | comma-separated list of relationships to include (optional)
let fieldsBetaTesters = ["fieldsBetaTesters_example"] // [String] | the fields to include for returned resources of type betaTesters (optional)
let fieldsApps = ["fieldsApps_example"] // [String] | the fields to include for returned resources of type apps (optional)
let fieldsBuilds = ["fieldsBuilds_example"] // [String] | the fields to include for returned resources of type builds (optional)
let limitBetaTesters = 987 // Int | maximum number of related betaTesters returned (when they are included) (optional)
let limitBuilds = 987 // Int | maximum number of related builds returned (when they are included) (optional)

BetaGroupsAPI.betaGroupsGetCollection(filterIsInternalGroup: filterIsInternalGroup, filterName: filterName, filterPublicLink: filterPublicLink, filterPublicLinkEnabled: filterPublicLinkEnabled, filterPublicLinkLimitEnabled: filterPublicLinkLimitEnabled, filterApp: filterApp, filterBuilds: filterBuilds, filterId: filterId, sort: sort, fieldsBetaGroups: fieldsBetaGroups, limit: limit, include: include, fieldsBetaTesters: fieldsBetaTesters, fieldsApps: fieldsApps, fieldsBuilds: fieldsBuilds, limitBetaTesters: limitBetaTesters, limitBuilds: limitBuilds) { (response, error) in
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
 **filterIsInternalGroup** | [**[String]**](String.md) | filter by attribute &#39;isInternalGroup&#39; | [optional] 
 **filterName** | [**[String]**](String.md) | filter by attribute &#39;name&#39; | [optional] 
 **filterPublicLink** | [**[String]**](String.md) | filter by attribute &#39;publicLink&#39; | [optional] 
 **filterPublicLinkEnabled** | [**[String]**](String.md) | filter by attribute &#39;publicLinkEnabled&#39; | [optional] 
 **filterPublicLinkLimitEnabled** | [**[String]**](String.md) | filter by attribute &#39;publicLinkLimitEnabled&#39; | [optional] 
 **filterApp** | [**[String]**](String.md) | filter by id(s) of related &#39;app&#39; | [optional] 
 **filterBuilds** | [**[String]**](String.md) | filter by id(s) of related &#39;builds&#39; | [optional] 
 **filterId** | [**[String]**](String.md) | filter by id(s) | [optional] 
 **sort** | [**[String]**](String.md) | comma-separated list of sort expressions; resources will be sorted as specified | [optional] 
 **fieldsBetaGroups** | [**[String]**](String.md) | the fields to include for returned resources of type betaGroups | [optional] 
 **limit** | **Int** | maximum resources per page | [optional] 
 **include** | [**[String]**](String.md) | comma-separated list of relationships to include | [optional] 
 **fieldsBetaTesters** | [**[String]**](String.md) | the fields to include for returned resources of type betaTesters | [optional] 
 **fieldsApps** | [**[String]**](String.md) | the fields to include for returned resources of type apps | [optional] 
 **fieldsBuilds** | [**[String]**](String.md) | the fields to include for returned resources of type builds | [optional] 
 **limitBetaTesters** | **Int** | maximum number of related betaTesters returned (when they are included) | [optional] 
 **limitBuilds** | **Int** | maximum number of related builds returned (when they are included) | [optional] 

### Return type

[**BetaGroupsResponse**](BetaGroupsResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **betaGroupsGetInstance**
```swift
    open class func betaGroupsGetInstance(id: String, fieldsBetaGroups: [FieldsBetaGroups_betaGroupsGetInstance]? = nil, include: [Include_betaGroupsGetInstance]? = nil, fieldsBetaTesters: [FieldsBetaTesters_betaGroupsGetInstance]? = nil, fieldsApps: [FieldsApps_betaGroupsGetInstance]? = nil, fieldsBuilds: [FieldsBuilds_betaGroupsGetInstance]? = nil, limitBetaTesters: Int? = nil, limitBuilds: Int? = nil, completion: @escaping (_ data: BetaGroupResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let fieldsBetaGroups = ["fieldsBetaGroups_example"] // [String] | the fields to include for returned resources of type betaGroups (optional)
let include = ["include_example"] // [String] | comma-separated list of relationships to include (optional)
let fieldsBetaTesters = ["fieldsBetaTesters_example"] // [String] | the fields to include for returned resources of type betaTesters (optional)
let fieldsApps = ["fieldsApps_example"] // [String] | the fields to include for returned resources of type apps (optional)
let fieldsBuilds = ["fieldsBuilds_example"] // [String] | the fields to include for returned resources of type builds (optional)
let limitBetaTesters = 987 // Int | maximum number of related betaTesters returned (when they are included) (optional)
let limitBuilds = 987 // Int | maximum number of related builds returned (when they are included) (optional)

BetaGroupsAPI.betaGroupsGetInstance(id: id, fieldsBetaGroups: fieldsBetaGroups, include: include, fieldsBetaTesters: fieldsBetaTesters, fieldsApps: fieldsApps, fieldsBuilds: fieldsBuilds, limitBetaTesters: limitBetaTesters, limitBuilds: limitBuilds) { (response, error) in
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
 **fieldsBetaGroups** | [**[String]**](String.md) | the fields to include for returned resources of type betaGroups | [optional] 
 **include** | [**[String]**](String.md) | comma-separated list of relationships to include | [optional] 
 **fieldsBetaTesters** | [**[String]**](String.md) | the fields to include for returned resources of type betaTesters | [optional] 
 **fieldsApps** | [**[String]**](String.md) | the fields to include for returned resources of type apps | [optional] 
 **fieldsBuilds** | [**[String]**](String.md) | the fields to include for returned resources of type builds | [optional] 
 **limitBetaTesters** | **Int** | maximum number of related betaTesters returned (when they are included) | [optional] 
 **limitBuilds** | **Int** | maximum number of related builds returned (when they are included) | [optional] 

### Return type

[**BetaGroupResponse**](BetaGroupResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **betaGroupsUpdateInstance**
```swift
    open class func betaGroupsUpdateInstance(id: String, betaGroupUpdateRequest: BetaGroupUpdateRequest, completion: @escaping (_ data: BetaGroupResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let betaGroupUpdateRequest = BetaGroupUpdateRequest(data: BetaGroupUpdateRequest_data(type: "type_example", id: "id_example", attributes: BetaGroupUpdateRequest_data_attributes(name: "name_example", publicLinkEnabled: false, publicLinkLimitEnabled: false, publicLinkLimit: 123, feedbackEnabled: false, iosBuildsAvailableForAppleSiliconMac: false))) // BetaGroupUpdateRequest | BetaGroup representation

BetaGroupsAPI.betaGroupsUpdateInstance(id: id, betaGroupUpdateRequest: betaGroupUpdateRequest) { (response, error) in
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
 **betaGroupUpdateRequest** | [**BetaGroupUpdateRequest**](BetaGroupUpdateRequest.md) | BetaGroup representation | 

### Return type

[**BetaGroupResponse**](BetaGroupResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

