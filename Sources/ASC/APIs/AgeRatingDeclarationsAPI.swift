//
// AgeRatingDeclarationsAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

open class AgeRatingDeclarationsAPI {

    /**

     - parameter id: (path) the id of the requested resource 
     - parameter ageRatingDeclarationUpdateRequest: (body) AgeRatingDeclaration representation 
     - returns: AgeRatingDeclarationResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func ageRatingDeclarationsUpdateInstance(id: String, ageRatingDeclarationUpdateRequest: AgeRatingDeclarationUpdateRequest) async throws -> AgeRatingDeclarationResponse {
        return try await ageRatingDeclarationsUpdateInstanceWithRequestBuilder(id: id, ageRatingDeclarationUpdateRequest: ageRatingDeclarationUpdateRequest).execute().body
    }

    /**
     - parameter urlString: next or first url from App Store Connect API
     - returns: AgeRatingDeclarationResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func ageRatingDeclarationsUpdateInstance(urlString: String) async throws -> AgeRatingDeclarationResponse {
        return try await ageRatingDeclarationsUpdateInstanceWithRequestBuilder(urlString: urlString).execute().body
    }

    /**
     - PATCH /v1/ageRatingDeclarations/{id}
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter id: (path) the id of the requested resource 
     - parameter ageRatingDeclarationUpdateRequest: (body) AgeRatingDeclaration representation 
     - returns: RequestBuilder<AgeRatingDeclarationResponse> 
     */
    open class func ageRatingDeclarationsUpdateInstanceWithRequestBuilder(id: String, ageRatingDeclarationUpdateRequest: AgeRatingDeclarationUpdateRequest) -> RequestBuilder<AgeRatingDeclarationResponse> {
        var localVariablePath = "/v1/ageRatingDeclarations/{id}"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = ASCAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: ageRatingDeclarationUpdateRequest)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            "Content-Type": "application/json",
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AgeRatingDeclarationResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PATCH", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     - PATCH /v1/ageRatingDeclarations/{id}
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter urlString: next or first url from App Store Connect API
     - returns: RequestBuilder<AgeRatingDeclarationResponse> 
     */
    open class func ageRatingDeclarationsUpdateInstanceWithRequestBuilder(urlString: String) -> RequestBuilder<AgeRatingDeclarationResponse> {
        let localVariableNillableHeaders: [String: Any?] = [
            "Content-Type": "application/json",
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AgeRatingDeclarationResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PATCH", URLString: urlString, parameters: nil, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }
}