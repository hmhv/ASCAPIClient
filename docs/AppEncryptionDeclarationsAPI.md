# AppEncryptionDeclarationsAPI

All URIs are relative to *https://api.appstoreconnect.apple.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**appEncryptionDeclarationsAppEncryptionDeclarationDocumentGetToOneRelated**](AppEncryptionDeclarationsAPI.md#appencryptiondeclarationsappencryptiondeclarationdocumentgettoonerelated) | **GET** /v1/appEncryptionDeclarations/{id}/appEncryptionDeclarationDocument | 
[**appEncryptionDeclarationsAppGetToOneRelated**](AppEncryptionDeclarationsAPI.md#appencryptiondeclarationsappgettoonerelated) | **GET** /v1/appEncryptionDeclarations/{id}/app | 
[**appEncryptionDeclarationsBuildsCreateToManyRelationship**](AppEncryptionDeclarationsAPI.md#appencryptiondeclarationsbuildscreatetomanyrelationship) | **POST** /v1/appEncryptionDeclarations/{id}/relationships/builds | 
[**appEncryptionDeclarationsCreateInstance**](AppEncryptionDeclarationsAPI.md#appencryptiondeclarationscreateinstance) | **POST** /v1/appEncryptionDeclarations | 
[**appEncryptionDeclarationsGetCollection**](AppEncryptionDeclarationsAPI.md#appencryptiondeclarationsgetcollection) | **GET** /v1/appEncryptionDeclarations | 
[**appEncryptionDeclarationsGetInstance**](AppEncryptionDeclarationsAPI.md#appencryptiondeclarationsgetinstance) | **GET** /v1/appEncryptionDeclarations/{id} | 


# **appEncryptionDeclarationsAppEncryptionDeclarationDocumentGetToOneRelated**
```swift
    open class func appEncryptionDeclarationsAppEncryptionDeclarationDocumentGetToOneRelated(id: String, fieldsAppEncryptionDeclarationDocuments: [FieldsAppEncryptionDeclarationDocuments_appEncryptionDeclarationsAppEncryptionDeclarationDocumentGetToOneRelated]? = nil, completion: @escaping (_ data: AppEncryptionDeclarationDocumentResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let fieldsAppEncryptionDeclarationDocuments = ["fieldsAppEncryptionDeclarationDocuments_example"] // [String] | the fields to include for returned resources of type appEncryptionDeclarationDocuments (optional)

AppEncryptionDeclarationsAPI.appEncryptionDeclarationsAppEncryptionDeclarationDocumentGetToOneRelated(id: id, fieldsAppEncryptionDeclarationDocuments: fieldsAppEncryptionDeclarationDocuments) { (response, error) in
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
 **fieldsAppEncryptionDeclarationDocuments** | [**[String]**](String.md) | the fields to include for returned resources of type appEncryptionDeclarationDocuments | [optional] 

### Return type

[**AppEncryptionDeclarationDocumentResponse**](AppEncryptionDeclarationDocumentResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **appEncryptionDeclarationsAppGetToOneRelated**
```swift
    open class func appEncryptionDeclarationsAppGetToOneRelated(id: String, fieldsApps: [FieldsApps_appEncryptionDeclarationsAppGetToOneRelated]? = nil, completion: @escaping (_ data: AppWithoutIncludesResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let fieldsApps = ["fieldsApps_example"] // [String] | the fields to include for returned resources of type apps (optional)

AppEncryptionDeclarationsAPI.appEncryptionDeclarationsAppGetToOneRelated(id: id, fieldsApps: fieldsApps) { (response, error) in
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

### Return type

[**AppWithoutIncludesResponse**](AppWithoutIncludesResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **appEncryptionDeclarationsBuildsCreateToManyRelationship**
```swift
    open class func appEncryptionDeclarationsBuildsCreateToManyRelationship(id: String, appEncryptionDeclarationBuildsLinkagesRequest: AppEncryptionDeclarationBuildsLinkagesRequest, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let appEncryptionDeclarationBuildsLinkagesRequest = AppEncryptionDeclarationBuildsLinkagesRequest(data: [AppEncryptionDeclaration_relationships_builds_data_inner(type: "type_example", id: "id_example")]) // AppEncryptionDeclarationBuildsLinkagesRequest | List of related linkages

AppEncryptionDeclarationsAPI.appEncryptionDeclarationsBuildsCreateToManyRelationship(id: id, appEncryptionDeclarationBuildsLinkagesRequest: appEncryptionDeclarationBuildsLinkagesRequest) { (response, error) in
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
 **appEncryptionDeclarationBuildsLinkagesRequest** | [**AppEncryptionDeclarationBuildsLinkagesRequest**](AppEncryptionDeclarationBuildsLinkagesRequest.md) | List of related linkages | 

### Return type

Void (empty response body)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **appEncryptionDeclarationsCreateInstance**
```swift
    open class func appEncryptionDeclarationsCreateInstance(appEncryptionDeclarationCreateRequest: AppEncryptionDeclarationCreateRequest, completion: @escaping (_ data: AppEncryptionDeclarationResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let appEncryptionDeclarationCreateRequest = AppEncryptionDeclarationCreateRequest(data: AppEncryptionDeclarationCreateRequest_data(type: "type_example", attributes: AppEncryptionDeclarationCreateRequest_data_attributes(appDescription: "appDescription_example", containsProprietaryCryptography: false, containsThirdPartyCryptography: false, availableOnFrenchStore: false), relationships: AppEncryptionDeclarationCreateRequest_data_relationships(app: AppEncryptionDeclarationCreateRequest_data_relationships_app(data: AlternativeDistributionKeyCreateRequest_data_relationships_app_data(type: "type_example", id: "id_example"))))) // AppEncryptionDeclarationCreateRequest | AppEncryptionDeclaration representation

AppEncryptionDeclarationsAPI.appEncryptionDeclarationsCreateInstance(appEncryptionDeclarationCreateRequest: appEncryptionDeclarationCreateRequest) { (response, error) in
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
 **appEncryptionDeclarationCreateRequest** | [**AppEncryptionDeclarationCreateRequest**](AppEncryptionDeclarationCreateRequest.md) | AppEncryptionDeclaration representation | 

### Return type

[**AppEncryptionDeclarationResponse**](AppEncryptionDeclarationResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **appEncryptionDeclarationsGetCollection**
```swift
    open class func appEncryptionDeclarationsGetCollection(filterPlatform: [FilterPlatform_appEncryptionDeclarationsGetCollection]? = nil, filterApp: [String]? = nil, filterBuilds: [String]? = nil, fieldsAppEncryptionDeclarations: [FieldsAppEncryptionDeclarations_appEncryptionDeclarationsGetCollection]? = nil, fieldsApps: [FieldsApps_appEncryptionDeclarationsGetCollection]? = nil, fieldsAppEncryptionDeclarationDocuments: [FieldsAppEncryptionDeclarationDocuments_appEncryptionDeclarationsGetCollection]? = nil, limit: Int? = nil, include: [Include_appEncryptionDeclarationsGetCollection]? = nil, limitBuilds: Int? = nil, completion: @escaping (_ data: AppEncryptionDeclarationsResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let filterPlatform = ["filterPlatform_example"] // [String] | filter by attribute 'platform' (optional)
let filterApp = ["inner_example"] // [String] | filter by id(s) of related 'app' (optional)
let filterBuilds = ["inner_example"] // [String] | filter by id(s) of related 'builds' (optional)
let fieldsAppEncryptionDeclarations = ["fieldsAppEncryptionDeclarations_example"] // [String] | the fields to include for returned resources of type appEncryptionDeclarations (optional)
let fieldsApps = ["fieldsApps_example"] // [String] | the fields to include for returned resources of type apps (optional)
let fieldsAppEncryptionDeclarationDocuments = ["fieldsAppEncryptionDeclarationDocuments_example"] // [String] | the fields to include for returned resources of type appEncryptionDeclarationDocuments (optional)
let limit = 987 // Int | maximum resources per page (optional)
let include = ["include_example"] // [String] | comma-separated list of relationships to include (optional)
let limitBuilds = 987 // Int | maximum number of related builds returned (when they are included) (optional)

AppEncryptionDeclarationsAPI.appEncryptionDeclarationsGetCollection(filterPlatform: filterPlatform, filterApp: filterApp, filterBuilds: filterBuilds, fieldsAppEncryptionDeclarations: fieldsAppEncryptionDeclarations, fieldsApps: fieldsApps, fieldsAppEncryptionDeclarationDocuments: fieldsAppEncryptionDeclarationDocuments, limit: limit, include: include, limitBuilds: limitBuilds) { (response, error) in
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
 **filterPlatform** | [**[String]**](String.md) | filter by attribute &#39;platform&#39; | [optional] 
 **filterApp** | [**[String]**](String.md) | filter by id(s) of related &#39;app&#39; | [optional] 
 **filterBuilds** | [**[String]**](String.md) | filter by id(s) of related &#39;builds&#39; | [optional] 
 **fieldsAppEncryptionDeclarations** | [**[String]**](String.md) | the fields to include for returned resources of type appEncryptionDeclarations | [optional] 
 **fieldsApps** | [**[String]**](String.md) | the fields to include for returned resources of type apps | [optional] 
 **fieldsAppEncryptionDeclarationDocuments** | [**[String]**](String.md) | the fields to include for returned resources of type appEncryptionDeclarationDocuments | [optional] 
 **limit** | **Int** | maximum resources per page | [optional] 
 **include** | [**[String]**](String.md) | comma-separated list of relationships to include | [optional] 
 **limitBuilds** | **Int** | maximum number of related builds returned (when they are included) | [optional] 

### Return type

[**AppEncryptionDeclarationsResponse**](AppEncryptionDeclarationsResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **appEncryptionDeclarationsGetInstance**
```swift
    open class func appEncryptionDeclarationsGetInstance(id: String, fieldsAppEncryptionDeclarations: [FieldsAppEncryptionDeclarations_appEncryptionDeclarationsGetInstance]? = nil, fieldsApps: [FieldsApps_appEncryptionDeclarationsGetInstance]? = nil, fieldsAppEncryptionDeclarationDocuments: [FieldsAppEncryptionDeclarationDocuments_appEncryptionDeclarationsGetInstance]? = nil, include: [Include_appEncryptionDeclarationsGetInstance]? = nil, limitBuilds: Int? = nil, completion: @escaping (_ data: AppEncryptionDeclarationResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let fieldsAppEncryptionDeclarations = ["fieldsAppEncryptionDeclarations_example"] // [String] | the fields to include for returned resources of type appEncryptionDeclarations (optional)
let fieldsApps = ["fieldsApps_example"] // [String] | the fields to include for returned resources of type apps (optional)
let fieldsAppEncryptionDeclarationDocuments = ["fieldsAppEncryptionDeclarationDocuments_example"] // [String] | the fields to include for returned resources of type appEncryptionDeclarationDocuments (optional)
let include = ["include_example"] // [String] | comma-separated list of relationships to include (optional)
let limitBuilds = 987 // Int | maximum number of related builds returned (when they are included) (optional)

AppEncryptionDeclarationsAPI.appEncryptionDeclarationsGetInstance(id: id, fieldsAppEncryptionDeclarations: fieldsAppEncryptionDeclarations, fieldsApps: fieldsApps, fieldsAppEncryptionDeclarationDocuments: fieldsAppEncryptionDeclarationDocuments, include: include, limitBuilds: limitBuilds) { (response, error) in
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
 **fieldsAppEncryptionDeclarations** | [**[String]**](String.md) | the fields to include for returned resources of type appEncryptionDeclarations | [optional] 
 **fieldsApps** | [**[String]**](String.md) | the fields to include for returned resources of type apps | [optional] 
 **fieldsAppEncryptionDeclarationDocuments** | [**[String]**](String.md) | the fields to include for returned resources of type appEncryptionDeclarationDocuments | [optional] 
 **include** | [**[String]**](String.md) | comma-separated list of relationships to include | [optional] 
 **limitBuilds** | **Int** | maximum number of related builds returned (when they are included) | [optional] 

### Return type

[**AppEncryptionDeclarationResponse**](AppEncryptionDeclarationResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

