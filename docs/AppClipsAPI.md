# AppClipsAPI

All URIs are relative to *https://api.appstoreconnect.apple.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**appClipsAppClipAdvancedExperiencesGetToManyRelated**](AppClipsAPI.md#appclipsappclipadvancedexperiencesgettomanyrelated) | **GET** /v1/appClips/{id}/appClipAdvancedExperiences | 
[**appClipsAppClipDefaultExperiencesGetToManyRelated**](AppClipsAPI.md#appclipsappclipdefaultexperiencesgettomanyrelated) | **GET** /v1/appClips/{id}/appClipDefaultExperiences | 
[**appClipsGetInstance**](AppClipsAPI.md#appclipsgetinstance) | **GET** /v1/appClips/{id} | 


# **appClipsAppClipAdvancedExperiencesGetToManyRelated**
```swift
    open class func appClipsAppClipAdvancedExperiencesGetToManyRelated(id: String, filterAction: [FilterAction_appClipsAppClipAdvancedExperiencesGetToManyRelated]? = nil, filterPlaceStatus: [FilterPlaceStatus_appClipsAppClipAdvancedExperiencesGetToManyRelated]? = nil, filterStatus: [FilterStatus_appClipsAppClipAdvancedExperiencesGetToManyRelated]? = nil, fieldsAppClipAdvancedExperiences: [FieldsAppClipAdvancedExperiences_appClipsAppClipAdvancedExperiencesGetToManyRelated]? = nil, fieldsAppClips: [FieldsAppClips_appClipsAppClipAdvancedExperiencesGetToManyRelated]? = nil, fieldsAppClipAdvancedExperienceImages: [FieldsAppClipAdvancedExperienceImages_appClipsAppClipAdvancedExperiencesGetToManyRelated]? = nil, fieldsAppClipAdvancedExperienceLocalizations: [FieldsAppClipAdvancedExperienceLocalizations_appClipsAppClipAdvancedExperiencesGetToManyRelated]? = nil, limit: Int? = nil, limitLocalizations: Int? = nil, include: [Include_appClipsAppClipAdvancedExperiencesGetToManyRelated]? = nil, completion: @escaping (_ data: AppClipAdvancedExperiencesResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let filterAction = ["filterAction_example"] // [String] | filter by attribute 'action' (optional)
let filterPlaceStatus = ["filterPlaceStatus_example"] // [String] | filter by attribute 'placeStatus' (optional)
let filterStatus = ["filterStatus_example"] // [String] | filter by attribute 'status' (optional)
let fieldsAppClipAdvancedExperiences = ["fieldsAppClipAdvancedExperiences_example"] // [String] | the fields to include for returned resources of type appClipAdvancedExperiences (optional)
let fieldsAppClips = ["fieldsAppClips_example"] // [String] | the fields to include for returned resources of type appClips (optional)
let fieldsAppClipAdvancedExperienceImages = ["fieldsAppClipAdvancedExperienceImages_example"] // [String] | the fields to include for returned resources of type appClipAdvancedExperienceImages (optional)
let fieldsAppClipAdvancedExperienceLocalizations = ["fieldsAppClipAdvancedExperienceLocalizations_example"] // [String] | the fields to include for returned resources of type appClipAdvancedExperienceLocalizations (optional)
let limit = 987 // Int | maximum resources per page (optional)
let limitLocalizations = 987 // Int | maximum number of related localizations returned (when they are included) (optional)
let include = ["include_example"] // [String] | comma-separated list of relationships to include (optional)

AppClipsAPI.appClipsAppClipAdvancedExperiencesGetToManyRelated(id: id, filterAction: filterAction, filterPlaceStatus: filterPlaceStatus, filterStatus: filterStatus, fieldsAppClipAdvancedExperiences: fieldsAppClipAdvancedExperiences, fieldsAppClips: fieldsAppClips, fieldsAppClipAdvancedExperienceImages: fieldsAppClipAdvancedExperienceImages, fieldsAppClipAdvancedExperienceLocalizations: fieldsAppClipAdvancedExperienceLocalizations, limit: limit, limitLocalizations: limitLocalizations, include: include) { (response, error) in
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
 **filterAction** | [**[String]**](String.md) | filter by attribute &#39;action&#39; | [optional] 
 **filterPlaceStatus** | [**[String]**](String.md) | filter by attribute &#39;placeStatus&#39; | [optional] 
 **filterStatus** | [**[String]**](String.md) | filter by attribute &#39;status&#39; | [optional] 
 **fieldsAppClipAdvancedExperiences** | [**[String]**](String.md) | the fields to include for returned resources of type appClipAdvancedExperiences | [optional] 
 **fieldsAppClips** | [**[String]**](String.md) | the fields to include for returned resources of type appClips | [optional] 
 **fieldsAppClipAdvancedExperienceImages** | [**[String]**](String.md) | the fields to include for returned resources of type appClipAdvancedExperienceImages | [optional] 
 **fieldsAppClipAdvancedExperienceLocalizations** | [**[String]**](String.md) | the fields to include for returned resources of type appClipAdvancedExperienceLocalizations | [optional] 
 **limit** | **Int** | maximum resources per page | [optional] 
 **limitLocalizations** | **Int** | maximum number of related localizations returned (when they are included) | [optional] 
 **include** | [**[String]**](String.md) | comma-separated list of relationships to include | [optional] 

### Return type

[**AppClipAdvancedExperiencesResponse**](AppClipAdvancedExperiencesResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **appClipsAppClipDefaultExperiencesGetToManyRelated**
```swift
    open class func appClipsAppClipDefaultExperiencesGetToManyRelated(id: String, existsReleaseWithAppStoreVersion: [String]? = nil, fieldsAppClips: [FieldsAppClips_appClipsAppClipDefaultExperiencesGetToManyRelated]? = nil, fieldsAppClipAppStoreReviewDetails: [FieldsAppClipAppStoreReviewDetails_appClipsAppClipDefaultExperiencesGetToManyRelated]? = nil, fieldsAppStoreVersions: [FieldsAppStoreVersions_appClipsAppClipDefaultExperiencesGetToManyRelated]? = nil, fieldsAppClipDefaultExperiences: [FieldsAppClipDefaultExperiences_appClipsAppClipDefaultExperiencesGetToManyRelated]? = nil, fieldsAppClipDefaultExperienceLocalizations: [FieldsAppClipDefaultExperienceLocalizations_appClipsAppClipDefaultExperiencesGetToManyRelated]? = nil, limit: Int? = nil, limitAppClipDefaultExperienceLocalizations: Int? = nil, include: [Include_appClipsAppClipDefaultExperiencesGetToManyRelated]? = nil, completion: @escaping (_ data: AppClipDefaultExperiencesResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let existsReleaseWithAppStoreVersion = ["inner_example"] // [String] | filter by existence or non-existence of related 'releaseWithAppStoreVersion' (optional)
let fieldsAppClips = ["fieldsAppClips_example"] // [String] | the fields to include for returned resources of type appClips (optional)
let fieldsAppClipAppStoreReviewDetails = ["fieldsAppClipAppStoreReviewDetails_example"] // [String] | the fields to include for returned resources of type appClipAppStoreReviewDetails (optional)
let fieldsAppStoreVersions = ["fieldsAppStoreVersions_example"] // [String] | the fields to include for returned resources of type appStoreVersions (optional)
let fieldsAppClipDefaultExperiences = ["fieldsAppClipDefaultExperiences_example"] // [String] | the fields to include for returned resources of type appClipDefaultExperiences (optional)
let fieldsAppClipDefaultExperienceLocalizations = ["fieldsAppClipDefaultExperienceLocalizations_example"] // [String] | the fields to include for returned resources of type appClipDefaultExperienceLocalizations (optional)
let limit = 987 // Int | maximum resources per page (optional)
let limitAppClipDefaultExperienceLocalizations = 987 // Int | maximum number of related appClipDefaultExperienceLocalizations returned (when they are included) (optional)
let include = ["include_example"] // [String] | comma-separated list of relationships to include (optional)

AppClipsAPI.appClipsAppClipDefaultExperiencesGetToManyRelated(id: id, existsReleaseWithAppStoreVersion: existsReleaseWithAppStoreVersion, fieldsAppClips: fieldsAppClips, fieldsAppClipAppStoreReviewDetails: fieldsAppClipAppStoreReviewDetails, fieldsAppStoreVersions: fieldsAppStoreVersions, fieldsAppClipDefaultExperiences: fieldsAppClipDefaultExperiences, fieldsAppClipDefaultExperienceLocalizations: fieldsAppClipDefaultExperienceLocalizations, limit: limit, limitAppClipDefaultExperienceLocalizations: limitAppClipDefaultExperienceLocalizations, include: include) { (response, error) in
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
 **existsReleaseWithAppStoreVersion** | [**[String]**](String.md) | filter by existence or non-existence of related &#39;releaseWithAppStoreVersion&#39; | [optional] 
 **fieldsAppClips** | [**[String]**](String.md) | the fields to include for returned resources of type appClips | [optional] 
 **fieldsAppClipAppStoreReviewDetails** | [**[String]**](String.md) | the fields to include for returned resources of type appClipAppStoreReviewDetails | [optional] 
 **fieldsAppStoreVersions** | [**[String]**](String.md) | the fields to include for returned resources of type appStoreVersions | [optional] 
 **fieldsAppClipDefaultExperiences** | [**[String]**](String.md) | the fields to include for returned resources of type appClipDefaultExperiences | [optional] 
 **fieldsAppClipDefaultExperienceLocalizations** | [**[String]**](String.md) | the fields to include for returned resources of type appClipDefaultExperienceLocalizations | [optional] 
 **limit** | **Int** | maximum resources per page | [optional] 
 **limitAppClipDefaultExperienceLocalizations** | **Int** | maximum number of related appClipDefaultExperienceLocalizations returned (when they are included) | [optional] 
 **include** | [**[String]**](String.md) | comma-separated list of relationships to include | [optional] 

### Return type

[**AppClipDefaultExperiencesResponse**](AppClipDefaultExperiencesResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **appClipsGetInstance**
```swift
    open class func appClipsGetInstance(id: String, fieldsAppClips: [FieldsAppClips_appClipsGetInstance]? = nil, include: [Include_appClipsGetInstance]? = nil, fieldsAppClipAdvancedExperiences: [FieldsAppClipAdvancedExperiences_appClipsGetInstance]? = nil, fieldsAppClipDefaultExperiences: [FieldsAppClipDefaultExperiences_appClipsGetInstance]? = nil, limitAppClipDefaultExperiences: Int? = nil, completion: @escaping (_ data: AppClipResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let fieldsAppClips = ["fieldsAppClips_example"] // [String] | the fields to include for returned resources of type appClips (optional)
let include = ["include_example"] // [String] | comma-separated list of relationships to include (optional)
let fieldsAppClipAdvancedExperiences = ["fieldsAppClipAdvancedExperiences_example"] // [String] | the fields to include for returned resources of type appClipAdvancedExperiences (optional)
let fieldsAppClipDefaultExperiences = ["fieldsAppClipDefaultExperiences_example"] // [String] | the fields to include for returned resources of type appClipDefaultExperiences (optional)
let limitAppClipDefaultExperiences = 987 // Int | maximum number of related appClipDefaultExperiences returned (when they are included) (optional)

AppClipsAPI.appClipsGetInstance(id: id, fieldsAppClips: fieldsAppClips, include: include, fieldsAppClipAdvancedExperiences: fieldsAppClipAdvancedExperiences, fieldsAppClipDefaultExperiences: fieldsAppClipDefaultExperiences, limitAppClipDefaultExperiences: limitAppClipDefaultExperiences) { (response, error) in
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
 **include** | [**[String]**](String.md) | comma-separated list of relationships to include | [optional] 
 **fieldsAppClipAdvancedExperiences** | [**[String]**](String.md) | the fields to include for returned resources of type appClipAdvancedExperiences | [optional] 
 **fieldsAppClipDefaultExperiences** | [**[String]**](String.md) | the fields to include for returned resources of type appClipDefaultExperiences | [optional] 
 **limitAppClipDefaultExperiences** | **Int** | maximum number of related appClipDefaultExperiences returned (when they are included) | [optional] 

### Return type

[**AppClipResponse**](AppClipResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

