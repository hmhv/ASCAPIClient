# BetaAppReviewSubmissionsAPI

All URIs are relative to *https://api.appstoreconnect.apple.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**betaAppReviewSubmissionsBuildGetToOneRelated**](BetaAppReviewSubmissionsAPI.md#betaappreviewsubmissionsbuildgettoonerelated) | **GET** /v1/betaAppReviewSubmissions/{id}/build | 
[**betaAppReviewSubmissionsCreateInstance**](BetaAppReviewSubmissionsAPI.md#betaappreviewsubmissionscreateinstance) | **POST** /v1/betaAppReviewSubmissions | 
[**betaAppReviewSubmissionsGetCollection**](BetaAppReviewSubmissionsAPI.md#betaappreviewsubmissionsgetcollection) | **GET** /v1/betaAppReviewSubmissions | 
[**betaAppReviewSubmissionsGetInstance**](BetaAppReviewSubmissionsAPI.md#betaappreviewsubmissionsgetinstance) | **GET** /v1/betaAppReviewSubmissions/{id} | 


# **betaAppReviewSubmissionsBuildGetToOneRelated**
```swift
    open class func betaAppReviewSubmissionsBuildGetToOneRelated(id: String, fieldsBuilds: [FieldsBuilds_betaAppReviewSubmissionsBuildGetToOneRelated]? = nil, completion: @escaping (_ data: BuildWithoutIncludesResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let fieldsBuilds = ["fieldsBuilds_example"] // [String] | the fields to include for returned resources of type builds (optional)

BetaAppReviewSubmissionsAPI.betaAppReviewSubmissionsBuildGetToOneRelated(id: id, fieldsBuilds: fieldsBuilds) { (response, error) in
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
 **fieldsBuilds** | [**[String]**](String.md) | the fields to include for returned resources of type builds | [optional] 

### Return type

[**BuildWithoutIncludesResponse**](BuildWithoutIncludesResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **betaAppReviewSubmissionsCreateInstance**
```swift
    open class func betaAppReviewSubmissionsCreateInstance(betaAppReviewSubmissionCreateRequest: BetaAppReviewSubmissionCreateRequest, completion: @escaping (_ data: BetaAppReviewSubmissionResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let betaAppReviewSubmissionCreateRequest = BetaAppReviewSubmissionCreateRequest(data: BetaAppReviewSubmissionCreateRequest_data(type: "type_example", relationships: BetaAppReviewSubmissionCreateRequest_data_relationships(build: BetaAppReviewSubmissionCreateRequest_data_relationships_build(data: AppEncryptionDeclaration_relationships_builds_data_inner(type: "type_example", id: "id_example"))))) // BetaAppReviewSubmissionCreateRequest | BetaAppReviewSubmission representation

BetaAppReviewSubmissionsAPI.betaAppReviewSubmissionsCreateInstance(betaAppReviewSubmissionCreateRequest: betaAppReviewSubmissionCreateRequest) { (response, error) in
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
 **betaAppReviewSubmissionCreateRequest** | [**BetaAppReviewSubmissionCreateRequest**](BetaAppReviewSubmissionCreateRequest.md) | BetaAppReviewSubmission representation | 

### Return type

[**BetaAppReviewSubmissionResponse**](BetaAppReviewSubmissionResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **betaAppReviewSubmissionsGetCollection**
```swift
    open class func betaAppReviewSubmissionsGetCollection(filterBuild: [String], filterBetaReviewState: [FilterBetaReviewState_betaAppReviewSubmissionsGetCollection]? = nil, fieldsBetaAppReviewSubmissions: [FieldsBetaAppReviewSubmissions_betaAppReviewSubmissionsGetCollection]? = nil, fieldsBuilds: [FieldsBuilds_betaAppReviewSubmissionsGetCollection]? = nil, limit: Int? = nil, include: [Include_betaAppReviewSubmissionsGetCollection]? = nil, completion: @escaping (_ data: BetaAppReviewSubmissionsResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let filterBuild = ["inner_example"] // [String] | filter by id(s) of related 'build'
let filterBetaReviewState = ["filterBetaReviewState_example"] // [String] | filter by attribute 'betaReviewState' (optional)
let fieldsBetaAppReviewSubmissions = ["fieldsBetaAppReviewSubmissions_example"] // [String] | the fields to include for returned resources of type betaAppReviewSubmissions (optional)
let fieldsBuilds = ["fieldsBuilds_example"] // [String] | the fields to include for returned resources of type builds (optional)
let limit = 987 // Int | maximum resources per page (optional)
let include = ["include_example"] // [String] | comma-separated list of relationships to include (optional)

BetaAppReviewSubmissionsAPI.betaAppReviewSubmissionsGetCollection(filterBuild: filterBuild, filterBetaReviewState: filterBetaReviewState, fieldsBetaAppReviewSubmissions: fieldsBetaAppReviewSubmissions, fieldsBuilds: fieldsBuilds, limit: limit, include: include) { (response, error) in
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
 **filterBuild** | [**[String]**](String.md) | filter by id(s) of related &#39;build&#39; | 
 **filterBetaReviewState** | [**[String]**](String.md) | filter by attribute &#39;betaReviewState&#39; | [optional] 
 **fieldsBetaAppReviewSubmissions** | [**[String]**](String.md) | the fields to include for returned resources of type betaAppReviewSubmissions | [optional] 
 **fieldsBuilds** | [**[String]**](String.md) | the fields to include for returned resources of type builds | [optional] 
 **limit** | **Int** | maximum resources per page | [optional] 
 **include** | [**[String]**](String.md) | comma-separated list of relationships to include | [optional] 

### Return type

[**BetaAppReviewSubmissionsResponse**](BetaAppReviewSubmissionsResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **betaAppReviewSubmissionsGetInstance**
```swift
    open class func betaAppReviewSubmissionsGetInstance(id: String, fieldsBetaAppReviewSubmissions: [FieldsBetaAppReviewSubmissions_betaAppReviewSubmissionsGetInstance]? = nil, fieldsBuilds: [FieldsBuilds_betaAppReviewSubmissionsGetInstance]? = nil, include: [Include_betaAppReviewSubmissionsGetInstance]? = nil, completion: @escaping (_ data: BetaAppReviewSubmissionResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let fieldsBetaAppReviewSubmissions = ["fieldsBetaAppReviewSubmissions_example"] // [String] | the fields to include for returned resources of type betaAppReviewSubmissions (optional)
let fieldsBuilds = ["fieldsBuilds_example"] // [String] | the fields to include for returned resources of type builds (optional)
let include = ["include_example"] // [String] | comma-separated list of relationships to include (optional)

BetaAppReviewSubmissionsAPI.betaAppReviewSubmissionsGetInstance(id: id, fieldsBetaAppReviewSubmissions: fieldsBetaAppReviewSubmissions, fieldsBuilds: fieldsBuilds, include: include) { (response, error) in
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
 **fieldsBetaAppReviewSubmissions** | [**[String]**](String.md) | the fields to include for returned resources of type betaAppReviewSubmissions | [optional] 
 **fieldsBuilds** | [**[String]**](String.md) | the fields to include for returned resources of type builds | [optional] 
 **include** | [**[String]**](String.md) | comma-separated list of relationships to include | [optional] 

### Return type

[**BetaAppReviewSubmissionResponse**](BetaAppReviewSubmissionResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

