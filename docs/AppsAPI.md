# AppsAPI

All URIs are relative to *https://api.appstoreconnect.apple.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**appsAppClipsGetToManyRelated**](AppsAPI.md#appsappclipsgettomanyrelated) | **GET** /v1/apps/{id}/appClips | 
[**appsAppCustomProductPagesGetToManyRelated**](AppsAPI.md#appsappcustomproductpagesgettomanyrelated) | **GET** /v1/apps/{id}/appCustomProductPages | 
[**appsAppEventsGetToManyRelated**](AppsAPI.md#appsappeventsgettomanyrelated) | **GET** /v1/apps/{id}/appEvents | 
[**appsAppInfosGetToManyRelated**](AppsAPI.md#appsappinfosgettomanyrelated) | **GET** /v1/apps/{id}/appInfos | 
[**appsAppStoreVersionsGetToManyRelated**](AppsAPI.md#appsappstoreversionsgettomanyrelated) | **GET** /v1/apps/{id}/appStoreVersions | 
[**appsAvailableTerritoriesGetToManyRelated**](AppsAPI.md#appsavailableterritoriesgettomanyrelated) | **GET** /v1/apps/{id}/availableTerritories | 
[**appsBetaAppLocalizationsGetToManyRelated**](AppsAPI.md#appsbetaapplocalizationsgettomanyrelated) | **GET** /v1/apps/{id}/betaAppLocalizations | 
[**appsBetaAppReviewDetailGetToOneRelated**](AppsAPI.md#appsbetaappreviewdetailgettoonerelated) | **GET** /v1/apps/{id}/betaAppReviewDetail | 
[**appsBetaGroupsGetToManyRelated**](AppsAPI.md#appsbetagroupsgettomanyrelated) | **GET** /v1/apps/{id}/betaGroups | 
[**appsBetaLicenseAgreementGetToOneRelated**](AppsAPI.md#appsbetalicenseagreementgettoonerelated) | **GET** /v1/apps/{id}/betaLicenseAgreement | 
[**appsBetaTestersDeleteToManyRelationship**](AppsAPI.md#appsbetatestersdeletetomanyrelationship) | **DELETE** /v1/apps/{id}/relationships/betaTesters | 
[**appsBuildsGetToManyRelated**](AppsAPI.md#appsbuildsgettomanyrelated) | **GET** /v1/apps/{id}/builds | 
[**appsCiProductGetToOneRelated**](AppsAPI.md#appsciproductgettoonerelated) | **GET** /v1/apps/{id}/ciProduct | 
[**appsEndUserLicenseAgreementGetToOneRelated**](AppsAPI.md#appsenduserlicenseagreementgettoonerelated) | **GET** /v1/apps/{id}/endUserLicenseAgreement | 
[**appsGameCenterEnabledVersionsGetToManyRelated**](AppsAPI.md#appsgamecenterenabledversionsgettomanyrelated) | **GET** /v1/apps/{id}/gameCenterEnabledVersions | 
[**appsGetCollection**](AppsAPI.md#appsgetcollection) | **GET** /v1/apps | 
[**appsGetInstance**](AppsAPI.md#appsgetinstance) | **GET** /v1/apps/{id} | 
[**appsInAppPurchasesGetToManyRelated**](AppsAPI.md#appsinapppurchasesgettomanyrelated) | **GET** /v1/apps/{id}/inAppPurchases | 
[**appsPerfPowerMetricsGetToManyRelated**](AppsAPI.md#appsperfpowermetricsgettomanyrelated) | **GET** /v1/apps/{id}/perfPowerMetrics | 
[**appsPreOrderGetToOneRelated**](AppsAPI.md#appspreordergettoonerelated) | **GET** /v1/apps/{id}/preOrder | 
[**appsPreReleaseVersionsGetToManyRelated**](AppsAPI.md#appsprereleaseversionsgettomanyrelated) | **GET** /v1/apps/{id}/preReleaseVersions | 
[**appsPricePointsGetToManyRelated**](AppsAPI.md#appspricepointsgettomanyrelated) | **GET** /v1/apps/{id}/pricePoints | 
[**appsPricesGetToManyRelated**](AppsAPI.md#appspricesgettomanyrelated) | **GET** /v1/apps/{id}/prices | 
[**appsReviewSubmissionsGetToManyRelated**](AppsAPI.md#appsreviewsubmissionsgettomanyrelated) | **GET** /v1/apps/{id}/reviewSubmissions | 
[**appsUpdateInstance**](AppsAPI.md#appsupdateinstance) | **PATCH** /v1/apps/{id} | 


# **appsAppClipsGetToManyRelated**
```swift
    open class func appsAppClipsGetToManyRelated(id: String, filterBundleId: [String]? = nil, fieldsAppClips: [FieldsAppClips_appsAppClipsGetToManyRelated]? = nil, fieldsApps: [FieldsApps_appsAppClipsGetToManyRelated]? = nil, fieldsAppClipDefaultExperiences: [FieldsAppClipDefaultExperiences_appsAppClipsGetToManyRelated]? = nil, limit: Int? = nil, limitAppClipDefaultExperiences: Int? = nil, include: [Include_appsAppClipsGetToManyRelated]? = nil, completion: @escaping (_ data: AppClipsResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let filterBundleId = ["inner_example"] // [String] | filter by attribute 'bundleId' (optional)
let fieldsAppClips = ["fieldsAppClips_example"] // [String] | the fields to include for returned resources of type appClips (optional)
let fieldsApps = ["fieldsApps_example"] // [String] | the fields to include for returned resources of type apps (optional)
let fieldsAppClipDefaultExperiences = ["fieldsAppClipDefaultExperiences_example"] // [String] | the fields to include for returned resources of type appClipDefaultExperiences (optional)
let limit = 987 // Int | maximum resources per page (optional)
let limitAppClipDefaultExperiences = 987 // Int | maximum number of related appClipDefaultExperiences returned (when they are included) (optional)
let include = ["include_example"] // [String] | comma-separated list of relationships to include (optional)

AppsAPI.appsAppClipsGetToManyRelated(id: id, filterBundleId: filterBundleId, fieldsAppClips: fieldsAppClips, fieldsApps: fieldsApps, fieldsAppClipDefaultExperiences: fieldsAppClipDefaultExperiences, limit: limit, limitAppClipDefaultExperiences: limitAppClipDefaultExperiences, include: include) { (response, error) in
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
 **filterBundleId** | [**[String]**](String.md) | filter by attribute &#39;bundleId&#39; | [optional] 
 **fieldsAppClips** | [**[String]**](String.md) | the fields to include for returned resources of type appClips | [optional] 
 **fieldsApps** | [**[String]**](String.md) | the fields to include for returned resources of type apps | [optional] 
 **fieldsAppClipDefaultExperiences** | [**[String]**](String.md) | the fields to include for returned resources of type appClipDefaultExperiences | [optional] 
 **limit** | **Int** | maximum resources per page | [optional] 
 **limitAppClipDefaultExperiences** | **Int** | maximum number of related appClipDefaultExperiences returned (when they are included) | [optional] 
 **include** | [**[String]**](String.md) | comma-separated list of relationships to include | [optional] 

### Return type

[**AppClipsResponse**](AppClipsResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **appsAppCustomProductPagesGetToManyRelated**
```swift
    open class func appsAppCustomProductPagesGetToManyRelated(id: String, filterVisible: [String]? = nil, fieldsAppCustomProductPages: [FieldsAppCustomProductPages_appsAppCustomProductPagesGetToManyRelated]? = nil, fieldsAppCustomProductPageVersions: [FieldsAppCustomProductPageVersions_appsAppCustomProductPagesGetToManyRelated]? = nil, fieldsApps: [FieldsApps_appsAppCustomProductPagesGetToManyRelated]? = nil, limit: Int? = nil, limitAppCustomProductPageVersions: Int? = nil, include: [Include_appsAppCustomProductPagesGetToManyRelated]? = nil, completion: @escaping (_ data: AppCustomProductPagesResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let filterVisible = ["inner_example"] // [String] | filter by attribute 'visible' (optional)
let fieldsAppCustomProductPages = ["fieldsAppCustomProductPages_example"] // [String] | the fields to include for returned resources of type appCustomProductPages (optional)
let fieldsAppCustomProductPageVersions = ["fieldsAppCustomProductPageVersions_example"] // [String] | the fields to include for returned resources of type appCustomProductPageVersions (optional)
let fieldsApps = ["fieldsApps_example"] // [String] | the fields to include for returned resources of type apps (optional)
let limit = 987 // Int | maximum resources per page (optional)
let limitAppCustomProductPageVersions = 987 // Int | maximum number of related appCustomProductPageVersions returned (when they are included) (optional)
let include = ["include_example"] // [String] | comma-separated list of relationships to include (optional)

AppsAPI.appsAppCustomProductPagesGetToManyRelated(id: id, filterVisible: filterVisible, fieldsAppCustomProductPages: fieldsAppCustomProductPages, fieldsAppCustomProductPageVersions: fieldsAppCustomProductPageVersions, fieldsApps: fieldsApps, limit: limit, limitAppCustomProductPageVersions: limitAppCustomProductPageVersions, include: include) { (response, error) in
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
 **filterVisible** | [**[String]**](String.md) | filter by attribute &#39;visible&#39; | [optional] 
 **fieldsAppCustomProductPages** | [**[String]**](String.md) | the fields to include for returned resources of type appCustomProductPages | [optional] 
 **fieldsAppCustomProductPageVersions** | [**[String]**](String.md) | the fields to include for returned resources of type appCustomProductPageVersions | [optional] 
 **fieldsApps** | [**[String]**](String.md) | the fields to include for returned resources of type apps | [optional] 
 **limit** | **Int** | maximum resources per page | [optional] 
 **limitAppCustomProductPageVersions** | **Int** | maximum number of related appCustomProductPageVersions returned (when they are included) | [optional] 
 **include** | [**[String]**](String.md) | comma-separated list of relationships to include | [optional] 

### Return type

[**AppCustomProductPagesResponse**](AppCustomProductPagesResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **appsAppEventsGetToManyRelated**
```swift
    open class func appsAppEventsGetToManyRelated(id: String, filterEventState: [FilterEventState_appsAppEventsGetToManyRelated]? = nil, filterId: [String]? = nil, fieldsAppEventLocalizations: [FieldsAppEventLocalizations_appsAppEventsGetToManyRelated]? = nil, fieldsAppEvents: [FieldsAppEvents_appsAppEventsGetToManyRelated]? = nil, limit: Int? = nil, limitLocalizations: Int? = nil, include: [Include_appsAppEventsGetToManyRelated]? = nil, completion: @escaping (_ data: AppEventsResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let filterEventState = ["filterEventState_example"] // [String] | filter by attribute 'eventState' (optional)
let filterId = ["inner_example"] // [String] | filter by id(s) (optional)
let fieldsAppEventLocalizations = ["fieldsAppEventLocalizations_example"] // [String] | the fields to include for returned resources of type appEventLocalizations (optional)
let fieldsAppEvents = ["fieldsAppEvents_example"] // [String] | the fields to include for returned resources of type appEvents (optional)
let limit = 987 // Int | maximum resources per page (optional)
let limitLocalizations = 987 // Int | maximum number of related localizations returned (when they are included) (optional)
let include = ["include_example"] // [String] | comma-separated list of relationships to include (optional)

AppsAPI.appsAppEventsGetToManyRelated(id: id, filterEventState: filterEventState, filterId: filterId, fieldsAppEventLocalizations: fieldsAppEventLocalizations, fieldsAppEvents: fieldsAppEvents, limit: limit, limitLocalizations: limitLocalizations, include: include) { (response, error) in
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
 **filterEventState** | [**[String]**](String.md) | filter by attribute &#39;eventState&#39; | [optional] 
 **filterId** | [**[String]**](String.md) | filter by id(s) | [optional] 
 **fieldsAppEventLocalizations** | [**[String]**](String.md) | the fields to include for returned resources of type appEventLocalizations | [optional] 
 **fieldsAppEvents** | [**[String]**](String.md) | the fields to include for returned resources of type appEvents | [optional] 
 **limit** | **Int** | maximum resources per page | [optional] 
 **limitLocalizations** | **Int** | maximum number of related localizations returned (when they are included) | [optional] 
 **include** | [**[String]**](String.md) | comma-separated list of relationships to include | [optional] 

### Return type

[**AppEventsResponse**](AppEventsResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **appsAppInfosGetToManyRelated**
```swift
    open class func appsAppInfosGetToManyRelated(id: String, fieldsAgeRatingDeclarations: [FieldsAgeRatingDeclarations_appsAppInfosGetToManyRelated]? = nil, fieldsAppInfos: [FieldsAppInfos_appsAppInfosGetToManyRelated]? = nil, fieldsAppInfoLocalizations: [FieldsAppInfoLocalizations_appsAppInfosGetToManyRelated]? = nil, fieldsAppCategories: [FieldsAppCategories_appsAppInfosGetToManyRelated]? = nil, fieldsApps: [FieldsApps_appsAppInfosGetToManyRelated]? = nil, limit: Int? = nil, limitAppInfoLocalizations: Int? = nil, include: [Include_appsAppInfosGetToManyRelated]? = nil, completion: @escaping (_ data: AppInfosResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let fieldsAgeRatingDeclarations = ["fieldsAgeRatingDeclarations_example"] // [String] | the fields to include for returned resources of type ageRatingDeclarations (optional)
let fieldsAppInfos = ["fieldsAppInfos_example"] // [String] | the fields to include for returned resources of type appInfos (optional)
let fieldsAppInfoLocalizations = ["fieldsAppInfoLocalizations_example"] // [String] | the fields to include for returned resources of type appInfoLocalizations (optional)
let fieldsAppCategories = ["fieldsAppCategories_example"] // [String] | the fields to include for returned resources of type appCategories (optional)
let fieldsApps = ["fieldsApps_example"] // [String] | the fields to include for returned resources of type apps (optional)
let limit = 987 // Int | maximum resources per page (optional)
let limitAppInfoLocalizations = 987 // Int | maximum number of related appInfoLocalizations returned (when they are included) (optional)
let include = ["include_example"] // [String] | comma-separated list of relationships to include (optional)

AppsAPI.appsAppInfosGetToManyRelated(id: id, fieldsAgeRatingDeclarations: fieldsAgeRatingDeclarations, fieldsAppInfos: fieldsAppInfos, fieldsAppInfoLocalizations: fieldsAppInfoLocalizations, fieldsAppCategories: fieldsAppCategories, fieldsApps: fieldsApps, limit: limit, limitAppInfoLocalizations: limitAppInfoLocalizations, include: include) { (response, error) in
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
 **fieldsAppInfos** | [**[String]**](String.md) | the fields to include for returned resources of type appInfos | [optional] 
 **fieldsAppInfoLocalizations** | [**[String]**](String.md) | the fields to include for returned resources of type appInfoLocalizations | [optional] 
 **fieldsAppCategories** | [**[String]**](String.md) | the fields to include for returned resources of type appCategories | [optional] 
 **fieldsApps** | [**[String]**](String.md) | the fields to include for returned resources of type apps | [optional] 
 **limit** | **Int** | maximum resources per page | [optional] 
 **limitAppInfoLocalizations** | **Int** | maximum number of related appInfoLocalizations returned (when they are included) | [optional] 
 **include** | [**[String]**](String.md) | comma-separated list of relationships to include | [optional] 

### Return type

[**AppInfosResponse**](AppInfosResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **appsAppStoreVersionsGetToManyRelated**
```swift
    open class func appsAppStoreVersionsGetToManyRelated(id: String, filterAppStoreState: [FilterAppStoreState_appsAppStoreVersionsGetToManyRelated]? = nil, filterPlatform: [FilterPlatform_appsAppStoreVersionsGetToManyRelated]? = nil, filterVersionString: [String]? = nil, filterId: [String]? = nil, fieldsAppStoreVersionExperiments: [FieldsAppStoreVersionExperiments_appsAppStoreVersionsGetToManyRelated]? = nil, fieldsAgeRatingDeclarations: [FieldsAgeRatingDeclarations_appsAppStoreVersionsGetToManyRelated]? = nil, fieldsAppStoreVersionSubmissions: [FieldsAppStoreVersionSubmissions_appsAppStoreVersionsGetToManyRelated]? = nil, fieldsAppStoreReviewDetails: [FieldsAppStoreReviewDetails_appsAppStoreVersionsGetToManyRelated]? = nil, fieldsAppStoreVersions: [FieldsAppStoreVersions_appsAppStoreVersionsGetToManyRelated]? = nil, fieldsIdfaDeclarations: [FieldsIdfaDeclarations_appsAppStoreVersionsGetToManyRelated]? = nil, fieldsApps: [FieldsApps_appsAppStoreVersionsGetToManyRelated]? = nil, fieldsRoutingAppCoverages: [FieldsRoutingAppCoverages_appsAppStoreVersionsGetToManyRelated]? = nil, fieldsAppClipDefaultExperiences: [FieldsAppClipDefaultExperiences_appsAppStoreVersionsGetToManyRelated]? = nil, fieldsAppStoreVersionPhasedReleases: [FieldsAppStoreVersionPhasedReleases_appsAppStoreVersionsGetToManyRelated]? = nil, fieldsBuilds: [FieldsBuilds_appsAppStoreVersionsGetToManyRelated]? = nil, fieldsAppStoreVersionLocalizations: [FieldsAppStoreVersionLocalizations_appsAppStoreVersionsGetToManyRelated]? = nil, limit: Int? = nil, limitAppStoreVersionLocalizations: Int? = nil, limitAppStoreVersionExperiments: Int? = nil, include: [Include_appsAppStoreVersionsGetToManyRelated]? = nil, completion: @escaping (_ data: AppStoreVersionsResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let filterAppStoreState = ["filterAppStoreState_example"] // [String] | filter by attribute 'appStoreState' (optional)
let filterPlatform = ["filterPlatform_example"] // [String] | filter by attribute 'platform' (optional)
let filterVersionString = ["inner_example"] // [String] | filter by attribute 'versionString' (optional)
let filterId = ["inner_example"] // [String] | filter by id(s) (optional)
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
let limit = 987 // Int | maximum resources per page (optional)
let limitAppStoreVersionLocalizations = 987 // Int | maximum number of related appStoreVersionLocalizations returned (when they are included) (optional)
let limitAppStoreVersionExperiments = 987 // Int | maximum number of related appStoreVersionExperiments returned (when they are included) (optional)
let include = ["include_example"] // [String] | comma-separated list of relationships to include (optional)

AppsAPI.appsAppStoreVersionsGetToManyRelated(id: id, filterAppStoreState: filterAppStoreState, filterPlatform: filterPlatform, filterVersionString: filterVersionString, filterId: filterId, fieldsAppStoreVersionExperiments: fieldsAppStoreVersionExperiments, fieldsAgeRatingDeclarations: fieldsAgeRatingDeclarations, fieldsAppStoreVersionSubmissions: fieldsAppStoreVersionSubmissions, fieldsAppStoreReviewDetails: fieldsAppStoreReviewDetails, fieldsAppStoreVersions: fieldsAppStoreVersions, fieldsIdfaDeclarations: fieldsIdfaDeclarations, fieldsApps: fieldsApps, fieldsRoutingAppCoverages: fieldsRoutingAppCoverages, fieldsAppClipDefaultExperiences: fieldsAppClipDefaultExperiences, fieldsAppStoreVersionPhasedReleases: fieldsAppStoreVersionPhasedReleases, fieldsBuilds: fieldsBuilds, fieldsAppStoreVersionLocalizations: fieldsAppStoreVersionLocalizations, limit: limit, limitAppStoreVersionLocalizations: limitAppStoreVersionLocalizations, limitAppStoreVersionExperiments: limitAppStoreVersionExperiments, include: include) { (response, error) in
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
 **filterAppStoreState** | [**[String]**](String.md) | filter by attribute &#39;appStoreState&#39; | [optional] 
 **filterPlatform** | [**[String]**](String.md) | filter by attribute &#39;platform&#39; | [optional] 
 **filterVersionString** | [**[String]**](String.md) | filter by attribute &#39;versionString&#39; | [optional] 
 **filterId** | [**[String]**](String.md) | filter by id(s) | [optional] 
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
 **limit** | **Int** | maximum resources per page | [optional] 
 **limitAppStoreVersionLocalizations** | **Int** | maximum number of related appStoreVersionLocalizations returned (when they are included) | [optional] 
 **limitAppStoreVersionExperiments** | **Int** | maximum number of related appStoreVersionExperiments returned (when they are included) | [optional] 
 **include** | [**[String]**](String.md) | comma-separated list of relationships to include | [optional] 

### Return type

[**AppStoreVersionsResponse**](AppStoreVersionsResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **appsAvailableTerritoriesGetToManyRelated**
```swift
    open class func appsAvailableTerritoriesGetToManyRelated(id: String, fieldsTerritories: [FieldsTerritories_appsAvailableTerritoriesGetToManyRelated]? = nil, limit: Int? = nil, completion: @escaping (_ data: TerritoriesResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let fieldsTerritories = ["fieldsTerritories_example"] // [String] | the fields to include for returned resources of type territories (optional)
let limit = 987 // Int | maximum resources per page (optional)

AppsAPI.appsAvailableTerritoriesGetToManyRelated(id: id, fieldsTerritories: fieldsTerritories, limit: limit) { (response, error) in
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
 **fieldsTerritories** | [**[String]**](String.md) | the fields to include for returned resources of type territories | [optional] 
 **limit** | **Int** | maximum resources per page | [optional] 

### Return type

[**TerritoriesResponse**](TerritoriesResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **appsBetaAppLocalizationsGetToManyRelated**
```swift
    open class func appsBetaAppLocalizationsGetToManyRelated(id: String, fieldsBetaAppLocalizations: [FieldsBetaAppLocalizations_appsBetaAppLocalizationsGetToManyRelated]? = nil, limit: Int? = nil, completion: @escaping (_ data: BetaAppLocalizationsResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let fieldsBetaAppLocalizations = ["fieldsBetaAppLocalizations_example"] // [String] | the fields to include for returned resources of type betaAppLocalizations (optional)
let limit = 987 // Int | maximum resources per page (optional)

AppsAPI.appsBetaAppLocalizationsGetToManyRelated(id: id, fieldsBetaAppLocalizations: fieldsBetaAppLocalizations, limit: limit) { (response, error) in
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
 **fieldsBetaAppLocalizations** | [**[String]**](String.md) | the fields to include for returned resources of type betaAppLocalizations | [optional] 
 **limit** | **Int** | maximum resources per page | [optional] 

### Return type

[**BetaAppLocalizationsResponse**](BetaAppLocalizationsResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **appsBetaAppReviewDetailGetToOneRelated**
```swift
    open class func appsBetaAppReviewDetailGetToOneRelated(id: String, fieldsBetaAppReviewDetails: [FieldsBetaAppReviewDetails_appsBetaAppReviewDetailGetToOneRelated]? = nil, completion: @escaping (_ data: BetaAppReviewDetailResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let fieldsBetaAppReviewDetails = ["fieldsBetaAppReviewDetails_example"] // [String] | the fields to include for returned resources of type betaAppReviewDetails (optional)

AppsAPI.appsBetaAppReviewDetailGetToOneRelated(id: id, fieldsBetaAppReviewDetails: fieldsBetaAppReviewDetails) { (response, error) in
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
 **fieldsBetaAppReviewDetails** | [**[String]**](String.md) | the fields to include for returned resources of type betaAppReviewDetails | [optional] 

### Return type

[**BetaAppReviewDetailResponse**](BetaAppReviewDetailResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **appsBetaGroupsGetToManyRelated**
```swift
    open class func appsBetaGroupsGetToManyRelated(id: String, fieldsBetaGroups: [FieldsBetaGroups_appsBetaGroupsGetToManyRelated]? = nil, limit: Int? = nil, completion: @escaping (_ data: BetaGroupsResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let fieldsBetaGroups = ["fieldsBetaGroups_example"] // [String] | the fields to include for returned resources of type betaGroups (optional)
let limit = 987 // Int | maximum resources per page (optional)

AppsAPI.appsBetaGroupsGetToManyRelated(id: id, fieldsBetaGroups: fieldsBetaGroups, limit: limit) { (response, error) in
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

[**BetaGroupsResponse**](BetaGroupsResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **appsBetaLicenseAgreementGetToOneRelated**
```swift
    open class func appsBetaLicenseAgreementGetToOneRelated(id: String, fieldsBetaLicenseAgreements: [FieldsBetaLicenseAgreements_appsBetaLicenseAgreementGetToOneRelated]? = nil, completion: @escaping (_ data: BetaLicenseAgreementResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let fieldsBetaLicenseAgreements = ["fieldsBetaLicenseAgreements_example"] // [String] | the fields to include for returned resources of type betaLicenseAgreements (optional)

AppsAPI.appsBetaLicenseAgreementGetToOneRelated(id: id, fieldsBetaLicenseAgreements: fieldsBetaLicenseAgreements) { (response, error) in
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

### Return type

[**BetaLicenseAgreementResponse**](BetaLicenseAgreementResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **appsBetaTestersDeleteToManyRelationship**
```swift
    open class func appsBetaTestersDeleteToManyRelationship(id: String, appBetaTestersLinkagesRequest: AppBetaTestersLinkagesRequest, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let appBetaTestersLinkagesRequest = AppBetaTestersLinkagesRequest(data: [BetaGroup_relationships_betaTesters_data_inner(type: "type_example", id: "id_example")]) // AppBetaTestersLinkagesRequest | List of related linkages

AppsAPI.appsBetaTestersDeleteToManyRelationship(id: id, appBetaTestersLinkagesRequest: appBetaTestersLinkagesRequest) { (response, error) in
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
 **appBetaTestersLinkagesRequest** | [**AppBetaTestersLinkagesRequest**](AppBetaTestersLinkagesRequest.md) | List of related linkages | 

### Return type

Void (empty response body)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **appsBuildsGetToManyRelated**
```swift
    open class func appsBuildsGetToManyRelated(id: String, fieldsBuilds: [FieldsBuilds_appsBuildsGetToManyRelated]? = nil, limit: Int? = nil, completion: @escaping (_ data: BuildsResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let fieldsBuilds = ["fieldsBuilds_example"] // [String] | the fields to include for returned resources of type builds (optional)
let limit = 987 // Int | maximum resources per page (optional)

AppsAPI.appsBuildsGetToManyRelated(id: id, fieldsBuilds: fieldsBuilds, limit: limit) { (response, error) in
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

[**BuildsResponse**](BuildsResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **appsCiProductGetToOneRelated**
```swift
    open class func appsCiProductGetToOneRelated(id: String, fieldsCiProducts: [FieldsCiProducts_appsCiProductGetToOneRelated]? = nil, fieldsApps: [FieldsApps_appsCiProductGetToOneRelated]? = nil, fieldsScmRepositories: [FieldsScmRepositories_appsCiProductGetToOneRelated]? = nil, fieldsBundleIds: [FieldsBundleIds_appsCiProductGetToOneRelated]? = nil, limitPrimaryRepositories: Int? = nil, include: [Include_appsCiProductGetToOneRelated]? = nil, completion: @escaping (_ data: CiProductResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let fieldsCiProducts = ["fieldsCiProducts_example"] // [String] | the fields to include for returned resources of type ciProducts (optional)
let fieldsApps = ["fieldsApps_example"] // [String] | the fields to include for returned resources of type apps (optional)
let fieldsScmRepositories = ["fieldsScmRepositories_example"] // [String] | the fields to include for returned resources of type scmRepositories (optional)
let fieldsBundleIds = ["fieldsBundleIds_example"] // [String] | the fields to include for returned resources of type bundleIds (optional)
let limitPrimaryRepositories = 987 // Int | maximum number of related primaryRepositories returned (when they are included) (optional)
let include = ["include_example"] // [String] | comma-separated list of relationships to include (optional)

AppsAPI.appsCiProductGetToOneRelated(id: id, fieldsCiProducts: fieldsCiProducts, fieldsApps: fieldsApps, fieldsScmRepositories: fieldsScmRepositories, fieldsBundleIds: fieldsBundleIds, limitPrimaryRepositories: limitPrimaryRepositories, include: include) { (response, error) in
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
 **fieldsBundleIds** | [**[String]**](String.md) | the fields to include for returned resources of type bundleIds | [optional] 
 **limitPrimaryRepositories** | **Int** | maximum number of related primaryRepositories returned (when they are included) | [optional] 
 **include** | [**[String]**](String.md) | comma-separated list of relationships to include | [optional] 

### Return type

[**CiProductResponse**](CiProductResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **appsEndUserLicenseAgreementGetToOneRelated**
```swift
    open class func appsEndUserLicenseAgreementGetToOneRelated(id: String, fieldsEndUserLicenseAgreements: [FieldsEndUserLicenseAgreements_appsEndUserLicenseAgreementGetToOneRelated]? = nil, completion: @escaping (_ data: EndUserLicenseAgreementResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let fieldsEndUserLicenseAgreements = ["fieldsEndUserLicenseAgreements_example"] // [String] | the fields to include for returned resources of type endUserLicenseAgreements (optional)

AppsAPI.appsEndUserLicenseAgreementGetToOneRelated(id: id, fieldsEndUserLicenseAgreements: fieldsEndUserLicenseAgreements) { (response, error) in
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
 **fieldsEndUserLicenseAgreements** | [**[String]**](String.md) | the fields to include for returned resources of type endUserLicenseAgreements | [optional] 

### Return type

[**EndUserLicenseAgreementResponse**](EndUserLicenseAgreementResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **appsGameCenterEnabledVersionsGetToManyRelated**
```swift
    open class func appsGameCenterEnabledVersionsGetToManyRelated(id: String, filterPlatform: [FilterPlatform_appsGameCenterEnabledVersionsGetToManyRelated]? = nil, filterVersionString: [String]? = nil, filterId: [String]? = nil, sort: [Sort_appsGameCenterEnabledVersionsGetToManyRelated]? = nil, fieldsGameCenterEnabledVersions: [FieldsGameCenterEnabledVersions_appsGameCenterEnabledVersionsGetToManyRelated]? = nil, fieldsApps: [FieldsApps_appsGameCenterEnabledVersionsGetToManyRelated]? = nil, limit: Int? = nil, limitCompatibleVersions: Int? = nil, include: [Include_appsGameCenterEnabledVersionsGetToManyRelated]? = nil, completion: @escaping (_ data: GameCenterEnabledVersionsResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let filterPlatform = ["filterPlatform_example"] // [String] | filter by attribute 'platform' (optional)
let filterVersionString = ["inner_example"] // [String] | filter by attribute 'versionString' (optional)
let filterId = ["inner_example"] // [String] | filter by id(s) (optional)
let sort = ["sort_example"] // [String] | comma-separated list of sort expressions; resources will be sorted as specified (optional)
let fieldsGameCenterEnabledVersions = ["fieldsGameCenterEnabledVersions_example"] // [String] | the fields to include for returned resources of type gameCenterEnabledVersions (optional)
let fieldsApps = ["fieldsApps_example"] // [String] | the fields to include for returned resources of type apps (optional)
let limit = 987 // Int | maximum resources per page (optional)
let limitCompatibleVersions = 987 // Int | maximum number of related compatibleVersions returned (when they are included) (optional)
let include = ["include_example"] // [String] | comma-separated list of relationships to include (optional)

AppsAPI.appsGameCenterEnabledVersionsGetToManyRelated(id: id, filterPlatform: filterPlatform, filterVersionString: filterVersionString, filterId: filterId, sort: sort, fieldsGameCenterEnabledVersions: fieldsGameCenterEnabledVersions, fieldsApps: fieldsApps, limit: limit, limitCompatibleVersions: limitCompatibleVersions, include: include) { (response, error) in
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
 **filterId** | [**[String]**](String.md) | filter by id(s) | [optional] 
 **sort** | [**[String]**](String.md) | comma-separated list of sort expressions; resources will be sorted as specified | [optional] 
 **fieldsGameCenterEnabledVersions** | [**[String]**](String.md) | the fields to include for returned resources of type gameCenterEnabledVersions | [optional] 
 **fieldsApps** | [**[String]**](String.md) | the fields to include for returned resources of type apps | [optional] 
 **limit** | **Int** | maximum resources per page | [optional] 
 **limitCompatibleVersions** | **Int** | maximum number of related compatibleVersions returned (when they are included) | [optional] 
 **include** | [**[String]**](String.md) | comma-separated list of relationships to include | [optional] 

### Return type

[**GameCenterEnabledVersionsResponse**](GameCenterEnabledVersionsResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **appsGetCollection**
```swift
    open class func appsGetCollection(filterAppStoreVersionsAppStoreState: [FilterAppStoreVersionsAppStoreState_appsGetCollection]? = nil, filterAppStoreVersionsPlatform: [FilterAppStoreVersionsPlatform_appsGetCollection]? = nil, filterBundleId: [String]? = nil, filterName: [String]? = nil, filterSku: [String]? = nil, filterAppStoreVersions: [String]? = nil, filterId: [String]? = nil, existsGameCenterEnabledVersions: [String]? = nil, sort: [Sort_appsGetCollection]? = nil, fieldsApps: [FieldsApps_appsGetCollection]? = nil, limit: Int? = nil, include: [Include_appsGetCollection]? = nil, fieldsBetaLicenseAgreements: [FieldsBetaLicenseAgreements_appsGetCollection]? = nil, fieldsBetaAppReviewDetails: [FieldsBetaAppReviewDetails_appsGetCollection]? = nil, fieldsAppClips: [FieldsAppClips_appsGetCollection]? = nil, fieldsAppInfos: [FieldsAppInfos_appsGetCollection]? = nil, fieldsBetaAppLocalizations: [FieldsBetaAppLocalizations_appsGetCollection]? = nil, fieldsAppPricePoints: [FieldsAppPricePoints_appsGetCollection]? = nil, fieldsInAppPurchases: [FieldsInAppPurchases_appsGetCollection]? = nil, fieldsPreReleaseVersions: [FieldsPreReleaseVersions_appsGetCollection]? = nil, fieldsCiProducts: [FieldsCiProducts_appsGetCollection]? = nil, fieldsReviewSubmissions: [FieldsReviewSubmissions_appsGetCollection]? = nil, fieldsAppPrices: [FieldsAppPrices_appsGetCollection]? = nil, fieldsAppPreOrders: [FieldsAppPreOrders_appsGetCollection]? = nil, fieldsBetaGroups: [FieldsBetaGroups_appsGetCollection]? = nil, fieldsGameCenterEnabledVersions: [FieldsGameCenterEnabledVersions_appsGetCollection]? = nil, fieldsEndUserLicenseAgreements: [FieldsEndUserLicenseAgreements_appsGetCollection]? = nil, fieldsAppStoreVersions: [FieldsAppStoreVersions_appsGetCollection]? = nil, fieldsAppCustomProductPages: [FieldsAppCustomProductPages_appsGetCollection]? = nil, fieldsAppEvents: [FieldsAppEvents_appsGetCollection]? = nil, fieldsTerritories: [FieldsTerritories_appsGetCollection]? = nil, fieldsPerfPowerMetrics: [FieldsPerfPowerMetrics_appsGetCollection]? = nil, fieldsBuilds: [FieldsBuilds_appsGetCollection]? = nil, limitAppClips: Int? = nil, limitAppCustomProductPages: Int? = nil, limitAppEvents: Int? = nil, limitAppInfos: Int? = nil, limitAppStoreVersions: Int? = nil, limitAvailableTerritories: Int? = nil, limitBetaAppLocalizations: Int? = nil, limitBetaGroups: Int? = nil, limitBuilds: Int? = nil, limitGameCenterEnabledVersions: Int? = nil, limitInAppPurchases: Int? = nil, limitPreReleaseVersions: Int? = nil, limitPrices: Int? = nil, limitReviewSubmissions: Int? = nil, completion: @escaping (_ data: AppsResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let filterAppStoreVersionsAppStoreState = ["filterAppStoreVersionsAppStoreState_example"] // [String] | filter by attribute 'appStoreVersions.appStoreState' (optional)
let filterAppStoreVersionsPlatform = ["filterAppStoreVersionsPlatform_example"] // [String] | filter by attribute 'appStoreVersions.platform' (optional)
let filterBundleId = ["inner_example"] // [String] | filter by attribute 'bundleId' (optional)
let filterName = ["inner_example"] // [String] | filter by attribute 'name' (optional)
let filterSku = ["inner_example"] // [String] | filter by attribute 'sku' (optional)
let filterAppStoreVersions = ["inner_example"] // [String] | filter by id(s) of related 'appStoreVersions' (optional)
let filterId = ["inner_example"] // [String] | filter by id(s) (optional)
let existsGameCenterEnabledVersions = ["inner_example"] // [String] | filter by existence or non-existence of related 'gameCenterEnabledVersions' (optional)
let sort = ["sort_example"] // [String] | comma-separated list of sort expressions; resources will be sorted as specified (optional)
let fieldsApps = ["fieldsApps_example"] // [String] | the fields to include for returned resources of type apps (optional)
let limit = 987 // Int | maximum resources per page (optional)
let include = ["include_example"] // [String] | comma-separated list of relationships to include (optional)
let fieldsBetaLicenseAgreements = ["fieldsBetaLicenseAgreements_example"] // [String] | the fields to include for returned resources of type betaLicenseAgreements (optional)
let fieldsBetaAppReviewDetails = ["fieldsBetaAppReviewDetails_example"] // [String] | the fields to include for returned resources of type betaAppReviewDetails (optional)
let fieldsAppClips = ["fieldsAppClips_example"] // [String] | the fields to include for returned resources of type appClips (optional)
let fieldsAppInfos = ["fieldsAppInfos_example"] // [String] | the fields to include for returned resources of type appInfos (optional)
let fieldsBetaAppLocalizations = ["fieldsBetaAppLocalizations_example"] // [String] | the fields to include for returned resources of type betaAppLocalizations (optional)
let fieldsAppPricePoints = ["fieldsAppPricePoints_example"] // [String] | the fields to include for returned resources of type appPricePoints (optional)
let fieldsInAppPurchases = ["fieldsInAppPurchases_example"] // [String] | the fields to include for returned resources of type inAppPurchases (optional)
let fieldsPreReleaseVersions = ["fieldsPreReleaseVersions_example"] // [String] | the fields to include for returned resources of type preReleaseVersions (optional)
let fieldsCiProducts = ["fieldsCiProducts_example"] // [String] | the fields to include for returned resources of type ciProducts (optional)
let fieldsReviewSubmissions = ["fieldsReviewSubmissions_example"] // [String] | the fields to include for returned resources of type reviewSubmissions (optional)
let fieldsAppPrices = ["fieldsAppPrices_example"] // [String] | the fields to include for returned resources of type appPrices (optional)
let fieldsAppPreOrders = ["fieldsAppPreOrders_example"] // [String] | the fields to include for returned resources of type appPreOrders (optional)
let fieldsBetaGroups = ["fieldsBetaGroups_example"] // [String] | the fields to include for returned resources of type betaGroups (optional)
let fieldsGameCenterEnabledVersions = ["fieldsGameCenterEnabledVersions_example"] // [String] | the fields to include for returned resources of type gameCenterEnabledVersions (optional)
let fieldsEndUserLicenseAgreements = ["fieldsEndUserLicenseAgreements_example"] // [String] | the fields to include for returned resources of type endUserLicenseAgreements (optional)
let fieldsAppStoreVersions = ["fieldsAppStoreVersions_example"] // [String] | the fields to include for returned resources of type appStoreVersions (optional)
let fieldsAppCustomProductPages = ["fieldsAppCustomProductPages_example"] // [String] | the fields to include for returned resources of type appCustomProductPages (optional)
let fieldsAppEvents = ["fieldsAppEvents_example"] // [String] | the fields to include for returned resources of type appEvents (optional)
let fieldsTerritories = ["fieldsTerritories_example"] // [String] | the fields to include for returned resources of type territories (optional)
let fieldsPerfPowerMetrics = ["fieldsPerfPowerMetrics_example"] // [String] | the fields to include for returned resources of type perfPowerMetrics (optional)
let fieldsBuilds = ["fieldsBuilds_example"] // [String] | the fields to include for returned resources of type builds (optional)
let limitAppClips = 987 // Int | maximum number of related appClips returned (when they are included) (optional)
let limitAppCustomProductPages = 987 // Int | maximum number of related appCustomProductPages returned (when they are included) (optional)
let limitAppEvents = 987 // Int | maximum number of related appEvents returned (when they are included) (optional)
let limitAppInfos = 987 // Int | maximum number of related appInfos returned (when they are included) (optional)
let limitAppStoreVersions = 987 // Int | maximum number of related appStoreVersions returned (when they are included) (optional)
let limitAvailableTerritories = 987 // Int | maximum number of related availableTerritories returned (when they are included) (optional)
let limitBetaAppLocalizations = 987 // Int | maximum number of related betaAppLocalizations returned (when they are included) (optional)
let limitBetaGroups = 987 // Int | maximum number of related betaGroups returned (when they are included) (optional)
let limitBuilds = 987 // Int | maximum number of related builds returned (when they are included) (optional)
let limitGameCenterEnabledVersions = 987 // Int | maximum number of related gameCenterEnabledVersions returned (when they are included) (optional)
let limitInAppPurchases = 987 // Int | maximum number of related inAppPurchases returned (when they are included) (optional)
let limitPreReleaseVersions = 987 // Int | maximum number of related preReleaseVersions returned (when they are included) (optional)
let limitPrices = 987 // Int | maximum number of related prices returned (when they are included) (optional)
let limitReviewSubmissions = 987 // Int | maximum number of related reviewSubmissions returned (when they are included) (optional)

AppsAPI.appsGetCollection(filterAppStoreVersionsAppStoreState: filterAppStoreVersionsAppStoreState, filterAppStoreVersionsPlatform: filterAppStoreVersionsPlatform, filterBundleId: filterBundleId, filterName: filterName, filterSku: filterSku, filterAppStoreVersions: filterAppStoreVersions, filterId: filterId, existsGameCenterEnabledVersions: existsGameCenterEnabledVersions, sort: sort, fieldsApps: fieldsApps, limit: limit, include: include, fieldsBetaLicenseAgreements: fieldsBetaLicenseAgreements, fieldsBetaAppReviewDetails: fieldsBetaAppReviewDetails, fieldsAppClips: fieldsAppClips, fieldsAppInfos: fieldsAppInfos, fieldsBetaAppLocalizations: fieldsBetaAppLocalizations, fieldsAppPricePoints: fieldsAppPricePoints, fieldsInAppPurchases: fieldsInAppPurchases, fieldsPreReleaseVersions: fieldsPreReleaseVersions, fieldsCiProducts: fieldsCiProducts, fieldsReviewSubmissions: fieldsReviewSubmissions, fieldsAppPrices: fieldsAppPrices, fieldsAppPreOrders: fieldsAppPreOrders, fieldsBetaGroups: fieldsBetaGroups, fieldsGameCenterEnabledVersions: fieldsGameCenterEnabledVersions, fieldsEndUserLicenseAgreements: fieldsEndUserLicenseAgreements, fieldsAppStoreVersions: fieldsAppStoreVersions, fieldsAppCustomProductPages: fieldsAppCustomProductPages, fieldsAppEvents: fieldsAppEvents, fieldsTerritories: fieldsTerritories, fieldsPerfPowerMetrics: fieldsPerfPowerMetrics, fieldsBuilds: fieldsBuilds, limitAppClips: limitAppClips, limitAppCustomProductPages: limitAppCustomProductPages, limitAppEvents: limitAppEvents, limitAppInfos: limitAppInfos, limitAppStoreVersions: limitAppStoreVersions, limitAvailableTerritories: limitAvailableTerritories, limitBetaAppLocalizations: limitBetaAppLocalizations, limitBetaGroups: limitBetaGroups, limitBuilds: limitBuilds, limitGameCenterEnabledVersions: limitGameCenterEnabledVersions, limitInAppPurchases: limitInAppPurchases, limitPreReleaseVersions: limitPreReleaseVersions, limitPrices: limitPrices, limitReviewSubmissions: limitReviewSubmissions) { (response, error) in
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
 **filterAppStoreVersionsAppStoreState** | [**[String]**](String.md) | filter by attribute &#39;appStoreVersions.appStoreState&#39; | [optional] 
 **filterAppStoreVersionsPlatform** | [**[String]**](String.md) | filter by attribute &#39;appStoreVersions.platform&#39; | [optional] 
 **filterBundleId** | [**[String]**](String.md) | filter by attribute &#39;bundleId&#39; | [optional] 
 **filterName** | [**[String]**](String.md) | filter by attribute &#39;name&#39; | [optional] 
 **filterSku** | [**[String]**](String.md) | filter by attribute &#39;sku&#39; | [optional] 
 **filterAppStoreVersions** | [**[String]**](String.md) | filter by id(s) of related &#39;appStoreVersions&#39; | [optional] 
 **filterId** | [**[String]**](String.md) | filter by id(s) | [optional] 
 **existsGameCenterEnabledVersions** | [**[String]**](String.md) | filter by existence or non-existence of related &#39;gameCenterEnabledVersions&#39; | [optional] 
 **sort** | [**[String]**](String.md) | comma-separated list of sort expressions; resources will be sorted as specified | [optional] 
 **fieldsApps** | [**[String]**](String.md) | the fields to include for returned resources of type apps | [optional] 
 **limit** | **Int** | maximum resources per page | [optional] 
 **include** | [**[String]**](String.md) | comma-separated list of relationships to include | [optional] 
 **fieldsBetaLicenseAgreements** | [**[String]**](String.md) | the fields to include for returned resources of type betaLicenseAgreements | [optional] 
 **fieldsBetaAppReviewDetails** | [**[String]**](String.md) | the fields to include for returned resources of type betaAppReviewDetails | [optional] 
 **fieldsAppClips** | [**[String]**](String.md) | the fields to include for returned resources of type appClips | [optional] 
 **fieldsAppInfos** | [**[String]**](String.md) | the fields to include for returned resources of type appInfos | [optional] 
 **fieldsBetaAppLocalizations** | [**[String]**](String.md) | the fields to include for returned resources of type betaAppLocalizations | [optional] 
 **fieldsAppPricePoints** | [**[String]**](String.md) | the fields to include for returned resources of type appPricePoints | [optional] 
 **fieldsInAppPurchases** | [**[String]**](String.md) | the fields to include for returned resources of type inAppPurchases | [optional] 
 **fieldsPreReleaseVersions** | [**[String]**](String.md) | the fields to include for returned resources of type preReleaseVersions | [optional] 
 **fieldsCiProducts** | [**[String]**](String.md) | the fields to include for returned resources of type ciProducts | [optional] 
 **fieldsReviewSubmissions** | [**[String]**](String.md) | the fields to include for returned resources of type reviewSubmissions | [optional] 
 **fieldsAppPrices** | [**[String]**](String.md) | the fields to include for returned resources of type appPrices | [optional] 
 **fieldsAppPreOrders** | [**[String]**](String.md) | the fields to include for returned resources of type appPreOrders | [optional] 
 **fieldsBetaGroups** | [**[String]**](String.md) | the fields to include for returned resources of type betaGroups | [optional] 
 **fieldsGameCenterEnabledVersions** | [**[String]**](String.md) | the fields to include for returned resources of type gameCenterEnabledVersions | [optional] 
 **fieldsEndUserLicenseAgreements** | [**[String]**](String.md) | the fields to include for returned resources of type endUserLicenseAgreements | [optional] 
 **fieldsAppStoreVersions** | [**[String]**](String.md) | the fields to include for returned resources of type appStoreVersions | [optional] 
 **fieldsAppCustomProductPages** | [**[String]**](String.md) | the fields to include for returned resources of type appCustomProductPages | [optional] 
 **fieldsAppEvents** | [**[String]**](String.md) | the fields to include for returned resources of type appEvents | [optional] 
 **fieldsTerritories** | [**[String]**](String.md) | the fields to include for returned resources of type territories | [optional] 
 **fieldsPerfPowerMetrics** | [**[String]**](String.md) | the fields to include for returned resources of type perfPowerMetrics | [optional] 
 **fieldsBuilds** | [**[String]**](String.md) | the fields to include for returned resources of type builds | [optional] 
 **limitAppClips** | **Int** | maximum number of related appClips returned (when they are included) | [optional] 
 **limitAppCustomProductPages** | **Int** | maximum number of related appCustomProductPages returned (when they are included) | [optional] 
 **limitAppEvents** | **Int** | maximum number of related appEvents returned (when they are included) | [optional] 
 **limitAppInfos** | **Int** | maximum number of related appInfos returned (when they are included) | [optional] 
 **limitAppStoreVersions** | **Int** | maximum number of related appStoreVersions returned (when they are included) | [optional] 
 **limitAvailableTerritories** | **Int** | maximum number of related availableTerritories returned (when they are included) | [optional] 
 **limitBetaAppLocalizations** | **Int** | maximum number of related betaAppLocalizations returned (when they are included) | [optional] 
 **limitBetaGroups** | **Int** | maximum number of related betaGroups returned (when they are included) | [optional] 
 **limitBuilds** | **Int** | maximum number of related builds returned (when they are included) | [optional] 
 **limitGameCenterEnabledVersions** | **Int** | maximum number of related gameCenterEnabledVersions returned (when they are included) | [optional] 
 **limitInAppPurchases** | **Int** | maximum number of related inAppPurchases returned (when they are included) | [optional] 
 **limitPreReleaseVersions** | **Int** | maximum number of related preReleaseVersions returned (when they are included) | [optional] 
 **limitPrices** | **Int** | maximum number of related prices returned (when they are included) | [optional] 
 **limitReviewSubmissions** | **Int** | maximum number of related reviewSubmissions returned (when they are included) | [optional] 

### Return type

[**AppsResponse**](AppsResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **appsGetInstance**
```swift
    open class func appsGetInstance(id: String, fieldsApps: [FieldsApps_appsGetInstance]? = nil, include: [Include_appsGetInstance]? = nil, fieldsBetaLicenseAgreements: [FieldsBetaLicenseAgreements_appsGetInstance]? = nil, fieldsBetaAppReviewDetails: [FieldsBetaAppReviewDetails_appsGetInstance]? = nil, fieldsAppClips: [FieldsAppClips_appsGetInstance]? = nil, fieldsAppInfos: [FieldsAppInfos_appsGetInstance]? = nil, fieldsBetaAppLocalizations: [FieldsBetaAppLocalizations_appsGetInstance]? = nil, fieldsAppPricePoints: [FieldsAppPricePoints_appsGetInstance]? = nil, fieldsInAppPurchases: [FieldsInAppPurchases_appsGetInstance]? = nil, fieldsPreReleaseVersions: [FieldsPreReleaseVersions_appsGetInstance]? = nil, fieldsCiProducts: [FieldsCiProducts_appsGetInstance]? = nil, fieldsReviewSubmissions: [FieldsReviewSubmissions_appsGetInstance]? = nil, fieldsAppPrices: [FieldsAppPrices_appsGetInstance]? = nil, fieldsAppPreOrders: [FieldsAppPreOrders_appsGetInstance]? = nil, fieldsBetaGroups: [FieldsBetaGroups_appsGetInstance]? = nil, fieldsGameCenterEnabledVersions: [FieldsGameCenterEnabledVersions_appsGetInstance]? = nil, fieldsEndUserLicenseAgreements: [FieldsEndUserLicenseAgreements_appsGetInstance]? = nil, fieldsAppStoreVersions: [FieldsAppStoreVersions_appsGetInstance]? = nil, fieldsAppCustomProductPages: [FieldsAppCustomProductPages_appsGetInstance]? = nil, fieldsAppEvents: [FieldsAppEvents_appsGetInstance]? = nil, fieldsTerritories: [FieldsTerritories_appsGetInstance]? = nil, fieldsPerfPowerMetrics: [FieldsPerfPowerMetrics_appsGetInstance]? = nil, fieldsBuilds: [FieldsBuilds_appsGetInstance]? = nil, limitAppClips: Int? = nil, limitAppCustomProductPages: Int? = nil, limitAppEvents: Int? = nil, limitAppInfos: Int? = nil, limitAppStoreVersions: Int? = nil, limitAvailableTerritories: Int? = nil, limitBetaAppLocalizations: Int? = nil, limitBetaGroups: Int? = nil, limitBuilds: Int? = nil, limitGameCenterEnabledVersions: Int? = nil, limitInAppPurchases: Int? = nil, limitPreReleaseVersions: Int? = nil, limitPrices: Int? = nil, limitReviewSubmissions: Int? = nil, completion: @escaping (_ data: AppResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let fieldsApps = ["fieldsApps_example"] // [String] | the fields to include for returned resources of type apps (optional)
let include = ["include_example"] // [String] | comma-separated list of relationships to include (optional)
let fieldsBetaLicenseAgreements = ["fieldsBetaLicenseAgreements_example"] // [String] | the fields to include for returned resources of type betaLicenseAgreements (optional)
let fieldsBetaAppReviewDetails = ["fieldsBetaAppReviewDetails_example"] // [String] | the fields to include for returned resources of type betaAppReviewDetails (optional)
let fieldsAppClips = ["fieldsAppClips_example"] // [String] | the fields to include for returned resources of type appClips (optional)
let fieldsAppInfos = ["fieldsAppInfos_example"] // [String] | the fields to include for returned resources of type appInfos (optional)
let fieldsBetaAppLocalizations = ["fieldsBetaAppLocalizations_example"] // [String] | the fields to include for returned resources of type betaAppLocalizations (optional)
let fieldsAppPricePoints = ["fieldsAppPricePoints_example"] // [String] | the fields to include for returned resources of type appPricePoints (optional)
let fieldsInAppPurchases = ["fieldsInAppPurchases_example"] // [String] | the fields to include for returned resources of type inAppPurchases (optional)
let fieldsPreReleaseVersions = ["fieldsPreReleaseVersions_example"] // [String] | the fields to include for returned resources of type preReleaseVersions (optional)
let fieldsCiProducts = ["fieldsCiProducts_example"] // [String] | the fields to include for returned resources of type ciProducts (optional)
let fieldsReviewSubmissions = ["fieldsReviewSubmissions_example"] // [String] | the fields to include for returned resources of type reviewSubmissions (optional)
let fieldsAppPrices = ["fieldsAppPrices_example"] // [String] | the fields to include for returned resources of type appPrices (optional)
let fieldsAppPreOrders = ["fieldsAppPreOrders_example"] // [String] | the fields to include for returned resources of type appPreOrders (optional)
let fieldsBetaGroups = ["fieldsBetaGroups_example"] // [String] | the fields to include for returned resources of type betaGroups (optional)
let fieldsGameCenterEnabledVersions = ["fieldsGameCenterEnabledVersions_example"] // [String] | the fields to include for returned resources of type gameCenterEnabledVersions (optional)
let fieldsEndUserLicenseAgreements = ["fieldsEndUserLicenseAgreements_example"] // [String] | the fields to include for returned resources of type endUserLicenseAgreements (optional)
let fieldsAppStoreVersions = ["fieldsAppStoreVersions_example"] // [String] | the fields to include for returned resources of type appStoreVersions (optional)
let fieldsAppCustomProductPages = ["fieldsAppCustomProductPages_example"] // [String] | the fields to include for returned resources of type appCustomProductPages (optional)
let fieldsAppEvents = ["fieldsAppEvents_example"] // [String] | the fields to include for returned resources of type appEvents (optional)
let fieldsTerritories = ["fieldsTerritories_example"] // [String] | the fields to include for returned resources of type territories (optional)
let fieldsPerfPowerMetrics = ["fieldsPerfPowerMetrics_example"] // [String] | the fields to include for returned resources of type perfPowerMetrics (optional)
let fieldsBuilds = ["fieldsBuilds_example"] // [String] | the fields to include for returned resources of type builds (optional)
let limitAppClips = 987 // Int | maximum number of related appClips returned (when they are included) (optional)
let limitAppCustomProductPages = 987 // Int | maximum number of related appCustomProductPages returned (when they are included) (optional)
let limitAppEvents = 987 // Int | maximum number of related appEvents returned (when they are included) (optional)
let limitAppInfos = 987 // Int | maximum number of related appInfos returned (when they are included) (optional)
let limitAppStoreVersions = 987 // Int | maximum number of related appStoreVersions returned (when they are included) (optional)
let limitAvailableTerritories = 987 // Int | maximum number of related availableTerritories returned (when they are included) (optional)
let limitBetaAppLocalizations = 987 // Int | maximum number of related betaAppLocalizations returned (when they are included) (optional)
let limitBetaGroups = 987 // Int | maximum number of related betaGroups returned (when they are included) (optional)
let limitBuilds = 987 // Int | maximum number of related builds returned (when they are included) (optional)
let limitGameCenterEnabledVersions = 987 // Int | maximum number of related gameCenterEnabledVersions returned (when they are included) (optional)
let limitInAppPurchases = 987 // Int | maximum number of related inAppPurchases returned (when they are included) (optional)
let limitPreReleaseVersions = 987 // Int | maximum number of related preReleaseVersions returned (when they are included) (optional)
let limitPrices = 987 // Int | maximum number of related prices returned (when they are included) (optional)
let limitReviewSubmissions = 987 // Int | maximum number of related reviewSubmissions returned (when they are included) (optional)

AppsAPI.appsGetInstance(id: id, fieldsApps: fieldsApps, include: include, fieldsBetaLicenseAgreements: fieldsBetaLicenseAgreements, fieldsBetaAppReviewDetails: fieldsBetaAppReviewDetails, fieldsAppClips: fieldsAppClips, fieldsAppInfos: fieldsAppInfos, fieldsBetaAppLocalizations: fieldsBetaAppLocalizations, fieldsAppPricePoints: fieldsAppPricePoints, fieldsInAppPurchases: fieldsInAppPurchases, fieldsPreReleaseVersions: fieldsPreReleaseVersions, fieldsCiProducts: fieldsCiProducts, fieldsReviewSubmissions: fieldsReviewSubmissions, fieldsAppPrices: fieldsAppPrices, fieldsAppPreOrders: fieldsAppPreOrders, fieldsBetaGroups: fieldsBetaGroups, fieldsGameCenterEnabledVersions: fieldsGameCenterEnabledVersions, fieldsEndUserLicenseAgreements: fieldsEndUserLicenseAgreements, fieldsAppStoreVersions: fieldsAppStoreVersions, fieldsAppCustomProductPages: fieldsAppCustomProductPages, fieldsAppEvents: fieldsAppEvents, fieldsTerritories: fieldsTerritories, fieldsPerfPowerMetrics: fieldsPerfPowerMetrics, fieldsBuilds: fieldsBuilds, limitAppClips: limitAppClips, limitAppCustomProductPages: limitAppCustomProductPages, limitAppEvents: limitAppEvents, limitAppInfos: limitAppInfos, limitAppStoreVersions: limitAppStoreVersions, limitAvailableTerritories: limitAvailableTerritories, limitBetaAppLocalizations: limitBetaAppLocalizations, limitBetaGroups: limitBetaGroups, limitBuilds: limitBuilds, limitGameCenterEnabledVersions: limitGameCenterEnabledVersions, limitInAppPurchases: limitInAppPurchases, limitPreReleaseVersions: limitPreReleaseVersions, limitPrices: limitPrices, limitReviewSubmissions: limitReviewSubmissions) { (response, error) in
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
 **include** | [**[String]**](String.md) | comma-separated list of relationships to include | [optional] 
 **fieldsBetaLicenseAgreements** | [**[String]**](String.md) | the fields to include for returned resources of type betaLicenseAgreements | [optional] 
 **fieldsBetaAppReviewDetails** | [**[String]**](String.md) | the fields to include for returned resources of type betaAppReviewDetails | [optional] 
 **fieldsAppClips** | [**[String]**](String.md) | the fields to include for returned resources of type appClips | [optional] 
 **fieldsAppInfos** | [**[String]**](String.md) | the fields to include for returned resources of type appInfos | [optional] 
 **fieldsBetaAppLocalizations** | [**[String]**](String.md) | the fields to include for returned resources of type betaAppLocalizations | [optional] 
 **fieldsAppPricePoints** | [**[String]**](String.md) | the fields to include for returned resources of type appPricePoints | [optional] 
 **fieldsInAppPurchases** | [**[String]**](String.md) | the fields to include for returned resources of type inAppPurchases | [optional] 
 **fieldsPreReleaseVersions** | [**[String]**](String.md) | the fields to include for returned resources of type preReleaseVersions | [optional] 
 **fieldsCiProducts** | [**[String]**](String.md) | the fields to include for returned resources of type ciProducts | [optional] 
 **fieldsReviewSubmissions** | [**[String]**](String.md) | the fields to include for returned resources of type reviewSubmissions | [optional] 
 **fieldsAppPrices** | [**[String]**](String.md) | the fields to include for returned resources of type appPrices | [optional] 
 **fieldsAppPreOrders** | [**[String]**](String.md) | the fields to include for returned resources of type appPreOrders | [optional] 
 **fieldsBetaGroups** | [**[String]**](String.md) | the fields to include for returned resources of type betaGroups | [optional] 
 **fieldsGameCenterEnabledVersions** | [**[String]**](String.md) | the fields to include for returned resources of type gameCenterEnabledVersions | [optional] 
 **fieldsEndUserLicenseAgreements** | [**[String]**](String.md) | the fields to include for returned resources of type endUserLicenseAgreements | [optional] 
 **fieldsAppStoreVersions** | [**[String]**](String.md) | the fields to include for returned resources of type appStoreVersions | [optional] 
 **fieldsAppCustomProductPages** | [**[String]**](String.md) | the fields to include for returned resources of type appCustomProductPages | [optional] 
 **fieldsAppEvents** | [**[String]**](String.md) | the fields to include for returned resources of type appEvents | [optional] 
 **fieldsTerritories** | [**[String]**](String.md) | the fields to include for returned resources of type territories | [optional] 
 **fieldsPerfPowerMetrics** | [**[String]**](String.md) | the fields to include for returned resources of type perfPowerMetrics | [optional] 
 **fieldsBuilds** | [**[String]**](String.md) | the fields to include for returned resources of type builds | [optional] 
 **limitAppClips** | **Int** | maximum number of related appClips returned (when they are included) | [optional] 
 **limitAppCustomProductPages** | **Int** | maximum number of related appCustomProductPages returned (when they are included) | [optional] 
 **limitAppEvents** | **Int** | maximum number of related appEvents returned (when they are included) | [optional] 
 **limitAppInfos** | **Int** | maximum number of related appInfos returned (when they are included) | [optional] 
 **limitAppStoreVersions** | **Int** | maximum number of related appStoreVersions returned (when they are included) | [optional] 
 **limitAvailableTerritories** | **Int** | maximum number of related availableTerritories returned (when they are included) | [optional] 
 **limitBetaAppLocalizations** | **Int** | maximum number of related betaAppLocalizations returned (when they are included) | [optional] 
 **limitBetaGroups** | **Int** | maximum number of related betaGroups returned (when they are included) | [optional] 
 **limitBuilds** | **Int** | maximum number of related builds returned (when they are included) | [optional] 
 **limitGameCenterEnabledVersions** | **Int** | maximum number of related gameCenterEnabledVersions returned (when they are included) | [optional] 
 **limitInAppPurchases** | **Int** | maximum number of related inAppPurchases returned (when they are included) | [optional] 
 **limitPreReleaseVersions** | **Int** | maximum number of related preReleaseVersions returned (when they are included) | [optional] 
 **limitPrices** | **Int** | maximum number of related prices returned (when they are included) | [optional] 
 **limitReviewSubmissions** | **Int** | maximum number of related reviewSubmissions returned (when they are included) | [optional] 

### Return type

[**AppResponse**](AppResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **appsInAppPurchasesGetToManyRelated**
```swift
    open class func appsInAppPurchasesGetToManyRelated(id: String, filterInAppPurchaseType: [FilterInAppPurchaseType_appsInAppPurchasesGetToManyRelated]? = nil, filterCanBeSubmitted: [String]? = nil, sort: [Sort_appsInAppPurchasesGetToManyRelated]? = nil, fieldsInAppPurchases: [FieldsInAppPurchases_appsInAppPurchasesGetToManyRelated]? = nil, fieldsApps: [FieldsApps_appsInAppPurchasesGetToManyRelated]? = nil, limit: Int? = nil, limitApps: Int? = nil, include: [Include_appsInAppPurchasesGetToManyRelated]? = nil, completion: @escaping (_ data: InAppPurchasesResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let filterInAppPurchaseType = ["filterInAppPurchaseType_example"] // [String] | filter by attribute 'inAppPurchaseType' (optional)
let filterCanBeSubmitted = ["inner_example"] // [String] | filter by canBeSubmitted (optional)
let sort = ["sort_example"] // [String] | comma-separated list of sort expressions; resources will be sorted as specified (optional)
let fieldsInAppPurchases = ["fieldsInAppPurchases_example"] // [String] | the fields to include for returned resources of type inAppPurchases (optional)
let fieldsApps = ["fieldsApps_example"] // [String] | the fields to include for returned resources of type apps (optional)
let limit = 987 // Int | maximum resources per page (optional)
let limitApps = 987 // Int | maximum number of related apps returned (when they are included) (optional)
let include = ["include_example"] // [String] | comma-separated list of relationships to include (optional)

AppsAPI.appsInAppPurchasesGetToManyRelated(id: id, filterInAppPurchaseType: filterInAppPurchaseType, filterCanBeSubmitted: filterCanBeSubmitted, sort: sort, fieldsInAppPurchases: fieldsInAppPurchases, fieldsApps: fieldsApps, limit: limit, limitApps: limitApps, include: include) { (response, error) in
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
 **filterInAppPurchaseType** | [**[String]**](String.md) | filter by attribute &#39;inAppPurchaseType&#39; | [optional] 
 **filterCanBeSubmitted** | [**[String]**](String.md) | filter by canBeSubmitted | [optional] 
 **sort** | [**[String]**](String.md) | comma-separated list of sort expressions; resources will be sorted as specified | [optional] 
 **fieldsInAppPurchases** | [**[String]**](String.md) | the fields to include for returned resources of type inAppPurchases | [optional] 
 **fieldsApps** | [**[String]**](String.md) | the fields to include for returned resources of type apps | [optional] 
 **limit** | **Int** | maximum resources per page | [optional] 
 **limitApps** | **Int** | maximum number of related apps returned (when they are included) | [optional] 
 **include** | [**[String]**](String.md) | comma-separated list of relationships to include | [optional] 

### Return type

[**InAppPurchasesResponse**](InAppPurchasesResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **appsPerfPowerMetricsGetToManyRelated**
```swift
    open class func appsPerfPowerMetricsGetToManyRelated(id: String, filterDeviceType: [String]? = nil, filterMetricType: [FilterMetricType_appsPerfPowerMetricsGetToManyRelated]? = nil, filterPlatform: [FilterPlatform_appsPerfPowerMetricsGetToManyRelated]? = nil, completion: @escaping (_ data: AnyCodable?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let filterDeviceType = ["inner_example"] // [String] | filter by attribute 'deviceType' (optional)
let filterMetricType = ["filterMetricType_example"] // [String] | filter by attribute 'metricType' (optional)
let filterPlatform = ["filterPlatform_example"] // [String] | filter by attribute 'platform' (optional)

AppsAPI.appsPerfPowerMetricsGetToManyRelated(id: id, filterDeviceType: filterDeviceType, filterMetricType: filterMetricType, filterPlatform: filterPlatform) { (response, error) in
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

# **appsPreOrderGetToOneRelated**
```swift
    open class func appsPreOrderGetToOneRelated(id: String, fieldsAppPreOrders: [FieldsAppPreOrders_appsPreOrderGetToOneRelated]? = nil, completion: @escaping (_ data: AppPreOrderResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let fieldsAppPreOrders = ["fieldsAppPreOrders_example"] // [String] | the fields to include for returned resources of type appPreOrders (optional)

AppsAPI.appsPreOrderGetToOneRelated(id: id, fieldsAppPreOrders: fieldsAppPreOrders) { (response, error) in
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
 **fieldsAppPreOrders** | [**[String]**](String.md) | the fields to include for returned resources of type appPreOrders | [optional] 

### Return type

[**AppPreOrderResponse**](AppPreOrderResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **appsPreReleaseVersionsGetToManyRelated**
```swift
    open class func appsPreReleaseVersionsGetToManyRelated(id: String, fieldsPreReleaseVersions: [FieldsPreReleaseVersions_appsPreReleaseVersionsGetToManyRelated]? = nil, limit: Int? = nil, completion: @escaping (_ data: PreReleaseVersionsResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let fieldsPreReleaseVersions = ["fieldsPreReleaseVersions_example"] // [String] | the fields to include for returned resources of type preReleaseVersions (optional)
let limit = 987 // Int | maximum resources per page (optional)

AppsAPI.appsPreReleaseVersionsGetToManyRelated(id: id, fieldsPreReleaseVersions: fieldsPreReleaseVersions, limit: limit) { (response, error) in
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
 **limit** | **Int** | maximum resources per page | [optional] 

### Return type

[**PreReleaseVersionsResponse**](PreReleaseVersionsResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **appsPricePointsGetToManyRelated**
```swift
    open class func appsPricePointsGetToManyRelated(id: String, filterPriceTier: [String]? = nil, filterTerritory: [String]? = nil, fieldsAppPriceTiers: [FieldsAppPriceTiers_appsPricePointsGetToManyRelated]? = nil, fieldsAppPricePoints: [FieldsAppPricePoints_appsPricePointsGetToManyRelated]? = nil, fieldsApps: [FieldsApps_appsPricePointsGetToManyRelated]? = nil, fieldsTerritories: [FieldsTerritories_appsPricePointsGetToManyRelated]? = nil, limit: Int? = nil, include: [Include_appsPricePointsGetToManyRelated]? = nil, completion: @escaping (_ data: AppPricePointsV2Response?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let filterPriceTier = ["inner_example"] // [String] | filter by id(s) of related 'priceTier' (optional)
let filterTerritory = ["inner_example"] // [String] | filter by id(s) of related 'territory' (optional)
let fieldsAppPriceTiers = ["fieldsAppPriceTiers_example"] // [String] | the fields to include for returned resources of type appPriceTiers (optional)
let fieldsAppPricePoints = ["fieldsAppPricePoints_example"] // [String] | the fields to include for returned resources of type appPricePoints (optional)
let fieldsApps = ["fieldsApps_example"] // [String] | the fields to include for returned resources of type apps (optional)
let fieldsTerritories = ["fieldsTerritories_example"] // [String] | the fields to include for returned resources of type territories (optional)
let limit = 987 // Int | maximum resources per page (optional)
let include = ["include_example"] // [String] | comma-separated list of relationships to include (optional)

AppsAPI.appsPricePointsGetToManyRelated(id: id, filterPriceTier: filterPriceTier, filterTerritory: filterTerritory, fieldsAppPriceTiers: fieldsAppPriceTiers, fieldsAppPricePoints: fieldsAppPricePoints, fieldsApps: fieldsApps, fieldsTerritories: fieldsTerritories, limit: limit, include: include) { (response, error) in
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
 **filterPriceTier** | [**[String]**](String.md) | filter by id(s) of related &#39;priceTier&#39; | [optional] 
 **filterTerritory** | [**[String]**](String.md) | filter by id(s) of related &#39;territory&#39; | [optional] 
 **fieldsAppPriceTiers** | [**[String]**](String.md) | the fields to include for returned resources of type appPriceTiers | [optional] 
 **fieldsAppPricePoints** | [**[String]**](String.md) | the fields to include for returned resources of type appPricePoints | [optional] 
 **fieldsApps** | [**[String]**](String.md) | the fields to include for returned resources of type apps | [optional] 
 **fieldsTerritories** | [**[String]**](String.md) | the fields to include for returned resources of type territories | [optional] 
 **limit** | **Int** | maximum resources per page | [optional] 
 **include** | [**[String]**](String.md) | comma-separated list of relationships to include | [optional] 

### Return type

[**AppPricePointsV2Response**](AppPricePointsV2Response.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **appsPricesGetToManyRelated**
```swift
    open class func appsPricesGetToManyRelated(id: String, fieldsAppPriceTiers: [FieldsAppPriceTiers_appsPricesGetToManyRelated]? = nil, fieldsApps: [FieldsApps_appsPricesGetToManyRelated]? = nil, fieldsAppPrices: [FieldsAppPrices_appsPricesGetToManyRelated]? = nil, limit: Int? = nil, include: [Include_appsPricesGetToManyRelated]? = nil, completion: @escaping (_ data: AppPricesResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let fieldsAppPriceTiers = ["fieldsAppPriceTiers_example"] // [String] | the fields to include for returned resources of type appPriceTiers (optional)
let fieldsApps = ["fieldsApps_example"] // [String] | the fields to include for returned resources of type apps (optional)
let fieldsAppPrices = ["fieldsAppPrices_example"] // [String] | the fields to include for returned resources of type appPrices (optional)
let limit = 987 // Int | maximum resources per page (optional)
let include = ["include_example"] // [String] | comma-separated list of relationships to include (optional)

AppsAPI.appsPricesGetToManyRelated(id: id, fieldsAppPriceTiers: fieldsAppPriceTiers, fieldsApps: fieldsApps, fieldsAppPrices: fieldsAppPrices, limit: limit, include: include) { (response, error) in
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
 **fieldsAppPriceTiers** | [**[String]**](String.md) | the fields to include for returned resources of type appPriceTiers | [optional] 
 **fieldsApps** | [**[String]**](String.md) | the fields to include for returned resources of type apps | [optional] 
 **fieldsAppPrices** | [**[String]**](String.md) | the fields to include for returned resources of type appPrices | [optional] 
 **limit** | **Int** | maximum resources per page | [optional] 
 **include** | [**[String]**](String.md) | comma-separated list of relationships to include | [optional] 

### Return type

[**AppPricesResponse**](AppPricesResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **appsReviewSubmissionsGetToManyRelated**
```swift
    open class func appsReviewSubmissionsGetToManyRelated(id: String, filterPlatform: [FilterPlatform_appsReviewSubmissionsGetToManyRelated]? = nil, filterState: [FilterState_appsReviewSubmissionsGetToManyRelated]? = nil, fieldsReviewSubmissionItems: [FieldsReviewSubmissionItems_appsReviewSubmissionsGetToManyRelated]? = nil, fieldsAppStoreVersions: [FieldsAppStoreVersions_appsReviewSubmissionsGetToManyRelated]? = nil, fieldsApps: [FieldsApps_appsReviewSubmissionsGetToManyRelated]? = nil, fieldsReviewSubmissions: [FieldsReviewSubmissions_appsReviewSubmissionsGetToManyRelated]? = nil, limit: Int? = nil, limitItems: Int? = nil, include: [Include_appsReviewSubmissionsGetToManyRelated]? = nil, completion: @escaping (_ data: ReviewSubmissionsResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let filterPlatform = ["filterPlatform_example"] // [String] | filter by attribute 'platform' (optional)
let filterState = ["filterState_example"] // [String] | filter by attribute 'state' (optional)
let fieldsReviewSubmissionItems = ["fieldsReviewSubmissionItems_example"] // [String] | the fields to include for returned resources of type reviewSubmissionItems (optional)
let fieldsAppStoreVersions = ["fieldsAppStoreVersions_example"] // [String] | the fields to include for returned resources of type appStoreVersions (optional)
let fieldsApps = ["fieldsApps_example"] // [String] | the fields to include for returned resources of type apps (optional)
let fieldsReviewSubmissions = ["fieldsReviewSubmissions_example"] // [String] | the fields to include for returned resources of type reviewSubmissions (optional)
let limit = 987 // Int | maximum resources per page (optional)
let limitItems = 987 // Int | maximum number of related items returned (when they are included) (optional)
let include = ["include_example"] // [String] | comma-separated list of relationships to include (optional)

AppsAPI.appsReviewSubmissionsGetToManyRelated(id: id, filterPlatform: filterPlatform, filterState: filterState, fieldsReviewSubmissionItems: fieldsReviewSubmissionItems, fieldsAppStoreVersions: fieldsAppStoreVersions, fieldsApps: fieldsApps, fieldsReviewSubmissions: fieldsReviewSubmissions, limit: limit, limitItems: limitItems, include: include) { (response, error) in
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
 **filterState** | [**[String]**](String.md) | filter by attribute &#39;state&#39; | [optional] 
 **fieldsReviewSubmissionItems** | [**[String]**](String.md) | the fields to include for returned resources of type reviewSubmissionItems | [optional] 
 **fieldsAppStoreVersions** | [**[String]**](String.md) | the fields to include for returned resources of type appStoreVersions | [optional] 
 **fieldsApps** | [**[String]**](String.md) | the fields to include for returned resources of type apps | [optional] 
 **fieldsReviewSubmissions** | [**[String]**](String.md) | the fields to include for returned resources of type reviewSubmissions | [optional] 
 **limit** | **Int** | maximum resources per page | [optional] 
 **limitItems** | **Int** | maximum number of related items returned (when they are included) | [optional] 
 **include** | [**[String]**](String.md) | comma-separated list of relationships to include | [optional] 

### Return type

[**ReviewSubmissionsResponse**](ReviewSubmissionsResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **appsUpdateInstance**
```swift
    open class func appsUpdateInstance(id: String, appUpdateRequest: AppUpdateRequest, completion: @escaping (_ data: AppResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let appUpdateRequest = AppUpdateRequest(data: AppUpdateRequest_data(type: "type_example", id: "id_example", attributes: AppUpdateRequest_data_attributes(bundleId: "bundleId_example", primaryLocale: "primaryLocale_example", subscriptionStatusUrl: "subscriptionStatusUrl_example", subscriptionStatusUrlVersion: SubscriptionStatusUrlVersion(), subscriptionStatusUrlForSandbox: "subscriptionStatusUrlForSandbox_example", subscriptionStatusUrlVersionForSandbox: nil, availableInNewTerritories: false, contentRightsDeclaration: "contentRightsDeclaration_example"), relationships: AppUpdateRequest_data_relationships(prices: AppUpdateRequest_data_relationships_prices(data: [App_relationships_prices_data_inner(type: "type_example", id: "id_example")]), availableTerritories: AppUpdateRequest_data_relationships_availableTerritories(data: [AppPricePointV2_relationships_territory_data(type: "type_example", id: "id_example")]))), included: [AppPriceInlineCreate(type: "type_example", id: "id_example")]) // AppUpdateRequest | App representation

AppsAPI.appsUpdateInstance(id: id, appUpdateRequest: appUpdateRequest) { (response, error) in
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
 **appUpdateRequest** | [**AppUpdateRequest**](AppUpdateRequest.md) | App representation | 

### Return type

[**AppResponse**](AppResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

