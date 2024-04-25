# AppEncryptionDeclarationDocumentsAPI

All URIs are relative to *https://api.appstoreconnect.apple.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**appEncryptionDeclarationDocumentsCreateInstance**](AppEncryptionDeclarationDocumentsAPI.md#appencryptiondeclarationdocumentscreateinstance) | **POST** /v1/appEncryptionDeclarationDocuments | 
[**appEncryptionDeclarationDocumentsGetInstance**](AppEncryptionDeclarationDocumentsAPI.md#appencryptiondeclarationdocumentsgetinstance) | **GET** /v1/appEncryptionDeclarationDocuments/{id} | 
[**appEncryptionDeclarationDocumentsUpdateInstance**](AppEncryptionDeclarationDocumentsAPI.md#appencryptiondeclarationdocumentsupdateinstance) | **PATCH** /v1/appEncryptionDeclarationDocuments/{id} | 


# **appEncryptionDeclarationDocumentsCreateInstance**
```swift
    open class func appEncryptionDeclarationDocumentsCreateInstance(appEncryptionDeclarationDocumentCreateRequest: AppEncryptionDeclarationDocumentCreateRequest, completion: @escaping (_ data: AppEncryptionDeclarationDocumentResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let appEncryptionDeclarationDocumentCreateRequest = AppEncryptionDeclarationDocumentCreateRequest(data: AppEncryptionDeclarationDocumentCreateRequest_data(type: "type_example", attributes: AppClipAdvancedExperienceImageCreateRequest_data_attributes(fileSize: 123, fileName: "fileName_example"), relationships: AppEncryptionDeclarationDocumentCreateRequest_data_relationships(appEncryptionDeclaration: AppEncryptionDeclarationDocumentCreateRequest_data_relationships_appEncryptionDeclaration(data: AppEncryptionDeclarationDocumentCreateRequest_data_relationships_appEncryptionDeclaration_data(type: "type_example", id: "id_example"))))) // AppEncryptionDeclarationDocumentCreateRequest | AppEncryptionDeclarationDocument representation

AppEncryptionDeclarationDocumentsAPI.appEncryptionDeclarationDocumentsCreateInstance(appEncryptionDeclarationDocumentCreateRequest: appEncryptionDeclarationDocumentCreateRequest) { (response, error) in
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
 **appEncryptionDeclarationDocumentCreateRequest** | [**AppEncryptionDeclarationDocumentCreateRequest**](AppEncryptionDeclarationDocumentCreateRequest.md) | AppEncryptionDeclarationDocument representation | 

### Return type

[**AppEncryptionDeclarationDocumentResponse**](AppEncryptionDeclarationDocumentResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **appEncryptionDeclarationDocumentsGetInstance**
```swift
    open class func appEncryptionDeclarationDocumentsGetInstance(id: String, fieldsAppEncryptionDeclarationDocuments: [FieldsAppEncryptionDeclarationDocuments_appEncryptionDeclarationDocumentsGetInstance]? = nil, completion: @escaping (_ data: AppEncryptionDeclarationDocumentResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let fieldsAppEncryptionDeclarationDocuments = ["fieldsAppEncryptionDeclarationDocuments_example"] // [String] | the fields to include for returned resources of type appEncryptionDeclarationDocuments (optional)

AppEncryptionDeclarationDocumentsAPI.appEncryptionDeclarationDocumentsGetInstance(id: id, fieldsAppEncryptionDeclarationDocuments: fieldsAppEncryptionDeclarationDocuments) { (response, error) in
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

# **appEncryptionDeclarationDocumentsUpdateInstance**
```swift
    open class func appEncryptionDeclarationDocumentsUpdateInstance(id: String, appEncryptionDeclarationDocumentUpdateRequest: AppEncryptionDeclarationDocumentUpdateRequest, completion: @escaping (_ data: AppEncryptionDeclarationDocumentResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let appEncryptionDeclarationDocumentUpdateRequest = AppEncryptionDeclarationDocumentUpdateRequest(data: AppEncryptionDeclarationDocumentUpdateRequest_data(type: "type_example", id: "id_example", attributes: AppClipAdvancedExperienceImageUpdateRequest_data_attributes(sourceFileChecksum: "sourceFileChecksum_example", uploaded: false))) // AppEncryptionDeclarationDocumentUpdateRequest | AppEncryptionDeclarationDocument representation

AppEncryptionDeclarationDocumentsAPI.appEncryptionDeclarationDocumentsUpdateInstance(id: id, appEncryptionDeclarationDocumentUpdateRequest: appEncryptionDeclarationDocumentUpdateRequest) { (response, error) in
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
 **appEncryptionDeclarationDocumentUpdateRequest** | [**AppEncryptionDeclarationDocumentUpdateRequest**](AppEncryptionDeclarationDocumentUpdateRequest.md) | AppEncryptionDeclarationDocument representation | 

### Return type

[**AppEncryptionDeclarationDocumentResponse**](AppEncryptionDeclarationDocumentResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

