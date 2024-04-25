# GameCenterAchievementImagesAPI

All URIs are relative to *https://api.appstoreconnect.apple.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**gameCenterAchievementImagesCreateInstance**](GameCenterAchievementImagesAPI.md#gamecenterachievementimagescreateinstance) | **POST** /v1/gameCenterAchievementImages | 
[**gameCenterAchievementImagesDeleteInstance**](GameCenterAchievementImagesAPI.md#gamecenterachievementimagesdeleteinstance) | **DELETE** /v1/gameCenterAchievementImages/{id} | 
[**gameCenterAchievementImagesGetInstance**](GameCenterAchievementImagesAPI.md#gamecenterachievementimagesgetinstance) | **GET** /v1/gameCenterAchievementImages/{id} | 
[**gameCenterAchievementImagesUpdateInstance**](GameCenterAchievementImagesAPI.md#gamecenterachievementimagesupdateinstance) | **PATCH** /v1/gameCenterAchievementImages/{id} | 


# **gameCenterAchievementImagesCreateInstance**
```swift
    open class func gameCenterAchievementImagesCreateInstance(gameCenterAchievementImageCreateRequest: GameCenterAchievementImageCreateRequest, completion: @escaping (_ data: GameCenterAchievementImageResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let gameCenterAchievementImageCreateRequest = GameCenterAchievementImageCreateRequest(data: GameCenterAchievementImageCreateRequest_data(type: "type_example", attributes: AppClipAdvancedExperienceImageCreateRequest_data_attributes(fileSize: 123, fileName: "fileName_example"), relationships: GameCenterAchievementImageCreateRequest_data_relationships(gameCenterAchievementLocalization: GameCenterAchievementImageCreateRequest_data_relationships_gameCenterAchievementLocalization(data: GameCenterAchievementImage_relationships_gameCenterAchievementLocalization_data(type: "type_example", id: "id_example"))))) // GameCenterAchievementImageCreateRequest | GameCenterAchievementImage representation

GameCenterAchievementImagesAPI.gameCenterAchievementImagesCreateInstance(gameCenterAchievementImageCreateRequest: gameCenterAchievementImageCreateRequest) { (response, error) in
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
 **gameCenterAchievementImageCreateRequest** | [**GameCenterAchievementImageCreateRequest**](GameCenterAchievementImageCreateRequest.md) | GameCenterAchievementImage representation | 

### Return type

[**GameCenterAchievementImageResponse**](GameCenterAchievementImageResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **gameCenterAchievementImagesDeleteInstance**
```swift
    open class func gameCenterAchievementImagesDeleteInstance(id: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource

GameCenterAchievementImagesAPI.gameCenterAchievementImagesDeleteInstance(id: id) { (response, error) in
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

# **gameCenterAchievementImagesGetInstance**
```swift
    open class func gameCenterAchievementImagesGetInstance(id: String, fieldsGameCenterAchievementImages: [FieldsGameCenterAchievementImages_gameCenterAchievementImagesGetInstance]? = nil, include: [Include_gameCenterAchievementImagesGetInstance]? = nil, completion: @escaping (_ data: GameCenterAchievementImageResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let fieldsGameCenterAchievementImages = ["fieldsGameCenterAchievementImages_example"] // [String] | the fields to include for returned resources of type gameCenterAchievementImages (optional)
let include = ["include_example"] // [String] | comma-separated list of relationships to include (optional)

GameCenterAchievementImagesAPI.gameCenterAchievementImagesGetInstance(id: id, fieldsGameCenterAchievementImages: fieldsGameCenterAchievementImages, include: include) { (response, error) in
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
 **fieldsGameCenterAchievementImages** | [**[String]**](String.md) | the fields to include for returned resources of type gameCenterAchievementImages | [optional] 
 **include** | [**[String]**](String.md) | comma-separated list of relationships to include | [optional] 

### Return type

[**GameCenterAchievementImageResponse**](GameCenterAchievementImageResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **gameCenterAchievementImagesUpdateInstance**
```swift
    open class func gameCenterAchievementImagesUpdateInstance(id: String, gameCenterAchievementImageUpdateRequest: GameCenterAchievementImageUpdateRequest, completion: @escaping (_ data: GameCenterAchievementImageResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let gameCenterAchievementImageUpdateRequest = GameCenterAchievementImageUpdateRequest(data: GameCenterAchievementImageUpdateRequest_data(type: "type_example", id: "id_example", attributes: AppEventScreenshotUpdateRequest_data_attributes(uploaded: false))) // GameCenterAchievementImageUpdateRequest | GameCenterAchievementImage representation

GameCenterAchievementImagesAPI.gameCenterAchievementImagesUpdateInstance(id: id, gameCenterAchievementImageUpdateRequest: gameCenterAchievementImageUpdateRequest) { (response, error) in
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
 **gameCenterAchievementImageUpdateRequest** | [**GameCenterAchievementImageUpdateRequest**](GameCenterAchievementImageUpdateRequest.md) | GameCenterAchievementImage representation | 

### Return type

[**GameCenterAchievementImageResponse**](GameCenterAchievementImageResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

