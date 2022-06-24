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
    open class func appClipDefaultExperiencesAppClipDefaultExperienceLocalizationsGetToManyRelated(id: String, filterLocale: [String]? = nil, fieldsAppClipDefaultExperiences: [FieldsAppClipDefaultExperiences_appClipDefaultExperiencesAppClipDefaultExperienceLocalizationsGetToManyRelated]? = nil, fieldsAppClipDefaultExperienceLocalizations: [FieldsAppClipDefaultExperienceLocalizations_appClipDefaultExperiencesAppClipDefaultExperienceLocalizationsGetToManyRelated]? = nil, fieldsAppClipHeaderImages: [FieldsAppClipHeaderImages_appClipDefaultExperiencesAppClipDefaultExperienceLocalizationsGetToManyRelated]? = nil, limit: Int? = nil, include: [Include_appClipDefaultExperiencesAppClipDefaultExperienceLocalizationsGetToManyRelated]? = nil, completion: @escaping (_ data: AppClipDefaultExperienceLocalizationsResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let filterLocale = ["inner_example"] // [String] | filter by attribute 'locale' (optional)
let fieldsAppClipDefaultExperiences = ["fieldsAppClipDefaultExperiences_example"] // [String] | the fields to include for returned resources of type appClipDefaultExperiences (optional)
let fieldsAppClipDefaultExperienceLocalizations = ["fieldsAppClipDefaultExperienceLocalizations_example"] // [String] | the fields to include for returned resources of type appClipDefaultExperienceLocalizations (optional)
let fieldsAppClipHeaderImages = ["fieldsAppClipHeaderImages_example"] // [String] | the fields to include for returned resources of type appClipHeaderImages (optional)
let limit = 987 // Int | maximum resources per page (optional)
let include = ["include_example"] // [String] | comma-separated list of relationships to include (optional)

AppClipDefaultExperiencesAPI.appClipDefaultExperiencesAppClipDefaultExperienceLocalizationsGetToManyRelated(id: id, filterLocale: filterLocale, fieldsAppClipDefaultExperiences: fieldsAppClipDefaultExperiences, fieldsAppClipDefaultExperienceLocalizations: fieldsAppClipDefaultExperienceLocalizations, fieldsAppClipHeaderImages: fieldsAppClipHeaderImages, limit: limit, include: include) { (response, error) in
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
 **fieldsAppClipDefaultExperiences** | [**[String]**](String.md) | the fields to include for returned resources of type appClipDefaultExperiences | [optional] 
 **fieldsAppClipDefaultExperienceLocalizations** | [**[String]**](String.md) | the fields to include for returned resources of type appClipDefaultExperienceLocalizations | [optional] 
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

let appClipDefaultExperienceCreateRequest = AppClipDefaultExperienceCreateRequest(data: AppClipDefaultExperienceCreateRequest_data(type: "type_example", attributes: AppClipDefaultExperience_attributes(action: AppClipAction()), relationships: AppClipDefaultExperienceCreateRequest_data_relationships(appClip: AppClipAdvancedExperienceCreateRequest_data_relationships_appClip(data: AppClipAdvancedExperience_relationships_appClip_data(type: "type_example", id: "id_example")), releaseWithAppStoreVersion: AppClipDefaultExperienceCreateRequest_data_relationships_releaseWithAppStoreVersion(data: AppClipDefaultExperience_relationships_releaseWithAppStoreVersion_data(type: "type_example", id: "id_example")), appClipDefaultExperienceTemplate: AppClipDefaultExperienceCreateRequest_data_relationships_appClipDefaultExperienceTemplate(data: AppClipAppStoreReviewDetail_relationships_appClipDefaultExperience_data(type: "type_example", id: "id_example"))))) // AppClipDefaultExperienceCreateRequest | AppClipDefaultExperience representation

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
    open class func appClipDefaultExperiencesGetInstance(id: String, fieldsAppClipDefaultExperiences: [FieldsAppClipDefaultExperiences_appClipDefaultExperiencesGetInstance]? = nil, include: [Include_appClipDefaultExperiencesGetInstance]? = nil, fieldsAppClipAppStoreReviewDetails: [FieldsAppClipAppStoreReviewDetails_appClipDefaultExperiencesGetInstance]? = nil, fieldsAppStoreVersions: [FieldsAppStoreVersions_appClipDefaultExperiencesGetInstance]? = nil, fieldsAppClipDefaultExperienceLocalizations: [FieldsAppClipDefaultExperienceLocalizations_appClipDefaultExperiencesGetInstance]? = nil, limitAppClipDefaultExperienceLocalizations: Int? = nil, completion: @escaping (_ data: AppClipDefaultExperienceResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let fieldsAppClipDefaultExperiences = ["fieldsAppClipDefaultExperiences_example"] // [String] | the fields to include for returned resources of type appClipDefaultExperiences (optional)
let include = ["include_example"] // [String] | comma-separated list of relationships to include (optional)
let fieldsAppClipAppStoreReviewDetails = ["fieldsAppClipAppStoreReviewDetails_example"] // [String] | the fields to include for returned resources of type appClipAppStoreReviewDetails (optional)
let fieldsAppStoreVersions = ["fieldsAppStoreVersions_example"] // [String] | the fields to include for returned resources of type appStoreVersions (optional)
let fieldsAppClipDefaultExperienceLocalizations = ["fieldsAppClipDefaultExperienceLocalizations_example"] // [String] | the fields to include for returned resources of type appClipDefaultExperienceLocalizations (optional)
let limitAppClipDefaultExperienceLocalizations = 987 // Int | maximum number of related appClipDefaultExperienceLocalizations returned (when they are included) (optional)

AppClipDefaultExperiencesAPI.appClipDefaultExperiencesGetInstance(id: id, fieldsAppClipDefaultExperiences: fieldsAppClipDefaultExperiences, include: include, fieldsAppClipAppStoreReviewDetails: fieldsAppClipAppStoreReviewDetails, fieldsAppStoreVersions: fieldsAppStoreVersions, fieldsAppClipDefaultExperienceLocalizations: fieldsAppClipDefaultExperienceLocalizations, limitAppClipDefaultExperienceLocalizations: limitAppClipDefaultExperienceLocalizations) { (response, error) in
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
 **include** | [**[String]**](String.md) | comma-separated list of relationships to include | [optional] 
 **fieldsAppClipAppStoreReviewDetails** | [**[String]**](String.md) | the fields to include for returned resources of type appClipAppStoreReviewDetails | [optional] 
 **fieldsAppStoreVersions** | [**[String]**](String.md) | the fields to include for returned resources of type appStoreVersions | [optional] 
 **fieldsAppClipDefaultExperienceLocalizations** | [**[String]**](String.md) | the fields to include for returned resources of type appClipDefaultExperienceLocalizations | [optional] 
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
    open class func appClipDefaultExperiencesReleaseWithAppStoreVersionGetToOneRelated(id: String, fieldsAppStoreVersionExperiments: [FieldsAppStoreVersionExperiments_appClipDefaultExperiencesReleaseWithAppStoreVersionGetToOneRelated]? = nil, fieldsAgeRatingDeclarations: [FieldsAgeRatingDeclarations_appClipDefaultExperiencesReleaseWithAppStoreVersionGetToOneRelated]? = nil, fieldsAppStoreVersionSubmissions: [FieldsAppStoreVersionSubmissions_appClipDefaultExperiencesReleaseWithAppStoreVersionGetToOneRelated]? = nil, fieldsAppStoreReviewDetails: [FieldsAppStoreReviewDetails_appClipDefaultExperiencesReleaseWithAppStoreVersionGetToOneRelated]? = nil, fieldsAppStoreVersions: [FieldsAppStoreVersions_appClipDefaultExperiencesReleaseWithAppStoreVersionGetToOneRelated]? = nil, fieldsIdfaDeclarations: [FieldsIdfaDeclarations_appClipDefaultExperiencesReleaseWithAppStoreVersionGetToOneRelated]? = nil, fieldsApps: [FieldsApps_appClipDefaultExperiencesReleaseWithAppStoreVersionGetToOneRelated]? = nil, fieldsRoutingAppCoverages: [FieldsRoutingAppCoverages_appClipDefaultExperiencesReleaseWithAppStoreVersionGetToOneRelated]? = nil, fieldsAppClipDefaultExperiences: [FieldsAppClipDefaultExperiences_appClipDefaultExperiencesReleaseWithAppStoreVersionGetToOneRelated]? = nil, fieldsAppStoreVersionPhasedReleases: [FieldsAppStoreVersionPhasedReleases_appClipDefaultExperiencesReleaseWithAppStoreVersionGetToOneRelated]? = nil, fieldsBuilds: [FieldsBuilds_appClipDefaultExperiencesReleaseWithAppStoreVersionGetToOneRelated]? = nil, fieldsAppStoreVersionLocalizations: [FieldsAppStoreVersionLocalizations_appClipDefaultExperiencesReleaseWithAppStoreVersionGetToOneRelated]? = nil, limitAppStoreVersionLocalizations: Int? = nil, limitAppStoreVersionExperiments: Int? = nil, include: [Include_appClipDefaultExperiencesReleaseWithAppStoreVersionGetToOneRelated]? = nil, completion: @escaping (_ data: AppStoreVersionResponse?, _ error: Error?) -> Void)
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

AppClipDefaultExperiencesAPI.appClipDefaultExperiencesReleaseWithAppStoreVersionGetToOneRelated(id: id, fieldsAppStoreVersionExperiments: fieldsAppStoreVersionExperiments, fieldsAgeRatingDeclarations: fieldsAgeRatingDeclarations, fieldsAppStoreVersionSubmissions: fieldsAppStoreVersionSubmissions, fieldsAppStoreReviewDetails: fieldsAppStoreReviewDetails, fieldsAppStoreVersions: fieldsAppStoreVersions, fieldsIdfaDeclarations: fieldsIdfaDeclarations, fieldsApps: fieldsApps, fieldsRoutingAppCoverages: fieldsRoutingAppCoverages, fieldsAppClipDefaultExperiences: fieldsAppClipDefaultExperiences, fieldsAppStoreVersionPhasedReleases: fieldsAppStoreVersionPhasedReleases, fieldsBuilds: fieldsBuilds, fieldsAppStoreVersionLocalizations: fieldsAppStoreVersionLocalizations, limitAppStoreVersionLocalizations: limitAppStoreVersionLocalizations, limitAppStoreVersionExperiments: limitAppStoreVersionExperiments, include: include) { (response, error) in
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
let appClipDefaultExperienceReleaseWithAppStoreVersionLinkageRequest = AppClipDefaultExperienceReleaseWithAppStoreVersionLinkageRequest(data: AppClipDefaultExperience_relationships_releaseWithAppStoreVersion_data(type: "type_example", id: "id_example")) // AppClipDefaultExperienceReleaseWithAppStoreVersionLinkageRequest | Related linkage

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
let appClipDefaultExperienceUpdateRequest = AppClipDefaultExperienceUpdateRequest(data: AppClipDefaultExperienceUpdateRequest_data(type: "type_example", id: "id_example", attributes: AppClipDefaultExperience_attributes(action: AppClipAction()), relationships: AppClipDefaultExperienceUpdateRequest_data_relationships(releaseWithAppStoreVersion: AppClipDefaultExperienceCreateRequest_data_relationships_releaseWithAppStoreVersion(data: AppClipDefaultExperience_relationships_releaseWithAppStoreVersion_data(type: "type_example", id: "id_example"))))) // AppClipDefaultExperienceUpdateRequest | AppClipDefaultExperience representation

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

