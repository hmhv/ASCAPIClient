# AlternativeDistributionPackageVariantsAPI

All URIs are relative to *https://api.appstoreconnect.apple.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**alternativeDistributionPackageVariantsGetInstance**](AlternativeDistributionPackageVariantsAPI.md#alternativedistributionpackagevariantsgetinstance) | **GET** /v1/alternativeDistributionPackageVariants/{id} | 


# **alternativeDistributionPackageVariantsGetInstance**
```swift
    open class func alternativeDistributionPackageVariantsGetInstance(id: String, fieldsAlternativeDistributionPackageVariants: [FieldsAlternativeDistributionPackageVariants_alternativeDistributionPackageVariantsGetInstance]? = nil, completion: @escaping (_ data: AlternativeDistributionPackageVariantResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let fieldsAlternativeDistributionPackageVariants = ["fieldsAlternativeDistributionPackageVariants_example"] // [String] | the fields to include for returned resources of type alternativeDistributionPackageVariants (optional)

AlternativeDistributionPackageVariantsAPI.alternativeDistributionPackageVariantsGetInstance(id: id, fieldsAlternativeDistributionPackageVariants: fieldsAlternativeDistributionPackageVariants) { (response, error) in
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
 **fieldsAlternativeDistributionPackageVariants** | [**[String]**](String.md) | the fields to include for returned resources of type alternativeDistributionPackageVariants | [optional] 

### Return type

[**AlternativeDistributionPackageVariantResponse**](AlternativeDistributionPackageVariantResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

