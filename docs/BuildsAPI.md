# BuildsAPI

All URIs are relative to *https://api.appstoreconnect.apple.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**buildsAppEncryptionDeclarationGetToOneRelated**](BuildsAPI.md#buildsappencryptiondeclarationgettoonerelated) | **GET** /v1/builds/{id}/appEncryptionDeclaration | 
[**buildsAppEncryptionDeclarationGetToOneRelationship**](BuildsAPI.md#buildsappencryptiondeclarationgettoonerelationship) | **GET** /v1/builds/{id}/relationships/appEncryptionDeclaration | 
[**buildsAppEncryptionDeclarationUpdateToOneRelationship**](BuildsAPI.md#buildsappencryptiondeclarationupdatetoonerelationship) | **PATCH** /v1/builds/{id}/relationships/appEncryptionDeclaration | 
[**buildsAppGetToOneRelated**](BuildsAPI.md#buildsappgettoonerelated) | **GET** /v1/builds/{id}/app | 
[**buildsAppStoreVersionGetToOneRelated**](BuildsAPI.md#buildsappstoreversiongettoonerelated) | **GET** /v1/builds/{id}/appStoreVersion | 
[**buildsBetaAppReviewSubmissionGetToOneRelated**](BuildsAPI.md#buildsbetaappreviewsubmissiongettoonerelated) | **GET** /v1/builds/{id}/betaAppReviewSubmission | 
[**buildsBetaBuildLocalizationsGetToManyRelated**](BuildsAPI.md#buildsbetabuildlocalizationsgettomanyrelated) | **GET** /v1/builds/{id}/betaBuildLocalizations | 
[**buildsBetaBuildUsagesGetMetrics**](BuildsAPI.md#buildsbetabuildusagesgetmetrics) | **GET** /v1/builds/{id}/metrics/betaBuildUsages | 
[**buildsBetaGroupsCreateToManyRelationship**](BuildsAPI.md#buildsbetagroupscreatetomanyrelationship) | **POST** /v1/builds/{id}/relationships/betaGroups | 
[**buildsBetaGroupsDeleteToManyRelationship**](BuildsAPI.md#buildsbetagroupsdeletetomanyrelationship) | **DELETE** /v1/builds/{id}/relationships/betaGroups | 
[**buildsBuildBetaDetailGetToOneRelated**](BuildsAPI.md#buildsbuildbetadetailgettoonerelated) | **GET** /v1/builds/{id}/buildBetaDetail | 
[**buildsDiagnosticSignaturesGetToManyRelated**](BuildsAPI.md#buildsdiagnosticsignaturesgettomanyrelated) | **GET** /v1/builds/{id}/diagnosticSignatures | 
[**buildsGetCollection**](BuildsAPI.md#buildsgetcollection) | **GET** /v1/builds | 
[**buildsGetInstance**](BuildsAPI.md#buildsgetinstance) | **GET** /v1/builds/{id} | 
[**buildsIconsGetToManyRelated**](BuildsAPI.md#buildsiconsgettomanyrelated) | **GET** /v1/builds/{id}/icons | 
[**buildsIndividualTestersCreateToManyRelationship**](BuildsAPI.md#buildsindividualtesterscreatetomanyrelationship) | **POST** /v1/builds/{id}/relationships/individualTesters | 
[**buildsIndividualTestersDeleteToManyRelationship**](BuildsAPI.md#buildsindividualtestersdeletetomanyrelationship) | **DELETE** /v1/builds/{id}/relationships/individualTesters | 
[**buildsIndividualTestersGetToManyRelated**](BuildsAPI.md#buildsindividualtestersgettomanyrelated) | **GET** /v1/builds/{id}/individualTesters | 
[**buildsIndividualTestersGetToManyRelationship**](BuildsAPI.md#buildsindividualtestersgettomanyrelationship) | **GET** /v1/builds/{id}/relationships/individualTesters | 
[**buildsPerfPowerMetricsGetToManyRelated**](BuildsAPI.md#buildsperfpowermetricsgettomanyrelated) | **GET** /v1/builds/{id}/perfPowerMetrics | 
[**buildsPreReleaseVersionGetToOneRelated**](BuildsAPI.md#buildsprereleaseversiongettoonerelated) | **GET** /v1/builds/{id}/preReleaseVersion | 
[**buildsUpdateInstance**](BuildsAPI.md#buildsupdateinstance) | **PATCH** /v1/builds/{id} | 


# **buildsAppEncryptionDeclarationGetToOneRelated**
```swift
    open class func buildsAppEncryptionDeclarationGetToOneRelated(id: String, fieldsAppEncryptionDeclarations: [FieldsAppEncryptionDeclarations_buildsAppEncryptionDeclarationGetToOneRelated]? = nil, completion: @escaping (_ data: AppEncryptionDeclarationWithoutIncludesResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let fieldsAppEncryptionDeclarations = ["fieldsAppEncryptionDeclarations_example"] // [String] | the fields to include for returned resources of type appEncryptionDeclarations (optional)

BuildsAPI.buildsAppEncryptionDeclarationGetToOneRelated(id: id, fieldsAppEncryptionDeclarations: fieldsAppEncryptionDeclarations) { (response, error) in
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
 **fieldsAppEncryptionDeclarations** | [**[String]**](String.md) | the fields to include for returned resources of type appEncryptionDeclarations | [optional] 

### Return type

[**AppEncryptionDeclarationWithoutIncludesResponse**](AppEncryptionDeclarationWithoutIncludesResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **buildsAppEncryptionDeclarationGetToOneRelationship**
```swift
    open class func buildsAppEncryptionDeclarationGetToOneRelationship(id: String, completion: @escaping (_ data: BuildAppEncryptionDeclarationLinkageResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource

BuildsAPI.buildsAppEncryptionDeclarationGetToOneRelationship(id: id) { (response, error) in
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

[**BuildAppEncryptionDeclarationLinkageResponse**](BuildAppEncryptionDeclarationLinkageResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **buildsAppEncryptionDeclarationUpdateToOneRelationship**
```swift
    open class func buildsAppEncryptionDeclarationUpdateToOneRelationship(id: String, buildAppEncryptionDeclarationLinkageRequest: BuildAppEncryptionDeclarationLinkageRequest, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let buildAppEncryptionDeclarationLinkageRequest = BuildAppEncryptionDeclarationLinkageRequest(data: AppEncryptionDeclarationDocumentCreateRequest_data_relationships_appEncryptionDeclaration_data(type: "type_example", id: "id_example")) // BuildAppEncryptionDeclarationLinkageRequest | Related linkage

BuildsAPI.buildsAppEncryptionDeclarationUpdateToOneRelationship(id: id, buildAppEncryptionDeclarationLinkageRequest: buildAppEncryptionDeclarationLinkageRequest) { (response, error) in
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
 **buildAppEncryptionDeclarationLinkageRequest** | [**BuildAppEncryptionDeclarationLinkageRequest**](BuildAppEncryptionDeclarationLinkageRequest.md) | Related linkage | 

### Return type

Void (empty response body)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **buildsAppGetToOneRelated**
```swift
    open class func buildsAppGetToOneRelated(id: String, fieldsApps: [FieldsApps_buildsAppGetToOneRelated]? = nil, completion: @escaping (_ data: AppWithoutIncludesResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let fieldsApps = ["fieldsApps_example"] // [String] | the fields to include for returned resources of type apps (optional)

BuildsAPI.buildsAppGetToOneRelated(id: id, fieldsApps: fieldsApps) { (response, error) in
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

# **buildsAppStoreVersionGetToOneRelated**
```swift
    open class func buildsAppStoreVersionGetToOneRelated(id: String, fieldsAppStoreVersions: [FieldsAppStoreVersions_buildsAppStoreVersionGetToOneRelated]? = nil, fieldsApps: [FieldsApps_buildsAppStoreVersionGetToOneRelated]? = nil, fieldsAgeRatingDeclarations: [FieldsAgeRatingDeclarations_buildsAppStoreVersionGetToOneRelated]? = nil, fieldsAppStoreVersionLocalizations: [FieldsAppStoreVersionLocalizations_buildsAppStoreVersionGetToOneRelated]? = nil, fieldsBuilds: [FieldsBuilds_buildsAppStoreVersionGetToOneRelated]? = nil, fieldsAppStoreVersionPhasedReleases: [FieldsAppStoreVersionPhasedReleases_buildsAppStoreVersionGetToOneRelated]? = nil, fieldsGameCenterAppVersions: [FieldsGameCenterAppVersions_buildsAppStoreVersionGetToOneRelated]? = nil, fieldsRoutingAppCoverages: [FieldsRoutingAppCoverages_buildsAppStoreVersionGetToOneRelated]? = nil, fieldsAppStoreReviewDetails: [FieldsAppStoreReviewDetails_buildsAppStoreVersionGetToOneRelated]? = nil, fieldsAppStoreVersionSubmissions: [FieldsAppStoreVersionSubmissions_buildsAppStoreVersionGetToOneRelated]? = nil, fieldsAppClipDefaultExperiences: [FieldsAppClipDefaultExperiences_buildsAppStoreVersionGetToOneRelated]? = nil, fieldsAppStoreVersionExperiments: [FieldsAppStoreVersionExperiments_buildsAppStoreVersionGetToOneRelated]? = nil, fieldsAlternativeDistributionPackages: [FieldsAlternativeDistributionPackages_buildsAppStoreVersionGetToOneRelated]? = nil, include: [Include_buildsAppStoreVersionGetToOneRelated]? = nil, limitAppStoreVersionLocalizations: Int? = nil, limitAppStoreVersionExperiments: Int? = nil, limitAppStoreVersionExperimentsV2: Int? = nil, completion: @escaping (_ data: AppStoreVersionResponse?, _ error: Error?) -> Void)
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

BuildsAPI.buildsAppStoreVersionGetToOneRelated(id: id, fieldsAppStoreVersions: fieldsAppStoreVersions, fieldsApps: fieldsApps, fieldsAgeRatingDeclarations: fieldsAgeRatingDeclarations, fieldsAppStoreVersionLocalizations: fieldsAppStoreVersionLocalizations, fieldsBuilds: fieldsBuilds, fieldsAppStoreVersionPhasedReleases: fieldsAppStoreVersionPhasedReleases, fieldsGameCenterAppVersions: fieldsGameCenterAppVersions, fieldsRoutingAppCoverages: fieldsRoutingAppCoverages, fieldsAppStoreReviewDetails: fieldsAppStoreReviewDetails, fieldsAppStoreVersionSubmissions: fieldsAppStoreVersionSubmissions, fieldsAppClipDefaultExperiences: fieldsAppClipDefaultExperiences, fieldsAppStoreVersionExperiments: fieldsAppStoreVersionExperiments, fieldsAlternativeDistributionPackages: fieldsAlternativeDistributionPackages, include: include, limitAppStoreVersionLocalizations: limitAppStoreVersionLocalizations, limitAppStoreVersionExperiments: limitAppStoreVersionExperiments, limitAppStoreVersionExperimentsV2: limitAppStoreVersionExperimentsV2) { (response, error) in
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

# **buildsBetaAppReviewSubmissionGetToOneRelated**
```swift
    open class func buildsBetaAppReviewSubmissionGetToOneRelated(id: String, fieldsBetaAppReviewSubmissions: [FieldsBetaAppReviewSubmissions_buildsBetaAppReviewSubmissionGetToOneRelated]? = nil, completion: @escaping (_ data: BetaAppReviewSubmissionWithoutIncludesResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let fieldsBetaAppReviewSubmissions = ["fieldsBetaAppReviewSubmissions_example"] // [String] | the fields to include for returned resources of type betaAppReviewSubmissions (optional)

BuildsAPI.buildsBetaAppReviewSubmissionGetToOneRelated(id: id, fieldsBetaAppReviewSubmissions: fieldsBetaAppReviewSubmissions) { (response, error) in
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
 **fieldsBetaAppReviewSubmissions** | [**[String]**](String.md) | the fields to include for returned resources of type betaAppReviewSubmissions | [optional] 

### Return type

[**BetaAppReviewSubmissionWithoutIncludesResponse**](BetaAppReviewSubmissionWithoutIncludesResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **buildsBetaBuildLocalizationsGetToManyRelated**
```swift
    open class func buildsBetaBuildLocalizationsGetToManyRelated(id: String, fieldsBetaBuildLocalizations: [FieldsBetaBuildLocalizations_buildsBetaBuildLocalizationsGetToManyRelated]? = nil, limit: Int? = nil, completion: @escaping (_ data: BetaBuildLocalizationsWithoutIncludesResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let fieldsBetaBuildLocalizations = ["fieldsBetaBuildLocalizations_example"] // [String] | the fields to include for returned resources of type betaBuildLocalizations (optional)
let limit = 987 // Int | maximum resources per page (optional)

BuildsAPI.buildsBetaBuildLocalizationsGetToManyRelated(id: id, fieldsBetaBuildLocalizations: fieldsBetaBuildLocalizations, limit: limit) { (response, error) in
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
 **fieldsBetaBuildLocalizations** | [**[String]**](String.md) | the fields to include for returned resources of type betaBuildLocalizations | [optional] 
 **limit** | **Int** | maximum resources per page | [optional] 

### Return type

[**BetaBuildLocalizationsWithoutIncludesResponse**](BetaBuildLocalizationsWithoutIncludesResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **buildsBetaBuildUsagesGetMetrics**
```swift
    open class func buildsBetaBuildUsagesGetMetrics(id: String, limit: Int? = nil, completion: @escaping (_ data: BetaBuildUsagesV1MetricResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let limit = 987 // Int | maximum number of groups to return per page (optional)

BuildsAPI.buildsBetaBuildUsagesGetMetrics(id: id, limit: limit) { (response, error) in
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

### Return type

[**BetaBuildUsagesV1MetricResponse**](BetaBuildUsagesV1MetricResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **buildsBetaGroupsCreateToManyRelationship**
```swift
    open class func buildsBetaGroupsCreateToManyRelationship(id: String, buildBetaGroupsLinkagesRequest: BuildBetaGroupsLinkagesRequest, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let buildBetaGroupsLinkagesRequest = BuildBetaGroupsLinkagesRequest(data: [App_relationships_betaGroups_data_inner(type: "type_example", id: "id_example")]) // BuildBetaGroupsLinkagesRequest | List of related linkages

BuildsAPI.buildsBetaGroupsCreateToManyRelationship(id: id, buildBetaGroupsLinkagesRequest: buildBetaGroupsLinkagesRequest) { (response, error) in
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
 **buildBetaGroupsLinkagesRequest** | [**BuildBetaGroupsLinkagesRequest**](BuildBetaGroupsLinkagesRequest.md) | List of related linkages | 

### Return type

Void (empty response body)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **buildsBetaGroupsDeleteToManyRelationship**
```swift
    open class func buildsBetaGroupsDeleteToManyRelationship(id: String, buildBetaGroupsLinkagesRequest: BuildBetaGroupsLinkagesRequest, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let buildBetaGroupsLinkagesRequest = BuildBetaGroupsLinkagesRequest(data: [App_relationships_betaGroups_data_inner(type: "type_example", id: "id_example")]) // BuildBetaGroupsLinkagesRequest | List of related linkages

BuildsAPI.buildsBetaGroupsDeleteToManyRelationship(id: id, buildBetaGroupsLinkagesRequest: buildBetaGroupsLinkagesRequest) { (response, error) in
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
 **buildBetaGroupsLinkagesRequest** | [**BuildBetaGroupsLinkagesRequest**](BuildBetaGroupsLinkagesRequest.md) | List of related linkages | 

### Return type

Void (empty response body)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **buildsBuildBetaDetailGetToOneRelated**
```swift
    open class func buildsBuildBetaDetailGetToOneRelated(id: String, fieldsBuildBetaDetails: [FieldsBuildBetaDetails_buildsBuildBetaDetailGetToOneRelated]? = nil, fieldsBuilds: [FieldsBuilds_buildsBuildBetaDetailGetToOneRelated]? = nil, include: [Include_buildsBuildBetaDetailGetToOneRelated]? = nil, completion: @escaping (_ data: BuildBetaDetailResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let fieldsBuildBetaDetails = ["fieldsBuildBetaDetails_example"] // [String] | the fields to include for returned resources of type buildBetaDetails (optional)
let fieldsBuilds = ["fieldsBuilds_example"] // [String] | the fields to include for returned resources of type builds (optional)
let include = ["include_example"] // [String] | comma-separated list of relationships to include (optional)

BuildsAPI.buildsBuildBetaDetailGetToOneRelated(id: id, fieldsBuildBetaDetails: fieldsBuildBetaDetails, fieldsBuilds: fieldsBuilds, include: include) { (response, error) in
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
 **fieldsBuildBetaDetails** | [**[String]**](String.md) | the fields to include for returned resources of type buildBetaDetails | [optional] 
 **fieldsBuilds** | [**[String]**](String.md) | the fields to include for returned resources of type builds | [optional] 
 **include** | [**[String]**](String.md) | comma-separated list of relationships to include | [optional] 

### Return type

[**BuildBetaDetailResponse**](BuildBetaDetailResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **buildsDiagnosticSignaturesGetToManyRelated**
```swift
    open class func buildsDiagnosticSignaturesGetToManyRelated(id: String, filterDiagnosticType: [FilterDiagnosticType_buildsDiagnosticSignaturesGetToManyRelated]? = nil, fieldsDiagnosticSignatures: [FieldsDiagnosticSignatures_buildsDiagnosticSignaturesGetToManyRelated]? = nil, limit: Int? = nil, completion: @escaping (_ data: DiagnosticSignaturesResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let filterDiagnosticType = ["filterDiagnosticType_example"] // [String] | filter by attribute 'diagnosticType' (optional)
let fieldsDiagnosticSignatures = ["fieldsDiagnosticSignatures_example"] // [String] | the fields to include for returned resources of type diagnosticSignatures (optional)
let limit = 987 // Int | maximum resources per page (optional)

BuildsAPI.buildsDiagnosticSignaturesGetToManyRelated(id: id, filterDiagnosticType: filterDiagnosticType, fieldsDiagnosticSignatures: fieldsDiagnosticSignatures, limit: limit) { (response, error) in
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
 **filterDiagnosticType** | [**[String]**](String.md) | filter by attribute &#39;diagnosticType&#39; | [optional] 
 **fieldsDiagnosticSignatures** | [**[String]**](String.md) | the fields to include for returned resources of type diagnosticSignatures | [optional] 
 **limit** | **Int** | maximum resources per page | [optional] 

### Return type

[**DiagnosticSignaturesResponse**](DiagnosticSignaturesResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **buildsGetCollection**
```swift
    open class func buildsGetCollection(filterVersion: [String]? = nil, filterExpired: [String]? = nil, filterProcessingState: [FilterProcessingState_buildsGetCollection]? = nil, filterBetaAppReviewSubmissionBetaReviewState: [FilterBetaAppReviewSubmissionBetaReviewState_buildsGetCollection]? = nil, filterUsesNonExemptEncryption: [String]? = nil, filterPreReleaseVersionVersion: [String]? = nil, filterPreReleaseVersionPlatform: [FilterPreReleaseVersionPlatform_buildsGetCollection]? = nil, filterBuildAudienceType: [FilterBuildAudienceType_buildsGetCollection]? = nil, filterPreReleaseVersion: [String]? = nil, filterApp: [String]? = nil, filterBetaGroups: [String]? = nil, filterAppStoreVersion: [String]? = nil, filterId: [String]? = nil, sort: [Sort_buildsGetCollection]? = nil, fieldsBuilds: [FieldsBuilds_buildsGetCollection]? = nil, fieldsPreReleaseVersions: [FieldsPreReleaseVersions_buildsGetCollection]? = nil, fieldsBetaTesters: [FieldsBetaTesters_buildsGetCollection]? = nil, fieldsBetaBuildLocalizations: [FieldsBetaBuildLocalizations_buildsGetCollection]? = nil, fieldsAppEncryptionDeclarations: [FieldsAppEncryptionDeclarations_buildsGetCollection]? = nil, fieldsBetaAppReviewSubmissions: [FieldsBetaAppReviewSubmissions_buildsGetCollection]? = nil, fieldsApps: [FieldsApps_buildsGetCollection]? = nil, fieldsBuildBetaDetails: [FieldsBuildBetaDetails_buildsGetCollection]? = nil, fieldsAppStoreVersions: [FieldsAppStoreVersions_buildsGetCollection]? = nil, fieldsBuildIcons: [FieldsBuildIcons_buildsGetCollection]? = nil, limit: Int? = nil, include: [Include_buildsGetCollection]? = nil, limitBetaBuildLocalizations: Int? = nil, limitBetaGroups: Int? = nil, limitBuildBundles: Int? = nil, limitIcons: Int? = nil, limitIndividualTesters: Int? = nil, completion: @escaping (_ data: BuildsResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let filterVersion = ["inner_example"] // [String] | filter by attribute 'version' (optional)
let filterExpired = ["inner_example"] // [String] | filter by attribute 'expired' (optional)
let filterProcessingState = ["filterProcessingState_example"] // [String] | filter by attribute 'processingState' (optional)
let filterBetaAppReviewSubmissionBetaReviewState = ["filterBetaAppReviewSubmissionBetaReviewState_example"] // [String] | filter by attribute 'betaAppReviewSubmission.betaReviewState' (optional)
let filterUsesNonExemptEncryption = ["inner_example"] // [String] | filter by attribute 'usesNonExemptEncryption' (optional)
let filterPreReleaseVersionVersion = ["inner_example"] // [String] | filter by attribute 'preReleaseVersion.version' (optional)
let filterPreReleaseVersionPlatform = ["filterPreReleaseVersionPlatform_example"] // [String] | filter by attribute 'preReleaseVersion.platform' (optional)
let filterBuildAudienceType = ["filterBuildAudienceType_example"] // [String] | filter by attribute 'buildAudienceType' (optional)
let filterPreReleaseVersion = ["inner_example"] // [String] | filter by id(s) of related 'preReleaseVersion' (optional)
let filterApp = ["inner_example"] // [String] | filter by id(s) of related 'app' (optional)
let filterBetaGroups = ["inner_example"] // [String] | filter by id(s) of related 'betaGroups' (optional)
let filterAppStoreVersion = ["inner_example"] // [String] | filter by id(s) of related 'appStoreVersion' (optional)
let filterId = ["inner_example"] // [String] | filter by id(s) (optional)
let sort = ["sort_example"] // [String] | comma-separated list of sort expressions; resources will be sorted as specified (optional)
let fieldsBuilds = ["fieldsBuilds_example"] // [String] | the fields to include for returned resources of type builds (optional)
let fieldsPreReleaseVersions = ["fieldsPreReleaseVersions_example"] // [String] | the fields to include for returned resources of type preReleaseVersions (optional)
let fieldsBetaTesters = ["fieldsBetaTesters_example"] // [String] | the fields to include for returned resources of type betaTesters (optional)
let fieldsBetaBuildLocalizations = ["fieldsBetaBuildLocalizations_example"] // [String] | the fields to include for returned resources of type betaBuildLocalizations (optional)
let fieldsAppEncryptionDeclarations = ["fieldsAppEncryptionDeclarations_example"] // [String] | the fields to include for returned resources of type appEncryptionDeclarations (optional)
let fieldsBetaAppReviewSubmissions = ["fieldsBetaAppReviewSubmissions_example"] // [String] | the fields to include for returned resources of type betaAppReviewSubmissions (optional)
let fieldsApps = ["fieldsApps_example"] // [String] | the fields to include for returned resources of type apps (optional)
let fieldsBuildBetaDetails = ["fieldsBuildBetaDetails_example"] // [String] | the fields to include for returned resources of type buildBetaDetails (optional)
let fieldsAppStoreVersions = ["fieldsAppStoreVersions_example"] // [String] | the fields to include for returned resources of type appStoreVersions (optional)
let fieldsBuildIcons = ["fieldsBuildIcons_example"] // [String] | the fields to include for returned resources of type buildIcons (optional)
let limit = 987 // Int | maximum resources per page (optional)
let include = ["include_example"] // [String] | comma-separated list of relationships to include (optional)
let limitBetaBuildLocalizations = 987 // Int | maximum number of related betaBuildLocalizations returned (when they are included) (optional)
let limitBetaGroups = 987 // Int | maximum number of related betaGroups returned (when they are included) (optional)
let limitBuildBundles = 987 // Int | maximum number of related buildBundles returned (when they are included) (optional)
let limitIcons = 987 // Int | maximum number of related icons returned (when they are included) (optional)
let limitIndividualTesters = 987 // Int | maximum number of related individualTesters returned (when they are included) (optional)

BuildsAPI.buildsGetCollection(filterVersion: filterVersion, filterExpired: filterExpired, filterProcessingState: filterProcessingState, filterBetaAppReviewSubmissionBetaReviewState: filterBetaAppReviewSubmissionBetaReviewState, filterUsesNonExemptEncryption: filterUsesNonExemptEncryption, filterPreReleaseVersionVersion: filterPreReleaseVersionVersion, filterPreReleaseVersionPlatform: filterPreReleaseVersionPlatform, filterBuildAudienceType: filterBuildAudienceType, filterPreReleaseVersion: filterPreReleaseVersion, filterApp: filterApp, filterBetaGroups: filterBetaGroups, filterAppStoreVersion: filterAppStoreVersion, filterId: filterId, sort: sort, fieldsBuilds: fieldsBuilds, fieldsPreReleaseVersions: fieldsPreReleaseVersions, fieldsBetaTesters: fieldsBetaTesters, fieldsBetaBuildLocalizations: fieldsBetaBuildLocalizations, fieldsAppEncryptionDeclarations: fieldsAppEncryptionDeclarations, fieldsBetaAppReviewSubmissions: fieldsBetaAppReviewSubmissions, fieldsApps: fieldsApps, fieldsBuildBetaDetails: fieldsBuildBetaDetails, fieldsAppStoreVersions: fieldsAppStoreVersions, fieldsBuildIcons: fieldsBuildIcons, limit: limit, include: include, limitBetaBuildLocalizations: limitBetaBuildLocalizations, limitBetaGroups: limitBetaGroups, limitBuildBundles: limitBuildBundles, limitIcons: limitIcons, limitIndividualTesters: limitIndividualTesters) { (response, error) in
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
 **filterVersion** | [**[String]**](String.md) | filter by attribute &#39;version&#39; | [optional] 
 **filterExpired** | [**[String]**](String.md) | filter by attribute &#39;expired&#39; | [optional] 
 **filterProcessingState** | [**[String]**](String.md) | filter by attribute &#39;processingState&#39; | [optional] 
 **filterBetaAppReviewSubmissionBetaReviewState** | [**[String]**](String.md) | filter by attribute &#39;betaAppReviewSubmission.betaReviewState&#39; | [optional] 
 **filterUsesNonExemptEncryption** | [**[String]**](String.md) | filter by attribute &#39;usesNonExemptEncryption&#39; | [optional] 
 **filterPreReleaseVersionVersion** | [**[String]**](String.md) | filter by attribute &#39;preReleaseVersion.version&#39; | [optional] 
 **filterPreReleaseVersionPlatform** | [**[String]**](String.md) | filter by attribute &#39;preReleaseVersion.platform&#39; | [optional] 
 **filterBuildAudienceType** | [**[String]**](String.md) | filter by attribute &#39;buildAudienceType&#39; | [optional] 
 **filterPreReleaseVersion** | [**[String]**](String.md) | filter by id(s) of related &#39;preReleaseVersion&#39; | [optional] 
 **filterApp** | [**[String]**](String.md) | filter by id(s) of related &#39;app&#39; | [optional] 
 **filterBetaGroups** | [**[String]**](String.md) | filter by id(s) of related &#39;betaGroups&#39; | [optional] 
 **filterAppStoreVersion** | [**[String]**](String.md) | filter by id(s) of related &#39;appStoreVersion&#39; | [optional] 
 **filterId** | [**[String]**](String.md) | filter by id(s) | [optional] 
 **sort** | [**[String]**](String.md) | comma-separated list of sort expressions; resources will be sorted as specified | [optional] 
 **fieldsBuilds** | [**[String]**](String.md) | the fields to include for returned resources of type builds | [optional] 
 **fieldsPreReleaseVersions** | [**[String]**](String.md) | the fields to include for returned resources of type preReleaseVersions | [optional] 
 **fieldsBetaTesters** | [**[String]**](String.md) | the fields to include for returned resources of type betaTesters | [optional] 
 **fieldsBetaBuildLocalizations** | [**[String]**](String.md) | the fields to include for returned resources of type betaBuildLocalizations | [optional] 
 **fieldsAppEncryptionDeclarations** | [**[String]**](String.md) | the fields to include for returned resources of type appEncryptionDeclarations | [optional] 
 **fieldsBetaAppReviewSubmissions** | [**[String]**](String.md) | the fields to include for returned resources of type betaAppReviewSubmissions | [optional] 
 **fieldsApps** | [**[String]**](String.md) | the fields to include for returned resources of type apps | [optional] 
 **fieldsBuildBetaDetails** | [**[String]**](String.md) | the fields to include for returned resources of type buildBetaDetails | [optional] 
 **fieldsAppStoreVersions** | [**[String]**](String.md) | the fields to include for returned resources of type appStoreVersions | [optional] 
 **fieldsBuildIcons** | [**[String]**](String.md) | the fields to include for returned resources of type buildIcons | [optional] 
 **limit** | **Int** | maximum resources per page | [optional] 
 **include** | [**[String]**](String.md) | comma-separated list of relationships to include | [optional] 
 **limitBetaBuildLocalizations** | **Int** | maximum number of related betaBuildLocalizations returned (when they are included) | [optional] 
 **limitBetaGroups** | **Int** | maximum number of related betaGroups returned (when they are included) | [optional] 
 **limitBuildBundles** | **Int** | maximum number of related buildBundles returned (when they are included) | [optional] 
 **limitIcons** | **Int** | maximum number of related icons returned (when they are included) | [optional] 
 **limitIndividualTesters** | **Int** | maximum number of related individualTesters returned (when they are included) | [optional] 

### Return type

[**BuildsResponse**](BuildsResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **buildsGetInstance**
```swift
    open class func buildsGetInstance(id: String, fieldsBuilds: [FieldsBuilds_buildsGetInstance]? = nil, fieldsPreReleaseVersions: [FieldsPreReleaseVersions_buildsGetInstance]? = nil, fieldsBetaTesters: [FieldsBetaTesters_buildsGetInstance]? = nil, fieldsBetaBuildLocalizations: [FieldsBetaBuildLocalizations_buildsGetInstance]? = nil, fieldsAppEncryptionDeclarations: [FieldsAppEncryptionDeclarations_buildsGetInstance]? = nil, fieldsBetaAppReviewSubmissions: [FieldsBetaAppReviewSubmissions_buildsGetInstance]? = nil, fieldsApps: [FieldsApps_buildsGetInstance]? = nil, fieldsBuildBetaDetails: [FieldsBuildBetaDetails_buildsGetInstance]? = nil, fieldsAppStoreVersions: [FieldsAppStoreVersions_buildsGetInstance]? = nil, fieldsBuildIcons: [FieldsBuildIcons_buildsGetInstance]? = nil, include: [Include_buildsGetInstance]? = nil, limitBetaBuildLocalizations: Int? = nil, limitBetaGroups: Int? = nil, limitBuildBundles: Int? = nil, limitIcons: Int? = nil, limitIndividualTesters: Int? = nil, completion: @escaping (_ data: BuildResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let fieldsBuilds = ["fieldsBuilds_example"] // [String] | the fields to include for returned resources of type builds (optional)
let fieldsPreReleaseVersions = ["fieldsPreReleaseVersions_example"] // [String] | the fields to include for returned resources of type preReleaseVersions (optional)
let fieldsBetaTesters = ["fieldsBetaTesters_example"] // [String] | the fields to include for returned resources of type betaTesters (optional)
let fieldsBetaBuildLocalizations = ["fieldsBetaBuildLocalizations_example"] // [String] | the fields to include for returned resources of type betaBuildLocalizations (optional)
let fieldsAppEncryptionDeclarations = ["fieldsAppEncryptionDeclarations_example"] // [String] | the fields to include for returned resources of type appEncryptionDeclarations (optional)
let fieldsBetaAppReviewSubmissions = ["fieldsBetaAppReviewSubmissions_example"] // [String] | the fields to include for returned resources of type betaAppReviewSubmissions (optional)
let fieldsApps = ["fieldsApps_example"] // [String] | the fields to include for returned resources of type apps (optional)
let fieldsBuildBetaDetails = ["fieldsBuildBetaDetails_example"] // [String] | the fields to include for returned resources of type buildBetaDetails (optional)
let fieldsAppStoreVersions = ["fieldsAppStoreVersions_example"] // [String] | the fields to include for returned resources of type appStoreVersions (optional)
let fieldsBuildIcons = ["fieldsBuildIcons_example"] // [String] | the fields to include for returned resources of type buildIcons (optional)
let include = ["include_example"] // [String] | comma-separated list of relationships to include (optional)
let limitBetaBuildLocalizations = 987 // Int | maximum number of related betaBuildLocalizations returned (when they are included) (optional)
let limitBetaGroups = 987 // Int | maximum number of related betaGroups returned (when they are included) (optional)
let limitBuildBundles = 987 // Int | maximum number of related buildBundles returned (when they are included) (optional)
let limitIcons = 987 // Int | maximum number of related icons returned (when they are included) (optional)
let limitIndividualTesters = 987 // Int | maximum number of related individualTesters returned (when they are included) (optional)

BuildsAPI.buildsGetInstance(id: id, fieldsBuilds: fieldsBuilds, fieldsPreReleaseVersions: fieldsPreReleaseVersions, fieldsBetaTesters: fieldsBetaTesters, fieldsBetaBuildLocalizations: fieldsBetaBuildLocalizations, fieldsAppEncryptionDeclarations: fieldsAppEncryptionDeclarations, fieldsBetaAppReviewSubmissions: fieldsBetaAppReviewSubmissions, fieldsApps: fieldsApps, fieldsBuildBetaDetails: fieldsBuildBetaDetails, fieldsAppStoreVersions: fieldsAppStoreVersions, fieldsBuildIcons: fieldsBuildIcons, include: include, limitBetaBuildLocalizations: limitBetaBuildLocalizations, limitBetaGroups: limitBetaGroups, limitBuildBundles: limitBuildBundles, limitIcons: limitIcons, limitIndividualTesters: limitIndividualTesters) { (response, error) in
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
 **fieldsPreReleaseVersions** | [**[String]**](String.md) | the fields to include for returned resources of type preReleaseVersions | [optional] 
 **fieldsBetaTesters** | [**[String]**](String.md) | the fields to include for returned resources of type betaTesters | [optional] 
 **fieldsBetaBuildLocalizations** | [**[String]**](String.md) | the fields to include for returned resources of type betaBuildLocalizations | [optional] 
 **fieldsAppEncryptionDeclarations** | [**[String]**](String.md) | the fields to include for returned resources of type appEncryptionDeclarations | [optional] 
 **fieldsBetaAppReviewSubmissions** | [**[String]**](String.md) | the fields to include for returned resources of type betaAppReviewSubmissions | [optional] 
 **fieldsApps** | [**[String]**](String.md) | the fields to include for returned resources of type apps | [optional] 
 **fieldsBuildBetaDetails** | [**[String]**](String.md) | the fields to include for returned resources of type buildBetaDetails | [optional] 
 **fieldsAppStoreVersions** | [**[String]**](String.md) | the fields to include for returned resources of type appStoreVersions | [optional] 
 **fieldsBuildIcons** | [**[String]**](String.md) | the fields to include for returned resources of type buildIcons | [optional] 
 **include** | [**[String]**](String.md) | comma-separated list of relationships to include | [optional] 
 **limitBetaBuildLocalizations** | **Int** | maximum number of related betaBuildLocalizations returned (when they are included) | [optional] 
 **limitBetaGroups** | **Int** | maximum number of related betaGroups returned (when they are included) | [optional] 
 **limitBuildBundles** | **Int** | maximum number of related buildBundles returned (when they are included) | [optional] 
 **limitIcons** | **Int** | maximum number of related icons returned (when they are included) | [optional] 
 **limitIndividualTesters** | **Int** | maximum number of related individualTesters returned (when they are included) | [optional] 

### Return type

[**BuildResponse**](BuildResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **buildsIconsGetToManyRelated**
```swift
    open class func buildsIconsGetToManyRelated(id: String, fieldsBuildIcons: [FieldsBuildIcons_buildsIconsGetToManyRelated]? = nil, limit: Int? = nil, completion: @escaping (_ data: BuildIconsWithoutIncludesResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let fieldsBuildIcons = ["fieldsBuildIcons_example"] // [String] | the fields to include for returned resources of type buildIcons (optional)
let limit = 987 // Int | maximum resources per page (optional)

BuildsAPI.buildsIconsGetToManyRelated(id: id, fieldsBuildIcons: fieldsBuildIcons, limit: limit) { (response, error) in
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
 **fieldsBuildIcons** | [**[String]**](String.md) | the fields to include for returned resources of type buildIcons | [optional] 
 **limit** | **Int** | maximum resources per page | [optional] 

### Return type

[**BuildIconsWithoutIncludesResponse**](BuildIconsWithoutIncludesResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **buildsIndividualTestersCreateToManyRelationship**
```swift
    open class func buildsIndividualTestersCreateToManyRelationship(id: String, buildIndividualTestersLinkagesRequest: BuildIndividualTestersLinkagesRequest, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let buildIndividualTestersLinkagesRequest = BuildIndividualTestersLinkagesRequest(data: [BetaGroup_relationships_betaTesters_data_inner(type: "type_example", id: "id_example")]) // BuildIndividualTestersLinkagesRequest | List of related linkages

BuildsAPI.buildsIndividualTestersCreateToManyRelationship(id: id, buildIndividualTestersLinkagesRequest: buildIndividualTestersLinkagesRequest) { (response, error) in
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
 **buildIndividualTestersLinkagesRequest** | [**BuildIndividualTestersLinkagesRequest**](BuildIndividualTestersLinkagesRequest.md) | List of related linkages | 

### Return type

Void (empty response body)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **buildsIndividualTestersDeleteToManyRelationship**
```swift
    open class func buildsIndividualTestersDeleteToManyRelationship(id: String, buildIndividualTestersLinkagesRequest: BuildIndividualTestersLinkagesRequest, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let buildIndividualTestersLinkagesRequest = BuildIndividualTestersLinkagesRequest(data: [BetaGroup_relationships_betaTesters_data_inner(type: "type_example", id: "id_example")]) // BuildIndividualTestersLinkagesRequest | List of related linkages

BuildsAPI.buildsIndividualTestersDeleteToManyRelationship(id: id, buildIndividualTestersLinkagesRequest: buildIndividualTestersLinkagesRequest) { (response, error) in
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
 **buildIndividualTestersLinkagesRequest** | [**BuildIndividualTestersLinkagesRequest**](BuildIndividualTestersLinkagesRequest.md) | List of related linkages | 

### Return type

Void (empty response body)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **buildsIndividualTestersGetToManyRelated**
```swift
    open class func buildsIndividualTestersGetToManyRelated(id: String, fieldsBetaTesters: [FieldsBetaTesters_buildsIndividualTestersGetToManyRelated]? = nil, limit: Int? = nil, completion: @escaping (_ data: BetaTestersWithoutIncludesResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let fieldsBetaTesters = ["fieldsBetaTesters_example"] // [String] | the fields to include for returned resources of type betaTesters (optional)
let limit = 987 // Int | maximum resources per page (optional)

BuildsAPI.buildsIndividualTestersGetToManyRelated(id: id, fieldsBetaTesters: fieldsBetaTesters, limit: limit) { (response, error) in
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

# **buildsIndividualTestersGetToManyRelationship**
```swift
    open class func buildsIndividualTestersGetToManyRelationship(id: String, limit: Int? = nil, completion: @escaping (_ data: BuildIndividualTestersLinkagesResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let limit = 987 // Int | maximum resources per page (optional)

BuildsAPI.buildsIndividualTestersGetToManyRelationship(id: id, limit: limit) { (response, error) in
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

[**BuildIndividualTestersLinkagesResponse**](BuildIndividualTestersLinkagesResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **buildsPerfPowerMetricsGetToManyRelated**
```swift
    open class func buildsPerfPowerMetricsGetToManyRelated(id: String, filterPlatform: [FilterPlatform_buildsPerfPowerMetricsGetToManyRelated]? = nil, filterMetricType: [FilterMetricType_buildsPerfPowerMetricsGetToManyRelated]? = nil, filterDeviceType: [String]? = nil, completion: @escaping (_ data: XcodeMetrics?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let filterPlatform = ["filterPlatform_example"] // [String] | filter by attribute 'platform' (optional)
let filterMetricType = ["filterMetricType_example"] // [String] | filter by attribute 'metricType' (optional)
let filterDeviceType = ["inner_example"] // [String] | filter by attribute 'deviceType' (optional)

BuildsAPI.buildsPerfPowerMetricsGetToManyRelated(id: id, filterPlatform: filterPlatform, filterMetricType: filterMetricType, filterDeviceType: filterDeviceType) { (response, error) in
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
 **filterMetricType** | [**[String]**](String.md) | filter by attribute &#39;metricType&#39; | [optional] 
 **filterDeviceType** | [**[String]**](String.md) | filter by attribute &#39;deviceType&#39; | [optional] 

### Return type

[**XcodeMetrics**](XcodeMetrics.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/vnd.apple.xcode-metrics+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **buildsPreReleaseVersionGetToOneRelated**
```swift
    open class func buildsPreReleaseVersionGetToOneRelated(id: String, fieldsPreReleaseVersions: [FieldsPreReleaseVersions_buildsPreReleaseVersionGetToOneRelated]? = nil, completion: @escaping (_ data: PrereleaseVersionWithoutIncludesResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let fieldsPreReleaseVersions = ["fieldsPreReleaseVersions_example"] // [String] | the fields to include for returned resources of type preReleaseVersions (optional)

BuildsAPI.buildsPreReleaseVersionGetToOneRelated(id: id, fieldsPreReleaseVersions: fieldsPreReleaseVersions) { (response, error) in
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
 **fieldsPreReleaseVersions** | [**[String]**](String.md) | the fields to include for returned resources of type preReleaseVersions | [optional] 

### Return type

[**PrereleaseVersionWithoutIncludesResponse**](PrereleaseVersionWithoutIncludesResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **buildsUpdateInstance**
```swift
    open class func buildsUpdateInstance(id: String, buildUpdateRequest: BuildUpdateRequest, completion: @escaping (_ data: BuildResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let buildUpdateRequest = BuildUpdateRequest(data: BuildUpdateRequest_data(type: "type_example", id: "id_example", attributes: BuildUpdateRequest_data_attributes(expired: false, usesNonExemptEncryption: false), relationships: BuildUpdateRequest_data_relationships(appEncryptionDeclaration: BuildUpdateRequest_data_relationships_appEncryptionDeclaration(data: AppEncryptionDeclarationDocumentCreateRequest_data_relationships_appEncryptionDeclaration_data(type: "type_example", id: "id_example"))))) // BuildUpdateRequest | Build representation

BuildsAPI.buildsUpdateInstance(id: id, buildUpdateRequest: buildUpdateRequest) { (response, error) in
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
 **buildUpdateRequest** | [**BuildUpdateRequest**](BuildUpdateRequest.md) | Build representation | 

### Return type

[**BuildResponse**](BuildResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

