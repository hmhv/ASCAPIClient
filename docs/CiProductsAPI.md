# CiProductsAPI

All URIs are relative to *https://api.appstoreconnect.apple.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**ciProductsAdditionalRepositoriesGetToManyRelated**](CiProductsAPI.md#ciproductsadditionalrepositoriesgettomanyrelated) | **GET** /v1/ciProducts/{id}/additionalRepositories | 
[**ciProductsAppGetToOneRelated**](CiProductsAPI.md#ciproductsappgettoonerelated) | **GET** /v1/ciProducts/{id}/app | 
[**ciProductsBuildRunsGetToManyRelated**](CiProductsAPI.md#ciproductsbuildrunsgettomanyrelated) | **GET** /v1/ciProducts/{id}/buildRuns | 
[**ciProductsDeleteInstance**](CiProductsAPI.md#ciproductsdeleteinstance) | **DELETE** /v1/ciProducts/{id} | 
[**ciProductsGetCollection**](CiProductsAPI.md#ciproductsgetcollection) | **GET** /v1/ciProducts | 
[**ciProductsGetInstance**](CiProductsAPI.md#ciproductsgetinstance) | **GET** /v1/ciProducts/{id} | 
[**ciProductsPrimaryRepositoriesGetToManyRelated**](CiProductsAPI.md#ciproductsprimaryrepositoriesgettomanyrelated) | **GET** /v1/ciProducts/{id}/primaryRepositories | 
[**ciProductsWorkflowsGetToManyRelated**](CiProductsAPI.md#ciproductsworkflowsgettomanyrelated) | **GET** /v1/ciProducts/{id}/workflows | 


# **ciProductsAdditionalRepositoriesGetToManyRelated**
```swift
    open class func ciProductsAdditionalRepositoriesGetToManyRelated(id: String, filterId: [String]? = nil, fieldsScmRepositories: [FieldsScmRepositories_ciProductsAdditionalRepositoriesGetToManyRelated]? = nil, fieldsScmProviders: [FieldsScmProviders_ciProductsAdditionalRepositoriesGetToManyRelated]? = nil, fieldsScmGitReferences: [FieldsScmGitReferences_ciProductsAdditionalRepositoriesGetToManyRelated]? = nil, limit: Int? = nil, include: [Include_ciProductsAdditionalRepositoriesGetToManyRelated]? = nil, completion: @escaping (_ data: ScmRepositoriesResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let filterId = ["inner_example"] // [String] | filter by id(s) (optional)
let fieldsScmRepositories = ["fieldsScmRepositories_example"] // [String] | the fields to include for returned resources of type scmRepositories (optional)
let fieldsScmProviders = ["fieldsScmProviders_example"] // [String] | the fields to include for returned resources of type scmProviders (optional)
let fieldsScmGitReferences = ["fieldsScmGitReferences_example"] // [String] | the fields to include for returned resources of type scmGitReferences (optional)
let limit = 987 // Int | maximum resources per page (optional)
let include = ["include_example"] // [String] | comma-separated list of relationships to include (optional)

CiProductsAPI.ciProductsAdditionalRepositoriesGetToManyRelated(id: id, filterId: filterId, fieldsScmRepositories: fieldsScmRepositories, fieldsScmProviders: fieldsScmProviders, fieldsScmGitReferences: fieldsScmGitReferences, limit: limit, include: include) { (response, error) in
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
 **filterId** | [**[String]**](String.md) | filter by id(s) | [optional] 
 **fieldsScmRepositories** | [**[String]**](String.md) | the fields to include for returned resources of type scmRepositories | [optional] 
 **fieldsScmProviders** | [**[String]**](String.md) | the fields to include for returned resources of type scmProviders | [optional] 
 **fieldsScmGitReferences** | [**[String]**](String.md) | the fields to include for returned resources of type scmGitReferences | [optional] 
 **limit** | **Int** | maximum resources per page | [optional] 
 **include** | [**[String]**](String.md) | comma-separated list of relationships to include | [optional] 

### Return type

[**ScmRepositoriesResponse**](ScmRepositoriesResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ciProductsAppGetToOneRelated**
```swift
    open class func ciProductsAppGetToOneRelated(id: String, fieldsApps: [FieldsApps_ciProductsAppGetToOneRelated]? = nil, fieldsAppEncryptionDeclarations: [FieldsAppEncryptionDeclarations_ciProductsAppGetToOneRelated]? = nil, fieldsCiProducts: [FieldsCiProducts_ciProductsAppGetToOneRelated]? = nil, fieldsBetaGroups: [FieldsBetaGroups_ciProductsAppGetToOneRelated]? = nil, fieldsAppStoreVersions: [FieldsAppStoreVersions_ciProductsAppGetToOneRelated]? = nil, fieldsPreReleaseVersions: [FieldsPreReleaseVersions_ciProductsAppGetToOneRelated]? = nil, fieldsBetaAppLocalizations: [FieldsBetaAppLocalizations_ciProductsAppGetToOneRelated]? = nil, fieldsBuilds: [FieldsBuilds_ciProductsAppGetToOneRelated]? = nil, fieldsBetaLicenseAgreements: [FieldsBetaLicenseAgreements_ciProductsAppGetToOneRelated]? = nil, fieldsBetaAppReviewDetails: [FieldsBetaAppReviewDetails_ciProductsAppGetToOneRelated]? = nil, fieldsAppInfos: [FieldsAppInfos_ciProductsAppGetToOneRelated]? = nil, fieldsAppClips: [FieldsAppClips_ciProductsAppGetToOneRelated]? = nil, fieldsEndUserLicenseAgreements: [FieldsEndUserLicenseAgreements_ciProductsAppGetToOneRelated]? = nil, fieldsInAppPurchases: [FieldsInAppPurchases_ciProductsAppGetToOneRelated]? = nil, fieldsSubscriptionGroups: [FieldsSubscriptionGroups_ciProductsAppGetToOneRelated]? = nil, fieldsGameCenterEnabledVersions: [FieldsGameCenterEnabledVersions_ciProductsAppGetToOneRelated]? = nil, fieldsAppCustomProductPages: [FieldsAppCustomProductPages_ciProductsAppGetToOneRelated]? = nil, fieldsPromotedPurchases: [FieldsPromotedPurchases_ciProductsAppGetToOneRelated]? = nil, fieldsAppEvents: [FieldsAppEvents_ciProductsAppGetToOneRelated]? = nil, fieldsReviewSubmissions: [FieldsReviewSubmissions_ciProductsAppGetToOneRelated]? = nil, fieldsSubscriptionGracePeriods: [FieldsSubscriptionGracePeriods_ciProductsAppGetToOneRelated]? = nil, fieldsGameCenterDetails: [FieldsGameCenterDetails_ciProductsAppGetToOneRelated]? = nil, fieldsAppStoreVersionExperiments: [FieldsAppStoreVersionExperiments_ciProductsAppGetToOneRelated]? = nil, include: [Include_ciProductsAppGetToOneRelated]? = nil, limitAppEncryptionDeclarations: Int? = nil, limitBetaGroups: Int? = nil, limitAppStoreVersions: Int? = nil, limitPreReleaseVersions: Int? = nil, limitBetaAppLocalizations: Int? = nil, limitBuilds: Int? = nil, limitAppInfos: Int? = nil, limitAppClips: Int? = nil, limitInAppPurchases: Int? = nil, limitSubscriptionGroups: Int? = nil, limitGameCenterEnabledVersions: Int? = nil, limitAppCustomProductPages: Int? = nil, limitInAppPurchasesV2: Int? = nil, limitPromotedPurchases: Int? = nil, limitAppEvents: Int? = nil, limitReviewSubmissions: Int? = nil, limitAppStoreVersionExperimentsV2: Int? = nil, completion: @escaping (_ data: AppResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let fieldsApps = ["fieldsApps_example"] // [String] | the fields to include for returned resources of type apps (optional)
let fieldsAppEncryptionDeclarations = ["fieldsAppEncryptionDeclarations_example"] // [String] | the fields to include for returned resources of type appEncryptionDeclarations (optional)
let fieldsCiProducts = ["fieldsCiProducts_example"] // [String] | the fields to include for returned resources of type ciProducts (optional)
let fieldsBetaGroups = ["fieldsBetaGroups_example"] // [String] | the fields to include for returned resources of type betaGroups (optional)
let fieldsAppStoreVersions = ["fieldsAppStoreVersions_example"] // [String] | the fields to include for returned resources of type appStoreVersions (optional)
let fieldsPreReleaseVersions = ["fieldsPreReleaseVersions_example"] // [String] | the fields to include for returned resources of type preReleaseVersions (optional)
let fieldsBetaAppLocalizations = ["fieldsBetaAppLocalizations_example"] // [String] | the fields to include for returned resources of type betaAppLocalizations (optional)
let fieldsBuilds = ["fieldsBuilds_example"] // [String] | the fields to include for returned resources of type builds (optional)
let fieldsBetaLicenseAgreements = ["fieldsBetaLicenseAgreements_example"] // [String] | the fields to include for returned resources of type betaLicenseAgreements (optional)
let fieldsBetaAppReviewDetails = ["fieldsBetaAppReviewDetails_example"] // [String] | the fields to include for returned resources of type betaAppReviewDetails (optional)
let fieldsAppInfos = ["fieldsAppInfos_example"] // [String] | the fields to include for returned resources of type appInfos (optional)
let fieldsAppClips = ["fieldsAppClips_example"] // [String] | the fields to include for returned resources of type appClips (optional)
let fieldsEndUserLicenseAgreements = ["fieldsEndUserLicenseAgreements_example"] // [String] | the fields to include for returned resources of type endUserLicenseAgreements (optional)
let fieldsInAppPurchases = ["fieldsInAppPurchases_example"] // [String] | the fields to include for returned resources of type inAppPurchases (optional)
let fieldsSubscriptionGroups = ["fieldsSubscriptionGroups_example"] // [String] | the fields to include for returned resources of type subscriptionGroups (optional)
let fieldsGameCenterEnabledVersions = ["fieldsGameCenterEnabledVersions_example"] // [String] | the fields to include for returned resources of type gameCenterEnabledVersions (optional)
let fieldsAppCustomProductPages = ["fieldsAppCustomProductPages_example"] // [String] | the fields to include for returned resources of type appCustomProductPages (optional)
let fieldsPromotedPurchases = ["fieldsPromotedPurchases_example"] // [String] | the fields to include for returned resources of type promotedPurchases (optional)
let fieldsAppEvents = ["fieldsAppEvents_example"] // [String] | the fields to include for returned resources of type appEvents (optional)
let fieldsReviewSubmissions = ["fieldsReviewSubmissions_example"] // [String] | the fields to include for returned resources of type reviewSubmissions (optional)
let fieldsSubscriptionGracePeriods = ["fieldsSubscriptionGracePeriods_example"] // [String] | the fields to include for returned resources of type subscriptionGracePeriods (optional)
let fieldsGameCenterDetails = ["fieldsGameCenterDetails_example"] // [String] | the fields to include for returned resources of type gameCenterDetails (optional)
let fieldsAppStoreVersionExperiments = ["fieldsAppStoreVersionExperiments_example"] // [String] | the fields to include for returned resources of type appStoreVersionExperiments (optional)
let include = ["include_example"] // [String] | comma-separated list of relationships to include (optional)
let limitAppEncryptionDeclarations = 987 // Int | maximum number of related appEncryptionDeclarations returned (when they are included) (optional)
let limitBetaGroups = 987 // Int | maximum number of related betaGroups returned (when they are included) (optional)
let limitAppStoreVersions = 987 // Int | maximum number of related appStoreVersions returned (when they are included) (optional)
let limitPreReleaseVersions = 987 // Int | maximum number of related preReleaseVersions returned (when they are included) (optional)
let limitBetaAppLocalizations = 987 // Int | maximum number of related betaAppLocalizations returned (when they are included) (optional)
let limitBuilds = 987 // Int | maximum number of related builds returned (when they are included) (optional)
let limitAppInfos = 987 // Int | maximum number of related appInfos returned (when they are included) (optional)
let limitAppClips = 987 // Int | maximum number of related appClips returned (when they are included) (optional)
let limitInAppPurchases = 987 // Int | maximum number of related inAppPurchases returned (when they are included) (optional)
let limitSubscriptionGroups = 987 // Int | maximum number of related subscriptionGroups returned (when they are included) (optional)
let limitGameCenterEnabledVersions = 987 // Int | maximum number of related gameCenterEnabledVersions returned (when they are included) (optional)
let limitAppCustomProductPages = 987 // Int | maximum number of related appCustomProductPages returned (when they are included) (optional)
let limitInAppPurchasesV2 = 987 // Int | maximum number of related inAppPurchasesV2 returned (when they are included) (optional)
let limitPromotedPurchases = 987 // Int | maximum number of related promotedPurchases returned (when they are included) (optional)
let limitAppEvents = 987 // Int | maximum number of related appEvents returned (when they are included) (optional)
let limitReviewSubmissions = 987 // Int | maximum number of related reviewSubmissions returned (when they are included) (optional)
let limitAppStoreVersionExperimentsV2 = 987 // Int | maximum number of related appStoreVersionExperimentsV2 returned (when they are included) (optional)

CiProductsAPI.ciProductsAppGetToOneRelated(id: id, fieldsApps: fieldsApps, fieldsAppEncryptionDeclarations: fieldsAppEncryptionDeclarations, fieldsCiProducts: fieldsCiProducts, fieldsBetaGroups: fieldsBetaGroups, fieldsAppStoreVersions: fieldsAppStoreVersions, fieldsPreReleaseVersions: fieldsPreReleaseVersions, fieldsBetaAppLocalizations: fieldsBetaAppLocalizations, fieldsBuilds: fieldsBuilds, fieldsBetaLicenseAgreements: fieldsBetaLicenseAgreements, fieldsBetaAppReviewDetails: fieldsBetaAppReviewDetails, fieldsAppInfos: fieldsAppInfos, fieldsAppClips: fieldsAppClips, fieldsEndUserLicenseAgreements: fieldsEndUserLicenseAgreements, fieldsInAppPurchases: fieldsInAppPurchases, fieldsSubscriptionGroups: fieldsSubscriptionGroups, fieldsGameCenterEnabledVersions: fieldsGameCenterEnabledVersions, fieldsAppCustomProductPages: fieldsAppCustomProductPages, fieldsPromotedPurchases: fieldsPromotedPurchases, fieldsAppEvents: fieldsAppEvents, fieldsReviewSubmissions: fieldsReviewSubmissions, fieldsSubscriptionGracePeriods: fieldsSubscriptionGracePeriods, fieldsGameCenterDetails: fieldsGameCenterDetails, fieldsAppStoreVersionExperiments: fieldsAppStoreVersionExperiments, include: include, limitAppEncryptionDeclarations: limitAppEncryptionDeclarations, limitBetaGroups: limitBetaGroups, limitAppStoreVersions: limitAppStoreVersions, limitPreReleaseVersions: limitPreReleaseVersions, limitBetaAppLocalizations: limitBetaAppLocalizations, limitBuilds: limitBuilds, limitAppInfos: limitAppInfos, limitAppClips: limitAppClips, limitInAppPurchases: limitInAppPurchases, limitSubscriptionGroups: limitSubscriptionGroups, limitGameCenterEnabledVersions: limitGameCenterEnabledVersions, limitAppCustomProductPages: limitAppCustomProductPages, limitInAppPurchasesV2: limitInAppPurchasesV2, limitPromotedPurchases: limitPromotedPurchases, limitAppEvents: limitAppEvents, limitReviewSubmissions: limitReviewSubmissions, limitAppStoreVersionExperimentsV2: limitAppStoreVersionExperimentsV2) { (response, error) in
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
 **fieldsAppEncryptionDeclarations** | [**[String]**](String.md) | the fields to include for returned resources of type appEncryptionDeclarations | [optional] 
 **fieldsCiProducts** | [**[String]**](String.md) | the fields to include for returned resources of type ciProducts | [optional] 
 **fieldsBetaGroups** | [**[String]**](String.md) | the fields to include for returned resources of type betaGroups | [optional] 
 **fieldsAppStoreVersions** | [**[String]**](String.md) | the fields to include for returned resources of type appStoreVersions | [optional] 
 **fieldsPreReleaseVersions** | [**[String]**](String.md) | the fields to include for returned resources of type preReleaseVersions | [optional] 
 **fieldsBetaAppLocalizations** | [**[String]**](String.md) | the fields to include for returned resources of type betaAppLocalizations | [optional] 
 **fieldsBuilds** | [**[String]**](String.md) | the fields to include for returned resources of type builds | [optional] 
 **fieldsBetaLicenseAgreements** | [**[String]**](String.md) | the fields to include for returned resources of type betaLicenseAgreements | [optional] 
 **fieldsBetaAppReviewDetails** | [**[String]**](String.md) | the fields to include for returned resources of type betaAppReviewDetails | [optional] 
 **fieldsAppInfos** | [**[String]**](String.md) | the fields to include for returned resources of type appInfos | [optional] 
 **fieldsAppClips** | [**[String]**](String.md) | the fields to include for returned resources of type appClips | [optional] 
 **fieldsEndUserLicenseAgreements** | [**[String]**](String.md) | the fields to include for returned resources of type endUserLicenseAgreements | [optional] 
 **fieldsInAppPurchases** | [**[String]**](String.md) | the fields to include for returned resources of type inAppPurchases | [optional] 
 **fieldsSubscriptionGroups** | [**[String]**](String.md) | the fields to include for returned resources of type subscriptionGroups | [optional] 
 **fieldsGameCenterEnabledVersions** | [**[String]**](String.md) | the fields to include for returned resources of type gameCenterEnabledVersions | [optional] 
 **fieldsAppCustomProductPages** | [**[String]**](String.md) | the fields to include for returned resources of type appCustomProductPages | [optional] 
 **fieldsPromotedPurchases** | [**[String]**](String.md) | the fields to include for returned resources of type promotedPurchases | [optional] 
 **fieldsAppEvents** | [**[String]**](String.md) | the fields to include for returned resources of type appEvents | [optional] 
 **fieldsReviewSubmissions** | [**[String]**](String.md) | the fields to include for returned resources of type reviewSubmissions | [optional] 
 **fieldsSubscriptionGracePeriods** | [**[String]**](String.md) | the fields to include for returned resources of type subscriptionGracePeriods | [optional] 
 **fieldsGameCenterDetails** | [**[String]**](String.md) | the fields to include for returned resources of type gameCenterDetails | [optional] 
 **fieldsAppStoreVersionExperiments** | [**[String]**](String.md) | the fields to include for returned resources of type appStoreVersionExperiments | [optional] 
 **include** | [**[String]**](String.md) | comma-separated list of relationships to include | [optional] 
 **limitAppEncryptionDeclarations** | **Int** | maximum number of related appEncryptionDeclarations returned (when they are included) | [optional] 
 **limitBetaGroups** | **Int** | maximum number of related betaGroups returned (when they are included) | [optional] 
 **limitAppStoreVersions** | **Int** | maximum number of related appStoreVersions returned (when they are included) | [optional] 
 **limitPreReleaseVersions** | **Int** | maximum number of related preReleaseVersions returned (when they are included) | [optional] 
 **limitBetaAppLocalizations** | **Int** | maximum number of related betaAppLocalizations returned (when they are included) | [optional] 
 **limitBuilds** | **Int** | maximum number of related builds returned (when they are included) | [optional] 
 **limitAppInfos** | **Int** | maximum number of related appInfos returned (when they are included) | [optional] 
 **limitAppClips** | **Int** | maximum number of related appClips returned (when they are included) | [optional] 
 **limitInAppPurchases** | **Int** | maximum number of related inAppPurchases returned (when they are included) | [optional] 
 **limitSubscriptionGroups** | **Int** | maximum number of related subscriptionGroups returned (when they are included) | [optional] 
 **limitGameCenterEnabledVersions** | **Int** | maximum number of related gameCenterEnabledVersions returned (when they are included) | [optional] 
 **limitAppCustomProductPages** | **Int** | maximum number of related appCustomProductPages returned (when they are included) | [optional] 
 **limitInAppPurchasesV2** | **Int** | maximum number of related inAppPurchasesV2 returned (when they are included) | [optional] 
 **limitPromotedPurchases** | **Int** | maximum number of related promotedPurchases returned (when they are included) | [optional] 
 **limitAppEvents** | **Int** | maximum number of related appEvents returned (when they are included) | [optional] 
 **limitReviewSubmissions** | **Int** | maximum number of related reviewSubmissions returned (when they are included) | [optional] 
 **limitAppStoreVersionExperimentsV2** | **Int** | maximum number of related appStoreVersionExperimentsV2 returned (when they are included) | [optional] 

### Return type

[**AppResponse**](AppResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ciProductsBuildRunsGetToManyRelated**
```swift
    open class func ciProductsBuildRunsGetToManyRelated(id: String, filterBuilds: [String]? = nil, sort: [Sort_ciProductsBuildRunsGetToManyRelated]? = nil, fieldsCiBuildRuns: [FieldsCiBuildRuns_ciProductsBuildRunsGetToManyRelated]? = nil, fieldsBuilds: [FieldsBuilds_ciProductsBuildRunsGetToManyRelated]? = nil, fieldsCiWorkflows: [FieldsCiWorkflows_ciProductsBuildRunsGetToManyRelated]? = nil, fieldsCiProducts: [FieldsCiProducts_ciProductsBuildRunsGetToManyRelated]? = nil, fieldsScmGitReferences: [FieldsScmGitReferences_ciProductsBuildRunsGetToManyRelated]? = nil, fieldsScmPullRequests: [FieldsScmPullRequests_ciProductsBuildRunsGetToManyRelated]? = nil, limit: Int? = nil, include: [Include_ciProductsBuildRunsGetToManyRelated]? = nil, limitBuilds: Int? = nil, completion: @escaping (_ data: CiBuildRunsResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let filterBuilds = ["inner_example"] // [String] | filter by id(s) of related 'builds' (optional)
let sort = ["sort_example"] // [String] | comma-separated list of sort expressions; resources will be sorted as specified (optional)
let fieldsCiBuildRuns = ["fieldsCiBuildRuns_example"] // [String] | the fields to include for returned resources of type ciBuildRuns (optional)
let fieldsBuilds = ["fieldsBuilds_example"] // [String] | the fields to include for returned resources of type builds (optional)
let fieldsCiWorkflows = ["fieldsCiWorkflows_example"] // [String] | the fields to include for returned resources of type ciWorkflows (optional)
let fieldsCiProducts = ["fieldsCiProducts_example"] // [String] | the fields to include for returned resources of type ciProducts (optional)
let fieldsScmGitReferences = ["fieldsScmGitReferences_example"] // [String] | the fields to include for returned resources of type scmGitReferences (optional)
let fieldsScmPullRequests = ["fieldsScmPullRequests_example"] // [String] | the fields to include for returned resources of type scmPullRequests (optional)
let limit = 987 // Int | maximum resources per page (optional)
let include = ["include_example"] // [String] | comma-separated list of relationships to include (optional)
let limitBuilds = 987 // Int | maximum number of related builds returned (when they are included) (optional)

CiProductsAPI.ciProductsBuildRunsGetToManyRelated(id: id, filterBuilds: filterBuilds, sort: sort, fieldsCiBuildRuns: fieldsCiBuildRuns, fieldsBuilds: fieldsBuilds, fieldsCiWorkflows: fieldsCiWorkflows, fieldsCiProducts: fieldsCiProducts, fieldsScmGitReferences: fieldsScmGitReferences, fieldsScmPullRequests: fieldsScmPullRequests, limit: limit, include: include, limitBuilds: limitBuilds) { (response, error) in
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
 **filterBuilds** | [**[String]**](String.md) | filter by id(s) of related &#39;builds&#39; | [optional] 
 **sort** | [**[String]**](String.md) | comma-separated list of sort expressions; resources will be sorted as specified | [optional] 
 **fieldsCiBuildRuns** | [**[String]**](String.md) | the fields to include for returned resources of type ciBuildRuns | [optional] 
 **fieldsBuilds** | [**[String]**](String.md) | the fields to include for returned resources of type builds | [optional] 
 **fieldsCiWorkflows** | [**[String]**](String.md) | the fields to include for returned resources of type ciWorkflows | [optional] 
 **fieldsCiProducts** | [**[String]**](String.md) | the fields to include for returned resources of type ciProducts | [optional] 
 **fieldsScmGitReferences** | [**[String]**](String.md) | the fields to include for returned resources of type scmGitReferences | [optional] 
 **fieldsScmPullRequests** | [**[String]**](String.md) | the fields to include for returned resources of type scmPullRequests | [optional] 
 **limit** | **Int** | maximum resources per page | [optional] 
 **include** | [**[String]**](String.md) | comma-separated list of relationships to include | [optional] 
 **limitBuilds** | **Int** | maximum number of related builds returned (when they are included) | [optional] 

### Return type

[**CiBuildRunsResponse**](CiBuildRunsResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ciProductsDeleteInstance**
```swift
    open class func ciProductsDeleteInstance(id: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource

CiProductsAPI.ciProductsDeleteInstance(id: id) { (response, error) in
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

# **ciProductsGetCollection**
```swift
    open class func ciProductsGetCollection(filterProductType: [FilterProductType_ciProductsGetCollection]? = nil, filterApp: [String]? = nil, fieldsCiProducts: [FieldsCiProducts_ciProductsGetCollection]? = nil, fieldsApps: [FieldsApps_ciProductsGetCollection]? = nil, fieldsScmRepositories: [FieldsScmRepositories_ciProductsGetCollection]? = nil, limit: Int? = nil, include: [Include_ciProductsGetCollection]? = nil, limitPrimaryRepositories: Int? = nil, completion: @escaping (_ data: CiProductsResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let filterProductType = ["filterProductType_example"] // [String] | filter by attribute 'productType' (optional)
let filterApp = ["inner_example"] // [String] | filter by id(s) of related 'app' (optional)
let fieldsCiProducts = ["fieldsCiProducts_example"] // [String] | the fields to include for returned resources of type ciProducts (optional)
let fieldsApps = ["fieldsApps_example"] // [String] | the fields to include for returned resources of type apps (optional)
let fieldsScmRepositories = ["fieldsScmRepositories_example"] // [String] | the fields to include for returned resources of type scmRepositories (optional)
let limit = 987 // Int | maximum resources per page (optional)
let include = ["include_example"] // [String] | comma-separated list of relationships to include (optional)
let limitPrimaryRepositories = 987 // Int | maximum number of related primaryRepositories returned (when they are included) (optional)

CiProductsAPI.ciProductsGetCollection(filterProductType: filterProductType, filterApp: filterApp, fieldsCiProducts: fieldsCiProducts, fieldsApps: fieldsApps, fieldsScmRepositories: fieldsScmRepositories, limit: limit, include: include, limitPrimaryRepositories: limitPrimaryRepositories) { (response, error) in
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
 **filterProductType** | [**[String]**](String.md) | filter by attribute &#39;productType&#39; | [optional] 
 **filterApp** | [**[String]**](String.md) | filter by id(s) of related &#39;app&#39; | [optional] 
 **fieldsCiProducts** | [**[String]**](String.md) | the fields to include for returned resources of type ciProducts | [optional] 
 **fieldsApps** | [**[String]**](String.md) | the fields to include for returned resources of type apps | [optional] 
 **fieldsScmRepositories** | [**[String]**](String.md) | the fields to include for returned resources of type scmRepositories | [optional] 
 **limit** | **Int** | maximum resources per page | [optional] 
 **include** | [**[String]**](String.md) | comma-separated list of relationships to include | [optional] 
 **limitPrimaryRepositories** | **Int** | maximum number of related primaryRepositories returned (when they are included) | [optional] 

### Return type

[**CiProductsResponse**](CiProductsResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ciProductsGetInstance**
```swift
    open class func ciProductsGetInstance(id: String, fieldsCiProducts: [FieldsCiProducts_ciProductsGetInstance]? = nil, fieldsApps: [FieldsApps_ciProductsGetInstance]? = nil, fieldsScmRepositories: [FieldsScmRepositories_ciProductsGetInstance]? = nil, include: [Include_ciProductsGetInstance]? = nil, limitPrimaryRepositories: Int? = nil, completion: @escaping (_ data: CiProductResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let fieldsCiProducts = ["fieldsCiProducts_example"] // [String] | the fields to include for returned resources of type ciProducts (optional)
let fieldsApps = ["fieldsApps_example"] // [String] | the fields to include for returned resources of type apps (optional)
let fieldsScmRepositories = ["fieldsScmRepositories_example"] // [String] | the fields to include for returned resources of type scmRepositories (optional)
let include = ["include_example"] // [String] | comma-separated list of relationships to include (optional)
let limitPrimaryRepositories = 987 // Int | maximum number of related primaryRepositories returned (when they are included) (optional)

CiProductsAPI.ciProductsGetInstance(id: id, fieldsCiProducts: fieldsCiProducts, fieldsApps: fieldsApps, fieldsScmRepositories: fieldsScmRepositories, include: include, limitPrimaryRepositories: limitPrimaryRepositories) { (response, error) in
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
 **fieldsCiProducts** | [**[String]**](String.md) | the fields to include for returned resources of type ciProducts | [optional] 
 **fieldsApps** | [**[String]**](String.md) | the fields to include for returned resources of type apps | [optional] 
 **fieldsScmRepositories** | [**[String]**](String.md) | the fields to include for returned resources of type scmRepositories | [optional] 
 **include** | [**[String]**](String.md) | comma-separated list of relationships to include | [optional] 
 **limitPrimaryRepositories** | **Int** | maximum number of related primaryRepositories returned (when they are included) | [optional] 

### Return type

[**CiProductResponse**](CiProductResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ciProductsPrimaryRepositoriesGetToManyRelated**
```swift
    open class func ciProductsPrimaryRepositoriesGetToManyRelated(id: String, filterId: [String]? = nil, fieldsScmRepositories: [FieldsScmRepositories_ciProductsPrimaryRepositoriesGetToManyRelated]? = nil, fieldsScmProviders: [FieldsScmProviders_ciProductsPrimaryRepositoriesGetToManyRelated]? = nil, fieldsScmGitReferences: [FieldsScmGitReferences_ciProductsPrimaryRepositoriesGetToManyRelated]? = nil, limit: Int? = nil, include: [Include_ciProductsPrimaryRepositoriesGetToManyRelated]? = nil, completion: @escaping (_ data: ScmRepositoriesResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let filterId = ["inner_example"] // [String] | filter by id(s) (optional)
let fieldsScmRepositories = ["fieldsScmRepositories_example"] // [String] | the fields to include for returned resources of type scmRepositories (optional)
let fieldsScmProviders = ["fieldsScmProviders_example"] // [String] | the fields to include for returned resources of type scmProviders (optional)
let fieldsScmGitReferences = ["fieldsScmGitReferences_example"] // [String] | the fields to include for returned resources of type scmGitReferences (optional)
let limit = 987 // Int | maximum resources per page (optional)
let include = ["include_example"] // [String] | comma-separated list of relationships to include (optional)

CiProductsAPI.ciProductsPrimaryRepositoriesGetToManyRelated(id: id, filterId: filterId, fieldsScmRepositories: fieldsScmRepositories, fieldsScmProviders: fieldsScmProviders, fieldsScmGitReferences: fieldsScmGitReferences, limit: limit, include: include) { (response, error) in
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
 **filterId** | [**[String]**](String.md) | filter by id(s) | [optional] 
 **fieldsScmRepositories** | [**[String]**](String.md) | the fields to include for returned resources of type scmRepositories | [optional] 
 **fieldsScmProviders** | [**[String]**](String.md) | the fields to include for returned resources of type scmProviders | [optional] 
 **fieldsScmGitReferences** | [**[String]**](String.md) | the fields to include for returned resources of type scmGitReferences | [optional] 
 **limit** | **Int** | maximum resources per page | [optional] 
 **include** | [**[String]**](String.md) | comma-separated list of relationships to include | [optional] 

### Return type

[**ScmRepositoriesResponse**](ScmRepositoriesResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ciProductsWorkflowsGetToManyRelated**
```swift
    open class func ciProductsWorkflowsGetToManyRelated(id: String, fieldsCiWorkflows: [FieldsCiWorkflows_ciProductsWorkflowsGetToManyRelated]? = nil, fieldsCiProducts: [FieldsCiProducts_ciProductsWorkflowsGetToManyRelated]? = nil, fieldsScmRepositories: [FieldsScmRepositories_ciProductsWorkflowsGetToManyRelated]? = nil, fieldsCiXcodeVersions: [FieldsCiXcodeVersions_ciProductsWorkflowsGetToManyRelated]? = nil, fieldsCiMacOsVersions: [FieldsCiMacOsVersions_ciProductsWorkflowsGetToManyRelated]? = nil, limit: Int? = nil, include: [Include_ciProductsWorkflowsGetToManyRelated]? = nil, completion: @escaping (_ data: CiWorkflowsResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let fieldsCiWorkflows = ["fieldsCiWorkflows_example"] // [String] | the fields to include for returned resources of type ciWorkflows (optional)
let fieldsCiProducts = ["fieldsCiProducts_example"] // [String] | the fields to include for returned resources of type ciProducts (optional)
let fieldsScmRepositories = ["fieldsScmRepositories_example"] // [String] | the fields to include for returned resources of type scmRepositories (optional)
let fieldsCiXcodeVersions = ["fieldsCiXcodeVersions_example"] // [String] | the fields to include for returned resources of type ciXcodeVersions (optional)
let fieldsCiMacOsVersions = ["fieldsCiMacOsVersions_example"] // [String] | the fields to include for returned resources of type ciMacOsVersions (optional)
let limit = 987 // Int | maximum resources per page (optional)
let include = ["include_example"] // [String] | comma-separated list of relationships to include (optional)

CiProductsAPI.ciProductsWorkflowsGetToManyRelated(id: id, fieldsCiWorkflows: fieldsCiWorkflows, fieldsCiProducts: fieldsCiProducts, fieldsScmRepositories: fieldsScmRepositories, fieldsCiXcodeVersions: fieldsCiXcodeVersions, fieldsCiMacOsVersions: fieldsCiMacOsVersions, limit: limit, include: include) { (response, error) in
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
 **fieldsCiWorkflows** | [**[String]**](String.md) | the fields to include for returned resources of type ciWorkflows | [optional] 
 **fieldsCiProducts** | [**[String]**](String.md) | the fields to include for returned resources of type ciProducts | [optional] 
 **fieldsScmRepositories** | [**[String]**](String.md) | the fields to include for returned resources of type scmRepositories | [optional] 
 **fieldsCiXcodeVersions** | [**[String]**](String.md) | the fields to include for returned resources of type ciXcodeVersions | [optional] 
 **fieldsCiMacOsVersions** | [**[String]**](String.md) | the fields to include for returned resources of type ciMacOsVersions | [optional] 
 **limit** | **Int** | maximum resources per page | [optional] 
 **include** | [**[String]**](String.md) | comma-separated list of relationships to include | [optional] 

### Return type

[**CiWorkflowsResponse**](CiWorkflowsResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

