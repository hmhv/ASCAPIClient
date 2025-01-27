# AppInfosAPI

All URIs are relative to *https://api.appstoreconnect.apple.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**appInfosAgeRatingDeclarationGetToOneRelated**](AppInfosAPI.md#appinfosageratingdeclarationgettoonerelated) | **GET** /v1/appInfos/{id}/ageRatingDeclaration | 
[**appInfosAppInfoLocalizationsGetToManyRelated**](AppInfosAPI.md#appinfosappinfolocalizationsgettomanyrelated) | **GET** /v1/appInfos/{id}/appInfoLocalizations | 
[**appInfosGetInstance**](AppInfosAPI.md#appinfosgetinstance) | **GET** /v1/appInfos/{id} | 
[**appInfosPrimaryCategoryGetToOneRelated**](AppInfosAPI.md#appinfosprimarycategorygettoonerelated) | **GET** /v1/appInfos/{id}/primaryCategory | 
[**appInfosPrimarySubcategoryOneGetToOneRelated**](AppInfosAPI.md#appinfosprimarysubcategoryonegettoonerelated) | **GET** /v1/appInfos/{id}/primarySubcategoryOne | 
[**appInfosPrimarySubcategoryTwoGetToOneRelated**](AppInfosAPI.md#appinfosprimarysubcategorytwogettoonerelated) | **GET** /v1/appInfos/{id}/primarySubcategoryTwo | 
[**appInfosSecondaryCategoryGetToOneRelated**](AppInfosAPI.md#appinfossecondarycategorygettoonerelated) | **GET** /v1/appInfos/{id}/secondaryCategory | 
[**appInfosSecondarySubcategoryOneGetToOneRelated**](AppInfosAPI.md#appinfossecondarysubcategoryonegettoonerelated) | **GET** /v1/appInfos/{id}/secondarySubcategoryOne | 
[**appInfosSecondarySubcategoryTwoGetToOneRelated**](AppInfosAPI.md#appinfossecondarysubcategorytwogettoonerelated) | **GET** /v1/appInfos/{id}/secondarySubcategoryTwo | 
[**appInfosUpdateInstance**](AppInfosAPI.md#appinfosupdateinstance) | **PATCH** /v1/appInfos/{id} | 


# **appInfosAgeRatingDeclarationGetToOneRelated**
```swift
    open class func appInfosAgeRatingDeclarationGetToOneRelated(id: String, fieldsAgeRatingDeclarations: [FieldsAgeRatingDeclarations_appInfosAgeRatingDeclarationGetToOneRelated]? = nil, completion: @escaping (_ data: AgeRatingDeclarationResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let fieldsAgeRatingDeclarations = ["fieldsAgeRatingDeclarations_example"] // [String] | the fields to include for returned resources of type ageRatingDeclarations (optional)

AppInfosAPI.appInfosAgeRatingDeclarationGetToOneRelated(id: id, fieldsAgeRatingDeclarations: fieldsAgeRatingDeclarations) { (response, error) in
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

### Return type

[**AgeRatingDeclarationResponse**](AgeRatingDeclarationResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **appInfosAppInfoLocalizationsGetToManyRelated**
```swift
    open class func appInfosAppInfoLocalizationsGetToManyRelated(id: String, filterLocale: [String]? = nil, fieldsAppInfoLocalizations: [FieldsAppInfoLocalizations_appInfosAppInfoLocalizationsGetToManyRelated]? = nil, fieldsAppInfos: [FieldsAppInfos_appInfosAppInfoLocalizationsGetToManyRelated]? = nil, limit: Int? = nil, include: [Include_appInfosAppInfoLocalizationsGetToManyRelated]? = nil, completion: @escaping (_ data: AppInfoLocalizationsResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let filterLocale = ["inner_example"] // [String] | filter by attribute 'locale' (optional)
let fieldsAppInfoLocalizations = ["fieldsAppInfoLocalizations_example"] // [String] | the fields to include for returned resources of type appInfoLocalizations (optional)
let fieldsAppInfos = ["fieldsAppInfos_example"] // [String] | the fields to include for returned resources of type appInfos (optional)
let limit = 987 // Int | maximum resources per page (optional)
let include = ["include_example"] // [String] | comma-separated list of relationships to include (optional)

AppInfosAPI.appInfosAppInfoLocalizationsGetToManyRelated(id: id, filterLocale: filterLocale, fieldsAppInfoLocalizations: fieldsAppInfoLocalizations, fieldsAppInfos: fieldsAppInfos, limit: limit, include: include) { (response, error) in
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
 **fieldsAppInfoLocalizations** | [**[String]**](String.md) | the fields to include for returned resources of type appInfoLocalizations | [optional] 
 **fieldsAppInfos** | [**[String]**](String.md) | the fields to include for returned resources of type appInfos | [optional] 
 **limit** | **Int** | maximum resources per page | [optional] 
 **include** | [**[String]**](String.md) | comma-separated list of relationships to include | [optional] 

### Return type

[**AppInfoLocalizationsResponse**](AppInfoLocalizationsResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **appInfosGetInstance**
```swift
    open class func appInfosGetInstance(id: String, fieldsAppInfos: [FieldsAppInfos_appInfosGetInstance]? = nil, fieldsAgeRatingDeclarations: [FieldsAgeRatingDeclarations_appInfosGetInstance]? = nil, fieldsAppInfoLocalizations: [FieldsAppInfoLocalizations_appInfosGetInstance]? = nil, fieldsAppCategories: [FieldsAppCategories_appInfosGetInstance]? = nil, include: [Include_appInfosGetInstance]? = nil, limitAppInfoLocalizations: Int? = nil, completion: @escaping (_ data: AppInfoResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let fieldsAppInfos = ["fieldsAppInfos_example"] // [String] | the fields to include for returned resources of type appInfos (optional)
let fieldsAgeRatingDeclarations = ["fieldsAgeRatingDeclarations_example"] // [String] | the fields to include for returned resources of type ageRatingDeclarations (optional)
let fieldsAppInfoLocalizations = ["fieldsAppInfoLocalizations_example"] // [String] | the fields to include for returned resources of type appInfoLocalizations (optional)
let fieldsAppCategories = ["fieldsAppCategories_example"] // [String] | the fields to include for returned resources of type appCategories (optional)
let include = ["include_example"] // [String] | comma-separated list of relationships to include (optional)
let limitAppInfoLocalizations = 987 // Int | maximum number of related appInfoLocalizations returned (when they are included) (optional)

AppInfosAPI.appInfosGetInstance(id: id, fieldsAppInfos: fieldsAppInfos, fieldsAgeRatingDeclarations: fieldsAgeRatingDeclarations, fieldsAppInfoLocalizations: fieldsAppInfoLocalizations, fieldsAppCategories: fieldsAppCategories, include: include, limitAppInfoLocalizations: limitAppInfoLocalizations) { (response, error) in
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
 **fieldsAppInfos** | [**[String]**](String.md) | the fields to include for returned resources of type appInfos | [optional] 
 **fieldsAgeRatingDeclarations** | [**[String]**](String.md) | the fields to include for returned resources of type ageRatingDeclarations | [optional] 
 **fieldsAppInfoLocalizations** | [**[String]**](String.md) | the fields to include for returned resources of type appInfoLocalizations | [optional] 
 **fieldsAppCategories** | [**[String]**](String.md) | the fields to include for returned resources of type appCategories | [optional] 
 **include** | [**[String]**](String.md) | comma-separated list of relationships to include | [optional] 
 **limitAppInfoLocalizations** | **Int** | maximum number of related appInfoLocalizations returned (when they are included) | [optional] 

### Return type

[**AppInfoResponse**](AppInfoResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **appInfosPrimaryCategoryGetToOneRelated**
```swift
    open class func appInfosPrimaryCategoryGetToOneRelated(id: String, fieldsAppCategories: [FieldsAppCategories_appInfosPrimaryCategoryGetToOneRelated]? = nil, include: [Include_appInfosPrimaryCategoryGetToOneRelated]? = nil, limitSubcategories: Int? = nil, completion: @escaping (_ data: AppCategoryResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let fieldsAppCategories = ["fieldsAppCategories_example"] // [String] | the fields to include for returned resources of type appCategories (optional)
let include = ["include_example"] // [String] | comma-separated list of relationships to include (optional)
let limitSubcategories = 987 // Int | maximum number of related subcategories returned (when they are included) (optional)

AppInfosAPI.appInfosPrimaryCategoryGetToOneRelated(id: id, fieldsAppCategories: fieldsAppCategories, include: include, limitSubcategories: limitSubcategories) { (response, error) in
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

# **appInfosPrimarySubcategoryOneGetToOneRelated**
```swift
    open class func appInfosPrimarySubcategoryOneGetToOneRelated(id: String, fieldsAppCategories: [FieldsAppCategories_appInfosPrimarySubcategoryOneGetToOneRelated]? = nil, include: [Include_appInfosPrimarySubcategoryOneGetToOneRelated]? = nil, limitSubcategories: Int? = nil, completion: @escaping (_ data: AppCategoryResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let fieldsAppCategories = ["fieldsAppCategories_example"] // [String] | the fields to include for returned resources of type appCategories (optional)
let include = ["include_example"] // [String] | comma-separated list of relationships to include (optional)
let limitSubcategories = 987 // Int | maximum number of related subcategories returned (when they are included) (optional)

AppInfosAPI.appInfosPrimarySubcategoryOneGetToOneRelated(id: id, fieldsAppCategories: fieldsAppCategories, include: include, limitSubcategories: limitSubcategories) { (response, error) in
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

# **appInfosPrimarySubcategoryTwoGetToOneRelated**
```swift
    open class func appInfosPrimarySubcategoryTwoGetToOneRelated(id: String, fieldsAppCategories: [FieldsAppCategories_appInfosPrimarySubcategoryTwoGetToOneRelated]? = nil, include: [Include_appInfosPrimarySubcategoryTwoGetToOneRelated]? = nil, limitSubcategories: Int? = nil, completion: @escaping (_ data: AppCategoryResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let fieldsAppCategories = ["fieldsAppCategories_example"] // [String] | the fields to include for returned resources of type appCategories (optional)
let include = ["include_example"] // [String] | comma-separated list of relationships to include (optional)
let limitSubcategories = 987 // Int | maximum number of related subcategories returned (when they are included) (optional)

AppInfosAPI.appInfosPrimarySubcategoryTwoGetToOneRelated(id: id, fieldsAppCategories: fieldsAppCategories, include: include, limitSubcategories: limitSubcategories) { (response, error) in
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

# **appInfosSecondaryCategoryGetToOneRelated**
```swift
    open class func appInfosSecondaryCategoryGetToOneRelated(id: String, fieldsAppCategories: [FieldsAppCategories_appInfosSecondaryCategoryGetToOneRelated]? = nil, include: [Include_appInfosSecondaryCategoryGetToOneRelated]? = nil, limitSubcategories: Int? = nil, completion: @escaping (_ data: AppCategoryResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let fieldsAppCategories = ["fieldsAppCategories_example"] // [String] | the fields to include for returned resources of type appCategories (optional)
let include = ["include_example"] // [String] | comma-separated list of relationships to include (optional)
let limitSubcategories = 987 // Int | maximum number of related subcategories returned (when they are included) (optional)

AppInfosAPI.appInfosSecondaryCategoryGetToOneRelated(id: id, fieldsAppCategories: fieldsAppCategories, include: include, limitSubcategories: limitSubcategories) { (response, error) in
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

# **appInfosSecondarySubcategoryOneGetToOneRelated**
```swift
    open class func appInfosSecondarySubcategoryOneGetToOneRelated(id: String, fieldsAppCategories: [FieldsAppCategories_appInfosSecondarySubcategoryOneGetToOneRelated]? = nil, include: [Include_appInfosSecondarySubcategoryOneGetToOneRelated]? = nil, limitSubcategories: Int? = nil, completion: @escaping (_ data: AppCategoryResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let fieldsAppCategories = ["fieldsAppCategories_example"] // [String] | the fields to include for returned resources of type appCategories (optional)
let include = ["include_example"] // [String] | comma-separated list of relationships to include (optional)
let limitSubcategories = 987 // Int | maximum number of related subcategories returned (when they are included) (optional)

AppInfosAPI.appInfosSecondarySubcategoryOneGetToOneRelated(id: id, fieldsAppCategories: fieldsAppCategories, include: include, limitSubcategories: limitSubcategories) { (response, error) in
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

# **appInfosSecondarySubcategoryTwoGetToOneRelated**
```swift
    open class func appInfosSecondarySubcategoryTwoGetToOneRelated(id: String, fieldsAppCategories: [FieldsAppCategories_appInfosSecondarySubcategoryTwoGetToOneRelated]? = nil, include: [Include_appInfosSecondarySubcategoryTwoGetToOneRelated]? = nil, limitSubcategories: Int? = nil, completion: @escaping (_ data: AppCategoryResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let fieldsAppCategories = ["fieldsAppCategories_example"] // [String] | the fields to include for returned resources of type appCategories (optional)
let include = ["include_example"] // [String] | comma-separated list of relationships to include (optional)
let limitSubcategories = 987 // Int | maximum number of related subcategories returned (when they are included) (optional)

AppInfosAPI.appInfosSecondarySubcategoryTwoGetToOneRelated(id: id, fieldsAppCategories: fieldsAppCategories, include: include, limitSubcategories: limitSubcategories) { (response, error) in
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

# **appInfosUpdateInstance**
```swift
    open class func appInfosUpdateInstance(id: String, appInfoUpdateRequest: AppInfoUpdateRequest, completion: @escaping (_ data: AppInfoResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let appInfoUpdateRequest = AppInfoUpdateRequest(data: AppInfoUpdateRequest_data(type: "type_example", id: "id_example", relationships: AppInfoUpdateRequest_data_relationships(primaryCategory: AppInfoUpdateRequest_data_relationships_primaryCategory(data: AppCategory_relationships_subcategories_data_inner(type: "type_example", id: "id_example")), primarySubcategoryOne: nil, primarySubcategoryTwo: nil, secondaryCategory: nil, secondarySubcategoryOne: nil, secondarySubcategoryTwo: nil))) // AppInfoUpdateRequest | AppInfo representation

AppInfosAPI.appInfosUpdateInstance(id: id, appInfoUpdateRequest: appInfoUpdateRequest) { (response, error) in
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
 **appInfoUpdateRequest** | [**AppInfoUpdateRequest**](AppInfoUpdateRequest.md) | AppInfo representation | 

### Return type

[**AppInfoResponse**](AppInfoResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

