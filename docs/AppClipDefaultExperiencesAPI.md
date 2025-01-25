# AppClipDefaultExperiencesAPI

All URIs are relative to *https://api.appstoreconnect.apple.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**appClipDefaultExperiencesAppClipAppStoreReviewDetailGetToOneRelated**](AppClipDefaultExperiencesAPI.md#appclipdefaultexperiencesappclipappstorereviewdetailgettoonerelated) | **GET** /v1/appClipDefaultExperiences/{id}/appClipAppStoreReviewDetail | 
[**appClipDefaultExperiencesAppClipDefaultExperienceLocalizationsGetToManyRelated**](AppClipDefaultExperiencesAPI.md#appclipdefaultexperiencesappclipdefaultexperiencelocalizationsgettomanyrelated) | **GET** /v1/appClipDefaultExperiences/{id}/appClipDefaultExperienceLocalizations | 
[**appClipDefaultExperiencesCreateInstance**](AppClipDefaultExperiencesAPI.md#appclipdefaultexperiencescreateinstance) | **POST** /v1/appClipDefaultExperiences | 
[**appClipDefaultExperiencesDeleteInstance**](AppClipDefaultExperiencesAPI.md#appclipdefaultexperiencesdeleteinstance) | **DELETE** /v1/appClipDefaultExperiences/{id} | 
[**appClipDefaultExperiencesGetInstance**](AppClipDefaultExperiencesAPI.md#appclipdefaultexperiencesgetinstance) | **GET** /v1/appClipDefaultExperiences/{id} | 
[**appClipDefaultExperiencesReleaseWithAppStoreVersionGetToOneRelated**](AppClipDefaultExperiencesAPI.md#appclipdefaultexperiencesreleasewithappstoreversiongettoonerelated) | **GET** /v1/appClipDefaultExperiences/{id}/releaseWithAppStoreVersion | 
[**appClipDefaultExperiencesReleaseWithAppStoreVersionGetToOneRelationship**](AppClipDefaultExperiencesAPI.md#appclipdefaultexperiencesreleasewithappstoreversiongettoonerelationship) | **GET** /v1/appClipDefaultExperiences/{id}/relationships/releaseWithAppStoreVersion | 
[**appClipDefaultExperiencesReleaseWithAppStoreVersionUpdateToOneRelationship**](AppClipDefaultExperiencesAPI.md#appclipdefaultexperiencesreleasewithappstoreversionupdatetoonerelationship) | **PATCH** /v1/appClipDefaultExperiences/{id}/relationships/releaseWithAppStoreVersion | 
[**appClipDefaultExperiencesUpdateInstance**](AppClipDefaultExperiencesAPI.md#appclipdefaultexperiencesupdateinstance) | **PATCH** /v1/appClipDefaultExperiences/{id} | 


# **appClipDefaultExperiencesAppClipAppStoreReviewDetailGetToOneRelated**
```swift
    open class func appClipDefaultExperiencesAppClipAppStoreReviewDetailGetToOneRelated(id: String, fieldsAppClipAppStoreReviewDetails: [FieldsAppClipAppStoreReviewDetails_appClipDefaultExperiencesAppClipAppStoreReviewDetailGetToOneRelated]? = nil, fieldsAppClipDefaultExperiences: [FieldsAppClipDefaultExperiences_appClipDefaultExperiencesAppClipAppStoreReviewDetailGetToOneRelated]? = nil, include: [Include_appClipDefaultExperiencesAppClipAppStoreReviewDetailGetToOneRelated]? = nil, completion: @escaping (_ data: AppClipAppStoreReviewDetailResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let fieldsAppClipAppStoreReviewDetails = ["fieldsAppClipAppStoreReviewDetails_example"] // [String] | the fields to include for returned resources of type appClipAppStoreReviewDetails (optional)
let fieldsAppClipDefaultExperiences = ["fieldsAppClipDefaultExperiences_example"] // [String] | the fields to include for returned resources of type appClipDefaultExperiences (optional)
let include = ["include_example"] // [String] | comma-separated list of relationships to include (optional)

AppClipDefaultExperiencesAPI.appClipDefaultExperiencesAppClipAppStoreReviewDetailGetToOneRelated(id: id, fieldsAppClipAppStoreReviewDetails: fieldsAppClipAppStoreReviewDetails, fieldsAppClipDefaultExperiences: fieldsAppClipDefaultExperiences, include: include) { (response, error) in
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
 **fieldsAppClipAppStoreReviewDetails** | [**[String]**](String.md) | the fields to include for returned resources of type appClipAppStoreReviewDetails | [optional] 
 **fieldsAppClipDefaultExperiences** | [**[String]**](String.md) | the fields to include for returned resources of type appClipDefaultExperiences | [optional] 
 **include** | [**[String]**](String.md) | comma-separated list of relationships to include | [optional] 

### Return type

[**AppClipAppStoreReviewDetailResponse**](AppClipAppStoreReviewDetailResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **appClipDefaultExperiencesAppClipDefaultExperienceLocalizationsGetToManyRelated**
```swift
    open class func appClipDefaultExperiencesAppClipDefaultExperienceLocalizationsGetToManyRelated(id: String, filterLocale: [String]? = nil, fieldsAppClipDefaultExperienceLocalizations: [FieldsAppClipDefaultExperienceLocalizations_appClipDefaultExperiencesAppClipDefaultExperienceLocalizationsGetToManyRelated]? = nil, fieldsAppClipDefaultExperiences: [FieldsAppClipDefaultExperiences_appClipDefaultExperiencesAppClipDefaultExperienceLocalizationsGetToManyRelated]? = nil, fieldsAppClipHeaderImages: [FieldsAppClipHeaderImages_appClipDefaultExperiencesAppClipDefaultExperienceLocalizationsGetToManyRelated]? = nil, limit: Int? = nil, include: [Include_appClipDefaultExperiencesAppClipDefaultExperienceLocalizationsGetToManyRelated]? = nil, completion: @escaping (_ data: AppClipDefaultExperienceLocalizationsResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let filterLocale = ["inner_example"] // [String] | filter by attribute 'locale' (optional)
let fieldsAppClipDefaultExperienceLocalizations = ["fieldsAppClipDefaultExperienceLocalizations_example"] // [String] | the fields to include for returned resources of type appClipDefaultExperienceLocalizations (optional)
let fieldsAppClipDefaultExperiences = ["fieldsAppClipDefaultExperiences_example"] // [String] | the fields to include for returned resources of type appClipDefaultExperiences (optional)
let fieldsAppClipHeaderImages = ["fieldsAppClipHeaderImages_example"] // [String] | the fields to include for returned resources of type appClipHeaderImages (optional)
let limit = 987 // Int | maximum resources per page (optional)
let include = ["include_example"] // [String] | comma-separated list of relationships to include (optional)

AppClipDefaultExperiencesAPI.appClipDefaultExperiencesAppClipDefaultExperienceLocalizationsGetToManyRelated(id: id, filterLocale: filterLocale, fieldsAppClipDefaultExperienceLocalizations: fieldsAppClipDefaultExperienceLocalizations, fieldsAppClipDefaultExperiences: fieldsAppClipDefaultExperiences, fieldsAppClipHeaderImages: fieldsAppClipHeaderImages, limit: limit, include: include) { (response, error) in
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
 **fieldsAppClipDefaultExperienceLocalizations** | [**[String]**](String.md) | the fields to include for returned resources of type appClipDefaultExperienceLocalizations | [optional] 
 **fieldsAppClipDefaultExperiences** | [**[String]**](String.md) | the fields to include for returned resources of type appClipDefaultExperiences | [optional] 
 **fieldsAppClipHeaderImages** | [**[String]**](String.md) | the fields to include for returned resources of type appClipHeaderImages | [optional] 
 **limit** | **Int** | maximum resources per page | [optional] 
 **include** | [**[String]**](String.md) | comma-separated list of relationships to include | [optional] 

### Return type

[**AppClipDefaultExperienceLocalizationsResponse**](AppClipDefaultExperienceLocalizationsResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **appClipDefaultExperiencesCreateInstance**
```swift
    open class func appClipDefaultExperiencesCreateInstance(appClipDefaultExperienceCreateRequest: AppClipDefaultExperienceCreateRequest, completion: @escaping (_ data: AppClipDefaultExperienceResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let appClipDefaultExperienceCreateRequest = AppClipDefaultExperienceCreateRequest(data: AppClipDefaultExperienceCreateRequest_data(type: "type_example", attributes: AppClipDefaultExperience_attributes(action: AppClipAction()), relationships: AppClipDefaultExperienceCreateRequest_data_relationships(appClip: AppClipAdvancedExperienceCreateRequest_data_relationships_appClip(data: AppClipAdvancedExperience_relationships_appClip_data(type: "type_example", id: "id_example")), releaseWithAppStoreVersion: AppClipDefaultExperienceCreateRequest_data_relationships_releaseWithAppStoreVersion(data: AlternativeDistributionPackageCreateRequest_data_relationships_appStoreVersion_data(type: "type_example", id: "id_example")), appClipDefaultExperienceTemplate: AppClipAppStoreReviewDetail_relationships_appClipDefaultExperience(data: AppClipAppStoreReviewDetail_relationships_appClipDefaultExperience_data(type: "type_example", id: "id_example"))))) // AppClipDefaultExperienceCreateRequest | AppClipDefaultExperience representation

AppClipDefaultExperiencesAPI.appClipDefaultExperiencesCreateInstance(appClipDefaultExperienceCreateRequest: appClipDefaultExperienceCreateRequest) { (response, error) in
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
 **appClipDefaultExperienceCreateRequest** | [**AppClipDefaultExperienceCreateRequest**](AppClipDefaultExperienceCreateRequest.md) | AppClipDefaultExperience representation | 

### Return type

[**AppClipDefaultExperienceResponse**](AppClipDefaultExperienceResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **appClipDefaultExperiencesDeleteInstance**
```swift
    open class func appClipDefaultExperiencesDeleteInstance(id: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource

AppClipDefaultExperiencesAPI.appClipDefaultExperiencesDeleteInstance(id: id) { (response, error) in
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

# **appClipDefaultExperiencesGetInstance**
```swift
    open class func appClipDefaultExperiencesGetInstance(id: String, fieldsAppClipDefaultExperiences: [FieldsAppClipDefaultExperiences_appClipDefaultExperiencesGetInstance]? = nil, fieldsAppStoreVersions: [FieldsAppStoreVersions_appClipDefaultExperiencesGetInstance]? = nil, fieldsAppClipDefaultExperienceLocalizations: [FieldsAppClipDefaultExperienceLocalizations_appClipDefaultExperiencesGetInstance]? = nil, fieldsAppClipAppStoreReviewDetails: [FieldsAppClipAppStoreReviewDetails_appClipDefaultExperiencesGetInstance]? = nil, include: [Include_appClipDefaultExperiencesGetInstance]? = nil, limitAppClipDefaultExperienceLocalizations: Int? = nil, completion: @escaping (_ data: AppClipDefaultExperienceResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let fieldsAppClipDefaultExperiences = ["fieldsAppClipDefaultExperiences_example"] // [String] | the fields to include for returned resources of type appClipDefaultExperiences (optional)
let fieldsAppStoreVersions = ["fieldsAppStoreVersions_example"] // [String] | the fields to include for returned resources of type appStoreVersions (optional)
let fieldsAppClipDefaultExperienceLocalizations = ["fieldsAppClipDefaultExperienceLocalizations_example"] // [String] | the fields to include for returned resources of type appClipDefaultExperienceLocalizations (optional)
let fieldsAppClipAppStoreReviewDetails = ["fieldsAppClipAppStoreReviewDetails_example"] // [String] | the fields to include for returned resources of type appClipAppStoreReviewDetails (optional)
let include = ["include_example"] // [String] | comma-separated list of relationships to include (optional)
let limitAppClipDefaultExperienceLocalizations = 987 // Int | maximum number of related appClipDefaultExperienceLocalizations returned (when they are included) (optional)

AppClipDefaultExperiencesAPI.appClipDefaultExperiencesGetInstance(id: id, fieldsAppClipDefaultExperiences: fieldsAppClipDefaultExperiences, fieldsAppStoreVersions: fieldsAppStoreVersions, fieldsAppClipDefaultExperienceLocalizations: fieldsAppClipDefaultExperienceLocalizations, fieldsAppClipAppStoreReviewDetails: fieldsAppClipAppStoreReviewDetails, include: include, limitAppClipDefaultExperienceLocalizations: limitAppClipDefaultExperienceLocalizations) { (response, error) in
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
 **fieldsAppClipDefaultExperiences** | [**[String]**](String.md) | the fields to include for returned resources of type appClipDefaultExperiences | [optional] 
 **fieldsAppStoreVersions** | [**[String]**](String.md) | the fields to include for returned resources of type appStoreVersions | [optional] 
 **fieldsAppClipDefaultExperienceLocalizations** | [**[String]**](String.md) | the fields to include for returned resources of type appClipDefaultExperienceLocalizations | [optional] 
 **fieldsAppClipAppStoreReviewDetails** | [**[String]**](String.md) | the fields to include for returned resources of type appClipAppStoreReviewDetails | [optional] 
 **include** | [**[String]**](String.md) | comma-separated list of relationships to include | [optional] 
 **limitAppClipDefaultExperienceLocalizations** | **Int** | maximum number of related appClipDefaultExperienceLocalizations returned (when they are included) | [optional] 

### Return type

[**AppClipDefaultExperienceResponse**](AppClipDefaultExperienceResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **appClipDefaultExperiencesReleaseWithAppStoreVersionGetToOneRelated**
```swift
    open class func appClipDefaultExperiencesReleaseWithAppStoreVersionGetToOneRelated(id: String, fieldsAppStoreVersions: [FieldsAppStoreVersions_appClipDefaultExperiencesReleaseWithAppStoreVersionGetToOneRelated]? = nil, fieldsApps: [FieldsApps_appClipDefaultExperiencesReleaseWithAppStoreVersionGetToOneRelated]? = nil, fieldsAgeRatingDeclarations: [FieldsAgeRatingDeclarations_appClipDefaultExperiencesReleaseWithAppStoreVersionGetToOneRelated]? = nil, fieldsAppStoreVersionLocalizations: [FieldsAppStoreVersionLocalizations_appClipDefaultExperiencesReleaseWithAppStoreVersionGetToOneRelated]? = nil, fieldsBuilds: [FieldsBuilds_appClipDefaultExperiencesReleaseWithAppStoreVersionGetToOneRelated]? = nil, fieldsAppStoreVersionPhasedReleases: [FieldsAppStoreVersionPhasedReleases_appClipDefaultExperiencesReleaseWithAppStoreVersionGetToOneRelated]? = nil, fieldsGameCenterAppVersions: [FieldsGameCenterAppVersions_appClipDefaultExperiencesReleaseWithAppStoreVersionGetToOneRelated]? = nil, fieldsRoutingAppCoverages: [FieldsRoutingAppCoverages_appClipDefaultExperiencesReleaseWithAppStoreVersionGetToOneRelated]? = nil, fieldsAppStoreReviewDetails: [FieldsAppStoreReviewDetails_appClipDefaultExperiencesReleaseWithAppStoreVersionGetToOneRelated]? = nil, fieldsAppStoreVersionSubmissions: [FieldsAppStoreVersionSubmissions_appClipDefaultExperiencesReleaseWithAppStoreVersionGetToOneRelated]? = nil, fieldsAppClipDefaultExperiences: [FieldsAppClipDefaultExperiences_appClipDefaultExperiencesReleaseWithAppStoreVersionGetToOneRelated]? = nil, fieldsAppStoreVersionExperiments: [FieldsAppStoreVersionExperiments_appClipDefaultExperiencesReleaseWithAppStoreVersionGetToOneRelated]? = nil, fieldsAlternativeDistributionPackages: [FieldsAlternativeDistributionPackages_appClipDefaultExperiencesReleaseWithAppStoreVersionGetToOneRelated]? = nil, include: [Include_appClipDefaultExperiencesReleaseWithAppStoreVersionGetToOneRelated]? = nil, limitAppStoreVersionLocalizations: Int? = nil, limitAppStoreVersionExperiments: Int? = nil, limitAppStoreVersionExperimentsV2: Int? = nil, completion: @escaping (_ data: AppStoreVersionResponse?, _ error: Error?) -> Void)
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

AppClipDefaultExperiencesAPI.appClipDefaultExperiencesReleaseWithAppStoreVersionGetToOneRelated(id: id, fieldsAppStoreVersions: fieldsAppStoreVersions, fieldsApps: fieldsApps, fieldsAgeRatingDeclarations: fieldsAgeRatingDeclarations, fieldsAppStoreVersionLocalizations: fieldsAppStoreVersionLocalizations, fieldsBuilds: fieldsBuilds, fieldsAppStoreVersionPhasedReleases: fieldsAppStoreVersionPhasedReleases, fieldsGameCenterAppVersions: fieldsGameCenterAppVersions, fieldsRoutingAppCoverages: fieldsRoutingAppCoverages, fieldsAppStoreReviewDetails: fieldsAppStoreReviewDetails, fieldsAppStoreVersionSubmissions: fieldsAppStoreVersionSubmissions, fieldsAppClipDefaultExperiences: fieldsAppClipDefaultExperiences, fieldsAppStoreVersionExperiments: fieldsAppStoreVersionExperiments, fieldsAlternativeDistributionPackages: fieldsAlternativeDistributionPackages, include: include, limitAppStoreVersionLocalizations: limitAppStoreVersionLocalizations, limitAppStoreVersionExperiments: limitAppStoreVersionExperiments, limitAppStoreVersionExperimentsV2: limitAppStoreVersionExperimentsV2) { (response, error) in
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

# **appClipDefaultExperiencesReleaseWithAppStoreVersionGetToOneRelationship**
```swift
    open class func appClipDefaultExperiencesReleaseWithAppStoreVersionGetToOneRelationship(id: String, completion: @escaping (_ data: AppClipDefaultExperienceReleaseWithAppStoreVersionLinkageResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource

AppClipDefaultExperiencesAPI.appClipDefaultExperiencesReleaseWithAppStoreVersionGetToOneRelationship(id: id) { (response, error) in
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

[**AppClipDefaultExperienceReleaseWithAppStoreVersionLinkageResponse**](AppClipDefaultExperienceReleaseWithAppStoreVersionLinkageResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **appClipDefaultExperiencesReleaseWithAppStoreVersionUpdateToOneRelationship**
```swift
    open class func appClipDefaultExperiencesReleaseWithAppStoreVersionUpdateToOneRelationship(id: String, appClipDefaultExperienceReleaseWithAppStoreVersionLinkageRequest: AppClipDefaultExperienceReleaseWithAppStoreVersionLinkageRequest, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let appClipDefaultExperienceReleaseWithAppStoreVersionLinkageRequest = AppClipDefaultExperienceReleaseWithAppStoreVersionLinkageRequest(data: AlternativeDistributionPackageCreateRequest_data_relationships_appStoreVersion_data(type: "type_example", id: "id_example")) // AppClipDefaultExperienceReleaseWithAppStoreVersionLinkageRequest | Related linkage

AppClipDefaultExperiencesAPI.appClipDefaultExperiencesReleaseWithAppStoreVersionUpdateToOneRelationship(id: id, appClipDefaultExperienceReleaseWithAppStoreVersionLinkageRequest: appClipDefaultExperienceReleaseWithAppStoreVersionLinkageRequest) { (response, error) in
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
 **appClipDefaultExperienceReleaseWithAppStoreVersionLinkageRequest** | [**AppClipDefaultExperienceReleaseWithAppStoreVersionLinkageRequest**](AppClipDefaultExperienceReleaseWithAppStoreVersionLinkageRequest.md) | Related linkage | 

### Return type

Void (empty response body)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **appClipDefaultExperiencesUpdateInstance**
```swift
    open class func appClipDefaultExperiencesUpdateInstance(id: String, appClipDefaultExperienceUpdateRequest: AppClipDefaultExperienceUpdateRequest, completion: @escaping (_ data: AppClipDefaultExperienceResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let appClipDefaultExperienceUpdateRequest = AppClipDefaultExperienceUpdateRequest(data: AppClipDefaultExperienceUpdateRequest_data(type: "type_example", id: "id_example", attributes: AppClipDefaultExperience_attributes(action: AppClipAction()), relationships: AppClipDefaultExperienceUpdateRequest_data_relationships(releaseWithAppStoreVersion: AppClipDefaultExperienceCreateRequest_data_relationships_releaseWithAppStoreVersion(data: AlternativeDistributionPackageCreateRequest_data_relationships_appStoreVersion_data(type: "type_example", id: "id_example"))))) // AppClipDefaultExperienceUpdateRequest | AppClipDefaultExperience representation

AppClipDefaultExperiencesAPI.appClipDefaultExperiencesUpdateInstance(id: id, appClipDefaultExperienceUpdateRequest: appClipDefaultExperienceUpdateRequest) { (response, error) in
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
 **appClipDefaultExperienceUpdateRequest** | [**AppClipDefaultExperienceUpdateRequest**](AppClipDefaultExperienceUpdateRequest.md) | AppClipDefaultExperience representation | 

### Return type

[**AppClipDefaultExperienceResponse**](AppClipDefaultExperienceResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

