# UsersAPI

All URIs are relative to *https://api.appstoreconnect.apple.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**usersDeleteInstance**](UsersAPI.md#usersdeleteinstance) | **DELETE** /v1/users/{id} | 
[**usersGetCollection**](UsersAPI.md#usersgetcollection) | **GET** /v1/users | 
[**usersGetInstance**](UsersAPI.md#usersgetinstance) | **GET** /v1/users/{id} | 
[**usersUpdateInstance**](UsersAPI.md#usersupdateinstance) | **PATCH** /v1/users/{id} | 
[**usersVisibleAppsCreateToManyRelationship**](UsersAPI.md#usersvisibleappscreatetomanyrelationship) | **POST** /v1/users/{id}/relationships/visibleApps | 
[**usersVisibleAppsDeleteToManyRelationship**](UsersAPI.md#usersvisibleappsdeletetomanyrelationship) | **DELETE** /v1/users/{id}/relationships/visibleApps | 
[**usersVisibleAppsGetToManyRelated**](UsersAPI.md#usersvisibleappsgettomanyrelated) | **GET** /v1/users/{id}/visibleApps | 
[**usersVisibleAppsGetToManyRelationship**](UsersAPI.md#usersvisibleappsgettomanyrelationship) | **GET** /v1/users/{id}/relationships/visibleApps | 
[**usersVisibleAppsReplaceToManyRelationship**](UsersAPI.md#usersvisibleappsreplacetomanyrelationship) | **PATCH** /v1/users/{id}/relationships/visibleApps | 


# **usersDeleteInstance**
```swift
    open class func usersDeleteInstance(id: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource

UsersAPI.usersDeleteInstance(id: id) { (response, error) in
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

# **usersGetCollection**
```swift
    open class func usersGetCollection(filterRoles: [FilterRoles_usersGetCollection]? = nil, filterUsername: [String]? = nil, filterVisibleApps: [String]? = nil, sort: [Sort_usersGetCollection]? = nil, fieldsUsers: [FieldsUsers_usersGetCollection]? = nil, limit: Int? = nil, include: [Include_usersGetCollection]? = nil, fieldsApps: [FieldsApps_usersGetCollection]? = nil, limitVisibleApps: Int? = nil, completion: @escaping (_ data: UsersResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let filterRoles = ["filterRoles_example"] // [String] | filter by attribute 'roles' (optional)
let filterUsername = ["inner_example"] // [String] | filter by attribute 'username' (optional)
let filterVisibleApps = ["inner_example"] // [String] | filter by id(s) of related 'visibleApps' (optional)
let sort = ["sort_example"] // [String] | comma-separated list of sort expressions; resources will be sorted as specified (optional)
let fieldsUsers = ["fieldsUsers_example"] // [String] | the fields to include for returned resources of type users (optional)
let limit = 987 // Int | maximum resources per page (optional)
let include = ["include_example"] // [String] | comma-separated list of relationships to include (optional)
let fieldsApps = ["fieldsApps_example"] // [String] | the fields to include for returned resources of type apps (optional)
let limitVisibleApps = 987 // Int | maximum number of related visibleApps returned (when they are included) (optional)

UsersAPI.usersGetCollection(filterRoles: filterRoles, filterUsername: filterUsername, filterVisibleApps: filterVisibleApps, sort: sort, fieldsUsers: fieldsUsers, limit: limit, include: include, fieldsApps: fieldsApps, limitVisibleApps: limitVisibleApps) { (response, error) in
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
 **filterRoles** | [**[String]**](String.md) | filter by attribute &#39;roles&#39; | [optional] 
 **filterUsername** | [**[String]**](String.md) | filter by attribute &#39;username&#39; | [optional] 
 **filterVisibleApps** | [**[String]**](String.md) | filter by id(s) of related &#39;visibleApps&#39; | [optional] 
 **sort** | [**[String]**](String.md) | comma-separated list of sort expressions; resources will be sorted as specified | [optional] 
 **fieldsUsers** | [**[String]**](String.md) | the fields to include for returned resources of type users | [optional] 
 **limit** | **Int** | maximum resources per page | [optional] 
 **include** | [**[String]**](String.md) | comma-separated list of relationships to include | [optional] 
 **fieldsApps** | [**[String]**](String.md) | the fields to include for returned resources of type apps | [optional] 
 **limitVisibleApps** | **Int** | maximum number of related visibleApps returned (when they are included) | [optional] 

### Return type

[**UsersResponse**](UsersResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **usersGetInstance**
```swift
    open class func usersGetInstance(id: String, fieldsUsers: [FieldsUsers_usersGetInstance]? = nil, include: [Include_usersGetInstance]? = nil, fieldsApps: [FieldsApps_usersGetInstance]? = nil, limitVisibleApps: Int? = nil, completion: @escaping (_ data: UserResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let fieldsUsers = ["fieldsUsers_example"] // [String] | the fields to include for returned resources of type users (optional)
let include = ["include_example"] // [String] | comma-separated list of relationships to include (optional)
let fieldsApps = ["fieldsApps_example"] // [String] | the fields to include for returned resources of type apps (optional)
let limitVisibleApps = 987 // Int | maximum number of related visibleApps returned (when they are included) (optional)

UsersAPI.usersGetInstance(id: id, fieldsUsers: fieldsUsers, include: include, fieldsApps: fieldsApps, limitVisibleApps: limitVisibleApps) { (response, error) in
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
 **fieldsUsers** | [**[String]**](String.md) | the fields to include for returned resources of type users | [optional] 
 **include** | [**[String]**](String.md) | comma-separated list of relationships to include | [optional] 
 **fieldsApps** | [**[String]**](String.md) | the fields to include for returned resources of type apps | [optional] 
 **limitVisibleApps** | **Int** | maximum number of related visibleApps returned (when they are included) | [optional] 

### Return type

[**UserResponse**](UserResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **usersUpdateInstance**
```swift
    open class func usersUpdateInstance(id: String, userUpdateRequest: UserUpdateRequest, completion: @escaping (_ data: UserResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let userUpdateRequest = UserUpdateRequest(data: UserUpdateRequest_data(type: "type_example", id: "id_example", attributes: UserUpdateRequest_data_attributes(roles: [UserRole()], allAppsVisible: false, provisioningAllowed: false), relationships: UserInvitationCreateRequest_data_relationships(visibleApps: UserInvitationCreateRequest_data_relationships_visibleApps(data: [AppClip_relationships_app_data(type: "type_example", id: "id_example")])))) // UserUpdateRequest | User representation

UsersAPI.usersUpdateInstance(id: id, userUpdateRequest: userUpdateRequest) { (response, error) in
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
 **userUpdateRequest** | [**UserUpdateRequest**](UserUpdateRequest.md) | User representation | 

### Return type

[**UserResponse**](UserResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **usersVisibleAppsCreateToManyRelationship**
```swift
    open class func usersVisibleAppsCreateToManyRelationship(id: String, userVisibleAppsLinkagesRequest: UserVisibleAppsLinkagesRequest, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let userVisibleAppsLinkagesRequest = UserVisibleAppsLinkagesRequest(data: [AppClip_relationships_app_data(type: "type_example", id: "id_example")]) // UserVisibleAppsLinkagesRequest | List of related linkages

UsersAPI.usersVisibleAppsCreateToManyRelationship(id: id, userVisibleAppsLinkagesRequest: userVisibleAppsLinkagesRequest) { (response, error) in
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
 **userVisibleAppsLinkagesRequest** | [**UserVisibleAppsLinkagesRequest**](UserVisibleAppsLinkagesRequest.md) | List of related linkages | 

### Return type

Void (empty response body)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **usersVisibleAppsDeleteToManyRelationship**
```swift
    open class func usersVisibleAppsDeleteToManyRelationship(id: String, userVisibleAppsLinkagesRequest: UserVisibleAppsLinkagesRequest, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let userVisibleAppsLinkagesRequest = UserVisibleAppsLinkagesRequest(data: [AppClip_relationships_app_data(type: "type_example", id: "id_example")]) // UserVisibleAppsLinkagesRequest | List of related linkages

UsersAPI.usersVisibleAppsDeleteToManyRelationship(id: id, userVisibleAppsLinkagesRequest: userVisibleAppsLinkagesRequest) { (response, error) in
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
 **userVisibleAppsLinkagesRequest** | [**UserVisibleAppsLinkagesRequest**](UserVisibleAppsLinkagesRequest.md) | List of related linkages | 

### Return type

Void (empty response body)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **usersVisibleAppsGetToManyRelated**
```swift
    open class func usersVisibleAppsGetToManyRelated(id: String, fieldsApps: [FieldsApps_usersVisibleAppsGetToManyRelated]? = nil, limit: Int? = nil, completion: @escaping (_ data: AppsResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let fieldsApps = ["fieldsApps_example"] // [String] | the fields to include for returned resources of type apps (optional)
let limit = 987 // Int | maximum resources per page (optional)

UsersAPI.usersVisibleAppsGetToManyRelated(id: id, fieldsApps: fieldsApps, limit: limit) { (response, error) in
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

[**AppsResponse**](AppsResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **usersVisibleAppsGetToManyRelationship**
```swift
    open class func usersVisibleAppsGetToManyRelationship(id: String, limit: Int? = nil, completion: @escaping (_ data: UserVisibleAppsLinkagesResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let limit = 987 // Int | maximum resources per page (optional)

UsersAPI.usersVisibleAppsGetToManyRelationship(id: id, limit: limit) { (response, error) in
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
 **limit** | **Int** | maximum resources per page | [optional] 

### Return type

[**UserVisibleAppsLinkagesResponse**](UserVisibleAppsLinkagesResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **usersVisibleAppsReplaceToManyRelationship**
```swift
    open class func usersVisibleAppsReplaceToManyRelationship(id: String, userVisibleAppsLinkagesRequest: UserVisibleAppsLinkagesRequest, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let userVisibleAppsLinkagesRequest = UserVisibleAppsLinkagesRequest(data: [AppClip_relationships_app_data(type: "type_example", id: "id_example")]) // UserVisibleAppsLinkagesRequest | List of related linkages

UsersAPI.usersVisibleAppsReplaceToManyRelationship(id: id, userVisibleAppsLinkagesRequest: userVisibleAppsLinkagesRequest) { (response, error) in
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
 **userVisibleAppsLinkagesRequest** | [**UserVisibleAppsLinkagesRequest**](UserVisibleAppsLinkagesRequest.md) | List of related linkages | 

### Return type

Void (empty response body)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

