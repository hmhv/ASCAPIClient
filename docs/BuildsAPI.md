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
    open class func buildsAppEncryptionDeclarationGetToOneRelated(id: String, fieldsAppEncryptionDeclarations: [FieldsAppEncryptionDeclarations_buildsAppEncryptionDeclarationGetToOneRelated]? = nil, completion: @escaping (_ data: AppEncryptionDeclarationResponse?, _ error: Error?) -> Void)
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

[**AppEncryptionDeclarationResponse**](AppEncryptionDeclarationResponse.md)

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
let buildAppEncryptionDeclarationLinkageRequest = BuildAppEncryptionDeclarationLinkageRequest(data: Build_relationships_appEncryptionDeclaration_data(type: "type_example", id: "id_example")) // BuildAppEncryptionDeclarationLinkageRequest | Related linkage

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
    open class func buildsAppGetToOneRelated(id: String, fieldsApps: [FieldsApps_buildsAppGetToOneRelated]? = nil, completion: @escaping (_ data: AppResponse?, _ error: Error?) -> Void)
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

[**AppResponse**](AppResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **buildsAppStoreVersionGetToOneRelated**
```swift
    open class func buildsAppStoreVersionGetToOneRelated(id: String, fieldsAppStoreVersionExperiments: [FieldsAppStoreVersionExperiments_buildsAppStoreVersionGetToOneRelated]? = nil, fieldsAgeRatingDeclarations: [FieldsAgeRatingDeclarations_buildsAppStoreVersionGetToOneRelated]? = nil, fieldsAppStoreVersionSubmissions: [FieldsAppStoreVersionSubmissions_buildsAppStoreVersionGetToOneRelated]? = nil, fieldsAppStoreReviewDetails: [FieldsAppStoreReviewDetails_buildsAppStoreVersionGetToOneRelated]? = nil, fieldsAppStoreVersions: [FieldsAppStoreVersions_buildsAppStoreVersionGetToOneRelated]? = nil, fieldsIdfaDeclarations: [FieldsIdfaDeclarations_buildsAppStoreVersionGetToOneRelated]? = nil, fieldsApps: [FieldsApps_buildsAppStoreVersionGetToOneRelated]? = nil, fieldsRoutingAppCoverages: [FieldsRoutingAppCoverages_buildsAppStoreVersionGetToOneRelated]? = nil, fieldsAppClipDefaultExperiences: [FieldsAppClipDefaultExperiences_buildsAppStoreVersionGetToOneRelated]? = nil, fieldsAppStoreVersionPhasedReleases: [FieldsAppStoreVersionPhasedReleases_buildsAppStoreVersionGetToOneRelated]? = nil, fieldsBuilds: [FieldsBuilds_buildsAppStoreVersionGetToOneRelated]? = nil, fieldsAppStoreVersionLocalizations: [FieldsAppStoreVersionLocalizations_buildsAppStoreVersionGetToOneRelated]? = nil, limitAppStoreVersionLocalizations: Int? = nil, limitAppStoreVersionExperiments: Int? = nil, include: [Include_buildsAppStoreVersionGetToOneRelated]? = nil, completion: @escaping (_ data: AppStoreVersionResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let fieldsAppStoreVersionExperiments = ["fieldsAppStoreVersionExperiments_example"] // [String] | the fields to include for returned resources of type appStoreVersionExperiments (optional)
let fieldsAgeRatingDeclarations = ["fieldsAgeRatingDeclarations_example"] // [String] | the fields to include for returned resources of type ageRatingDeclarations (optional)
let fieldsAppStoreVersionSubmissions = ["fieldsAppStoreVersionSubmissions_example"] // [String] | the fields to include for returned resources of type appStoreVersionSubmissions (optional)
let fieldsAppStoreReviewDetails = ["fieldsAppStoreReviewDetails_example"] // [String] | the fields to include for returned resources of type appStoreReviewDetails (optional)
let fieldsAppStoreVersions = ["fieldsAppStoreVersions_example"] // [String] | the fields to include for returned resources of type appStoreVersions (optional)
let fieldsIdfaDeclarations = ["fieldsIdfaDeclarations_example"] // [String] | the fields to include for returned resources of type idfaDeclarations (optional)
let fieldsApps = ["fieldsApps_example"] // [String] | the fields to include for returned resources of type apps (optional)
let fieldsRoutingAppCoverages = ["fieldsRoutingAppCoverages_example"] // [String] | the fields to include for returned resources of type routingAppCoverages (optional)
let fieldsAppClipDefaultExperiences = ["fieldsAppClipDefaultExperiences_example"] // [String] | the fields to include for returned resources of type appClipDefaultExperiences (optional)
let fieldsAppStoreVersionPhasedReleases = ["fieldsAppStoreVersionPhasedReleases_example"] // [String] | the fields to include for returned resources of type appStoreVersionPhasedReleases (optional)
let fieldsBuilds = ["fieldsBuilds_example"] // [String] | the fields to include for returned resources of type builds (optional)
let fieldsAppStoreVersionLocalizations = ["fieldsAppStoreVersionLocalizations_example"] // [String] | the fields to include for returned resources of type appStoreVersionLocalizations (optional)
let limitAppStoreVersionLocalizations = 987 // Int | maximum number of related appStoreVersionLocalizations returned (when they are included) (optional)
let limitAppStoreVersionExperiments = 987 // Int | maximum number of related appStoreVersionExperiments returned (when they are included) (optional)
let include = ["include_example"] // [String] | comma-separated list of relationships to include (optional)

BuildsAPI.buildsAppStoreVersionGetToOneRelated(id: id, fieldsAppStoreVersionExperiments: fieldsAppStoreVersionExperiments, fieldsAgeRatingDeclarations: fieldsAgeRatingDeclarations, fieldsAppStoreVersionSubmissions: fieldsAppStoreVersionSubmissions, fieldsAppStoreReviewDetails: fieldsAppStoreReviewDetails, fieldsAppStoreVersions: fieldsAppStoreVersions, fieldsIdfaDeclarations: fieldsIdfaDeclarations, fieldsApps: fieldsApps, fieldsRoutingAppCoverages: fieldsRoutingAppCoverages, fieldsAppClipDefaultExperiences: fieldsAppClipDefaultExperiences, fieldsAppStoreVersionPhasedReleases: fieldsAppStoreVersionPhasedReleases, fieldsBuilds: fieldsBuilds, fieldsAppStoreVersionLocalizations: fieldsAppStoreVersionLocalizations, limitAppStoreVersionLocalizations: limitAppStoreVersionLocalizations, limitAppStoreVersionExperiments: limitAppStoreVersionExperiments, include: include) { (response, error) in
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
 **fieldsAppStoreVersionExperiments** | [**[String]**](String.md) | the fields to include for returned resources of type appStoreVersionExperiments | [optional] 
 **fieldsAgeRatingDeclarations** | [**[String]**](String.md) | the fields to include for returned resources of type ageRatingDeclarations | [optional] 
 **fieldsAppStoreVersionSubmissions** | [**[String]**](String.md) | the fields to include for returned resources of type appStoreVersionSubmissions | [optional] 
 **fieldsAppStoreReviewDetails** | [**[String]**](String.md) | the fields to include for returned resources of type appStoreReviewDetails | [optional] 
 **fieldsAppStoreVersions** | [**[String]**](String.md) | the fields to include for returned resources of type appStoreVersions | [optional] 
 **fieldsIdfaDeclarations** | [**[String]**](String.md) | the fields to include for returned resources of type idfaDeclarations | [optional] 
 **fieldsApps** | [**[String]**](String.md) | the fields to include for returned resources of type apps | [optional] 
 **fieldsRoutingAppCoverages** | [**[String]**](String.md) | the fields to include for returned resources of type routingAppCoverages | [optional] 
 **fieldsAppClipDefaultExperiences** | [**[String]**](String.md) | the fields to include for returned resources of type appClipDefaultExperiences | [optional] 
 **fieldsAppStoreVersionPhasedReleases** | [**[String]**](String.md) | the fields to include for returned resources of type appStoreVersionPhasedReleases | [optional] 
 **fieldsBuilds** | [**[String]**](String.md) | the fields to include for returned resources of type builds | [optional] 
 **fieldsAppStoreVersionLocalizations** | [**[String]**](String.md) | the fields to include for returned resources of type appStoreVersionLocalizations | [optional] 
 **limitAppStoreVersionLocalizations** | **Int** | maximum number of related appStoreVersionLocalizations returned (when they are included) | [optional] 
 **limitAppStoreVersionExperiments** | **Int** | maximum number of related appStoreVersionExperiments returned (when they are included) | [optional] 
 **include** | [**[String]**](String.md) | comma-separated list of relationships to include | [optional] 

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
    open class func buildsBetaAppReviewSubmissionGetToOneRelated(id: String, fieldsBetaAppReviewSubmissions: [FieldsBetaAppReviewSubmissions_buildsBetaAppReviewSubmissionGetToOneRelated]? = nil, completion: @escaping (_ data: BetaAppReviewSubmissionResponse?, _ error: Error?) -> Void)
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

[**BetaAppReviewSubmissionResponse**](BetaAppReviewSubmissionResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **buildsBetaBuildLocalizationsGetToManyRelated**
```swift
    open class func buildsBetaBuildLocalizationsGetToManyRelated(id: String, fieldsBetaBuildLocalizations: [FieldsBetaBuildLocalizations_buildsBetaBuildLocalizationsGetToManyRelated]? = nil, limit: Int? = nil, completion: @escaping (_ data: BetaBuildLocalizationsResponse?, _ error: Error?) -> Void)
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

[**BetaBuildLocalizationsResponse**](BetaBuildLocalizationsResponse.md)

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
    open class func buildsBuildBetaDetailGetToOneRelated(id: String, fieldsBuildBetaDetails: [FieldsBuildBetaDetails_buildsBuildBetaDetailGetToOneRelated]? = nil, completion: @escaping (_ data: BuildBetaDetailResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let fieldsBuildBetaDetails = ["fieldsBuildBetaDetails_example"] // [String] | the fields to include for returned resources of type buildBetaDetails (optional)

BuildsAPI.buildsBuildBetaDetailGetToOneRelated(id: id, fieldsBuildBetaDetails: fieldsBuildBetaDetails) { (response, error) in
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
    open class func buildsGetCollection(filterBetaAppReviewSubmissionBetaReviewState: [FilterBetaAppReviewSubmissionBetaReviewState_buildsGetCollection]? = nil, filterBuildAudienceType: [FilterBuildAudienceType_buildsGetCollection]? = nil, filterExpired: [String]? = nil, filterPreReleaseVersionPlatform: [FilterPreReleaseVersionPlatform_buildsGetCollection]? = nil, filterPreReleaseVersionVersion: [String]? = nil, filterProcessingState: [FilterProcessingState_buildsGetCollection]? = nil, filterUsesNonExemptEncryption: [String]? = nil, filterVersion: [String]? = nil, filterApp: [String]? = nil, filterAppStoreVersion: [String]? = nil, filterBetaGroups: [String]? = nil, filterPreReleaseVersion: [String]? = nil, filterId: [String]? = nil, sort: [Sort_buildsGetCollection]? = nil, fieldsBuilds: [FieldsBuilds_buildsGetCollection]? = nil, limit: Int? = nil, include: [Include_buildsGetCollection]? = nil, fieldsDiagnosticSignatures: [FieldsDiagnosticSignatures_buildsGetCollection]? = nil, fieldsBuildIcons: [FieldsBuildIcons_buildsGetCollection]? = nil, fieldsBuildBetaDetails: [FieldsBuildBetaDetails_buildsGetCollection]? = nil, fieldsBetaAppReviewSubmissions: [FieldsBetaAppReviewSubmissions_buildsGetCollection]? = nil, fieldsBetaTesters: [FieldsBetaTesters_buildsGetCollection]? = nil, fieldsAppStoreVersions: [FieldsAppStoreVersions_buildsGetCollection]? = nil, fieldsBetaBuildLocalizations: [FieldsBetaBuildLocalizations_buildsGetCollection]? = nil, fieldsPreReleaseVersions: [FieldsPreReleaseVersions_buildsGetCollection]? = nil, fieldsAppEncryptionDeclarations: [FieldsAppEncryptionDeclarations_buildsGetCollection]? = nil, fieldsApps: [FieldsApps_buildsGetCollection]? = nil, fieldsPerfPowerMetrics: [FieldsPerfPowerMetrics_buildsGetCollection]? = nil, limitBetaBuildLocalizations: Int? = nil, limitBetaGroups: Int? = nil, limitBuildBundles: Int? = nil, limitIcons: Int? = nil, limitIndividualTesters: Int? = nil, completion: @escaping (_ data: BuildsResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let filterBetaAppReviewSubmissionBetaReviewState = ["filterBetaAppReviewSubmissionBetaReviewState_example"] // [String] | filter by attribute 'betaAppReviewSubmission.betaReviewState' (optional)
let filterBuildAudienceType = ["filterBuildAudienceType_example"] // [String] | filter by attribute 'buildAudienceType' (optional)
let filterExpired = ["inner_example"] // [String] | filter by attribute 'expired' (optional)
let filterPreReleaseVersionPlatform = ["filterPreReleaseVersionPlatform_example"] // [String] | filter by attribute 'preReleaseVersion.platform' (optional)
let filterPreReleaseVersionVersion = ["inner_example"] // [String] | filter by attribute 'preReleaseVersion.version' (optional)
let filterProcessingState = ["filterProcessingState_example"] // [String] | filter by attribute 'processingState' (optional)
let filterUsesNonExemptEncryption = ["inner_example"] // [String] | filter by attribute 'usesNonExemptEncryption' (optional)
let filterVersion = ["inner_example"] // [String] | filter by attribute 'version' (optional)
let filterApp = ["inner_example"] // [String] | filter by id(s) of related 'app' (optional)
let filterAppStoreVersion = ["inner_example"] // [String] | filter by id(s) of related 'appStoreVersion' (optional)
let filterBetaGroups = ["inner_example"] // [String] | filter by id(s) of related 'betaGroups' (optional)
let filterPreReleaseVersion = ["inner_example"] // [String] | filter by id(s) of related 'preReleaseVersion' (optional)
let filterId = ["inner_example"] // [String] | filter by id(s) (optional)
let sort = ["sort_example"] // [String] | comma-separated list of sort expressions; resources will be sorted as specified (optional)
let fieldsBuilds = ["fieldsBuilds_example"] // [String] | the fields to include for returned resources of type builds (optional)
let limit = 987 // Int | maximum resources per page (optional)
let include = ["include_example"] // [String] | comma-separated list of relationships to include (optional)
let fieldsDiagnosticSignatures = ["fieldsDiagnosticSignatures_example"] // [String] | the fields to include for returned resources of type diagnosticSignatures (optional)
let fieldsBuildIcons = ["fieldsBuildIcons_example"] // [String] | the fields to include for returned resources of type buildIcons (optional)
let fieldsBuildBetaDetails = ["fieldsBuildBetaDetails_example"] // [String] | the fields to include for returned resources of type buildBetaDetails (optional)
let fieldsBetaAppReviewSubmissions = ["fieldsBetaAppReviewSubmissions_example"] // [String] | the fields to include for returned resources of type betaAppReviewSubmissions (optional)
let fieldsBetaTesters = ["fieldsBetaTesters_example"] // [String] | the fields to include for returned resources of type betaTesters (optional)
let fieldsAppStoreVersions = ["fieldsAppStoreVersions_example"] // [String] | the fields to include for returned resources of type appStoreVersions (optional)
let fieldsBetaBuildLocalizations = ["fieldsBetaBuildLocalizations_example"] // [String] | the fields to include for returned resources of type betaBuildLocalizations (optional)
let fieldsPreReleaseVersions = ["fieldsPreReleaseVersions_example"] // [String] | the fields to include for returned resources of type preReleaseVersions (optional)
let fieldsAppEncryptionDeclarations = ["fieldsAppEncryptionDeclarations_example"] // [String] | the fields to include for returned resources of type appEncryptionDeclarations (optional)
let fieldsApps = ["fieldsApps_example"] // [String] | the fields to include for returned resources of type apps (optional)
let fieldsPerfPowerMetrics = ["fieldsPerfPowerMetrics_example"] // [String] | the fields to include for returned resources of type perfPowerMetrics (optional)
let limitBetaBuildLocalizations = 987 // Int | maximum number of related betaBuildLocalizations returned (when they are included) (optional)
let limitBetaGroups = 987 // Int | maximum number of related betaGroups returned (when they are included) (optional)
let limitBuildBundles = 987 // Int | maximum number of related buildBundles returned (when they are included) (optional)
let limitIcons = 987 // Int | maximum number of related icons returned (when they are included) (optional)
let limitIndividualTesters = 987 // Int | maximum number of related individualTesters returned (when they are included) (optional)

BuildsAPI.buildsGetCollection(filterBetaAppReviewSubmissionBetaReviewState: filterBetaAppReviewSubmissionBetaReviewState, filterBuildAudienceType: filterBuildAudienceType, filterExpired: filterExpired, filterPreReleaseVersionPlatform: filterPreReleaseVersionPlatform, filterPreReleaseVersionVersion: filterPreReleaseVersionVersion, filterProcessingState: filterProcessingState, filterUsesNonExemptEncryption: filterUsesNonExemptEncryption, filterVersion: filterVersion, filterApp: filterApp, filterAppStoreVersion: filterAppStoreVersion, filterBetaGroups: filterBetaGroups, filterPreReleaseVersion: filterPreReleaseVersion, filterId: filterId, sort: sort, fieldsBuilds: fieldsBuilds, limit: limit, include: include, fieldsDiagnosticSignatures: fieldsDiagnosticSignatures, fieldsBuildIcons: fieldsBuildIcons, fieldsBuildBetaDetails: fieldsBuildBetaDetails, fieldsBetaAppReviewSubmissions: fieldsBetaAppReviewSubmissions, fieldsBetaTesters: fieldsBetaTesters, fieldsAppStoreVersions: fieldsAppStoreVersions, fieldsBetaBuildLocalizations: fieldsBetaBuildLocalizations, fieldsPreReleaseVersions: fieldsPreReleaseVersions, fieldsAppEncryptionDeclarations: fieldsAppEncryptionDeclarations, fieldsApps: fieldsApps, fieldsPerfPowerMetrics: fieldsPerfPowerMetrics, limitBetaBuildLocalizations: limitBetaBuildLocalizations, limitBetaGroups: limitBetaGroups, limitBuildBundles: limitBuildBundles, limitIcons: limitIcons, limitIndividualTesters: limitIndividualTesters) { (response, error) in
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
 **filterBetaAppReviewSubmissionBetaReviewState** | [**[String]**](String.md) | filter by attribute &#39;betaAppReviewSubmission.betaReviewState&#39; | [optional] 
 **filterBuildAudienceType** | [**[String]**](String.md) | filter by attribute &#39;buildAudienceType&#39; | [optional] 
 **filterExpired** | [**[String]**](String.md) | filter by attribute &#39;expired&#39; | [optional] 
 **filterPreReleaseVersionPlatform** | [**[String]**](String.md) | filter by attribute &#39;preReleaseVersion.platform&#39; | [optional] 
 **filterPreReleaseVersionVersion** | [**[String]**](String.md) | filter by attribute &#39;preReleaseVersion.version&#39; | [optional] 
 **filterProcessingState** | [**[String]**](String.md) | filter by attribute &#39;processingState&#39; | [optional] 
 **filterUsesNonExemptEncryption** | [**[String]**](String.md) | filter by attribute &#39;usesNonExemptEncryption&#39; | [optional] 
 **filterVersion** | [**[String]**](String.md) | filter by attribute &#39;version&#39; | [optional] 
 **filterApp** | [**[String]**](String.md) | filter by id(s) of related &#39;app&#39; | [optional] 
 **filterAppStoreVersion** | [**[String]**](String.md) | filter by id(s) of related &#39;appStoreVersion&#39; | [optional] 
 **filterBetaGroups** | [**[String]**](String.md) | filter by id(s) of related &#39;betaGroups&#39; | [optional] 
 **filterPreReleaseVersion** | [**[String]**](String.md) | filter by id(s) of related &#39;preReleaseVersion&#39; | [optional] 
 **filterId** | [**[String]**](String.md) | filter by id(s) | [optional] 
 **sort** | [**[String]**](String.md) | comma-separated list of sort expressions; resources will be sorted as specified | [optional] 
 **fieldsBuilds** | [**[String]**](String.md) | the fields to include for returned resources of type builds | [optional] 
 **limit** | **Int** | maximum resources per page | [optional] 
 **include** | [**[String]**](String.md) | comma-separated list of relationships to include | [optional] 
 **fieldsDiagnosticSignatures** | [**[String]**](String.md) | the fields to include for returned resources of type diagnosticSignatures | [optional] 
 **fieldsBuildIcons** | [**[String]**](String.md) | the fields to include for returned resources of type buildIcons | [optional] 
 **fieldsBuildBetaDetails** | [**[String]**](String.md) | the fields to include for returned resources of type buildBetaDetails | [optional] 
 **fieldsBetaAppReviewSubmissions** | [**[String]**](String.md) | the fields to include for returned resources of type betaAppReviewSubmissions | [optional] 
 **fieldsBetaTesters** | [**[String]**](String.md) | the fields to include for returned resources of type betaTesters | [optional] 
 **fieldsAppStoreVersions** | [**[String]**](String.md) | the fields to include for returned resources of type appStoreVersions | [optional] 
 **fieldsBetaBuildLocalizations** | [**[String]**](String.md) | the fields to include for returned resources of type betaBuildLocalizations | [optional] 
 **fieldsPreReleaseVersions** | [**[String]**](String.md) | the fields to include for returned resources of type preReleaseVersions | [optional] 
 **fieldsAppEncryptionDeclarations** | [**[String]**](String.md) | the fields to include for returned resources of type appEncryptionDeclarations | [optional] 
 **fieldsApps** | [**[String]**](String.md) | the fields to include for returned resources of type apps | [optional] 
 **fieldsPerfPowerMetrics** | [**[String]**](String.md) | the fields to include for returned resources of type perfPowerMetrics | [optional] 
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
    open class func buildsGetInstance(id: String, fieldsBuilds: [FieldsBuilds_buildsGetInstance]? = nil, include: [Include_buildsGetInstance]? = nil, fieldsDiagnosticSignatures: [FieldsDiagnosticSignatures_buildsGetInstance]? = nil, fieldsBuildIcons: [FieldsBuildIcons_buildsGetInstance]? = nil, fieldsBuildBetaDetails: [FieldsBuildBetaDetails_buildsGetInstance]? = nil, fieldsBetaAppReviewSubmissions: [FieldsBetaAppReviewSubmissions_buildsGetInstance]? = nil, fieldsBetaTesters: [FieldsBetaTesters_buildsGetInstance]? = nil, fieldsAppStoreVersions: [FieldsAppStoreVersions_buildsGetInstance]? = nil, fieldsBetaBuildLocalizations: [FieldsBetaBuildLocalizations_buildsGetInstance]? = nil, fieldsPreReleaseVersions: [FieldsPreReleaseVersions_buildsGetInstance]? = nil, fieldsAppEncryptionDeclarations: [FieldsAppEncryptionDeclarations_buildsGetInstance]? = nil, fieldsApps: [FieldsApps_buildsGetInstance]? = nil, fieldsPerfPowerMetrics: [FieldsPerfPowerMetrics_buildsGetInstance]? = nil, limitBetaBuildLocalizations: Int? = nil, limitBetaGroups: Int? = nil, limitBuildBundles: Int? = nil, limitIcons: Int? = nil, limitIndividualTesters: Int? = nil, completion: @escaping (_ data: BuildResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let fieldsBuilds = ["fieldsBuilds_example"] // [String] | the fields to include for returned resources of type builds (optional)
let include = ["include_example"] // [String] | comma-separated list of relationships to include (optional)
let fieldsDiagnosticSignatures = ["fieldsDiagnosticSignatures_example"] // [String] | the fields to include for returned resources of type diagnosticSignatures (optional)
let fieldsBuildIcons = ["fieldsBuildIcons_example"] // [String] | the fields to include for returned resources of type buildIcons (optional)
let fieldsBuildBetaDetails = ["fieldsBuildBetaDetails_example"] // [String] | the fields to include for returned resources of type buildBetaDetails (optional)
let fieldsBetaAppReviewSubmissions = ["fieldsBetaAppReviewSubmissions_example"] // [String] | the fields to include for returned resources of type betaAppReviewSubmissions (optional)
let fieldsBetaTesters = ["fieldsBetaTesters_example"] // [String] | the fields to include for returned resources of type betaTesters (optional)
let fieldsAppStoreVersions = ["fieldsAppStoreVersions_example"] // [String] | the fields to include for returned resources of type appStoreVersions (optional)
let fieldsBetaBuildLocalizations = ["fieldsBetaBuildLocalizations_example"] // [String] | the fields to include for returned resources of type betaBuildLocalizations (optional)
let fieldsPreReleaseVersions = ["fieldsPreReleaseVersions_example"] // [String] | the fields to include for returned resources of type preReleaseVersions (optional)
let fieldsAppEncryptionDeclarations = ["fieldsAppEncryptionDeclarations_example"] // [String] | the fields to include for returned resources of type appEncryptionDeclarations (optional)
let fieldsApps = ["fieldsApps_example"] // [String] | the fields to include for returned resources of type apps (optional)
let fieldsPerfPowerMetrics = ["fieldsPerfPowerMetrics_example"] // [String] | the fields to include for returned resources of type perfPowerMetrics (optional)
let limitBetaBuildLocalizations = 987 // Int | maximum number of related betaBuildLocalizations returned (when they are included) (optional)
let limitBetaGroups = 987 // Int | maximum number of related betaGroups returned (when they are included) (optional)
let limitBuildBundles = 987 // Int | maximum number of related buildBundles returned (when they are included) (optional)
let limitIcons = 987 // Int | maximum number of related icons returned (when they are included) (optional)
let limitIndividualTesters = 987 // Int | maximum number of related individualTesters returned (when they are included) (optional)

BuildsAPI.buildsGetInstance(id: id, fieldsBuilds: fieldsBuilds, include: include, fieldsDiagnosticSignatures: fieldsDiagnosticSignatures, fieldsBuildIcons: fieldsBuildIcons, fieldsBuildBetaDetails: fieldsBuildBetaDetails, fieldsBetaAppReviewSubmissions: fieldsBetaAppReviewSubmissions, fieldsBetaTesters: fieldsBetaTesters, fieldsAppStoreVersions: fieldsAppStoreVersions, fieldsBetaBuildLocalizations: fieldsBetaBuildLocalizations, fieldsPreReleaseVersions: fieldsPreReleaseVersions, fieldsAppEncryptionDeclarations: fieldsAppEncryptionDeclarations, fieldsApps: fieldsApps, fieldsPerfPowerMetrics: fieldsPerfPowerMetrics, limitBetaBuildLocalizations: limitBetaBuildLocalizations, limitBetaGroups: limitBetaGroups, limitBuildBundles: limitBuildBundles, limitIcons: limitIcons, limitIndividualTesters: limitIndividualTesters) { (response, error) in
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
 **include** | [**[String]**](String.md) | comma-separated list of relationships to include | [optional] 
 **fieldsDiagnosticSignatures** | [**[String]**](String.md) | the fields to include for returned resources of type diagnosticSignatures | [optional] 
 **fieldsBuildIcons** | [**[String]**](String.md) | the fields to include for returned resources of type buildIcons | [optional] 
 **fieldsBuildBetaDetails** | [**[String]**](String.md) | the fields to include for returned resources of type buildBetaDetails | [optional] 
 **fieldsBetaAppReviewSubmissions** | [**[String]**](String.md) | the fields to include for returned resources of type betaAppReviewSubmissions | [optional] 
 **fieldsBetaTesters** | [**[String]**](String.md) | the fields to include for returned resources of type betaTesters | [optional] 
 **fieldsAppStoreVersions** | [**[String]**](String.md) | the fields to include for returned resources of type appStoreVersions | [optional] 
 **fieldsBetaBuildLocalizations** | [**[String]**](String.md) | the fields to include for returned resources of type betaBuildLocalizations | [optional] 
 **fieldsPreReleaseVersions** | [**[String]**](String.md) | the fields to include for returned resources of type preReleaseVersions | [optional] 
 **fieldsAppEncryptionDeclarations** | [**[String]**](String.md) | the fields to include for returned resources of type appEncryptionDeclarations | [optional] 
 **fieldsApps** | [**[String]**](String.md) | the fields to include for returned resources of type apps | [optional] 
 **fieldsPerfPowerMetrics** | [**[String]**](String.md) | the fields to include for returned resources of type perfPowerMetrics | [optional] 
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
    open class func buildsIconsGetToManyRelated(id: String, fieldsBuildIcons: [FieldsBuildIcons_buildsIconsGetToManyRelated]? = nil, limit: Int? = nil, completion: @escaping (_ data: BuildIconsResponse?, _ error: Error?) -> Void)
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

[**BuildIconsResponse**](BuildIconsResponse.md)

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
    open class func buildsIndividualTestersGetToManyRelated(id: String, fieldsBetaTesters: [FieldsBetaTesters_buildsIndividualTestersGetToManyRelated]? = nil, limit: Int? = nil, completion: @escaping (_ data: BetaTestersResponse?, _ error: Error?) -> Void)
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

[**BetaTestersResponse**](BetaTestersResponse.md)

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
    open class func buildsPerfPowerMetricsGetToManyRelated(id: String, filterDeviceType: [String]? = nil, filterMetricType: [FilterMetricType_buildsPerfPowerMetricsGetToManyRelated]? = nil, filterPlatform: [FilterPlatform_buildsPerfPowerMetricsGetToManyRelated]? = nil, completion: @escaping (_ data: AnyCodable?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let filterDeviceType = ["inner_example"] // [String] | filter by attribute 'deviceType' (optional)
let filterMetricType = ["filterMetricType_example"] // [String] | filter by attribute 'metricType' (optional)
let filterPlatform = ["filterPlatform_example"] // [String] | filter by attribute 'platform' (optional)

BuildsAPI.buildsPerfPowerMetricsGetToManyRelated(id: id, filterDeviceType: filterDeviceType, filterMetricType: filterMetricType, filterPlatform: filterPlatform) { (response, error) in
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
 **filterDeviceType** | [**[String]**](String.md) | filter by attribute &#39;deviceType&#39; | [optional] 
 **filterMetricType** | [**[String]**](String.md) | filter by attribute &#39;metricType&#39; | [optional] 
 **filterPlatform** | [**[String]**](String.md) | filter by attribute &#39;platform&#39; | [optional] 

### Return type

[**AnyCodable**](AnyCodable.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/vnd.apple.xcode-metrics+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **buildsPreReleaseVersionGetToOneRelated**
```swift
    open class func buildsPreReleaseVersionGetToOneRelated(id: String, fieldsPreReleaseVersions: [FieldsPreReleaseVersions_buildsPreReleaseVersionGetToOneRelated]? = nil, completion: @escaping (_ data: PrereleaseVersionResponse?, _ error: Error?) -> Void)
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

[**PrereleaseVersionResponse**](PrereleaseVersionResponse.md)

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
let buildUpdateRequest = BuildUpdateRequest(data: BuildUpdateRequest_data(type: "type_example", id: "id_example", attributes: BuildUpdateRequest_data_attributes(expired: false, usesNonExemptEncryption: false), relationships: BuildUpdateRequest_data_relationships(appEncryptionDeclaration: BuildUpdateRequest_data_relationships_appEncryptionDeclaration(data: Build_relationships_appEncryptionDeclaration_data(type: "type_example", id: "id_example"))))) // BuildUpdateRequest | Build representation

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

