# AppStoreVersionsAPI

All URIs are relative to *https://api.appstoreconnect.apple.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**appStoreVersionsAgeRatingDeclarationGetToOneRelated**](AppStoreVersionsAPI.md#appstoreversionsageratingdeclarationgettoonerelated) | **GET** /v1/appStoreVersions/{id}/ageRatingDeclaration | 
[**appStoreVersionsAlternativeDistributionPackageGetToOneRelated**](AppStoreVersionsAPI.md#appstoreversionsalternativedistributionpackagegettoonerelated) | **GET** /v1/appStoreVersions/{id}/alternativeDistributionPackage | 
[**appStoreVersionsAppClipDefaultExperienceGetToOneRelated**](AppStoreVersionsAPI.md#appstoreversionsappclipdefaultexperiencegettoonerelated) | **GET** /v1/appStoreVersions/{id}/appClipDefaultExperience | 
[**appStoreVersionsAppClipDefaultExperienceGetToOneRelationship**](AppStoreVersionsAPI.md#appstoreversionsappclipdefaultexperiencegettoonerelationship) | **GET** /v1/appStoreVersions/{id}/relationships/appClipDefaultExperience | 
[**appStoreVersionsAppClipDefaultExperienceUpdateToOneRelationship**](AppStoreVersionsAPI.md#appstoreversionsappclipdefaultexperienceupdatetoonerelationship) | **PATCH** /v1/appStoreVersions/{id}/relationships/appClipDefaultExperience | 
[**appStoreVersionsAppStoreReviewDetailGetToOneRelated**](AppStoreVersionsAPI.md#appstoreversionsappstorereviewdetailgettoonerelated) | **GET** /v1/appStoreVersions/{id}/appStoreReviewDetail | 
[**appStoreVersionsAppStoreVersionExperimentsGetToManyRelated**](AppStoreVersionsAPI.md#appstoreversionsappstoreversionexperimentsgettomanyrelated) | **GET** /v1/appStoreVersions/{id}/appStoreVersionExperiments | 
[**appStoreVersionsAppStoreVersionExperimentsV2GetToManyRelated**](AppStoreVersionsAPI.md#appstoreversionsappstoreversionexperimentsv2gettomanyrelated) | **GET** /v1/appStoreVersions/{id}/appStoreVersionExperimentsV2 | 
[**appStoreVersionsAppStoreVersionLocalizationsGetToManyRelated**](AppStoreVersionsAPI.md#appstoreversionsappstoreversionlocalizationsgettomanyrelated) | **GET** /v1/appStoreVersions/{id}/appStoreVersionLocalizations | 
[**appStoreVersionsAppStoreVersionPhasedReleaseGetToOneRelated**](AppStoreVersionsAPI.md#appstoreversionsappstoreversionphasedreleasegettoonerelated) | **GET** /v1/appStoreVersions/{id}/appStoreVersionPhasedRelease | 
[**appStoreVersionsAppStoreVersionSubmissionGetToOneRelated**](AppStoreVersionsAPI.md#appstoreversionsappstoreversionsubmissiongettoonerelated) | **GET** /v1/appStoreVersions/{id}/appStoreVersionSubmission | 
[**appStoreVersionsBuildGetToOneRelated**](AppStoreVersionsAPI.md#appstoreversionsbuildgettoonerelated) | **GET** /v1/appStoreVersions/{id}/build | 
[**appStoreVersionsBuildGetToOneRelationship**](AppStoreVersionsAPI.md#appstoreversionsbuildgettoonerelationship) | **GET** /v1/appStoreVersions/{id}/relationships/build | 
[**appStoreVersionsBuildUpdateToOneRelationship**](AppStoreVersionsAPI.md#appstoreversionsbuildupdatetoonerelationship) | **PATCH** /v1/appStoreVersions/{id}/relationships/build | 
[**appStoreVersionsCreateInstance**](AppStoreVersionsAPI.md#appstoreversionscreateinstance) | **POST** /v1/appStoreVersions | 
[**appStoreVersionsCustomerReviewsGetToManyRelated**](AppStoreVersionsAPI.md#appstoreversionscustomerreviewsgettomanyrelated) | **GET** /v1/appStoreVersions/{id}/customerReviews | 
[**appStoreVersionsDeleteInstance**](AppStoreVersionsAPI.md#appstoreversionsdeleteinstance) | **DELETE** /v1/appStoreVersions/{id} | 
[**appStoreVersionsGetInstance**](AppStoreVersionsAPI.md#appstoreversionsgetinstance) | **GET** /v1/appStoreVersions/{id} | 
[**appStoreVersionsRoutingAppCoverageGetToOneRelated**](AppStoreVersionsAPI.md#appstoreversionsroutingappcoveragegettoonerelated) | **GET** /v1/appStoreVersions/{id}/routingAppCoverage | 
[**appStoreVersionsUpdateInstance**](AppStoreVersionsAPI.md#appstoreversionsupdateinstance) | **PATCH** /v1/appStoreVersions/{id} | 


# **appStoreVersionsAgeRatingDeclarationGetToOneRelated**
```swift
    open class func appStoreVersionsAgeRatingDeclarationGetToOneRelated(id: String, fieldsAgeRatingDeclarations: [FieldsAgeRatingDeclarations_appStoreVersionsAgeRatingDeclarationGetToOneRelated]? = nil, completion: @escaping (_ data: AgeRatingDeclarationWithoutIncludesResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let fieldsAgeRatingDeclarations = ["fieldsAgeRatingDeclarations_example"] // [String] | the fields to include for returned resources of type ageRatingDeclarations (optional)

AppStoreVersionsAPI.appStoreVersionsAgeRatingDeclarationGetToOneRelated(id: id, fieldsAgeRatingDeclarations: fieldsAgeRatingDeclarations) { (response, error) in
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
 **fieldsAgeRatingDeclarations** | [**[String]**](String.md) | the fields to include for returned resources of type ageRatingDeclarations | [optional] 

### Return type

[**AgeRatingDeclarationWithoutIncludesResponse**](AgeRatingDeclarationWithoutIncludesResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **appStoreVersionsAlternativeDistributionPackageGetToOneRelated**
```swift
    open class func appStoreVersionsAlternativeDistributionPackageGetToOneRelated(id: String, fieldsAlternativeDistributionPackages: [FieldsAlternativeDistributionPackages_appStoreVersionsAlternativeDistributionPackageGetToOneRelated]? = nil, fieldsAlternativeDistributionPackageVersions: [FieldsAlternativeDistributionPackageVersions_appStoreVersionsAlternativeDistributionPackageGetToOneRelated]? = nil, limitVersions: Int? = nil, include: [Include_appStoreVersionsAlternativeDistributionPackageGetToOneRelated]? = nil, completion: @escaping (_ data: AlternativeDistributionPackageResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let fieldsAlternativeDistributionPackages = ["fieldsAlternativeDistributionPackages_example"] // [String] | the fields to include for returned resources of type alternativeDistributionPackages (optional)
let fieldsAlternativeDistributionPackageVersions = ["fieldsAlternativeDistributionPackageVersions_example"] // [String] | the fields to include for returned resources of type alternativeDistributionPackageVersions (optional)
let limitVersions = 987 // Int | maximum number of related versions returned (when they are included) (optional)
let include = ["include_example"] // [String] | comma-separated list of relationships to include (optional)

AppStoreVersionsAPI.appStoreVersionsAlternativeDistributionPackageGetToOneRelated(id: id, fieldsAlternativeDistributionPackages: fieldsAlternativeDistributionPackages, fieldsAlternativeDistributionPackageVersions: fieldsAlternativeDistributionPackageVersions, limitVersions: limitVersions, include: include) { (response, error) in
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
 **fieldsAlternativeDistributionPackages** | [**[String]**](String.md) | the fields to include for returned resources of type alternativeDistributionPackages | [optional] 
 **fieldsAlternativeDistributionPackageVersions** | [**[String]**](String.md) | the fields to include for returned resources of type alternativeDistributionPackageVersions | [optional] 
 **limitVersions** | **Int** | maximum number of related versions returned (when they are included) | [optional] 
 **include** | [**[String]**](String.md) | comma-separated list of relationships to include | [optional] 

### Return type

[**AlternativeDistributionPackageResponse**](AlternativeDistributionPackageResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **appStoreVersionsAppClipDefaultExperienceGetToOneRelated**
```swift
    open class func appStoreVersionsAppClipDefaultExperienceGetToOneRelated(id: String, fieldsAppClips: [FieldsAppClips_appStoreVersionsAppClipDefaultExperienceGetToOneRelated]? = nil, fieldsAppClipAppStoreReviewDetails: [FieldsAppClipAppStoreReviewDetails_appStoreVersionsAppClipDefaultExperienceGetToOneRelated]? = nil, fieldsAppStoreVersions: [FieldsAppStoreVersions_appStoreVersionsAppClipDefaultExperienceGetToOneRelated]? = nil, fieldsAppClipDefaultExperiences: [FieldsAppClipDefaultExperiences_appStoreVersionsAppClipDefaultExperienceGetToOneRelated]? = nil, fieldsAppClipDefaultExperienceLocalizations: [FieldsAppClipDefaultExperienceLocalizations_appStoreVersionsAppClipDefaultExperienceGetToOneRelated]? = nil, limitAppClipDefaultExperienceLocalizations: Int? = nil, include: [Include_appStoreVersionsAppClipDefaultExperienceGetToOneRelated]? = nil, completion: @escaping (_ data: AppClipDefaultExperienceResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let fieldsAppClips = ["fieldsAppClips_example"] // [String] | the fields to include for returned resources of type appClips (optional)
let fieldsAppClipAppStoreReviewDetails = ["fieldsAppClipAppStoreReviewDetails_example"] // [String] | the fields to include for returned resources of type appClipAppStoreReviewDetails (optional)
let fieldsAppStoreVersions = ["fieldsAppStoreVersions_example"] // [String] | the fields to include for returned resources of type appStoreVersions (optional)
let fieldsAppClipDefaultExperiences = ["fieldsAppClipDefaultExperiences_example"] // [String] | the fields to include for returned resources of type appClipDefaultExperiences (optional)
let fieldsAppClipDefaultExperienceLocalizations = ["fieldsAppClipDefaultExperienceLocalizations_example"] // [String] | the fields to include for returned resources of type appClipDefaultExperienceLocalizations (optional)
let limitAppClipDefaultExperienceLocalizations = 987 // Int | maximum number of related appClipDefaultExperienceLocalizations returned (when they are included) (optional)
let include = ["include_example"] // [String] | comma-separated list of relationships to include (optional)

AppStoreVersionsAPI.appStoreVersionsAppClipDefaultExperienceGetToOneRelated(id: id, fieldsAppClips: fieldsAppClips, fieldsAppClipAppStoreReviewDetails: fieldsAppClipAppStoreReviewDetails, fieldsAppStoreVersions: fieldsAppStoreVersions, fieldsAppClipDefaultExperiences: fieldsAppClipDefaultExperiences, fieldsAppClipDefaultExperienceLocalizations: fieldsAppClipDefaultExperienceLocalizations, limitAppClipDefaultExperienceLocalizations: limitAppClipDefaultExperienceLocalizations, include: include) { (response, error) in
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
 **fieldsAppClips** | [**[String]**](String.md) | the fields to include for returned resources of type appClips | [optional] 
 **fieldsAppClipAppStoreReviewDetails** | [**[String]**](String.md) | the fields to include for returned resources of type appClipAppStoreReviewDetails | [optional] 
 **fieldsAppStoreVersions** | [**[String]**](String.md) | the fields to include for returned resources of type appStoreVersions | [optional] 
 **fieldsAppClipDefaultExperiences** | [**[String]**](String.md) | the fields to include for returned resources of type appClipDefaultExperiences | [optional] 
 **fieldsAppClipDefaultExperienceLocalizations** | [**[String]**](String.md) | the fields to include for returned resources of type appClipDefaultExperienceLocalizations | [optional] 
 **limitAppClipDefaultExperienceLocalizations** | **Int** | maximum number of related appClipDefaultExperienceLocalizations returned (when they are included) | [optional] 
 **include** | [**[String]**](String.md) | comma-separated list of relationships to include | [optional] 

### Return type

[**AppClipDefaultExperienceResponse**](AppClipDefaultExperienceResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **appStoreVersionsAppClipDefaultExperienceGetToOneRelationship**
```swift
    open class func appStoreVersionsAppClipDefaultExperienceGetToOneRelationship(id: String, completion: @escaping (_ data: AppStoreVersionAppClipDefaultExperienceLinkageResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource

AppStoreVersionsAPI.appStoreVersionsAppClipDefaultExperienceGetToOneRelationship(id: id) { (response, error) in
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

[**AppStoreVersionAppClipDefaultExperienceLinkageResponse**](AppStoreVersionAppClipDefaultExperienceLinkageResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **appStoreVersionsAppClipDefaultExperienceUpdateToOneRelationship**
```swift
    open class func appStoreVersionsAppClipDefaultExperienceUpdateToOneRelationship(id: String, appStoreVersionAppClipDefaultExperienceLinkageRequest: AppStoreVersionAppClipDefaultExperienceLinkageRequest, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let appStoreVersionAppClipDefaultExperienceLinkageRequest = AppStoreVersionAppClipDefaultExperienceLinkageRequest(data: AppClipAppStoreReviewDetail_relationships_appClipDefaultExperience_data(type: "type_example", id: "id_example")) // AppStoreVersionAppClipDefaultExperienceLinkageRequest | Related linkage

AppStoreVersionsAPI.appStoreVersionsAppClipDefaultExperienceUpdateToOneRelationship(id: id, appStoreVersionAppClipDefaultExperienceLinkageRequest: appStoreVersionAppClipDefaultExperienceLinkageRequest) { (response, error) in
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
 **appStoreVersionAppClipDefaultExperienceLinkageRequest** | [**AppStoreVersionAppClipDefaultExperienceLinkageRequest**](AppStoreVersionAppClipDefaultExperienceLinkageRequest.md) | Related linkage | 

### Return type

Void (empty response body)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **appStoreVersionsAppStoreReviewDetailGetToOneRelated**
```swift
    open class func appStoreVersionsAppStoreReviewDetailGetToOneRelated(id: String, fieldsAppStoreReviewDetails: [FieldsAppStoreReviewDetails_appStoreVersionsAppStoreReviewDetailGetToOneRelated]? = nil, fieldsAppStoreVersions: [FieldsAppStoreVersions_appStoreVersionsAppStoreReviewDetailGetToOneRelated]? = nil, fieldsAppStoreReviewAttachments: [FieldsAppStoreReviewAttachments_appStoreVersionsAppStoreReviewDetailGetToOneRelated]? = nil, limitAppStoreReviewAttachments: Int? = nil, include: [Include_appStoreVersionsAppStoreReviewDetailGetToOneRelated]? = nil, completion: @escaping (_ data: AppStoreReviewDetailResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let fieldsAppStoreReviewDetails = ["fieldsAppStoreReviewDetails_example"] // [String] | the fields to include for returned resources of type appStoreReviewDetails (optional)
let fieldsAppStoreVersions = ["fieldsAppStoreVersions_example"] // [String] | the fields to include for returned resources of type appStoreVersions (optional)
let fieldsAppStoreReviewAttachments = ["fieldsAppStoreReviewAttachments_example"] // [String] | the fields to include for returned resources of type appStoreReviewAttachments (optional)
let limitAppStoreReviewAttachments = 987 // Int | maximum number of related appStoreReviewAttachments returned (when they are included) (optional)
let include = ["include_example"] // [String] | comma-separated list of relationships to include (optional)

AppStoreVersionsAPI.appStoreVersionsAppStoreReviewDetailGetToOneRelated(id: id, fieldsAppStoreReviewDetails: fieldsAppStoreReviewDetails, fieldsAppStoreVersions: fieldsAppStoreVersions, fieldsAppStoreReviewAttachments: fieldsAppStoreReviewAttachments, limitAppStoreReviewAttachments: limitAppStoreReviewAttachments, include: include) { (response, error) in
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
 **fieldsAppStoreReviewDetails** | [**[String]**](String.md) | the fields to include for returned resources of type appStoreReviewDetails | [optional] 
 **fieldsAppStoreVersions** | [**[String]**](String.md) | the fields to include for returned resources of type appStoreVersions | [optional] 
 **fieldsAppStoreReviewAttachments** | [**[String]**](String.md) | the fields to include for returned resources of type appStoreReviewAttachments | [optional] 
 **limitAppStoreReviewAttachments** | **Int** | maximum number of related appStoreReviewAttachments returned (when they are included) | [optional] 
 **include** | [**[String]**](String.md) | comma-separated list of relationships to include | [optional] 

### Return type

[**AppStoreReviewDetailResponse**](AppStoreReviewDetailResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **appStoreVersionsAppStoreVersionExperimentsGetToManyRelated**
```swift
    open class func appStoreVersionsAppStoreVersionExperimentsGetToManyRelated(id: String, filterState: [FilterState_appStoreVersionsAppStoreVersionExperimentsGetToManyRelated]? = nil, fieldsAppStoreVersionExperiments: [FieldsAppStoreVersionExperiments_appStoreVersionsAppStoreVersionExperimentsGetToManyRelated]? = nil, fieldsAppStoreVersionExperimentTreatments: [FieldsAppStoreVersionExperimentTreatments_appStoreVersionsAppStoreVersionExperimentsGetToManyRelated]? = nil, fieldsAppStoreVersions: [FieldsAppStoreVersions_appStoreVersionsAppStoreVersionExperimentsGetToManyRelated]? = nil, limit: Int? = nil, limitAppStoreVersionExperimentTreatments: Int? = nil, include: [Include_appStoreVersionsAppStoreVersionExperimentsGetToManyRelated]? = nil, completion: @escaping (_ data: AppStoreVersionExperimentsResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let filterState = ["filterState_example"] // [String] | filter by attribute 'state' (optional)
let fieldsAppStoreVersionExperiments = ["fieldsAppStoreVersionExperiments_example"] // [String] | the fields to include for returned resources of type appStoreVersionExperiments (optional)
let fieldsAppStoreVersionExperimentTreatments = ["fieldsAppStoreVersionExperimentTreatments_example"] // [String] | the fields to include for returned resources of type appStoreVersionExperimentTreatments (optional)
let fieldsAppStoreVersions = ["fieldsAppStoreVersions_example"] // [String] | the fields to include for returned resources of type appStoreVersions (optional)
let limit = 987 // Int | maximum resources per page (optional)
let limitAppStoreVersionExperimentTreatments = 987 // Int | maximum number of related appStoreVersionExperimentTreatments returned (when they are included) (optional)
let include = ["include_example"] // [String] | comma-separated list of relationships to include (optional)

AppStoreVersionsAPI.appStoreVersionsAppStoreVersionExperimentsGetToManyRelated(id: id, filterState: filterState, fieldsAppStoreVersionExperiments: fieldsAppStoreVersionExperiments, fieldsAppStoreVersionExperimentTreatments: fieldsAppStoreVersionExperimentTreatments, fieldsAppStoreVersions: fieldsAppStoreVersions, limit: limit, limitAppStoreVersionExperimentTreatments: limitAppStoreVersionExperimentTreatments, include: include) { (response, error) in
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
 **filterState** | [**[String]**](String.md) | filter by attribute &#39;state&#39; | [optional] 
 **fieldsAppStoreVersionExperiments** | [**[String]**](String.md) | the fields to include for returned resources of type appStoreVersionExperiments | [optional] 
 **fieldsAppStoreVersionExperimentTreatments** | [**[String]**](String.md) | the fields to include for returned resources of type appStoreVersionExperimentTreatments | [optional] 
 **fieldsAppStoreVersions** | [**[String]**](String.md) | the fields to include for returned resources of type appStoreVersions | [optional] 
 **limit** | **Int** | maximum resources per page | [optional] 
 **limitAppStoreVersionExperimentTreatments** | **Int** | maximum number of related appStoreVersionExperimentTreatments returned (when they are included) | [optional] 
 **include** | [**[String]**](String.md) | comma-separated list of relationships to include | [optional] 

### Return type

[**AppStoreVersionExperimentsResponse**](AppStoreVersionExperimentsResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **appStoreVersionsAppStoreVersionExperimentsV2GetToManyRelated**
```swift
    open class func appStoreVersionsAppStoreVersionExperimentsV2GetToManyRelated(id: String, filterState: [FilterState_appStoreVersionsAppStoreVersionExperimentsV2GetToManyRelated]? = nil, fieldsAppStoreVersionExperiments: [FieldsAppStoreVersionExperiments_appStoreVersionsAppStoreVersionExperimentsV2GetToManyRelated]? = nil, fieldsAppStoreVersionExperimentTreatments: [FieldsAppStoreVersionExperimentTreatments_appStoreVersionsAppStoreVersionExperimentsV2GetToManyRelated]? = nil, fieldsAppStoreVersions: [FieldsAppStoreVersions_appStoreVersionsAppStoreVersionExperimentsV2GetToManyRelated]? = nil, fieldsApps: [FieldsApps_appStoreVersionsAppStoreVersionExperimentsV2GetToManyRelated]? = nil, limit: Int? = nil, limitControlVersions: Int? = nil, limitAppStoreVersionExperimentTreatments: Int? = nil, include: [Include_appStoreVersionsAppStoreVersionExperimentsV2GetToManyRelated]? = nil, completion: @escaping (_ data: AppStoreVersionExperimentsV2Response?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let filterState = ["filterState_example"] // [String] | filter by attribute 'state' (optional)
let fieldsAppStoreVersionExperiments = ["fieldsAppStoreVersionExperiments_example"] // [String] | the fields to include for returned resources of type appStoreVersionExperiments (optional)
let fieldsAppStoreVersionExperimentTreatments = ["fieldsAppStoreVersionExperimentTreatments_example"] // [String] | the fields to include for returned resources of type appStoreVersionExperimentTreatments (optional)
let fieldsAppStoreVersions = ["fieldsAppStoreVersions_example"] // [String] | the fields to include for returned resources of type appStoreVersions (optional)
let fieldsApps = ["fieldsApps_example"] // [String] | the fields to include for returned resources of type apps (optional)
let limit = 987 // Int | maximum resources per page (optional)
let limitControlVersions = 987 // Int | maximum number of related controlVersions returned (when they are included) (optional)
let limitAppStoreVersionExperimentTreatments = 987 // Int | maximum number of related appStoreVersionExperimentTreatments returned (when they are included) (optional)
let include = ["include_example"] // [String] | comma-separated list of relationships to include (optional)

AppStoreVersionsAPI.appStoreVersionsAppStoreVersionExperimentsV2GetToManyRelated(id: id, filterState: filterState, fieldsAppStoreVersionExperiments: fieldsAppStoreVersionExperiments, fieldsAppStoreVersionExperimentTreatments: fieldsAppStoreVersionExperimentTreatments, fieldsAppStoreVersions: fieldsAppStoreVersions, fieldsApps: fieldsApps, limit: limit, limitControlVersions: limitControlVersions, limitAppStoreVersionExperimentTreatments: limitAppStoreVersionExperimentTreatments, include: include) { (response, error) in
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
 **filterState** | [**[String]**](String.md) | filter by attribute &#39;state&#39; | [optional] 
 **fieldsAppStoreVersionExperiments** | [**[String]**](String.md) | the fields to include for returned resources of type appStoreVersionExperiments | [optional] 
 **fieldsAppStoreVersionExperimentTreatments** | [**[String]**](String.md) | the fields to include for returned resources of type appStoreVersionExperimentTreatments | [optional] 
 **fieldsAppStoreVersions** | [**[String]**](String.md) | the fields to include for returned resources of type appStoreVersions | [optional] 
 **fieldsApps** | [**[String]**](String.md) | the fields to include for returned resources of type apps | [optional] 
 **limit** | **Int** | maximum resources per page | [optional] 
 **limitControlVersions** | **Int** | maximum number of related controlVersions returned (when they are included) | [optional] 
 **limitAppStoreVersionExperimentTreatments** | **Int** | maximum number of related appStoreVersionExperimentTreatments returned (when they are included) | [optional] 
 **include** | [**[String]**](String.md) | comma-separated list of relationships to include | [optional] 

### Return type

[**AppStoreVersionExperimentsV2Response**](AppStoreVersionExperimentsV2Response.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **appStoreVersionsAppStoreVersionLocalizationsGetToManyRelated**
```swift
    open class func appStoreVersionsAppStoreVersionLocalizationsGetToManyRelated(id: String, filterLocale: [String]? = nil, fieldsAppScreenshotSets: [FieldsAppScreenshotSets_appStoreVersionsAppStoreVersionLocalizationsGetToManyRelated]? = nil, fieldsAppStoreVersions: [FieldsAppStoreVersions_appStoreVersionsAppStoreVersionLocalizationsGetToManyRelated]? = nil, fieldsAppPreviewSets: [FieldsAppPreviewSets_appStoreVersionsAppStoreVersionLocalizationsGetToManyRelated]? = nil, fieldsAppStoreVersionLocalizations: [FieldsAppStoreVersionLocalizations_appStoreVersionsAppStoreVersionLocalizationsGetToManyRelated]? = nil, limit: Int? = nil, limitAppScreenshotSets: Int? = nil, limitAppPreviewSets: Int? = nil, include: [Include_appStoreVersionsAppStoreVersionLocalizationsGetToManyRelated]? = nil, completion: @escaping (_ data: AppStoreVersionLocalizationsResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let filterLocale = ["inner_example"] // [String] | filter by attribute 'locale' (optional)
let fieldsAppScreenshotSets = ["fieldsAppScreenshotSets_example"] // [String] | the fields to include for returned resources of type appScreenshotSets (optional)
let fieldsAppStoreVersions = ["fieldsAppStoreVersions_example"] // [String] | the fields to include for returned resources of type appStoreVersions (optional)
let fieldsAppPreviewSets = ["fieldsAppPreviewSets_example"] // [String] | the fields to include for returned resources of type appPreviewSets (optional)
let fieldsAppStoreVersionLocalizations = ["fieldsAppStoreVersionLocalizations_example"] // [String] | the fields to include for returned resources of type appStoreVersionLocalizations (optional)
let limit = 987 // Int | maximum resources per page (optional)
let limitAppScreenshotSets = 987 // Int | maximum number of related appScreenshotSets returned (when they are included) (optional)
let limitAppPreviewSets = 987 // Int | maximum number of related appPreviewSets returned (when they are included) (optional)
let include = ["include_example"] // [String] | comma-separated list of relationships to include (optional)

AppStoreVersionsAPI.appStoreVersionsAppStoreVersionLocalizationsGetToManyRelated(id: id, filterLocale: filterLocale, fieldsAppScreenshotSets: fieldsAppScreenshotSets, fieldsAppStoreVersions: fieldsAppStoreVersions, fieldsAppPreviewSets: fieldsAppPreviewSets, fieldsAppStoreVersionLocalizations: fieldsAppStoreVersionLocalizations, limit: limit, limitAppScreenshotSets: limitAppScreenshotSets, limitAppPreviewSets: limitAppPreviewSets, include: include) { (response, error) in
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
 **filterLocale** | [**[String]**](String.md) | filter by attribute &#39;locale&#39; | [optional] 
 **fieldsAppScreenshotSets** | [**[String]**](String.md) | the fields to include for returned resources of type appScreenshotSets | [optional] 
 **fieldsAppStoreVersions** | [**[String]**](String.md) | the fields to include for returned resources of type appStoreVersions | [optional] 
 **fieldsAppPreviewSets** | [**[String]**](String.md) | the fields to include for returned resources of type appPreviewSets | [optional] 
 **fieldsAppStoreVersionLocalizations** | [**[String]**](String.md) | the fields to include for returned resources of type appStoreVersionLocalizations | [optional] 
 **limit** | **Int** | maximum resources per page | [optional] 
 **limitAppScreenshotSets** | **Int** | maximum number of related appScreenshotSets returned (when they are included) | [optional] 
 **limitAppPreviewSets** | **Int** | maximum number of related appPreviewSets returned (when they are included) | [optional] 
 **include** | [**[String]**](String.md) | comma-separated list of relationships to include | [optional] 

### Return type

[**AppStoreVersionLocalizationsResponse**](AppStoreVersionLocalizationsResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **appStoreVersionsAppStoreVersionPhasedReleaseGetToOneRelated**
```swift
    open class func appStoreVersionsAppStoreVersionPhasedReleaseGetToOneRelated(id: String, fieldsAppStoreVersionPhasedReleases: [FieldsAppStoreVersionPhasedReleases_appStoreVersionsAppStoreVersionPhasedReleaseGetToOneRelated]? = nil, completion: @escaping (_ data: AppStoreVersionPhasedReleaseWithoutIncludesResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let fieldsAppStoreVersionPhasedReleases = ["fieldsAppStoreVersionPhasedReleases_example"] // [String] | the fields to include for returned resources of type appStoreVersionPhasedReleases (optional)

AppStoreVersionsAPI.appStoreVersionsAppStoreVersionPhasedReleaseGetToOneRelated(id: id, fieldsAppStoreVersionPhasedReleases: fieldsAppStoreVersionPhasedReleases) { (response, error) in
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
 **fieldsAppStoreVersionPhasedReleases** | [**[String]**](String.md) | the fields to include for returned resources of type appStoreVersionPhasedReleases | [optional] 

### Return type

[**AppStoreVersionPhasedReleaseWithoutIncludesResponse**](AppStoreVersionPhasedReleaseWithoutIncludesResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **appStoreVersionsAppStoreVersionSubmissionGetToOneRelated**
```swift
    open class func appStoreVersionsAppStoreVersionSubmissionGetToOneRelated(id: String, fieldsAppStoreVersionSubmissions: [FieldsAppStoreVersionSubmissions_appStoreVersionsAppStoreVersionSubmissionGetToOneRelated]? = nil, fieldsAppStoreVersions: [FieldsAppStoreVersions_appStoreVersionsAppStoreVersionSubmissionGetToOneRelated]? = nil, include: [Include_appStoreVersionsAppStoreVersionSubmissionGetToOneRelated]? = nil, completion: @escaping (_ data: AppStoreVersionSubmissionResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let fieldsAppStoreVersionSubmissions = ["fieldsAppStoreVersionSubmissions_example"] // [String] | the fields to include for returned resources of type appStoreVersionSubmissions (optional)
let fieldsAppStoreVersions = ["fieldsAppStoreVersions_example"] // [String] | the fields to include for returned resources of type appStoreVersions (optional)
let include = ["include_example"] // [String] | comma-separated list of relationships to include (optional)

AppStoreVersionsAPI.appStoreVersionsAppStoreVersionSubmissionGetToOneRelated(id: id, fieldsAppStoreVersionSubmissions: fieldsAppStoreVersionSubmissions, fieldsAppStoreVersions: fieldsAppStoreVersions, include: include) { (response, error) in
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
 **fieldsAppStoreVersionSubmissions** | [**[String]**](String.md) | the fields to include for returned resources of type appStoreVersionSubmissions | [optional] 
 **fieldsAppStoreVersions** | [**[String]**](String.md) | the fields to include for returned resources of type appStoreVersions | [optional] 
 **include** | [**[String]**](String.md) | comma-separated list of relationships to include | [optional] 

### Return type

[**AppStoreVersionSubmissionResponse**](AppStoreVersionSubmissionResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **appStoreVersionsBuildGetToOneRelated**
```swift
    open class func appStoreVersionsBuildGetToOneRelated(id: String, fieldsBuilds: [FieldsBuilds_appStoreVersionsBuildGetToOneRelated]? = nil, completion: @escaping (_ data: BuildWithoutIncludesResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let fieldsBuilds = ["fieldsBuilds_example"] // [String] | the fields to include for returned resources of type builds (optional)

AppStoreVersionsAPI.appStoreVersionsBuildGetToOneRelated(id: id, fieldsBuilds: fieldsBuilds) { (response, error) in
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

### Return type

[**BuildWithoutIncludesResponse**](BuildWithoutIncludesResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **appStoreVersionsBuildGetToOneRelationship**
```swift
    open class func appStoreVersionsBuildGetToOneRelationship(id: String, completion: @escaping (_ data: AppStoreVersionBuildLinkageResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource

AppStoreVersionsAPI.appStoreVersionsBuildGetToOneRelationship(id: id) { (response, error) in
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

[**AppStoreVersionBuildLinkageResponse**](AppStoreVersionBuildLinkageResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **appStoreVersionsBuildUpdateToOneRelationship**
```swift
    open class func appStoreVersionsBuildUpdateToOneRelationship(id: String, appStoreVersionBuildLinkageRequest: AppStoreVersionBuildLinkageRequest, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let appStoreVersionBuildLinkageRequest = AppStoreVersionBuildLinkageRequest(data: AppEncryptionDeclaration_relationships_builds_data_inner(type: "type_example", id: "id_example")) // AppStoreVersionBuildLinkageRequest | Related linkage

AppStoreVersionsAPI.appStoreVersionsBuildUpdateToOneRelationship(id: id, appStoreVersionBuildLinkageRequest: appStoreVersionBuildLinkageRequest) { (response, error) in
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
 **appStoreVersionBuildLinkageRequest** | [**AppStoreVersionBuildLinkageRequest**](AppStoreVersionBuildLinkageRequest.md) | Related linkage | 

### Return type

Void (empty response body)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **appStoreVersionsCreateInstance**
```swift
    open class func appStoreVersionsCreateInstance(appStoreVersionCreateRequest: AppStoreVersionCreateRequest, completion: @escaping (_ data: AppStoreVersionResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let appStoreVersionCreateRequest = AppStoreVersionCreateRequest(data: AppStoreVersionCreateRequest_data(type: "type_example", attributes: AppStoreVersionCreateRequest_data_attributes(platform: Platform(), versionString: "versionString_example", copyright: "copyright_example", reviewType: "reviewType_example", releaseType: "releaseType_example", earliestReleaseDate: Date()), relationships: AppStoreVersionCreateRequest_data_relationships(app: AlternativeDistributionKeyCreateRequest_data_relationships_app(data: AlternativeDistributionKeyCreateRequest_data_relationships_app_data(type: "type_example", id: "id_example")), appStoreVersionLocalizations: AppStoreVersionCreateRequest_data_relationships_appStoreVersionLocalizations(data: [AppPreviewSet_relationships_appStoreVersionLocalization_data(type: "type_example", id: "id_example")]), build: AppStoreVersionCreateRequest_data_relationships_build(data: AppEncryptionDeclaration_relationships_builds_data_inner(type: "type_example", id: "id_example"))))) // AppStoreVersionCreateRequest | AppStoreVersion representation

AppStoreVersionsAPI.appStoreVersionsCreateInstance(appStoreVersionCreateRequest: appStoreVersionCreateRequest) { (response, error) in
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
 **appStoreVersionCreateRequest** | [**AppStoreVersionCreateRequest**](AppStoreVersionCreateRequest.md) | AppStoreVersion representation | 

### Return type

[**AppStoreVersionResponse**](AppStoreVersionResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **appStoreVersionsCustomerReviewsGetToManyRelated**
```swift
    open class func appStoreVersionsCustomerReviewsGetToManyRelated(id: String, filterRating: [String]? = nil, filterTerritory: [FilterTerritory_appStoreVersionsCustomerReviewsGetToManyRelated]? = nil, existsPublishedResponse: Bool? = nil, sort: [Sort_appStoreVersionsCustomerReviewsGetToManyRelated]? = nil, fieldsCustomerReviews: [FieldsCustomerReviews_appStoreVersionsCustomerReviewsGetToManyRelated]? = nil, fieldsCustomerReviewResponses: [FieldsCustomerReviewResponses_appStoreVersionsCustomerReviewsGetToManyRelated]? = nil, limit: Int? = nil, include: [Include_appStoreVersionsCustomerReviewsGetToManyRelated]? = nil, completion: @escaping (_ data: CustomerReviewsResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let filterRating = ["inner_example"] // [String] | filter by attribute 'rating' (optional)
let filterTerritory = ["filterTerritory_example"] // [String] | filter by attribute 'territory' (optional)
let existsPublishedResponse = true // Bool | filter by publishedResponse (optional)
let sort = ["sort_example"] // [String] | comma-separated list of sort expressions; resources will be sorted as specified (optional)
let fieldsCustomerReviews = ["fieldsCustomerReviews_example"] // [String] | the fields to include for returned resources of type customerReviews (optional)
let fieldsCustomerReviewResponses = ["fieldsCustomerReviewResponses_example"] // [String] | the fields to include for returned resources of type customerReviewResponses (optional)
let limit = 987 // Int | maximum resources per page (optional)
let include = ["include_example"] // [String] | comma-separated list of relationships to include (optional)

AppStoreVersionsAPI.appStoreVersionsCustomerReviewsGetToManyRelated(id: id, filterRating: filterRating, filterTerritory: filterTerritory, existsPublishedResponse: existsPublishedResponse, sort: sort, fieldsCustomerReviews: fieldsCustomerReviews, fieldsCustomerReviewResponses: fieldsCustomerReviewResponses, limit: limit, include: include) { (response, error) in
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
 **filterRating** | [**[String]**](String.md) | filter by attribute &#39;rating&#39; | [optional] 
 **filterTerritory** | [**[String]**](String.md) | filter by attribute &#39;territory&#39; | [optional] 
 **existsPublishedResponse** | **Bool** | filter by publishedResponse | [optional] 
 **sort** | [**[String]**](String.md) | comma-separated list of sort expressions; resources will be sorted as specified | [optional] 
 **fieldsCustomerReviews** | [**[String]**](String.md) | the fields to include for returned resources of type customerReviews | [optional] 
 **fieldsCustomerReviewResponses** | [**[String]**](String.md) | the fields to include for returned resources of type customerReviewResponses | [optional] 
 **limit** | **Int** | maximum resources per page | [optional] 
 **include** | [**[String]**](String.md) | comma-separated list of relationships to include | [optional] 

### Return type

[**CustomerReviewsResponse**](CustomerReviewsResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **appStoreVersionsDeleteInstance**
```swift
    open class func appStoreVersionsDeleteInstance(id: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource

AppStoreVersionsAPI.appStoreVersionsDeleteInstance(id: id) { (response, error) in
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

# **appStoreVersionsGetInstance**
```swift
    open class func appStoreVersionsGetInstance(id: String, fieldsAppStoreVersions: [FieldsAppStoreVersions_appStoreVersionsGetInstance]? = nil, include: [Include_appStoreVersionsGetInstance]? = nil, fieldsAppStoreVersionExperiments: [FieldsAppStoreVersionExperiments_appStoreVersionsGetInstance]? = nil, fieldsAppStoreVersionSubmissions: [FieldsAppStoreVersionSubmissions_appStoreVersionsGetInstance]? = nil, fieldsAgeRatingDeclarations: [FieldsAgeRatingDeclarations_appStoreVersionsGetInstance]? = nil, fieldsAlternativeDistributionPackages: [FieldsAlternativeDistributionPackages_appStoreVersionsGetInstance]? = nil, fieldsCustomerReviews: [FieldsCustomerReviews_appStoreVersionsGetInstance]? = nil, fieldsAppStoreReviewDetails: [FieldsAppStoreReviewDetails_appStoreVersionsGetInstance]? = nil, fieldsAppClipDefaultExperiences: [FieldsAppClipDefaultExperiences_appStoreVersionsGetInstance]? = nil, fieldsRoutingAppCoverages: [FieldsRoutingAppCoverages_appStoreVersionsGetInstance]? = nil, fieldsAppStoreVersionPhasedReleases: [FieldsAppStoreVersionPhasedReleases_appStoreVersionsGetInstance]? = nil, fieldsBuilds: [FieldsBuilds_appStoreVersionsGetInstance]? = nil, fieldsAppStoreVersionLocalizations: [FieldsAppStoreVersionLocalizations_appStoreVersionsGetInstance]? = nil, limitAppStoreVersionExperiments: Int? = nil, limitAppStoreVersionExperimentsV2: Int? = nil, limitAppStoreVersionLocalizations: Int? = nil, completion: @escaping (_ data: AppStoreVersionResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let fieldsAppStoreVersions = ["fieldsAppStoreVersions_example"] // [String] | the fields to include for returned resources of type appStoreVersions (optional)
let include = ["include_example"] // [String] | comma-separated list of relationships to include (optional)
let fieldsAppStoreVersionExperiments = ["fieldsAppStoreVersionExperiments_example"] // [String] | the fields to include for returned resources of type appStoreVersionExperiments (optional)
let fieldsAppStoreVersionSubmissions = ["fieldsAppStoreVersionSubmissions_example"] // [String] | the fields to include for returned resources of type appStoreVersionSubmissions (optional)
let fieldsAgeRatingDeclarations = ["fieldsAgeRatingDeclarations_example"] // [String] | the fields to include for returned resources of type ageRatingDeclarations (optional)
let fieldsAlternativeDistributionPackages = ["fieldsAlternativeDistributionPackages_example"] // [String] | the fields to include for returned resources of type alternativeDistributionPackages (optional)
let fieldsCustomerReviews = ["fieldsCustomerReviews_example"] // [String] | the fields to include for returned resources of type customerReviews (optional)
let fieldsAppStoreReviewDetails = ["fieldsAppStoreReviewDetails_example"] // [String] | the fields to include for returned resources of type appStoreReviewDetails (optional)
let fieldsAppClipDefaultExperiences = ["fieldsAppClipDefaultExperiences_example"] // [String] | the fields to include for returned resources of type appClipDefaultExperiences (optional)
let fieldsRoutingAppCoverages = ["fieldsRoutingAppCoverages_example"] // [String] | the fields to include for returned resources of type routingAppCoverages (optional)
let fieldsAppStoreVersionPhasedReleases = ["fieldsAppStoreVersionPhasedReleases_example"] // [String] | the fields to include for returned resources of type appStoreVersionPhasedReleases (optional)
let fieldsBuilds = ["fieldsBuilds_example"] // [String] | the fields to include for returned resources of type builds (optional)
let fieldsAppStoreVersionLocalizations = ["fieldsAppStoreVersionLocalizations_example"] // [String] | the fields to include for returned resources of type appStoreVersionLocalizations (optional)
let limitAppStoreVersionExperiments = 987 // Int | maximum number of related appStoreVersionExperiments returned (when they are included) (optional)
let limitAppStoreVersionExperimentsV2 = 987 // Int | maximum number of related appStoreVersionExperimentsV2 returned (when they are included) (optional)
let limitAppStoreVersionLocalizations = 987 // Int | maximum number of related appStoreVersionLocalizations returned (when they are included) (optional)

AppStoreVersionsAPI.appStoreVersionsGetInstance(id: id, fieldsAppStoreVersions: fieldsAppStoreVersions, include: include, fieldsAppStoreVersionExperiments: fieldsAppStoreVersionExperiments, fieldsAppStoreVersionSubmissions: fieldsAppStoreVersionSubmissions, fieldsAgeRatingDeclarations: fieldsAgeRatingDeclarations, fieldsAlternativeDistributionPackages: fieldsAlternativeDistributionPackages, fieldsCustomerReviews: fieldsCustomerReviews, fieldsAppStoreReviewDetails: fieldsAppStoreReviewDetails, fieldsAppClipDefaultExperiences: fieldsAppClipDefaultExperiences, fieldsRoutingAppCoverages: fieldsRoutingAppCoverages, fieldsAppStoreVersionPhasedReleases: fieldsAppStoreVersionPhasedReleases, fieldsBuilds: fieldsBuilds, fieldsAppStoreVersionLocalizations: fieldsAppStoreVersionLocalizations, limitAppStoreVersionExperiments: limitAppStoreVersionExperiments, limitAppStoreVersionExperimentsV2: limitAppStoreVersionExperimentsV2, limitAppStoreVersionLocalizations: limitAppStoreVersionLocalizations) { (response, error) in
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
 **include** | [**[String]**](String.md) | comma-separated list of relationships to include | [optional] 
 **fieldsAppStoreVersionExperiments** | [**[String]**](String.md) | the fields to include for returned resources of type appStoreVersionExperiments | [optional] 
 **fieldsAppStoreVersionSubmissions** | [**[String]**](String.md) | the fields to include for returned resources of type appStoreVersionSubmissions | [optional] 
 **fieldsAgeRatingDeclarations** | [**[String]**](String.md) | the fields to include for returned resources of type ageRatingDeclarations | [optional] 
 **fieldsAlternativeDistributionPackages** | [**[String]**](String.md) | the fields to include for returned resources of type alternativeDistributionPackages | [optional] 
 **fieldsCustomerReviews** | [**[String]**](String.md) | the fields to include for returned resources of type customerReviews | [optional] 
 **fieldsAppStoreReviewDetails** | [**[String]**](String.md) | the fields to include for returned resources of type appStoreReviewDetails | [optional] 
 **fieldsAppClipDefaultExperiences** | [**[String]**](String.md) | the fields to include for returned resources of type appClipDefaultExperiences | [optional] 
 **fieldsRoutingAppCoverages** | [**[String]**](String.md) | the fields to include for returned resources of type routingAppCoverages | [optional] 
 **fieldsAppStoreVersionPhasedReleases** | [**[String]**](String.md) | the fields to include for returned resources of type appStoreVersionPhasedReleases | [optional] 
 **fieldsBuilds** | [**[String]**](String.md) | the fields to include for returned resources of type builds | [optional] 
 **fieldsAppStoreVersionLocalizations** | [**[String]**](String.md) | the fields to include for returned resources of type appStoreVersionLocalizations | [optional] 
 **limitAppStoreVersionExperiments** | **Int** | maximum number of related appStoreVersionExperiments returned (when they are included) | [optional] 
 **limitAppStoreVersionExperimentsV2** | **Int** | maximum number of related appStoreVersionExperimentsV2 returned (when they are included) | [optional] 
 **limitAppStoreVersionLocalizations** | **Int** | maximum number of related appStoreVersionLocalizations returned (when they are included) | [optional] 

### Return type

[**AppStoreVersionResponse**](AppStoreVersionResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **appStoreVersionsRoutingAppCoverageGetToOneRelated**
```swift
    open class func appStoreVersionsRoutingAppCoverageGetToOneRelated(id: String, fieldsRoutingAppCoverages: [FieldsRoutingAppCoverages_appStoreVersionsRoutingAppCoverageGetToOneRelated]? = nil, completion: @escaping (_ data: RoutingAppCoverageWithoutIncludesResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let fieldsRoutingAppCoverages = ["fieldsRoutingAppCoverages_example"] // [String] | the fields to include for returned resources of type routingAppCoverages (optional)

AppStoreVersionsAPI.appStoreVersionsRoutingAppCoverageGetToOneRelated(id: id, fieldsRoutingAppCoverages: fieldsRoutingAppCoverages) { (response, error) in
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
 **fieldsRoutingAppCoverages** | [**[String]**](String.md) | the fields to include for returned resources of type routingAppCoverages | [optional] 

### Return type

[**RoutingAppCoverageWithoutIncludesResponse**](RoutingAppCoverageWithoutIncludesResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **appStoreVersionsUpdateInstance**
```swift
    open class func appStoreVersionsUpdateInstance(id: String, appStoreVersionUpdateRequest: AppStoreVersionUpdateRequest, completion: @escaping (_ data: AppStoreVersionResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let appStoreVersionUpdateRequest = AppStoreVersionUpdateRequest(data: AppStoreVersionUpdateRequest_data(type: "type_example", id: "id_example", attributes: AppStoreVersionUpdateRequest_data_attributes(versionString: "versionString_example", copyright: "copyright_example", reviewType: "reviewType_example", releaseType: "releaseType_example", earliestReleaseDate: Date(), downloadable: false), relationships: AppStoreVersionUpdateRequest_data_relationships(build: AppStoreVersionCreateRequest_data_relationships_build(data: AppEncryptionDeclaration_relationships_builds_data_inner(type: "type_example", id: "id_example")), appClipDefaultExperience: AppClipDefaultExperienceCreateRequest_data_relationships_appClipDefaultExperienceTemplate(data: AppClipAppStoreReviewDetail_relationships_appClipDefaultExperience_data(type: "type_example", id: "id_example"))))) // AppStoreVersionUpdateRequest | AppStoreVersion representation

AppStoreVersionsAPI.appStoreVersionsUpdateInstance(id: id, appStoreVersionUpdateRequest: appStoreVersionUpdateRequest) { (response, error) in
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
 **appStoreVersionUpdateRequest** | [**AppStoreVersionUpdateRequest**](AppStoreVersionUpdateRequest.md) | AppStoreVersion representation | 

### Return type

[**AppStoreVersionResponse**](AppStoreVersionResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

