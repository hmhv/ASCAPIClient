# GameCenterLeaderboardImagesAPI

All URIs are relative to *https://api.appstoreconnect.apple.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**gameCenterLeaderboardImagesCreateInstance**](GameCenterLeaderboardImagesAPI.md#gamecenterleaderboardimagescreateinstance) | **POST** /v1/gameCenterLeaderboardImages | 
[**gameCenterLeaderboardImagesDeleteInstance**](GameCenterLeaderboardImagesAPI.md#gamecenterleaderboardimagesdeleteinstance) | **DELETE** /v1/gameCenterLeaderboardImages/{id} | 
[**gameCenterLeaderboardImagesGetInstance**](GameCenterLeaderboardImagesAPI.md#gamecenterleaderboardimagesgetinstance) | **GET** /v1/gameCenterLeaderboardImages/{id} | 
[**gameCenterLeaderboardImagesUpdateInstance**](GameCenterLeaderboardImagesAPI.md#gamecenterleaderboardimagesupdateinstance) | **PATCH** /v1/gameCenterLeaderboardImages/{id} | 


# **gameCenterLeaderboardImagesCreateInstance**
```swift
    open class func gameCenterLeaderboardImagesCreateInstance(gameCenterLeaderboardImageCreateRequest: GameCenterLeaderboardImageCreateRequest, completion: @escaping (_ data: GameCenterLeaderboardImageResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let gameCenterLeaderboardImageCreateRequest = GameCenterLeaderboardImageCreateRequest(data: GameCenterLeaderboardImageCreateRequest_data(type: "type_example", attributes: AppClipAdvancedExperienceImageCreateRequest_data_attributes(fileSize: 123, fileName: "fileName_example"), relationships: GameCenterLeaderboardImageCreateRequest_data_relationships(gameCenterLeaderboardLocalization: GameCenterLeaderboardImageCreateRequest_data_relationships_gameCenterLeaderboardLocalization(data: GameCenterLeaderboardImage_relationships_gameCenterLeaderboardLocalization_data(type: "type_example", id: "id_example"))))) // GameCenterLeaderboardImageCreateRequest | GameCenterLeaderboardImage representation

GameCenterLeaderboardImagesAPI.gameCenterLeaderboardImagesCreateInstance(gameCenterLeaderboardImageCreateRequest: gameCenterLeaderboardImageCreateRequest) { (response, error) in
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
 **gameCenterLeaderboardImageCreateRequest** | [**GameCenterLeaderboardImageCreateRequest**](GameCenterLeaderboardImageCreateRequest.md) | GameCenterLeaderboardImage representation | 

### Return type

[**GameCenterLeaderboardImageResponse**](GameCenterLeaderboardImageResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **gameCenterLeaderboardImagesDeleteInstance**
```swift
    open class func gameCenterLeaderboardImagesDeleteInstance(id: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource

GameCenterLeaderboardImagesAPI.gameCenterLeaderboardImagesDeleteInstance(id: id) { (response, error) in
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

# **gameCenterLeaderboardImagesGetInstance**
```swift
    open class func gameCenterLeaderboardImagesGetInstance(id: String, fieldsGameCenterLeaderboardImages: [FieldsGameCenterLeaderboardImages_gameCenterLeaderboardImagesGetInstance]? = nil, include: [Include_gameCenterLeaderboardImagesGetInstance]? = nil, completion: @escaping (_ data: GameCenterLeaderboardImageResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let fieldsGameCenterLeaderboardImages = ["fieldsGameCenterLeaderboardImages_example"] // [String] | the fields to include for returned resources of type gameCenterLeaderboardImages (optional)
let include = ["include_example"] // [String] | comma-separated list of relationships to include (optional)

GameCenterLeaderboardImagesAPI.gameCenterLeaderboardImagesGetInstance(id: id, fieldsGameCenterLeaderboardImages: fieldsGameCenterLeaderboardImages, include: include) { (response, error) in
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
 **fieldsGameCenterLeaderboardImages** | [**[String]**](String.md) | the fields to include for returned resources of type gameCenterLeaderboardImages | [optional] 
 **include** | [**[String]**](String.md) | comma-separated list of relationships to include | [optional] 

### Return type

[**GameCenterLeaderboardImageResponse**](GameCenterLeaderboardImageResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **gameCenterLeaderboardImagesUpdateInstance**
```swift
    open class func gameCenterLeaderboardImagesUpdateInstance(id: String, gameCenterLeaderboardImageUpdateRequest: GameCenterLeaderboardImageUpdateRequest, completion: @escaping (_ data: GameCenterLeaderboardImageResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let gameCenterLeaderboardImageUpdateRequest = GameCenterLeaderboardImageUpdateRequest(data: GameCenterLeaderboardImageUpdateRequest_data(type: "type_example", id: "id_example", attributes: AppEventScreenshotUpdateRequest_data_attributes(uploaded: false))) // GameCenterLeaderboardImageUpdateRequest | GameCenterLeaderboardImage representation

GameCenterLeaderboardImagesAPI.gameCenterLeaderboardImagesUpdateInstance(id: id, gameCenterLeaderboardImageUpdateRequest: gameCenterLeaderboardImageUpdateRequest) { (response, error) in
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
 **gameCenterLeaderboardImageUpdateRequest** | [**GameCenterLeaderboardImageUpdateRequest**](GameCenterLeaderboardImageUpdateRequest.md) | GameCenterLeaderboardImage representation | 

### Return type

[**GameCenterLeaderboardImageResponse**](GameCenterLeaderboardImageResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

