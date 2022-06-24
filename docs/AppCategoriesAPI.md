# AppCategoriesAPI

All URIs are relative to *https://api.appstoreconnect.apple.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**appCategoriesGetCollection**](AppCategoriesAPI.md#appcategoriesgetcollection) | **GET** /v1/appCategories | 
[**appCategoriesGetInstance**](AppCategoriesAPI.md#appcategoriesgetinstance) | **GET** /v1/appCategories/{id} | 
[**appCategoriesParentGetToOneRelated**](AppCategoriesAPI.md#appcategoriesparentgettoonerelated) | **GET** /v1/appCategories/{id}/parent | 
[**appCategoriesSubcategoriesGetToManyRelated**](AppCategoriesAPI.md#appcategoriessubcategoriesgettomanyrelated) | **GET** /v1/appCategories/{id}/subcategories | 


# **appCategoriesGetCollection**
```swift
    open class func appCategoriesGetCollection(filterPlatforms: [FilterPlatforms_appCategoriesGetCollection]? = nil, existsParent: [String]? = nil, fieldsAppCategories: [FieldsAppCategories_appCategoriesGetCollection]? = nil, limit: Int? = nil, include: [Include_appCategoriesGetCollection]? = nil, limitSubcategories: Int? = nil, completion: @escaping (_ data: AppCategoriesResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let filterPlatforms = ["filterPlatforms_example"] // [String] | filter by attribute 'platforms' (optional)
let existsParent = ["inner_example"] // [String] | filter by existence or non-existence of related 'parent' (optional)
let fieldsAppCategories = ["fieldsAppCategories_example"] // [String] | the fields to include for returned resources of type appCategories (optional)
let limit = 987 // Int | maximum resources per page (optional)
let include = ["include_example"] // [String] | comma-separated list of relationships to include (optional)
let limitSubcategories = 987 // Int | maximum number of related subcategories returned (when they are included) (optional)

AppCategoriesAPI.appCategoriesGetCollection(filterPlatforms: filterPlatforms, existsParent: existsParent, fieldsAppCategories: fieldsAppCategories, limit: limit, include: include, limitSubcategories: limitSubcategories) { (response, error) in
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
 **filterPlatforms** | [**[String]**](String.md) | filter by attribute &#39;platforms&#39; | [optional] 
 **existsParent** | [**[String]**](String.md) | filter by existence or non-existence of related &#39;parent&#39; | [optional] 
 **fieldsAppCategories** | [**[String]**](String.md) | the fields to include for returned resources of type appCategories | [optional] 
 **limit** | **Int** | maximum resources per page | [optional] 
 **include** | [**[String]**](String.md) | comma-separated list of relationships to include | [optional] 
 **limitSubcategories** | **Int** | maximum number of related subcategories returned (when they are included) | [optional] 

### Return type

[**AppCategoriesResponse**](AppCategoriesResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **appCategoriesGetInstance**
```swift
    open class func appCategoriesGetInstance(id: String, fieldsAppCategories: [FieldsAppCategories_appCategoriesGetInstance]? = nil, include: [Include_appCategoriesGetInstance]? = nil, limitSubcategories: Int? = nil, completion: @escaping (_ data: AppCategoryResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let fieldsAppCategories = ["fieldsAppCategories_example"] // [String] | the fields to include for returned resources of type appCategories (optional)
let include = ["include_example"] // [String] | comma-separated list of relationships to include (optional)
let limitSubcategories = 987 // Int | maximum number of related subcategories returned (when they are included) (optional)

AppCategoriesAPI.appCategoriesGetInstance(id: id, fieldsAppCategories: fieldsAppCategories, include: include, limitSubcategories: limitSubcategories) { (response, error) in
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
 **fieldsAppCategories** | [**[String]**](String.md) | the fields to include for returned resources of type appCategories | [optional] 
 **include** | [**[String]**](String.md) | comma-separated list of relationships to include | [optional] 
 **limitSubcategories** | **Int** | maximum number of related subcategories returned (when they are included) | [optional] 

### Return type

[**AppCategoryResponse**](AppCategoryResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **appCategoriesParentGetToOneRelated**
```swift
    open class func appCategoriesParentGetToOneRelated(id: String, fieldsAppCategories: [FieldsAppCategories_appCategoriesParentGetToOneRelated]? = nil, completion: @escaping (_ data: AppCategoryResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let fieldsAppCategories = ["fieldsAppCategories_example"] // [String] | the fields to include for returned resources of type appCategories (optional)

AppCategoriesAPI.appCategoriesParentGetToOneRelated(id: id, fieldsAppCategories: fieldsAppCategories) { (response, error) in
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
 **fieldsAppCategories** | [**[String]**](String.md) | the fields to include for returned resources of type appCategories | [optional] 

### Return type

[**AppCategoryResponse**](AppCategoryResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **appCategoriesSubcategoriesGetToManyRelated**
```swift
    open class func appCategoriesSubcategoriesGetToManyRelated(id: String, fieldsAppCategories: [FieldsAppCategories_appCategoriesSubcategoriesGetToManyRelated]? = nil, limit: Int? = nil, completion: @escaping (_ data: AppCategoriesResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let fieldsAppCategories = ["fieldsAppCategories_example"] // [String] | the fields to include for returned resources of type appCategories (optional)
let limit = 987 // Int | maximum resources per page (optional)

AppCategoriesAPI.appCategoriesSubcategoriesGetToManyRelated(id: id, fieldsAppCategories: fieldsAppCategories, limit: limit) { (response, error) in
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
 **fieldsAppCategories** | [**[String]**](String.md) | the fields to include for returned resources of type appCategories | [optional] 
 **limit** | **Int** | maximum resources per page | [optional] 

### Return type

[**AppCategoriesResponse**](AppCategoriesResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

