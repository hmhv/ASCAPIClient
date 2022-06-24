# AgeRatingDeclarationsAPI

All URIs are relative to *https://api.appstoreconnect.apple.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**ageRatingDeclarationsUpdateInstance**](AgeRatingDeclarationsAPI.md#ageratingdeclarationsupdateinstance) | **PATCH** /v1/ageRatingDeclarations/{id} | 


# **ageRatingDeclarationsUpdateInstance**
```swift
    open class func ageRatingDeclarationsUpdateInstance(id: String, ageRatingDeclarationUpdateRequest: AgeRatingDeclarationUpdateRequest, completion: @escaping (_ data: AgeRatingDeclarationResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ASC

let id = "id_example" // String | the id of the requested resource
let ageRatingDeclarationUpdateRequest = AgeRatingDeclarationUpdateRequest(data: AgeRatingDeclarationUpdateRequest_data(type: "type_example", id: "id_example", attributes: AgeRatingDeclaration_attributes(alcoholTobaccoOrDrugUseOrReferences: "alcoholTobaccoOrDrugUseOrReferences_example", contests: "contests_example", gamblingAndContests: false, gambling: false, gamblingSimulated: "gamblingSimulated_example", kidsAgeBand: KidsAgeBand(), medicalOrTreatmentInformation: "medicalOrTreatmentInformation_example", profanityOrCrudeHumor: "profanityOrCrudeHumor_example", sexualContentGraphicAndNudity: "sexualContentGraphicAndNudity_example", sexualContentOrNudity: "sexualContentOrNudity_example", seventeenPlus: false, horrorOrFearThemes: "horrorOrFearThemes_example", matureOrSuggestiveThemes: "matureOrSuggestiveThemes_example", unrestrictedWebAccess: false, violenceCartoonOrFantasy: "violenceCartoonOrFantasy_example", violenceRealisticProlongedGraphicOrSadistic: "violenceRealisticProlongedGraphicOrSadistic_example", violenceRealistic: "violenceRealistic_example"))) // AgeRatingDeclarationUpdateRequest | AgeRatingDeclaration representation

AgeRatingDeclarationsAPI.ageRatingDeclarationsUpdateInstance(id: id, ageRatingDeclarationUpdateRequest: ageRatingDeclarationUpdateRequest) { (response, error) in
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
 **ageRatingDeclarationUpdateRequest** | [**AgeRatingDeclarationUpdateRequest**](AgeRatingDeclarationUpdateRequest.md) | AgeRatingDeclaration representation | 

### Return type

[**AgeRatingDeclarationResponse**](AgeRatingDeclarationResponse.md)

### Authorization

[itc-bearer-token](../README.md#itc-bearer-token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

