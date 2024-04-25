# GameCenterLeaderboardSetImagesAPI

All URIs are relative to *https://api.appstoreconnect.apple.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**gameCenterLeaderboardSetImagesCreateInstance**](GameCenterLeaderboardSetImagesAPI.md#gamecenterleaderboardsetimagescreateinstance) | **POST** /v1/gameCenterLeaderboardSetImages | 
[**gameCenterLeaderboardSetImagesDeleteInstance**](GameCenterLeaderboardSetImagesAPI.md#gamecenterleaderboardsetimagesdeleteinstance) | **DELETE** /v1/gameCenterLeaderboardSetImages/{id} | 
[**gameCenterLeaderboardSetImagesGetInstance**](GameCenterLeaderboardSetImagesAPI.md#gamecenterleaderboardsetimagesgetinstance) | **GET** /v1/gameCenterLeaderboardSetImages/{id} | 
[**gameCenterLeaderboardSetImagesUpdateInstance**](GameCenterLeaderboardSetImagesAPI.md#gamecenterleaderboardsetimagesupdateinstance) | **PATCH** /v1/gameCenterLeaderboardSetImages/{id} | 


# **gameCenterLeaderboardSetImagesCreateInstance**
```swift
    open class func gameCenterLeaderboardSetImagesCreateInstance(gameCenterLeaderboardSetImageCreateRequest: GameCenterLeaderboardSetImageCreateRequest, completion: @escaping (_ data: GameCenterLeaderboardSetImageResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let gameCenterLeaderboardSetImageCreateRequest = GameCenterLeaderboardSetImageCreateRequest(data: GameCenterLeaderboardSetImageCreateRequest_data(type: "type_example", attributes: AppClipAdvancedExperienceImageCreateRequest_data_attributes(fileSize: 123, fileName: "fileName_example"), relationships: GameCenterLeaderboardSetImageCreateRequest_data_relationships(gameCenterLeaderboardSetLocalization: GameCenterLeaderboardSetImageCreateRequest_data_relationships_gameCenterLeaderboardSetLocalization(data: GameCenterLeaderboardSetImage_relationships_gameCenterLeaderboardSetLocalization_data(type: "type_example", id: "id_example"))))) // GameCenterLeaderboardSetImageCreateRequest | GameCenterLeaderboardSetImage representation

GameCenterLeaderboardSetImagesAPI.gameCenterLeaderboardSetImagesCreateInstance(gameCenterLeaderboardSetImageCreateRequest: gameCenterLeaderboardSetImageCreateRequest) { (response, error) in
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
 **gameCenterLeaderboardSetImageCreateRequest** | [**GameCenterLeaderboardSetImageCreateRequest**](GameCenterLeaderboardSetImageCreateRequest.md) | GameCenterLeaderboardSetImage representation | 

### Return type

[**GameCenterLeaderboardSetImageResponse**](GameCenterLeaderboardSetImageResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **gameCenterLeaderboardSetImagesDeleteInstance**
```swift
    open class func gameCenterLeaderboardSetImagesDeleteInstance(id: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource

GameCenterLeaderboardSetImagesAPI.gameCenterLeaderboardSetImagesDeleteInstance(id: id) { (response, error) in
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

# **gameCenterLeaderboardSetImagesGetInstance**
```swift
    open class func gameCenterLeaderboardSetImagesGetInstance(id: String, fieldsGameCenterLeaderboardSetImages: [FieldsGameCenterLeaderboardSetImages_gameCenterLeaderboardSetImagesGetInstance]? = nil, include: [Include_gameCenterLeaderboardSetImagesGetInstance]? = nil, completion: @escaping (_ data: GameCenterLeaderboardSetImageResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let fieldsGameCenterLeaderboardSetImages = ["fieldsGameCenterLeaderboardSetImages_example"] // [String] | the fields to include for returned resources of type gameCenterLeaderboardSetImages (optional)
let include = ["include_example"] // [String] | comma-separated list of relationships to include (optional)

GameCenterLeaderboardSetImagesAPI.gameCenterLeaderboardSetImagesGetInstance(id: id, fieldsGameCenterLeaderboardSetImages: fieldsGameCenterLeaderboardSetImages, include: include) { (response, error) in
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
 **fieldsGameCenterLeaderboardSetImages** | [**[String]**](String.md) | the fields to include for returned resources of type gameCenterLeaderboardSetImages | [optional] 
 **include** | [**[String]**](String.md) | comma-separated list of relationships to include | [optional] 

### Return type

[**GameCenterLeaderboardSetImageResponse**](GameCenterLeaderboardSetImageResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **gameCenterLeaderboardSetImagesUpdateInstance**
```swift
    open class func gameCenterLeaderboardSetImagesUpdateInstance(id: String, gameCenterLeaderboardSetImageUpdateRequest: GameCenterLeaderboardSetImageUpdateRequest, completion: @escaping (_ data: GameCenterLeaderboardSetImageResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let gameCenterLeaderboardSetImageUpdateRequest = GameCenterLeaderboardSetImageUpdateRequest(data: GameCenterLeaderboardSetImageUpdateRequest_data(type: "type_example", id: "id_example", attributes: AppEventScreenshotUpdateRequest_data_attributes(uploaded: false))) // GameCenterLeaderboardSetImageUpdateRequest | GameCenterLeaderboardSetImage representation

GameCenterLeaderboardSetImagesAPI.gameCenterLeaderboardSetImagesUpdateInstance(id: id, gameCenterLeaderboardSetImageUpdateRequest: gameCenterLeaderboardSetImageUpdateRequest) { (response, error) in
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
 **gameCenterLeaderboardSetImageUpdateRequest** | [**GameCenterLeaderboardSetImageUpdateRequest**](GameCenterLeaderboardSetImageUpdateRequest.md) | GameCenterLeaderboardSetImage representation | 

### Return type

[**GameCenterLeaderboardSetImageResponse**](GameCenterLeaderboardSetImageResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

