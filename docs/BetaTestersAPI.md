# BetaTestersAPI

All URIs are relative to *https://api.appstoreconnect.apple.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**betaTestersAppsDeleteToManyRelationship**](BetaTestersAPI.md#betatestersappsdeletetomanyrelationship) | **DELETE** /v1/betaTesters/{id}/relationships/apps | 
[**betaTestersAppsGetToManyRelated**](BetaTestersAPI.md#betatestersappsgettomanyrelated) | **GET** /v1/betaTesters/{id}/apps | 
[**betaTestersAppsGetToManyRelationship**](BetaTestersAPI.md#betatestersappsgettomanyrelationship) | **GET** /v1/betaTesters/{id}/relationships/apps | 
[**betaTestersBetaGroupsCreateToManyRelationship**](BetaTestersAPI.md#betatestersbetagroupscreatetomanyrelationship) | **POST** /v1/betaTesters/{id}/relationships/betaGroups | 
[**betaTestersBetaGroupsDeleteToManyRelationship**](BetaTestersAPI.md#betatestersbetagroupsdeletetomanyrelationship) | **DELETE** /v1/betaTesters/{id}/relationships/betaGroups | 
[**betaTestersBetaGroupsGetToManyRelated**](BetaTestersAPI.md#betatestersbetagroupsgettomanyrelated) | **GET** /v1/betaTesters/{id}/betaGroups | 
[**betaTestersBetaGroupsGetToManyRelationship**](BetaTestersAPI.md#betatestersbetagroupsgettomanyrelationship) | **GET** /v1/betaTesters/{id}/relationships/betaGroups | 
[**betaTestersBetaTesterUsagesGetMetrics**](BetaTestersAPI.md#betatestersbetatesterusagesgetmetrics) | **GET** /v1/betaTesters/{id}/metrics/betaTesterUsages | 
[**betaTestersBuildsCreateToManyRelationship**](BetaTestersAPI.md#betatestersbuildscreatetomanyrelationship) | **POST** /v1/betaTesters/{id}/relationships/builds | 
[**betaTestersBuildsDeleteToManyRelationship**](BetaTestersAPI.md#betatestersbuildsdeletetomanyrelationship) | **DELETE** /v1/betaTesters/{id}/relationships/builds | 
[**betaTestersBuildsGetToManyRelated**](BetaTestersAPI.md#betatestersbuildsgettomanyrelated) | **GET** /v1/betaTesters/{id}/builds | 
[**betaTestersBuildsGetToManyRelationship**](BetaTestersAPI.md#betatestersbuildsgettomanyrelationship) | **GET** /v1/betaTesters/{id}/relationships/builds | 
[**betaTestersCreateInstance**](BetaTestersAPI.md#betatesterscreateinstance) | **POST** /v1/betaTesters | 
[**betaTestersDeleteInstance**](BetaTestersAPI.md#betatestersdeleteinstance) | **DELETE** /v1/betaTesters/{id} | 
[**betaTestersGetCollection**](BetaTestersAPI.md#betatestersgetcollection) | **GET** /v1/betaTesters | 
[**betaTestersGetInstance**](BetaTestersAPI.md#betatestersgetinstance) | **GET** /v1/betaTesters/{id} | 


# **betaTestersAppsDeleteToManyRelationship**
```swift
    open class func betaTestersAppsDeleteToManyRelationship(id: String, betaTesterAppsLinkagesRequest: BetaTesterAppsLinkagesRequest, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let betaTesterAppsLinkagesRequest = BetaTesterAppsLinkagesRequest(data: [AlternativeDistributionKeyCreateRequest_data_relationships_app_data(type: "type_example", id: "id_example")]) // BetaTesterAppsLinkagesRequest | List of related linkages

BetaTestersAPI.betaTestersAppsDeleteToManyRelationship(id: id, betaTesterAppsLinkagesRequest: betaTesterAppsLinkagesRequest) { (response, error) in
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
 **betaTesterAppsLinkagesRequest** | [**BetaTesterAppsLinkagesRequest**](BetaTesterAppsLinkagesRequest.md) | List of related linkages | 

### Return type

Void (empty response body)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **betaTestersAppsGetToManyRelated**
```swift
    open class func betaTestersAppsGetToManyRelated(id: String, fieldsApps: [FieldsApps_betaTestersAppsGetToManyRelated]? = nil, limit: Int? = nil, completion: @escaping (_ data: AppsWithoutIncludesResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let fieldsApps = ["fieldsApps_example"] // [String] | the fields to include for returned resources of type apps (optional)
let limit = 987 // Int | maximum resources per page (optional)

BetaTestersAPI.betaTestersAppsGetToManyRelated(id: id, fieldsApps: fieldsApps, limit: limit) { (response, error) in
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
 **limit** | **Int** | maximum resources per page | [optional] 

### Return type

[**AppsWithoutIncludesResponse**](AppsWithoutIncludesResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **betaTestersAppsGetToManyRelationship**
```swift
    open class func betaTestersAppsGetToManyRelationship(id: String, limit: Int? = nil, completion: @escaping (_ data: BetaTesterAppsLinkagesResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let limit = 987 // Int | maximum resources per page (optional)

BetaTestersAPI.betaTestersAppsGetToManyRelationship(id: id, limit: limit) { (response, error) in
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

[**BetaTesterAppsLinkagesResponse**](BetaTesterAppsLinkagesResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **betaTestersBetaGroupsCreateToManyRelationship**
```swift
    open class func betaTestersBetaGroupsCreateToManyRelationship(id: String, betaTesterBetaGroupsLinkagesRequest: BetaTesterBetaGroupsLinkagesRequest, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let betaTesterBetaGroupsLinkagesRequest = BetaTesterBetaGroupsLinkagesRequest(data: [App_relationships_betaGroups_data_inner(type: "type_example", id: "id_example")]) // BetaTesterBetaGroupsLinkagesRequest | List of related linkages

BetaTestersAPI.betaTestersBetaGroupsCreateToManyRelationship(id: id, betaTesterBetaGroupsLinkagesRequest: betaTesterBetaGroupsLinkagesRequest) { (response, error) in
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
 **betaTesterBetaGroupsLinkagesRequest** | [**BetaTesterBetaGroupsLinkagesRequest**](BetaTesterBetaGroupsLinkagesRequest.md) | List of related linkages | 

### Return type

Void (empty response body)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **betaTestersBetaGroupsDeleteToManyRelationship**
```swift
    open class func betaTestersBetaGroupsDeleteToManyRelationship(id: String, betaTesterBetaGroupsLinkagesRequest: BetaTesterBetaGroupsLinkagesRequest, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let betaTesterBetaGroupsLinkagesRequest = BetaTesterBetaGroupsLinkagesRequest(data: [App_relationships_betaGroups_data_inner(type: "type_example", id: "id_example")]) // BetaTesterBetaGroupsLinkagesRequest | List of related linkages

BetaTestersAPI.betaTestersBetaGroupsDeleteToManyRelationship(id: id, betaTesterBetaGroupsLinkagesRequest: betaTesterBetaGroupsLinkagesRequest) { (response, error) in
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
 **betaTesterBetaGroupsLinkagesRequest** | [**BetaTesterBetaGroupsLinkagesRequest**](BetaTesterBetaGroupsLinkagesRequest.md) | List of related linkages | 

### Return type

Void (empty response body)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **betaTestersBetaGroupsGetToManyRelated**
```swift
    open class func betaTestersBetaGroupsGetToManyRelated(id: String, fieldsBetaGroups: [FieldsBetaGroups_betaTestersBetaGroupsGetToManyRelated]? = nil, limit: Int? = nil, completion: @escaping (_ data: BetaGroupsWithoutIncludesResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let fieldsBetaGroups = ["fieldsBetaGroups_example"] // [String] | the fields to include for returned resources of type betaGroups (optional)
let limit = 987 // Int | maximum resources per page (optional)

BetaTestersAPI.betaTestersBetaGroupsGetToManyRelated(id: id, fieldsBetaGroups: fieldsBetaGroups, limit: limit) { (response, error) in
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
 **limit** | **Int** | maximum resources per page | [optional] 

### Return type

[**BetaGroupsWithoutIncludesResponse**](BetaGroupsWithoutIncludesResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **betaTestersBetaGroupsGetToManyRelationship**
```swift
    open class func betaTestersBetaGroupsGetToManyRelationship(id: String, limit: Int? = nil, completion: @escaping (_ data: BetaTesterBetaGroupsLinkagesResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let limit = 987 // Int | maximum resources per page (optional)

BetaTestersAPI.betaTestersBetaGroupsGetToManyRelationship(id: id, limit: limit) { (response, error) in
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

[**BetaTesterBetaGroupsLinkagesResponse**](BetaTesterBetaGroupsLinkagesResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **betaTestersBetaTesterUsagesGetMetrics**
```swift
    open class func betaTestersBetaTesterUsagesGetMetrics(id: String, filterApps: String, limit: Int? = nil, period: Period_betaTestersBetaTesterUsagesGetMetrics? = nil, completion: @escaping (_ data: BetaTesterUsagesV1MetricResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let filterApps = "filterApps_example" // String | filter by 'apps' relationship dimension
let limit = 987 // Int | maximum number of groups to return per page (optional)
let period = "period_example" // String | the duration of the reporting period (optional)

BetaTestersAPI.betaTestersBetaTesterUsagesGetMetrics(id: id, filterApps: filterApps, limit: limit, period: period) { (response, error) in
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
 **filterApps** | **String** | filter by &#39;apps&#39; relationship dimension | 
 **limit** | **Int** | maximum number of groups to return per page | [optional] 
 **period** | **String** | the duration of the reporting period | [optional] 

### Return type

[**BetaTesterUsagesV1MetricResponse**](BetaTesterUsagesV1MetricResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **betaTestersBuildsCreateToManyRelationship**
```swift
    open class func betaTestersBuildsCreateToManyRelationship(id: String, betaTesterBuildsLinkagesRequest: BetaTesterBuildsLinkagesRequest, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let betaTesterBuildsLinkagesRequest = BetaTesterBuildsLinkagesRequest(data: [AppEncryptionDeclaration_relationships_builds_data_inner(type: "type_example", id: "id_example")]) // BetaTesterBuildsLinkagesRequest | List of related linkages

BetaTestersAPI.betaTestersBuildsCreateToManyRelationship(id: id, betaTesterBuildsLinkagesRequest: betaTesterBuildsLinkagesRequest) { (response, error) in
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
 **betaTesterBuildsLinkagesRequest** | [**BetaTesterBuildsLinkagesRequest**](BetaTesterBuildsLinkagesRequest.md) | List of related linkages | 

### Return type

Void (empty response body)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **betaTestersBuildsDeleteToManyRelationship**
```swift
    open class func betaTestersBuildsDeleteToManyRelationship(id: String, betaTesterBuildsLinkagesRequest: BetaTesterBuildsLinkagesRequest, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let betaTesterBuildsLinkagesRequest = BetaTesterBuildsLinkagesRequest(data: [AppEncryptionDeclaration_relationships_builds_data_inner(type: "type_example", id: "id_example")]) // BetaTesterBuildsLinkagesRequest | List of related linkages

BetaTestersAPI.betaTestersBuildsDeleteToManyRelationship(id: id, betaTesterBuildsLinkagesRequest: betaTesterBuildsLinkagesRequest) { (response, error) in
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
 **betaTesterBuildsLinkagesRequest** | [**BetaTesterBuildsLinkagesRequest**](BetaTesterBuildsLinkagesRequest.md) | List of related linkages | 

### Return type

Void (empty response body)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **betaTestersBuildsGetToManyRelated**
```swift
    open class func betaTestersBuildsGetToManyRelated(id: String, fieldsBuilds: [FieldsBuilds_betaTestersBuildsGetToManyRelated]? = nil, limit: Int? = nil, completion: @escaping (_ data: BuildsWithoutIncludesResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let fieldsBuilds = ["fieldsBuilds_example"] // [String] | the fields to include for returned resources of type builds (optional)
let limit = 987 // Int | maximum resources per page (optional)

BetaTestersAPI.betaTestersBuildsGetToManyRelated(id: id, fieldsBuilds: fieldsBuilds, limit: limit) { (response, error) in
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

# **betaTestersBuildsGetToManyRelationship**
```swift
    open class func betaTestersBuildsGetToManyRelationship(id: String, limit: Int? = nil, completion: @escaping (_ data: BetaTesterBuildsLinkagesResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let limit = 987 // Int | maximum resources per page (optional)

BetaTestersAPI.betaTestersBuildsGetToManyRelationship(id: id, limit: limit) { (response, error) in
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

[**BetaTesterBuildsLinkagesResponse**](BetaTesterBuildsLinkagesResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **betaTestersCreateInstance**
```swift
    open class func betaTestersCreateInstance(betaTesterCreateRequest: BetaTesterCreateRequest, completion: @escaping (_ data: BetaTesterResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let betaTesterCreateRequest = BetaTesterCreateRequest(data: BetaTesterCreateRequest_data(type: "type_example", attributes: BetaTesterCreateRequest_data_attributes(firstName: "firstName_example", lastName: "lastName_example", email: "email_example"), relationships: BetaTesterCreateRequest_data_relationships(betaGroups: BetaTesterCreateRequest_data_relationships_betaGroups(data: [App_relationships_betaGroups_data_inner(type: "type_example", id: "id_example")]), builds: BetaGroupCreateRequest_data_relationships_builds(data: [AppEncryptionDeclaration_relationships_builds_data_inner(type: "type_example", id: "id_example")])))) // BetaTesterCreateRequest | BetaTester representation

BetaTestersAPI.betaTestersCreateInstance(betaTesterCreateRequest: betaTesterCreateRequest) { (response, error) in
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
 **betaTesterCreateRequest** | [**BetaTesterCreateRequest**](BetaTesterCreateRequest.md) | BetaTester representation | 

### Return type

[**BetaTesterResponse**](BetaTesterResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **betaTestersDeleteInstance**
```swift
    open class func betaTestersDeleteInstance(id: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource

BetaTestersAPI.betaTestersDeleteInstance(id: id) { (response, error) in
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

# **betaTestersGetCollection**
```swift
    open class func betaTestersGetCollection(filterEmail: [String]? = nil, filterFirstName: [String]? = nil, filterInviteType: [FilterInviteType_betaTestersGetCollection]? = nil, filterLastName: [String]? = nil, filterApps: [String]? = nil, filterBetaGroups: [String]? = nil, filterBuilds: [String]? = nil, filterId: [String]? = nil, sort: [Sort_betaTestersGetCollection]? = nil, fieldsBetaTesters: [FieldsBetaTesters_betaTestersGetCollection]? = nil, limit: Int? = nil, include: [Include_betaTestersGetCollection]? = nil, fieldsApps: [FieldsApps_betaTestersGetCollection]? = nil, fieldsBuilds: [FieldsBuilds_betaTestersGetCollection]? = nil, fieldsBetaGroups: [FieldsBetaGroups_betaTestersGetCollection]? = nil, limitApps: Int? = nil, limitBetaGroups: Int? = nil, limitBuilds: Int? = nil, completion: @escaping (_ data: BetaTestersResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let filterEmail = ["inner_example"] // [String] | filter by attribute 'email' (optional)
let filterFirstName = ["inner_example"] // [String] | filter by attribute 'firstName' (optional)
let filterInviteType = ["filterInviteType_example"] // [String] | filter by attribute 'inviteType' (optional)
let filterLastName = ["inner_example"] // [String] | filter by attribute 'lastName' (optional)
let filterApps = ["inner_example"] // [String] | filter by id(s) of related 'apps' (optional)
let filterBetaGroups = ["inner_example"] // [String] | filter by id(s) of related 'betaGroups' (optional)
let filterBuilds = ["inner_example"] // [String] | filter by id(s) of related 'builds' (optional)
let filterId = ["inner_example"] // [String] | filter by id(s) (optional)
let sort = ["sort_example"] // [String] | comma-separated list of sort expressions; resources will be sorted as specified (optional)
let fieldsBetaTesters = ["fieldsBetaTesters_example"] // [String] | the fields to include for returned resources of type betaTesters (optional)
let limit = 987 // Int | maximum resources per page (optional)
let include = ["include_example"] // [String] | comma-separated list of relationships to include (optional)
let fieldsApps = ["fieldsApps_example"] // [String] | the fields to include for returned resources of type apps (optional)
let fieldsBuilds = ["fieldsBuilds_example"] // [String] | the fields to include for returned resources of type builds (optional)
let fieldsBetaGroups = ["fieldsBetaGroups_example"] // [String] | the fields to include for returned resources of type betaGroups (optional)
let limitApps = 987 // Int | maximum number of related apps returned (when they are included) (optional)
let limitBetaGroups = 987 // Int | maximum number of related betaGroups returned (when they are included) (optional)
let limitBuilds = 987 // Int | maximum number of related builds returned (when they are included) (optional)

BetaTestersAPI.betaTestersGetCollection(filterEmail: filterEmail, filterFirstName: filterFirstName, filterInviteType: filterInviteType, filterLastName: filterLastName, filterApps: filterApps, filterBetaGroups: filterBetaGroups, filterBuilds: filterBuilds, filterId: filterId, sort: sort, fieldsBetaTesters: fieldsBetaTesters, limit: limit, include: include, fieldsApps: fieldsApps, fieldsBuilds: fieldsBuilds, fieldsBetaGroups: fieldsBetaGroups, limitApps: limitApps, limitBetaGroups: limitBetaGroups, limitBuilds: limitBuilds) { (response, error) in
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
 **filterEmail** | [**[String]**](String.md) | filter by attribute &#39;email&#39; | [optional] 
 **filterFirstName** | [**[String]**](String.md) | filter by attribute &#39;firstName&#39; | [optional] 
 **filterInviteType** | [**[String]**](String.md) | filter by attribute &#39;inviteType&#39; | [optional] 
 **filterLastName** | [**[String]**](String.md) | filter by attribute &#39;lastName&#39; | [optional] 
 **filterApps** | [**[String]**](String.md) | filter by id(s) of related &#39;apps&#39; | [optional] 
 **filterBetaGroups** | [**[String]**](String.md) | filter by id(s) of related &#39;betaGroups&#39; | [optional] 
 **filterBuilds** | [**[String]**](String.md) | filter by id(s) of related &#39;builds&#39; | [optional] 
 **filterId** | [**[String]**](String.md) | filter by id(s) | [optional] 
 **sort** | [**[String]**](String.md) | comma-separated list of sort expressions; resources will be sorted as specified | [optional] 
 **fieldsBetaTesters** | [**[String]**](String.md) | the fields to include for returned resources of type betaTesters | [optional] 
 **limit** | **Int** | maximum resources per page | [optional] 
 **include** | [**[String]**](String.md) | comma-separated list of relationships to include | [optional] 
 **fieldsApps** | [**[String]**](String.md) | the fields to include for returned resources of type apps | [optional] 
 **fieldsBuilds** | [**[String]**](String.md) | the fields to include for returned resources of type builds | [optional] 
 **fieldsBetaGroups** | [**[String]**](String.md) | the fields to include for returned resources of type betaGroups | [optional] 
 **limitApps** | **Int** | maximum number of related apps returned (when they are included) | [optional] 
 **limitBetaGroups** | **Int** | maximum number of related betaGroups returned (when they are included) | [optional] 
 **limitBuilds** | **Int** | maximum number of related builds returned (when they are included) | [optional] 

### Return type

[**BetaTestersResponse**](BetaTestersResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **betaTestersGetInstance**
```swift
    open class func betaTestersGetInstance(id: String, fieldsBetaTesters: [FieldsBetaTesters_betaTestersGetInstance]? = nil, include: [Include_betaTestersGetInstance]? = nil, fieldsApps: [FieldsApps_betaTestersGetInstance]? = nil, fieldsBuilds: [FieldsBuilds_betaTestersGetInstance]? = nil, fieldsBetaGroups: [FieldsBetaGroups_betaTestersGetInstance]? = nil, limitApps: Int? = nil, limitBetaGroups: Int? = nil, limitBuilds: Int? = nil, completion: @escaping (_ data: BetaTesterResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let fieldsBetaTesters = ["fieldsBetaTesters_example"] // [String] | the fields to include for returned resources of type betaTesters (optional)
let include = ["include_example"] // [String] | comma-separated list of relationships to include (optional)
let fieldsApps = ["fieldsApps_example"] // [String] | the fields to include for returned resources of type apps (optional)
let fieldsBuilds = ["fieldsBuilds_example"] // [String] | the fields to include for returned resources of type builds (optional)
let fieldsBetaGroups = ["fieldsBetaGroups_example"] // [String] | the fields to include for returned resources of type betaGroups (optional)
let limitApps = 987 // Int | maximum number of related apps returned (when they are included) (optional)
let limitBetaGroups = 987 // Int | maximum number of related betaGroups returned (when they are included) (optional)
let limitBuilds = 987 // Int | maximum number of related builds returned (when they are included) (optional)

BetaTestersAPI.betaTestersGetInstance(id: id, fieldsBetaTesters: fieldsBetaTesters, include: include, fieldsApps: fieldsApps, fieldsBuilds: fieldsBuilds, fieldsBetaGroups: fieldsBetaGroups, limitApps: limitApps, limitBetaGroups: limitBetaGroups, limitBuilds: limitBuilds) { (response, error) in
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
 **include** | [**[String]**](String.md) | comma-separated list of relationships to include | [optional] 
 **fieldsApps** | [**[String]**](String.md) | the fields to include for returned resources of type apps | [optional] 
 **fieldsBuilds** | [**[String]**](String.md) | the fields to include for returned resources of type builds | [optional] 
 **fieldsBetaGroups** | [**[String]**](String.md) | the fields to include for returned resources of type betaGroups | [optional] 
 **limitApps** | **Int** | maximum number of related apps returned (when they are included) | [optional] 
 **limitBetaGroups** | **Int** | maximum number of related betaGroups returned (when they are included) | [optional] 
 **limitBuilds** | **Int** | maximum number of related builds returned (when they are included) | [optional] 

### Return type

[**BetaTesterResponse**](BetaTesterResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

