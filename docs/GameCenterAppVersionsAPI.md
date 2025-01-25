# GameCenterAppVersionsAPI

All URIs are relative to *https://api.appstoreconnect.apple.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**gameCenterAppVersionsAppStoreVersionGetToOneRelated**](GameCenterAppVersionsAPI.md#gamecenterappversionsappstoreversiongettoonerelated) | **GET** /v1/gameCenterAppVersions/{id}/appStoreVersion | 
[**gameCenterAppVersionsCompatibilityVersionsCreateToManyRelationship**](GameCenterAppVersionsAPI.md#gamecenterappversionscompatibilityversionscreatetomanyrelationship) | **POST** /v1/gameCenterAppVersions/{id}/relationships/compatibilityVersions | 
[**gameCenterAppVersionsCompatibilityVersionsDeleteToManyRelationship**](GameCenterAppVersionsAPI.md#gamecenterappversionscompatibilityversionsdeletetomanyrelationship) | **DELETE** /v1/gameCenterAppVersions/{id}/relationships/compatibilityVersions | 
[**gameCenterAppVersionsCompatibilityVersionsGetToManyRelated**](GameCenterAppVersionsAPI.md#gamecenterappversionscompatibilityversionsgettomanyrelated) | **GET** /v1/gameCenterAppVersions/{id}/compatibilityVersions | 
[**gameCenterAppVersionsCompatibilityVersionsGetToManyRelationship**](GameCenterAppVersionsAPI.md#gamecenterappversionscompatibilityversionsgettomanyrelationship) | **GET** /v1/gameCenterAppVersions/{id}/relationships/compatibilityVersions | 
[**gameCenterAppVersionsCreateInstance**](GameCenterAppVersionsAPI.md#gamecenterappversionscreateinstance) | **POST** /v1/gameCenterAppVersions | 
[**gameCenterAppVersionsGetInstance**](GameCenterAppVersionsAPI.md#gamecenterappversionsgetinstance) | **GET** /v1/gameCenterAppVersions/{id} | 
[**gameCenterAppVersionsUpdateInstance**](GameCenterAppVersionsAPI.md#gamecenterappversionsupdateinstance) | **PATCH** /v1/gameCenterAppVersions/{id} | 


# **gameCenterAppVersionsAppStoreVersionGetToOneRelated**
```swift
    open class func gameCenterAppVersionsAppStoreVersionGetToOneRelated(id: String, fieldsAppStoreVersions: [FieldsAppStoreVersions_gameCenterAppVersionsAppStoreVersionGetToOneRelated]? = nil, fieldsApps: [FieldsApps_gameCenterAppVersionsAppStoreVersionGetToOneRelated]? = nil, fieldsAgeRatingDeclarations: [FieldsAgeRatingDeclarations_gameCenterAppVersionsAppStoreVersionGetToOneRelated]? = nil, fieldsAppStoreVersionLocalizations: [FieldsAppStoreVersionLocalizations_gameCenterAppVersionsAppStoreVersionGetToOneRelated]? = nil, fieldsBuilds: [FieldsBuilds_gameCenterAppVersionsAppStoreVersionGetToOneRelated]? = nil, fieldsAppStoreVersionPhasedReleases: [FieldsAppStoreVersionPhasedReleases_gameCenterAppVersionsAppStoreVersionGetToOneRelated]? = nil, fieldsGameCenterAppVersions: [FieldsGameCenterAppVersions_gameCenterAppVersionsAppStoreVersionGetToOneRelated]? = nil, fieldsRoutingAppCoverages: [FieldsRoutingAppCoverages_gameCenterAppVersionsAppStoreVersionGetToOneRelated]? = nil, fieldsAppStoreReviewDetails: [FieldsAppStoreReviewDetails_gameCenterAppVersionsAppStoreVersionGetToOneRelated]? = nil, fieldsAppStoreVersionSubmissions: [FieldsAppStoreVersionSubmissions_gameCenterAppVersionsAppStoreVersionGetToOneRelated]? = nil, fieldsAppClipDefaultExperiences: [FieldsAppClipDefaultExperiences_gameCenterAppVersionsAppStoreVersionGetToOneRelated]? = nil, fieldsAppStoreVersionExperiments: [FieldsAppStoreVersionExperiments_gameCenterAppVersionsAppStoreVersionGetToOneRelated]? = nil, fieldsAlternativeDistributionPackages: [FieldsAlternativeDistributionPackages_gameCenterAppVersionsAppStoreVersionGetToOneRelated]? = nil, include: [Include_gameCenterAppVersionsAppStoreVersionGetToOneRelated]? = nil, limitAppStoreVersionLocalizations: Int? = nil, limitAppStoreVersionExperiments: Int? = nil, limitAppStoreVersionExperimentsV2: Int? = nil, completion: @escaping (_ data: AppStoreVersionResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let fieldsAppStoreVersions = ["fieldsAppStoreVersions_example"] // [String] | the fields to include for returned resources of type appStoreVersions (optional)
let fieldsApps = ["fieldsApps_example"] // [String] | the fields to include for returned resources of type apps (optional)
let fieldsAgeRatingDeclarations = ["fieldsAgeRatingDeclarations_example"] // [String] | the fields to include for returned resources of type ageRatingDeclarations (optional)
let fieldsAppStoreVersionLocalizations = ["fieldsAppStoreVersionLocalizations_example"] // [String] | the fields to include for returned resources of type appStoreVersionLocalizations (optional)
let fieldsBuilds = ["fieldsBuilds_example"] // [String] | the fields to include for returned resources of type builds (optional)
let fieldsAppStoreVersionPhasedReleases = ["fieldsAppStoreVersionPhasedReleases_example"] // [String] | the fields to include for returned resources of type appStoreVersionPhasedReleases (optional)
let fieldsGameCenterAppVersions = ["fieldsGameCenterAppVersions_example"] // [String] | the fields to include for returned resources of type gameCenterAppVersions (optional)
let fieldsRoutingAppCoverages = ["fieldsRoutingAppCoverages_example"] // [String] | the fields to include for returned resources of type routingAppCoverages (optional)
let fieldsAppStoreReviewDetails = ["fieldsAppStoreReviewDetails_example"] // [String] | the fields to include for returned resources of type appStoreReviewDetails (optional)
let fieldsAppStoreVersionSubmissions = ["fieldsAppStoreVersionSubmissions_example"] // [String] | the fields to include for returned resources of type appStoreVersionSubmissions (optional)
let fieldsAppClipDefaultExperiences = ["fieldsAppClipDefaultExperiences_example"] // [String] | the fields to include for returned resources of type appClipDefaultExperiences (optional)
let fieldsAppStoreVersionExperiments = ["fieldsAppStoreVersionExperiments_example"] // [String] | the fields to include for returned resources of type appStoreVersionExperiments (optional)
let fieldsAlternativeDistributionPackages = ["fieldsAlternativeDistributionPackages_example"] // [String] | the fields to include for returned resources of type alternativeDistributionPackages (optional)
let include = ["include_example"] // [String] | comma-separated list of relationships to include (optional)
let limitAppStoreVersionLocalizations = 987 // Int | maximum number of related appStoreVersionLocalizations returned (when they are included) (optional)
let limitAppStoreVersionExperiments = 987 // Int | maximum number of related appStoreVersionExperiments returned (when they are included) (optional)
let limitAppStoreVersionExperimentsV2 = 987 // Int | maximum number of related appStoreVersionExperimentsV2 returned (when they are included) (optional)

GameCenterAppVersionsAPI.gameCenterAppVersionsAppStoreVersionGetToOneRelated(id: id, fieldsAppStoreVersions: fieldsAppStoreVersions, fieldsApps: fieldsApps, fieldsAgeRatingDeclarations: fieldsAgeRatingDeclarations, fieldsAppStoreVersionLocalizations: fieldsAppStoreVersionLocalizations, fieldsBuilds: fieldsBuilds, fieldsAppStoreVersionPhasedReleases: fieldsAppStoreVersionPhasedReleases, fieldsGameCenterAppVersions: fieldsGameCenterAppVersions, fieldsRoutingAppCoverages: fieldsRoutingAppCoverages, fieldsAppStoreReviewDetails: fieldsAppStoreReviewDetails, fieldsAppStoreVersionSubmissions: fieldsAppStoreVersionSubmissions, fieldsAppClipDefaultExperiences: fieldsAppClipDefaultExperiences, fieldsAppStoreVersionExperiments: fieldsAppStoreVersionExperiments, fieldsAlternativeDistributionPackages: fieldsAlternativeDistributionPackages, include: include, limitAppStoreVersionLocalizations: limitAppStoreVersionLocalizations, limitAppStoreVersionExperiments: limitAppStoreVersionExperiments, limitAppStoreVersionExperimentsV2: limitAppStoreVersionExperimentsV2) { (response, error) in
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
 **fieldsAppStoreVersions** | [**[String]**](String.md) | the fields to include for returned resources of type appStoreVersions | [optional] 
 **fieldsApps** | [**[String]**](String.md) | the fields to include for returned resources of type apps | [optional] 
 **fieldsAgeRatingDeclarations** | [**[String]**](String.md) | the fields to include for returned resources of type ageRatingDeclarations | [optional] 
 **fieldsAppStoreVersionLocalizations** | [**[String]**](String.md) | the fields to include for returned resources of type appStoreVersionLocalizations | [optional] 
 **fieldsBuilds** | [**[String]**](String.md) | the fields to include for returned resources of type builds | [optional] 
 **fieldsAppStoreVersionPhasedReleases** | [**[String]**](String.md) | the fields to include for returned resources of type appStoreVersionPhasedReleases | [optional] 
 **fieldsGameCenterAppVersions** | [**[String]**](String.md) | the fields to include for returned resources of type gameCenterAppVersions | [optional] 
 **fieldsRoutingAppCoverages** | [**[String]**](String.md) | the fields to include for returned resources of type routingAppCoverages | [optional] 
 **fieldsAppStoreReviewDetails** | [**[String]**](String.md) | the fields to include for returned resources of type appStoreReviewDetails | [optional] 
 **fieldsAppStoreVersionSubmissions** | [**[String]**](String.md) | the fields to include for returned resources of type appStoreVersionSubmissions | [optional] 
 **fieldsAppClipDefaultExperiences** | [**[String]**](String.md) | the fields to include for returned resources of type appClipDefaultExperiences | [optional] 
 **fieldsAppStoreVersionExperiments** | [**[String]**](String.md) | the fields to include for returned resources of type appStoreVersionExperiments | [optional] 
 **fieldsAlternativeDistributionPackages** | [**[String]**](String.md) | the fields to include for returned resources of type alternativeDistributionPackages | [optional] 
 **include** | [**[String]**](String.md) | comma-separated list of relationships to include | [optional] 
 **limitAppStoreVersionLocalizations** | **Int** | maximum number of related appStoreVersionLocalizations returned (when they are included) | [optional] 
 **limitAppStoreVersionExperiments** | **Int** | maximum number of related appStoreVersionExperiments returned (when they are included) | [optional] 
 **limitAppStoreVersionExperimentsV2** | **Int** | maximum number of related appStoreVersionExperimentsV2 returned (when they are included) | [optional] 

### Return type

[**AppStoreVersionResponse**](AppStoreVersionResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **gameCenterAppVersionsCompatibilityVersionsCreateToManyRelationship**
```swift
    open class func gameCenterAppVersionsCompatibilityVersionsCreateToManyRelationship(id: String, gameCenterAppVersionCompatibilityVersionsLinkagesRequest: GameCenterAppVersionCompatibilityVersionsLinkagesRequest, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let gameCenterAppVersionCompatibilityVersionsLinkagesRequest = GameCenterAppVersionCompatibilityVersionsLinkagesRequest(data: [AppStoreVersion_relationships_gameCenterAppVersion_data(type: "type_example", id: "id_example")]) // GameCenterAppVersionCompatibilityVersionsLinkagesRequest | List of related linkages

GameCenterAppVersionsAPI.gameCenterAppVersionsCompatibilityVersionsCreateToManyRelationship(id: id, gameCenterAppVersionCompatibilityVersionsLinkagesRequest: gameCenterAppVersionCompatibilityVersionsLinkagesRequest) { (response, error) in
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
 **gameCenterAppVersionCompatibilityVersionsLinkagesRequest** | [**GameCenterAppVersionCompatibilityVersionsLinkagesRequest**](GameCenterAppVersionCompatibilityVersionsLinkagesRequest.md) | List of related linkages | 

### Return type

Void (empty response body)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **gameCenterAppVersionsCompatibilityVersionsDeleteToManyRelationship**
```swift
    open class func gameCenterAppVersionsCompatibilityVersionsDeleteToManyRelationship(id: String, gameCenterAppVersionCompatibilityVersionsLinkagesRequest: GameCenterAppVersionCompatibilityVersionsLinkagesRequest, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let gameCenterAppVersionCompatibilityVersionsLinkagesRequest = GameCenterAppVersionCompatibilityVersionsLinkagesRequest(data: [AppStoreVersion_relationships_gameCenterAppVersion_data(type: "type_example", id: "id_example")]) // GameCenterAppVersionCompatibilityVersionsLinkagesRequest | List of related linkages

GameCenterAppVersionsAPI.gameCenterAppVersionsCompatibilityVersionsDeleteToManyRelationship(id: id, gameCenterAppVersionCompatibilityVersionsLinkagesRequest: gameCenterAppVersionCompatibilityVersionsLinkagesRequest) { (response, error) in
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
 **gameCenterAppVersionCompatibilityVersionsLinkagesRequest** | [**GameCenterAppVersionCompatibilityVersionsLinkagesRequest**](GameCenterAppVersionCompatibilityVersionsLinkagesRequest.md) | List of related linkages | 

### Return type

Void (empty response body)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **gameCenterAppVersionsCompatibilityVersionsGetToManyRelated**
```swift
    open class func gameCenterAppVersionsCompatibilityVersionsGetToManyRelated(id: String, filterEnabled: [String]? = nil, fieldsGameCenterAppVersions: [FieldsGameCenterAppVersions_gameCenterAppVersionsCompatibilityVersionsGetToManyRelated]? = nil, fieldsAppStoreVersions: [FieldsAppStoreVersions_gameCenterAppVersionsCompatibilityVersionsGetToManyRelated]? = nil, limit: Int? = nil, include: [Include_gameCenterAppVersionsCompatibilityVersionsGetToManyRelated]? = nil, limitCompatibilityVersions: Int? = nil, completion: @escaping (_ data: GameCenterAppVersionsResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let filterEnabled = ["inner_example"] // [String] | filter by attribute 'enabled' (optional)
let fieldsGameCenterAppVersions = ["fieldsGameCenterAppVersions_example"] // [String] | the fields to include for returned resources of type gameCenterAppVersions (optional)
let fieldsAppStoreVersions = ["fieldsAppStoreVersions_example"] // [String] | the fields to include for returned resources of type appStoreVersions (optional)
let limit = 987 // Int | maximum resources per page (optional)
let include = ["include_example"] // [String] | comma-separated list of relationships to include (optional)
let limitCompatibilityVersions = 987 // Int | maximum number of related compatibilityVersions returned (when they are included) (optional)

GameCenterAppVersionsAPI.gameCenterAppVersionsCompatibilityVersionsGetToManyRelated(id: id, filterEnabled: filterEnabled, fieldsGameCenterAppVersions: fieldsGameCenterAppVersions, fieldsAppStoreVersions: fieldsAppStoreVersions, limit: limit, include: include, limitCompatibilityVersions: limitCompatibilityVersions) { (response, error) in
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
 **filterEnabled** | [**[String]**](String.md) | filter by attribute &#39;enabled&#39; | [optional] 
 **fieldsGameCenterAppVersions** | [**[String]**](String.md) | the fields to include for returned resources of type gameCenterAppVersions | [optional] 
 **fieldsAppStoreVersions** | [**[String]**](String.md) | the fields to include for returned resources of type appStoreVersions | [optional] 
 **limit** | **Int** | maximum resources per page | [optional] 
 **include** | [**[String]**](String.md) | comma-separated list of relationships to include | [optional] 
 **limitCompatibilityVersions** | **Int** | maximum number of related compatibilityVersions returned (when they are included) | [optional] 

### Return type

[**GameCenterAppVersionsResponse**](GameCenterAppVersionsResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **gameCenterAppVersionsCompatibilityVersionsGetToManyRelationship**
```swift
    open class func gameCenterAppVersionsCompatibilityVersionsGetToManyRelationship(id: String, limit: Int? = nil, completion: @escaping (_ data: GameCenterAppVersionCompatibilityVersionsLinkagesResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let limit = 987 // Int | maximum resources per page (optional)

GameCenterAppVersionsAPI.gameCenterAppVersionsCompatibilityVersionsGetToManyRelationship(id: id, limit: limit) { (response, error) in
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

[**GameCenterAppVersionCompatibilityVersionsLinkagesResponse**](GameCenterAppVersionCompatibilityVersionsLinkagesResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **gameCenterAppVersionsCreateInstance**
```swift
    open class func gameCenterAppVersionsCreateInstance(gameCenterAppVersionCreateRequest: GameCenterAppVersionCreateRequest, completion: @escaping (_ data: GameCenterAppVersionResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let gameCenterAppVersionCreateRequest = GameCenterAppVersionCreateRequest(data: GameCenterAppVersionCreateRequest_data(type: "type_example", relationships: AlternativeDistributionPackageCreateRequest_data_relationships(appStoreVersion: AlternativeDistributionPackageCreateRequest_data_relationships_appStoreVersion(data: AlternativeDistributionPackageCreateRequest_data_relationships_appStoreVersion_data(type: "type_example", id: "id_example"))))) // GameCenterAppVersionCreateRequest | GameCenterAppVersion representation

GameCenterAppVersionsAPI.gameCenterAppVersionsCreateInstance(gameCenterAppVersionCreateRequest: gameCenterAppVersionCreateRequest) { (response, error) in
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
 **gameCenterAppVersionCreateRequest** | [**GameCenterAppVersionCreateRequest**](GameCenterAppVersionCreateRequest.md) | GameCenterAppVersion representation | 

### Return type

[**GameCenterAppVersionResponse**](GameCenterAppVersionResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **gameCenterAppVersionsGetInstance**
```swift
    open class func gameCenterAppVersionsGetInstance(id: String, fieldsGameCenterAppVersions: [FieldsGameCenterAppVersions_gameCenterAppVersionsGetInstance]? = nil, fieldsAppStoreVersions: [FieldsAppStoreVersions_gameCenterAppVersionsGetInstance]? = nil, include: [Include_gameCenterAppVersionsGetInstance]? = nil, limitCompatibilityVersions: Int? = nil, completion: @escaping (_ data: GameCenterAppVersionResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let fieldsGameCenterAppVersions = ["fieldsGameCenterAppVersions_example"] // [String] | the fields to include for returned resources of type gameCenterAppVersions (optional)
let fieldsAppStoreVersions = ["fieldsAppStoreVersions_example"] // [String] | the fields to include for returned resources of type appStoreVersions (optional)
let include = ["include_example"] // [String] | comma-separated list of relationships to include (optional)
let limitCompatibilityVersions = 987 // Int | maximum number of related compatibilityVersions returned (when they are included) (optional)

GameCenterAppVersionsAPI.gameCenterAppVersionsGetInstance(id: id, fieldsGameCenterAppVersions: fieldsGameCenterAppVersions, fieldsAppStoreVersions: fieldsAppStoreVersions, include: include, limitCompatibilityVersions: limitCompatibilityVersions) { (response, error) in
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
 **fieldsGameCenterAppVersions** | [**[String]**](String.md) | the fields to include for returned resources of type gameCenterAppVersions | [optional] 
 **fieldsAppStoreVersions** | [**[String]**](String.md) | the fields to include for returned resources of type appStoreVersions | [optional] 
 **include** | [**[String]**](String.md) | comma-separated list of relationships to include | [optional] 
 **limitCompatibilityVersions** | **Int** | maximum number of related compatibilityVersions returned (when they are included) | [optional] 

### Return type

[**GameCenterAppVersionResponse**](GameCenterAppVersionResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **gameCenterAppVersionsUpdateInstance**
```swift
    open class func gameCenterAppVersionsUpdateInstance(id: String, gameCenterAppVersionUpdateRequest: GameCenterAppVersionUpdateRequest, completion: @escaping (_ data: GameCenterAppVersionResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let gameCenterAppVersionUpdateRequest = GameCenterAppVersionUpdateRequest(data: GameCenterAppVersionUpdateRequest_data(type: "type_example", id: "id_example", attributes: GameCenterAppVersion_attributes(enabled: false))) // GameCenterAppVersionUpdateRequest | GameCenterAppVersion representation

GameCenterAppVersionsAPI.gameCenterAppVersionsUpdateInstance(id: id, gameCenterAppVersionUpdateRequest: gameCenterAppVersionUpdateRequest) { (response, error) in
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
 **gameCenterAppVersionUpdateRequest** | [**GameCenterAppVersionUpdateRequest**](GameCenterAppVersionUpdateRequest.md) | GameCenterAppVersion representation | 

### Return type

[**GameCenterAppVersionResponse**](GameCenterAppVersionResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

