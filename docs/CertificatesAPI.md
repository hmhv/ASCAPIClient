# CertificatesAPI

All URIs are relative to *https://api.appstoreconnect.apple.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**certificatesCreateInstance**](CertificatesAPI.md#certificatescreateinstance) | **POST** /v1/certificates | 
[**certificatesDeleteInstance**](CertificatesAPI.md#certificatesdeleteinstance) | **DELETE** /v1/certificates/{id} | 
[**certificatesGetCollection**](CertificatesAPI.md#certificatesgetcollection) | **GET** /v1/certificates | 
[**certificatesGetInstance**](CertificatesAPI.md#certificatesgetinstance) | **GET** /v1/certificates/{id} | 


# **certificatesCreateInstance**
```swift
    open class func certificatesCreateInstance(certificateCreateRequest: CertificateCreateRequest, completion: @escaping (_ data: CertificateResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let certificateCreateRequest = CertificateCreateRequest(data: CertificateCreateRequest_data(type: "type_example", attributes: CertificateCreateRequest_data_attributes(csrContent: "csrContent_example", certificateType: CertificateType()))) // CertificateCreateRequest | Certificate representation

CertificatesAPI.certificatesCreateInstance(certificateCreateRequest: certificateCreateRequest) { (response, error) in
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
 **certificateCreateRequest** | [**CertificateCreateRequest**](CertificateCreateRequest.md) | Certificate representation | 

### Return type

[**CertificateResponse**](CertificateResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **certificatesDeleteInstance**
```swift
    open class func certificatesDeleteInstance(id: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource

CertificatesAPI.certificatesDeleteInstance(id: id) { (response, error) in
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

# **certificatesGetCollection**
```swift
    open class func certificatesGetCollection(filterCertificateType: [FilterCertificateType_certificatesGetCollection]? = nil, filterDisplayName: [String]? = nil, filterSerialNumber: [String]? = nil, filterId: [String]? = nil, sort: [Sort_certificatesGetCollection]? = nil, fieldsCertificates: [FieldsCertificates_certificatesGetCollection]? = nil, limit: Int? = nil, completion: @escaping (_ data: CertificatesResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let filterCertificateType = ["filterCertificateType_example"] // [String] | filter by attribute 'certificateType' (optional)
let filterDisplayName = ["inner_example"] // [String] | filter by attribute 'displayName' (optional)
let filterSerialNumber = ["inner_example"] // [String] | filter by attribute 'serialNumber' (optional)
let filterId = ["inner_example"] // [String] | filter by id(s) (optional)
let sort = ["sort_example"] // [String] | comma-separated list of sort expressions; resources will be sorted as specified (optional)
let fieldsCertificates = ["fieldsCertificates_example"] // [String] | the fields to include for returned resources of type certificates (optional)
let limit = 987 // Int | maximum resources per page (optional)

CertificatesAPI.certificatesGetCollection(filterCertificateType: filterCertificateType, filterDisplayName: filterDisplayName, filterSerialNumber: filterSerialNumber, filterId: filterId, sort: sort, fieldsCertificates: fieldsCertificates, limit: limit) { (response, error) in
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
 **filterCertificateType** | [**[String]**](String.md) | filter by attribute &#39;certificateType&#39; | [optional] 
 **filterDisplayName** | [**[String]**](String.md) | filter by attribute &#39;displayName&#39; | [optional] 
 **filterSerialNumber** | [**[String]**](String.md) | filter by attribute &#39;serialNumber&#39; | [optional] 
 **filterId** | [**[String]**](String.md) | filter by id(s) | [optional] 
 **sort** | [**[String]**](String.md) | comma-separated list of sort expressions; resources will be sorted as specified | [optional] 
 **fieldsCertificates** | [**[String]**](String.md) | the fields to include for returned resources of type certificates | [optional] 
 **limit** | **Int** | maximum resources per page | [optional] 

### Return type

[**CertificatesResponse**](CertificatesResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **certificatesGetInstance**
```swift
    open class func certificatesGetInstance(id: String, fieldsCertificates: [FieldsCertificates_certificatesGetInstance]? = nil, completion: @escaping (_ data: CertificateResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let fieldsCertificates = ["fieldsCertificates_example"] // [String] | the fields to include for returned resources of type certificates (optional)

CertificatesAPI.certificatesGetInstance(id: id, fieldsCertificates: fieldsCertificates) { (response, error) in
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
 **fieldsCertificates** | [**[String]**](String.md) | the fields to include for returned resources of type certificates | [optional] 

### Return type

[**CertificateResponse**](CertificateResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

