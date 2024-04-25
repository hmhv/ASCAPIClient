# BetaTesterInvitationsAPI

All URIs are relative to *https://api.appstoreconnect.apple.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**betaTesterInvitationsCreateInstance**](BetaTesterInvitationsAPI.md#betatesterinvitationscreateinstance) | **POST** /v1/betaTesterInvitations | 


# **betaTesterInvitationsCreateInstance**
```swift
    open class func betaTesterInvitationsCreateInstance(betaTesterInvitationCreateRequest: BetaTesterInvitationCreateRequest, completion: @escaping (_ data: BetaTesterInvitationResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let betaTesterInvitationCreateRequest = BetaTesterInvitationCreateRequest(data: BetaTesterInvitationCreateRequest_data(type: "type_example", relationships: BetaTesterInvitationCreateRequest_data_relationships(betaTester: BetaTesterInvitationCreateRequest_data_relationships_betaTester(data: BetaGroup_relationships_betaTesters_data_inner(type: "type_example", id: "id_example")), app: AlternativeDistributionKeyCreateRequest_data_relationships_app(data: AlternativeDistributionKeyCreateRequest_data_relationships_app_data(type: "type_example", id: "id_example"))))) // BetaTesterInvitationCreateRequest | BetaTesterInvitation representation

BetaTesterInvitationsAPI.betaTesterInvitationsCreateInstance(betaTesterInvitationCreateRequest: betaTesterInvitationCreateRequest) { (response, error) in
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
 **betaTesterInvitationCreateRequest** | [**BetaTesterInvitationCreateRequest**](BetaTesterInvitationCreateRequest.md) | BetaTesterInvitation representation | 

### Return type

[**BetaTesterInvitationResponse**](BetaTesterInvitationResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

