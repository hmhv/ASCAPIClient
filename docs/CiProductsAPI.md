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
    open class func ciProductsAdditionalRepositoriesGetToManyRelated(id: String, filterId: [String]? = nil, fieldsScmGitReferences: [FieldsScmGitReferences_ciProductsAdditionalRepositoriesGetToManyRelated]? = nil, fieldsScmProviders: [FieldsScmProviders_ciProductsAdditionalRepositoriesGetToManyRelated]? = nil, fieldsScmRepositories: [FieldsScmRepositories_ciProductsAdditionalRepositoriesGetToManyRelated]? = nil, limit: Int? = nil, include: [Include_ciProductsAdditionalRepositoriesGetToManyRelated]? = nil, completion: @escaping (_ data: ScmRepositoriesResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let filterId = ["inner_example"] // [String] | filter by id(s) (optional)
let fieldsScmGitReferences = ["fieldsScmGitReferences_example"] // [String] | the fields to include for returned resources of type scmGitReferences (optional)
let fieldsScmProviders = ["fieldsScmProviders_example"] // [String] | the fields to include for returned resources of type scmProviders (optional)
let fieldsScmRepositories = ["fieldsScmRepositories_example"] // [String] | the fields to include for returned resources of type scmRepositories (optional)
let limit = 987 // Int | maximum resources per page (optional)
let include = ["include_example"] // [String] | comma-separated list of relationships to include (optional)

CiProductsAPI.ciProductsAdditionalRepositoriesGetToManyRelated(id: id, filterId: filterId, fieldsScmGitReferences: fieldsScmGitReferences, fieldsScmProviders: fieldsScmProviders, fieldsScmRepositories: fieldsScmRepositories, limit: limit, include: include) { (response, error) in
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
 **fieldsScmGitReferences** | [**[String]**](String.md) | the fields to include for returned resources of type scmGitReferences | [optional] 
 **fieldsScmProviders** | [**[String]**](String.md) | the fields to include for returned resources of type scmProviders | [optional] 
 **fieldsScmRepositories** | [**[String]**](String.md) | the fields to include for returned resources of type scmRepositories | [optional] 
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
    open class func ciProductsAppGetToOneRelated(id: String, fieldsBetaLicenseAgreements: [FieldsBetaLicenseAgreements_ciProductsAppGetToOneRelated]? = nil, fieldsBetaAppReviewDetails: [FieldsBetaAppReviewDetails_ciProductsAppGetToOneRelated]? = nil, fieldsAppClips: [FieldsAppClips_ciProductsAppGetToOneRelated]? = nil, fieldsBetaAppLocalizations: [FieldsBetaAppLocalizations_ciProductsAppGetToOneRelated]? = nil, fieldsAppInfos: [FieldsAppInfos_ciProductsAppGetToOneRelated]? = nil, fieldsPreReleaseVersions: [FieldsPreReleaseVersions_ciProductsAppGetToOneRelated]? = nil, fieldsInAppPurchases: [FieldsInAppPurchases_ciProductsAppGetToOneRelated]? = nil, fieldsCiProducts: [FieldsCiProducts_ciProductsAppGetToOneRelated]? = nil, fieldsReviewSubmissions: [FieldsReviewSubmissions_ciProductsAppGetToOneRelated]? = nil, fieldsBetaGroups: [FieldsBetaGroups_ciProductsAppGetToOneRelated]? = nil, fieldsAppPreOrders: [FieldsAppPreOrders_ciProductsAppGetToOneRelated]? = nil, fieldsAppPrices: [FieldsAppPrices_ciProductsAppGetToOneRelated]? = nil, fieldsGameCenterEnabledVersions: [FieldsGameCenterEnabledVersions_ciProductsAppGetToOneRelated]? = nil, fieldsEndUserLicenseAgreements: [FieldsEndUserLicenseAgreements_ciProductsAppGetToOneRelated]? = nil, fieldsAppStoreVersions: [FieldsAppStoreVersions_ciProductsAppGetToOneRelated]? = nil, fieldsAppCustomProductPages: [FieldsAppCustomProductPages_ciProductsAppGetToOneRelated]? = nil, fieldsApps: [FieldsApps_ciProductsAppGetToOneRelated]? = nil, fieldsAppEvents: [FieldsAppEvents_ciProductsAppGetToOneRelated]? = nil, fieldsTerritories: [FieldsTerritories_ciProductsAppGetToOneRelated]? = nil, fieldsBuilds: [FieldsBuilds_ciProductsAppGetToOneRelated]? = nil, limitBetaGroups: Int? = nil, limitAppStoreVersions: Int? = nil, limitPreReleaseVersions: Int? = nil, limitBetaAppLocalizations: Int? = nil, limitBuilds: Int? = nil, limitAppInfos: Int? = nil, limitAppClips: Int? = nil, limitPrices: Int? = nil, limitAvailableTerritories: Int? = nil, limitInAppPurchases: Int? = nil, limitGameCenterEnabledVersions: Int? = nil, limitAppCustomProductPages: Int? = nil, limitAppEvents: Int? = nil, limitReviewSubmissions: Int? = nil, include: [Include_ciProductsAppGetToOneRelated]? = nil, completion: @escaping (_ data: AppResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let fieldsBetaLicenseAgreements = ["fieldsBetaLicenseAgreements_example"] // [String] | the fields to include for returned resources of type betaLicenseAgreements (optional)
let fieldsBetaAppReviewDetails = ["fieldsBetaAppReviewDetails_example"] // [String] | the fields to include for returned resources of type betaAppReviewDetails (optional)
let fieldsAppClips = ["fieldsAppClips_example"] // [String] | the fields to include for returned resources of type appClips (optional)
let fieldsBetaAppLocalizations = ["fieldsBetaAppLocalizations_example"] // [String] | the fields to include for returned resources of type betaAppLocalizations (optional)
let fieldsAppInfos = ["fieldsAppInfos_example"] // [String] | the fields to include for returned resources of type appInfos (optional)
let fieldsPreReleaseVersions = ["fieldsPreReleaseVersions_example"] // [String] | the fields to include for returned resources of type preReleaseVersions (optional)
let fieldsInAppPurchases = ["fieldsInAppPurchases_example"] // [String] | the fields to include for returned resources of type inAppPurchases (optional)
let fieldsCiProducts = ["fieldsCiProducts_example"] // [String] | the fields to include for returned resources of type ciProducts (optional)
let fieldsReviewSubmissions = ["fieldsReviewSubmissions_example"] // [String] | the fields to include for returned resources of type reviewSubmissions (optional)
let fieldsBetaGroups = ["fieldsBetaGroups_example"] // [String] | the fields to include for returned resources of type betaGroups (optional)
let fieldsAppPreOrders = ["fieldsAppPreOrders_example"] // [String] | the fields to include for returned resources of type appPreOrders (optional)
let fieldsAppPrices = ["fieldsAppPrices_example"] // [String] | the fields to include for returned resources of type appPrices (optional)
let fieldsGameCenterEnabledVersions = ["fieldsGameCenterEnabledVersions_example"] // [String] | the fields to include for returned resources of type gameCenterEnabledVersions (optional)
let fieldsEndUserLicenseAgreements = ["fieldsEndUserLicenseAgreements_example"] // [String] | the fields to include for returned resources of type endUserLicenseAgreements (optional)
let fieldsAppStoreVersions = ["fieldsAppStoreVersions_example"] // [String] | the fields to include for returned resources of type appStoreVersions (optional)
let fieldsAppCustomProductPages = ["fieldsAppCustomProductPages_example"] // [String] | the fields to include for returned resources of type appCustomProductPages (optional)
let fieldsApps = ["fieldsApps_example"] // [String] | the fields to include for returned resources of type apps (optional)
let fieldsAppEvents = ["fieldsAppEvents_example"] // [String] | the fields to include for returned resources of type appEvents (optional)
let fieldsTerritories = ["fieldsTerritories_example"] // [String] | the fields to include for returned resources of type territories (optional)
let fieldsBuilds = ["fieldsBuilds_example"] // [String] | the fields to include for returned resources of type builds (optional)
let limitBetaGroups = 987 // Int | maximum number of related betaGroups returned (when they are included) (optional)
let limitAppStoreVersions = 987 // Int | maximum number of related appStoreVersions returned (when they are included) (optional)
let limitPreReleaseVersions = 987 // Int | maximum number of related preReleaseVersions returned (when they are included) (optional)
let limitBetaAppLocalizations = 987 // Int | maximum number of related betaAppLocalizations returned (when they are included) (optional)
let limitBuilds = 987 // Int | maximum number of related builds returned (when they are included) (optional)
let limitAppInfos = 987 // Int | maximum number of related appInfos returned (when they are included) (optional)
let limitAppClips = 987 // Int | maximum number of related appClips returned (when they are included) (optional)
let limitPrices = 987 // Int | maximum number of related prices returned (when they are included) (optional)
let limitAvailableTerritories = 987 // Int | maximum number of related availableTerritories returned (when they are included) (optional)
let limitInAppPurchases = 987 // Int | maximum number of related inAppPurchases returned (when they are included) (optional)
let limitGameCenterEnabledVersions = 987 // Int | maximum number of related gameCenterEnabledVersions returned (when they are included) (optional)
let limitAppCustomProductPages = 987 // Int | maximum number of related appCustomProductPages returned (when they are included) (optional)
let limitAppEvents = 987 // Int | maximum number of related appEvents returned (when they are included) (optional)
let limitReviewSubmissions = 987 // Int | maximum number of related reviewSubmissions returned (when they are included) (optional)
let include = ["include_example"] // [String] | comma-separated list of relationships to include (optional)

CiProductsAPI.ciProductsAppGetToOneRelated(id: id, fieldsBetaLicenseAgreements: fieldsBetaLicenseAgreements, fieldsBetaAppReviewDetails: fieldsBetaAppReviewDetails, fieldsAppClips: fieldsAppClips, fieldsBetaAppLocalizations: fieldsBetaAppLocalizations, fieldsAppInfos: fieldsAppInfos, fieldsPreReleaseVersions: fieldsPreReleaseVersions, fieldsInAppPurchases: fieldsInAppPurchases, fieldsCiProducts: fieldsCiProducts, fieldsReviewSubmissions: fieldsReviewSubmissions, fieldsBetaGroups: fieldsBetaGroups, fieldsAppPreOrders: fieldsAppPreOrders, fieldsAppPrices: fieldsAppPrices, fieldsGameCenterEnabledVersions: fieldsGameCenterEnabledVersions, fieldsEndUserLicenseAgreements: fieldsEndUserLicenseAgreements, fieldsAppStoreVersions: fieldsAppStoreVersions, fieldsAppCustomProductPages: fieldsAppCustomProductPages, fieldsApps: fieldsApps, fieldsAppEvents: fieldsAppEvents, fieldsTerritories: fieldsTerritories, fieldsBuilds: fieldsBuilds, limitBetaGroups: limitBetaGroups, limitAppStoreVersions: limitAppStoreVersions, limitPreReleaseVersions: limitPreReleaseVersions, limitBetaAppLocalizations: limitBetaAppLocalizations, limitBuilds: limitBuilds, limitAppInfos: limitAppInfos, limitAppClips: limitAppClips, limitPrices: limitPrices, limitAvailableTerritories: limitAvailableTerritories, limitInAppPurchases: limitInAppPurchases, limitGameCenterEnabledVersions: limitGameCenterEnabledVersions, limitAppCustomProductPages: limitAppCustomProductPages, limitAppEvents: limitAppEvents, limitReviewSubmissions: limitReviewSubmissions, include: include) { (response, error) in
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
 **fieldsBetaLicenseAgreements** | [**[String]**](String.md) | the fields to include for returned resources of type betaLicenseAgreements | [optional] 
 **fieldsBetaAppReviewDetails** | [**[String]**](String.md) | the fields to include for returned resources of type betaAppReviewDetails | [optional] 
 **fieldsAppClips** | [**[String]**](String.md) | the fields to include for returned resources of type appClips | [optional] 
 **fieldsBetaAppLocalizations** | [**[String]**](String.md) | the fields to include for returned resources of type betaAppLocalizations | [optional] 
 **fieldsAppInfos** | [**[String]**](String.md) | the fields to include for returned resources of type appInfos | [optional] 
 **fieldsPreReleaseVersions** | [**[String]**](String.md) | the fields to include for returned resources of type preReleaseVersions | [optional] 
 **fieldsInAppPurchases** | [**[String]**](String.md) | the fields to include for returned resources of type inAppPurchases | [optional] 
 **fieldsCiProducts** | [**[String]**](String.md) | the fields to include for returned resources of type ciProducts | [optional] 
 **fieldsReviewSubmissions** | [**[String]**](String.md) | the fields to include for returned resources of type reviewSubmissions | [optional] 
 **fieldsBetaGroups** | [**[String]**](String.md) | the fields to include for returned resources of type betaGroups | [optional] 
 **fieldsAppPreOrders** | [**[String]**](String.md) | the fields to include for returned resources of type appPreOrders | [optional] 
 **fieldsAppPrices** | [**[String]**](String.md) | the fields to include for returned resources of type appPrices | [optional] 
 **fieldsGameCenterEnabledVersions** | [**[String]**](String.md) | the fields to include for returned resources of type gameCenterEnabledVersions | [optional] 
 **fieldsEndUserLicenseAgreements** | [**[String]**](String.md) | the fields to include for returned resources of type endUserLicenseAgreements | [optional] 
 **fieldsAppStoreVersions** | [**[String]**](String.md) | the fields to include for returned resources of type appStoreVersions | [optional] 
 **fieldsAppCustomProductPages** | [**[String]**](String.md) | the fields to include for returned resources of type appCustomProductPages | [optional] 
 **fieldsApps** | [**[String]**](String.md) | the fields to include for returned resources of type apps | [optional] 
 **fieldsAppEvents** | [**[String]**](String.md) | the fields to include for returned resources of type appEvents | [optional] 
 **fieldsTerritories** | [**[String]**](String.md) | the fields to include for returned resources of type territories | [optional] 
 **fieldsBuilds** | [**[String]**](String.md) | the fields to include for returned resources of type builds | [optional] 
 **limitBetaGroups** | **Int** | maximum number of related betaGroups returned (when they are included) | [optional] 
 **limitAppStoreVersions** | **Int** | maximum number of related appStoreVersions returned (when they are included) | [optional] 
 **limitPreReleaseVersions** | **Int** | maximum number of related preReleaseVersions returned (when they are included) | [optional] 
 **limitBetaAppLocalizations** | **Int** | maximum number of related betaAppLocalizations returned (when they are included) | [optional] 
 **limitBuilds** | **Int** | maximum number of related builds returned (when they are included) | [optional] 
 **limitAppInfos** | **Int** | maximum number of related appInfos returned (when they are included) | [optional] 
 **limitAppClips** | **Int** | maximum number of related appClips returned (when they are included) | [optional] 
 **limitPrices** | **Int** | maximum number of related prices returned (when they are included) | [optional] 
 **limitAvailableTerritories** | **Int** | maximum number of related availableTerritories returned (when they are included) | [optional] 
 **limitInAppPurchases** | **Int** | maximum number of related inAppPurchases returned (when they are included) | [optional] 
 **limitGameCenterEnabledVersions** | **Int** | maximum number of related gameCenterEnabledVersions returned (when they are included) | [optional] 
 **limitAppCustomProductPages** | **Int** | maximum number of related appCustomProductPages returned (when they are included) | [optional] 
 **limitAppEvents** | **Int** | maximum number of related appEvents returned (when they are included) | [optional] 
 **limitReviewSubmissions** | **Int** | maximum number of related reviewSubmissions returned (when they are included) | [optional] 
 **include** | [**[String]**](String.md) | comma-separated list of relationships to include | [optional] 

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
    open class func ciProductsBuildRunsGetToManyRelated(id: String, filterBuilds: [String]? = nil, fieldsScmGitReferences: [FieldsScmGitReferences_ciProductsBuildRunsGetToManyRelated]? = nil, fieldsCiBuildRuns: [FieldsCiBuildRuns_ciProductsBuildRunsGetToManyRelated]? = nil, fieldsCiWorkflows: [FieldsCiWorkflows_ciProductsBuildRunsGetToManyRelated]? = nil, fieldsScmPullRequests: [FieldsScmPullRequests_ciProductsBuildRunsGetToManyRelated]? = nil, fieldsCiProducts: [FieldsCiProducts_ciProductsBuildRunsGetToManyRelated]? = nil, fieldsBuilds: [FieldsBuilds_ciProductsBuildRunsGetToManyRelated]? = nil, limit: Int? = nil, limitBuilds: Int? = nil, include: [Include_ciProductsBuildRunsGetToManyRelated]? = nil, completion: @escaping (_ data: CiBuildRunsResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let filterBuilds = ["inner_example"] // [String] | filter by id(s) of related 'builds' (optional)
let fieldsScmGitReferences = ["fieldsScmGitReferences_example"] // [String] | the fields to include for returned resources of type scmGitReferences (optional)
let fieldsCiBuildRuns = ["fieldsCiBuildRuns_example"] // [String] | the fields to include for returned resources of type ciBuildRuns (optional)
let fieldsCiWorkflows = ["fieldsCiWorkflows_example"] // [String] | the fields to include for returned resources of type ciWorkflows (optional)
let fieldsScmPullRequests = ["fieldsScmPullRequests_example"] // [String] | the fields to include for returned resources of type scmPullRequests (optional)
let fieldsCiProducts = ["fieldsCiProducts_example"] // [String] | the fields to include for returned resources of type ciProducts (optional)
let fieldsBuilds = ["fieldsBuilds_example"] // [String] | the fields to include for returned resources of type builds (optional)
let limit = 987 // Int | maximum resources per page (optional)
let limitBuilds = 987 // Int | maximum number of related builds returned (when they are included) (optional)
let include = ["include_example"] // [String] | comma-separated list of relationships to include (optional)

CiProductsAPI.ciProductsBuildRunsGetToManyRelated(id: id, filterBuilds: filterBuilds, fieldsScmGitReferences: fieldsScmGitReferences, fieldsCiBuildRuns: fieldsCiBuildRuns, fieldsCiWorkflows: fieldsCiWorkflows, fieldsScmPullRequests: fieldsScmPullRequests, fieldsCiProducts: fieldsCiProducts, fieldsBuilds: fieldsBuilds, limit: limit, limitBuilds: limitBuilds, include: include) { (response, error) in
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
 **fieldsScmGitReferences** | [**[String]**](String.md) | the fields to include for returned resources of type scmGitReferences | [optional] 
 **fieldsCiBuildRuns** | [**[String]**](String.md) | the fields to include for returned resources of type ciBuildRuns | [optional] 
 **fieldsCiWorkflows** | [**[String]**](String.md) | the fields to include for returned resources of type ciWorkflows | [optional] 
 **fieldsScmPullRequests** | [**[String]**](String.md) | the fields to include for returned resources of type scmPullRequests | [optional] 
 **fieldsCiProducts** | [**[String]**](String.md) | the fields to include for returned resources of type ciProducts | [optional] 
 **fieldsBuilds** | [**[String]**](String.md) | the fields to include for returned resources of type builds | [optional] 
 **limit** | **Int** | maximum resources per page | [optional] 
 **limitBuilds** | **Int** | maximum number of related builds returned (when they are included) | [optional] 
 **include** | [**[String]**](String.md) | comma-separated list of relationships to include | [optional] 

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
    open class func ciProductsGetCollection(filterProductType: [FilterProductType_ciProductsGetCollection]? = nil, filterApp: [String]? = nil, fieldsCiProducts: [FieldsCiProducts_ciProductsGetCollection]? = nil, limit: Int? = nil, include: [Include_ciProductsGetCollection]? = nil, fieldsCiBuildRuns: [FieldsCiBuildRuns_ciProductsGetCollection]? = nil, fieldsCiWorkflows: [FieldsCiWorkflows_ciProductsGetCollection]? = nil, fieldsApps: [FieldsApps_ciProductsGetCollection]? = nil, fieldsScmRepositories: [FieldsScmRepositories_ciProductsGetCollection]? = nil, limitPrimaryRepositories: Int? = nil, completion: @escaping (_ data: CiProductsResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let filterProductType = ["filterProductType_example"] // [String] | filter by attribute 'productType' (optional)
let filterApp = ["inner_example"] // [String] | filter by id(s) of related 'app' (optional)
let fieldsCiProducts = ["fieldsCiProducts_example"] // [String] | the fields to include for returned resources of type ciProducts (optional)
let limit = 987 // Int | maximum resources per page (optional)
let include = ["include_example"] // [String] | comma-separated list of relationships to include (optional)
let fieldsCiBuildRuns = ["fieldsCiBuildRuns_example"] // [String] | the fields to include for returned resources of type ciBuildRuns (optional)
let fieldsCiWorkflows = ["fieldsCiWorkflows_example"] // [String] | the fields to include for returned resources of type ciWorkflows (optional)
let fieldsApps = ["fieldsApps_example"] // [String] | the fields to include for returned resources of type apps (optional)
let fieldsScmRepositories = ["fieldsScmRepositories_example"] // [String] | the fields to include for returned resources of type scmRepositories (optional)
let limitPrimaryRepositories = 987 // Int | maximum number of related primaryRepositories returned (when they are included) (optional)

CiProductsAPI.ciProductsGetCollection(filterProductType: filterProductType, filterApp: filterApp, fieldsCiProducts: fieldsCiProducts, limit: limit, include: include, fieldsCiBuildRuns: fieldsCiBuildRuns, fieldsCiWorkflows: fieldsCiWorkflows, fieldsApps: fieldsApps, fieldsScmRepositories: fieldsScmRepositories, limitPrimaryRepositories: limitPrimaryRepositories) { (response, error) in
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
 **limit** | **Int** | maximum resources per page | [optional] 
 **include** | [**[String]**](String.md) | comma-separated list of relationships to include | [optional] 
 **fieldsCiBuildRuns** | [**[String]**](String.md) | the fields to include for returned resources of type ciBuildRuns | [optional] 
 **fieldsCiWorkflows** | [**[String]**](String.md) | the fields to include for returned resources of type ciWorkflows | [optional] 
 **fieldsApps** | [**[String]**](String.md) | the fields to include for returned resources of type apps | [optional] 
 **fieldsScmRepositories** | [**[String]**](String.md) | the fields to include for returned resources of type scmRepositories | [optional] 
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
    open class func ciProductsGetInstance(id: String, fieldsCiProducts: [FieldsCiProducts_ciProductsGetInstance]? = nil, include: [Include_ciProductsGetInstance]? = nil, fieldsCiBuildRuns: [FieldsCiBuildRuns_ciProductsGetInstance]? = nil, fieldsCiWorkflows: [FieldsCiWorkflows_ciProductsGetInstance]? = nil, fieldsApps: [FieldsApps_ciProductsGetInstance]? = nil, fieldsScmRepositories: [FieldsScmRepositories_ciProductsGetInstance]? = nil, limitPrimaryRepositories: Int? = nil, completion: @escaping (_ data: CiProductResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let fieldsCiProducts = ["fieldsCiProducts_example"] // [String] | the fields to include for returned resources of type ciProducts (optional)
let include = ["include_example"] // [String] | comma-separated list of relationships to include (optional)
let fieldsCiBuildRuns = ["fieldsCiBuildRuns_example"] // [String] | the fields to include for returned resources of type ciBuildRuns (optional)
let fieldsCiWorkflows = ["fieldsCiWorkflows_example"] // [String] | the fields to include for returned resources of type ciWorkflows (optional)
let fieldsApps = ["fieldsApps_example"] // [String] | the fields to include for returned resources of type apps (optional)
let fieldsScmRepositories = ["fieldsScmRepositories_example"] // [String] | the fields to include for returned resources of type scmRepositories (optional)
let limitPrimaryRepositories = 987 // Int | maximum number of related primaryRepositories returned (when they are included) (optional)

CiProductsAPI.ciProductsGetInstance(id: id, fieldsCiProducts: fieldsCiProducts, include: include, fieldsCiBuildRuns: fieldsCiBuildRuns, fieldsCiWorkflows: fieldsCiWorkflows, fieldsApps: fieldsApps, fieldsScmRepositories: fieldsScmRepositories, limitPrimaryRepositories: limitPrimaryRepositories) { (response, error) in
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
 **include** | [**[String]**](String.md) | comma-separated list of relationships to include | [optional] 
 **fieldsCiBuildRuns** | [**[String]**](String.md) | the fields to include for returned resources of type ciBuildRuns | [optional] 
 **fieldsCiWorkflows** | [**[String]**](String.md) | the fields to include for returned resources of type ciWorkflows | [optional] 
 **fieldsApps** | [**[String]**](String.md) | the fields to include for returned resources of type apps | [optional] 
 **fieldsScmRepositories** | [**[String]**](String.md) | the fields to include for returned resources of type scmRepositories | [optional] 
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
    open class func ciProductsPrimaryRepositoriesGetToManyRelated(id: String, filterId: [String]? = nil, fieldsScmGitReferences: [FieldsScmGitReferences_ciProductsPrimaryRepositoriesGetToManyRelated]? = nil, fieldsScmProviders: [FieldsScmProviders_ciProductsPrimaryRepositoriesGetToManyRelated]? = nil, fieldsScmRepositories: [FieldsScmRepositories_ciProductsPrimaryRepositoriesGetToManyRelated]? = nil, limit: Int? = nil, include: [Include_ciProductsPrimaryRepositoriesGetToManyRelated]? = nil, completion: @escaping (_ data: ScmRepositoriesResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let filterId = ["inner_example"] // [String] | filter by id(s) (optional)
let fieldsScmGitReferences = ["fieldsScmGitReferences_example"] // [String] | the fields to include for returned resources of type scmGitReferences (optional)
let fieldsScmProviders = ["fieldsScmProviders_example"] // [String] | the fields to include for returned resources of type scmProviders (optional)
let fieldsScmRepositories = ["fieldsScmRepositories_example"] // [String] | the fields to include for returned resources of type scmRepositories (optional)
let limit = 987 // Int | maximum resources per page (optional)
let include = ["include_example"] // [String] | comma-separated list of relationships to include (optional)

CiProductsAPI.ciProductsPrimaryRepositoriesGetToManyRelated(id: id, filterId: filterId, fieldsScmGitReferences: fieldsScmGitReferences, fieldsScmProviders: fieldsScmProviders, fieldsScmRepositories: fieldsScmRepositories, limit: limit, include: include) { (response, error) in
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
 **fieldsScmGitReferences** | [**[String]**](String.md) | the fields to include for returned resources of type scmGitReferences | [optional] 
 **fieldsScmProviders** | [**[String]**](String.md) | the fields to include for returned resources of type scmProviders | [optional] 
 **fieldsScmRepositories** | [**[String]**](String.md) | the fields to include for returned resources of type scmRepositories | [optional] 
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
    open class func ciProductsWorkflowsGetToManyRelated(id: String, fieldsCiXcodeVersions: [FieldsCiXcodeVersions_ciProductsWorkflowsGetToManyRelated]? = nil, fieldsCiWorkflows: [FieldsCiWorkflows_ciProductsWorkflowsGetToManyRelated]? = nil, fieldsCiMacOsVersions: [FieldsCiMacOsVersions_ciProductsWorkflowsGetToManyRelated]? = nil, fieldsCiProducts: [FieldsCiProducts_ciProductsWorkflowsGetToManyRelated]? = nil, fieldsScmRepositories: [FieldsScmRepositories_ciProductsWorkflowsGetToManyRelated]? = nil, limit: Int? = nil, include: [Include_ciProductsWorkflowsGetToManyRelated]? = nil, completion: @escaping (_ data: CiWorkflowsResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let fieldsCiXcodeVersions = ["fieldsCiXcodeVersions_example"] // [String] | the fields to include for returned resources of type ciXcodeVersions (optional)
let fieldsCiWorkflows = ["fieldsCiWorkflows_example"] // [String] | the fields to include for returned resources of type ciWorkflows (optional)
let fieldsCiMacOsVersions = ["fieldsCiMacOsVersions_example"] // [String] | the fields to include for returned resources of type ciMacOsVersions (optional)
let fieldsCiProducts = ["fieldsCiProducts_example"] // [String] | the fields to include for returned resources of type ciProducts (optional)
let fieldsScmRepositories = ["fieldsScmRepositories_example"] // [String] | the fields to include for returned resources of type scmRepositories (optional)
let limit = 987 // Int | maximum resources per page (optional)
let include = ["include_example"] // [String] | comma-separated list of relationships to include (optional)

CiProductsAPI.ciProductsWorkflowsGetToManyRelated(id: id, fieldsCiXcodeVersions: fieldsCiXcodeVersions, fieldsCiWorkflows: fieldsCiWorkflows, fieldsCiMacOsVersions: fieldsCiMacOsVersions, fieldsCiProducts: fieldsCiProducts, fieldsScmRepositories: fieldsScmRepositories, limit: limit, include: include) { (response, error) in
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
 **fieldsCiXcodeVersions** | [**[String]**](String.md) | the fields to include for returned resources of type ciXcodeVersions | [optional] 
 **fieldsCiWorkflows** | [**[String]**](String.md) | the fields to include for returned resources of type ciWorkflows | [optional] 
 **fieldsCiMacOsVersions** | [**[String]**](String.md) | the fields to include for returned resources of type ciMacOsVersions | [optional] 
 **fieldsCiProducts** | [**[String]**](String.md) | the fields to include for returned resources of type ciProducts | [optional] 
 **fieldsScmRepositories** | [**[String]**](String.md) | the fields to include for returned resources of type scmRepositories | [optional] 
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

