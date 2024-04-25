# UserInvitationsAPI

All URIs are relative to *https://api.appstoreconnect.apple.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**userInvitationsCreateInstance**](UserInvitationsAPI.md#userinvitationscreateinstance) | **POST** /v1/userInvitations | 
[**userInvitationsDeleteInstance**](UserInvitationsAPI.md#userinvitationsdeleteinstance) | **DELETE** /v1/userInvitations/{id} | 
[**userInvitationsGetCollection**](UserInvitationsAPI.md#userinvitationsgetcollection) | **GET** /v1/userInvitations | 
[**userInvitationsGetInstance**](UserInvitationsAPI.md#userinvitationsgetinstance) | **GET** /v1/userInvitations/{id} | 
[**userInvitationsVisibleAppsGetToManyRelated**](UserInvitationsAPI.md#userinvitationsvisibleappsgettomanyrelated) | **GET** /v1/userInvitations/{id}/visibleApps | 


# **userInvitationsCreateInstance**
```swift
    open class func userInvitationsCreateInstance(userInvitationCreateRequest: UserInvitationCreateRequest, completion: @escaping (_ data: UserInvitationResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let userInvitationCreateRequest = UserInvitationCreateRequest(data: UserInvitationCreateRequest_data(type: "type_example", attributes: UserInvitationCreateRequest_data_attributes(email: "email_example", firstName: "firstName_example", lastName: "lastName_example", roles: [UserRole()], allAppsVisible: false, provisioningAllowed: false), relationships: UserInvitationCreateRequest_data_relationships(visibleApps: UserInvitationCreateRequest_data_relationships_visibleApps(data: [AlternativeDistributionKeyCreateRequest_data_relationships_app_data(type: "type_example", id: "id_example")])))) // UserInvitationCreateRequest | UserInvitation representation

UserInvitationsAPI.userInvitationsCreateInstance(userInvitationCreateRequest: userInvitationCreateRequest) { (response, error) in
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
 **userInvitationCreateRequest** | [**UserInvitationCreateRequest**](UserInvitationCreateRequest.md) | UserInvitation representation | 

### Return type

[**UserInvitationResponse**](UserInvitationResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **userInvitationsDeleteInstance**
```swift
    open class func userInvitationsDeleteInstance(id: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource

UserInvitationsAPI.userInvitationsDeleteInstance(id: id) { (response, error) in
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

# **userInvitationsGetCollection**
```swift
    open class func userInvitationsGetCollection(filterEmail: [String]? = nil, filterRoles: [FilterRoles_userInvitationsGetCollection]? = nil, filterVisibleApps: [String]? = nil, sort: [Sort_userInvitationsGetCollection]? = nil, fieldsUserInvitations: [FieldsUserInvitations_userInvitationsGetCollection]? = nil, limit: Int? = nil, include: [Include_userInvitationsGetCollection]? = nil, fieldsApps: [FieldsApps_userInvitationsGetCollection]? = nil, limitVisibleApps: Int? = nil, completion: @escaping (_ data: UserInvitationsResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let filterEmail = ["inner_example"] // [String] | filter by attribute 'email' (optional)
let filterRoles = ["filterRoles_example"] // [String] | filter by attribute 'roles' (optional)
let filterVisibleApps = ["inner_example"] // [String] | filter by id(s) of related 'visibleApps' (optional)
let sort = ["sort_example"] // [String] | comma-separated list of sort expressions; resources will be sorted as specified (optional)
let fieldsUserInvitations = ["fieldsUserInvitations_example"] // [String] | the fields to include for returned resources of type userInvitations (optional)
let limit = 987 // Int | maximum resources per page (optional)
let include = ["include_example"] // [String] | comma-separated list of relationships to include (optional)
let fieldsApps = ["fieldsApps_example"] // [String] | the fields to include for returned resources of type apps (optional)
let limitVisibleApps = 987 // Int | maximum number of related visibleApps returned (when they are included) (optional)

UserInvitationsAPI.userInvitationsGetCollection(filterEmail: filterEmail, filterRoles: filterRoles, filterVisibleApps: filterVisibleApps, sort: sort, fieldsUserInvitations: fieldsUserInvitations, limit: limit, include: include, fieldsApps: fieldsApps, limitVisibleApps: limitVisibleApps) { (response, error) in
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
 **filterEmail** | [**[String]**](String.md) | filter by attribute &#39;email&#39; | [optional] 
 **filterRoles** | [**[String]**](String.md) | filter by attribute &#39;roles&#39; | [optional] 
 **filterVisibleApps** | [**[String]**](String.md) | filter by id(s) of related &#39;visibleApps&#39; | [optional] 
 **sort** | [**[String]**](String.md) | comma-separated list of sort expressions; resources will be sorted as specified | [optional] 
 **fieldsUserInvitations** | [**[String]**](String.md) | the fields to include for returned resources of type userInvitations | [optional] 
 **limit** | **Int** | maximum resources per page | [optional] 
 **include** | [**[String]**](String.md) | comma-separated list of relationships to include | [optional] 
 **fieldsApps** | [**[String]**](String.md) | the fields to include for returned resources of type apps | [optional] 
 **limitVisibleApps** | **Int** | maximum number of related visibleApps returned (when they are included) | [optional] 

### Return type

[**UserInvitationsResponse**](UserInvitationsResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **userInvitationsGetInstance**
```swift
    open class func userInvitationsGetInstance(id: String, fieldsUserInvitations: [FieldsUserInvitations_userInvitationsGetInstance]? = nil, include: [Include_userInvitationsGetInstance]? = nil, fieldsApps: [FieldsApps_userInvitationsGetInstance]? = nil, limitVisibleApps: Int? = nil, completion: @escaping (_ data: UserInvitationResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let fieldsUserInvitations = ["fieldsUserInvitations_example"] // [String] | the fields to include for returned resources of type userInvitations (optional)
let include = ["include_example"] // [String] | comma-separated list of relationships to include (optional)
let fieldsApps = ["fieldsApps_example"] // [String] | the fields to include for returned resources of type apps (optional)
let limitVisibleApps = 987 // Int | maximum number of related visibleApps returned (when they are included) (optional)

UserInvitationsAPI.userInvitationsGetInstance(id: id, fieldsUserInvitations: fieldsUserInvitations, include: include, fieldsApps: fieldsApps, limitVisibleApps: limitVisibleApps) { (response, error) in
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
 **fieldsUserInvitations** | [**[String]**](String.md) | the fields to include for returned resources of type userInvitations | [optional] 
 **include** | [**[String]**](String.md) | comma-separated list of relationships to include | [optional] 
 **fieldsApps** | [**[String]**](String.md) | the fields to include for returned resources of type apps | [optional] 
 **limitVisibleApps** | **Int** | maximum number of related visibleApps returned (when they are included) | [optional] 

### Return type

[**UserInvitationResponse**](UserInvitationResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **userInvitationsVisibleAppsGetToManyRelated**
```swift
    open class func userInvitationsVisibleAppsGetToManyRelated(id: String, fieldsApps: [FieldsApps_userInvitationsVisibleAppsGetToManyRelated]? = nil, limit: Int? = nil, completion: @escaping (_ data: AppsWithoutIncludesResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let fieldsApps = ["fieldsApps_example"] // [String] | the fields to include for returned resources of type apps (optional)
let limit = 987 // Int | maximum resources per page (optional)

UserInvitationsAPI.userInvitationsVisibleAppsGetToManyRelated(id: id, fieldsApps: fieldsApps, limit: limit) { (response, error) in
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
 **limit** | **Int** | maximum resources per page | [optional] 

### Return type

[**AppsWithoutIncludesResponse**](AppsWithoutIncludesResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

