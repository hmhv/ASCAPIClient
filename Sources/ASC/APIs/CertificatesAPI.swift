//
// CertificatesAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

open class CertificatesAPI {

    /**

     - parameter certificateCreateRequest: (body) Certificate representation 
     - returns: CertificateResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func certificatesCreateInstance(certificateCreateRequest: CertificateCreateRequest) async throws -> CertificateResponse {
        return try await certificatesCreateInstanceWithRequestBuilder(certificateCreateRequest: certificateCreateRequest).execute().body
    }

    /**
     - parameter urlString: next or first url from App Store Connect API
     - returns: CertificateResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func certificatesCreateInstance(urlString: String) async throws -> CertificateResponse {
        return try await certificatesCreateInstanceWithRequestBuilder(urlString: urlString).execute().body
    }

    /**
     - POST /v1/certificates
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter certificateCreateRequest: (body) Certificate representation 
     - returns: RequestBuilder<CertificateResponse> 
     */
    open class func certificatesCreateInstanceWithRequestBuilder(certificateCreateRequest: CertificateCreateRequest) -> RequestBuilder<CertificateResponse> {
        let localVariablePath = "/v1/certificates"
        let localVariableURLString = ASCAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: certificateCreateRequest)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            "Content-Type": "application/json",
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<CertificateResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     - POST /v1/certificates
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter urlString: next or first url from App Store Connect API
     - returns: RequestBuilder<CertificateResponse> 
     */
    open class func certificatesCreateInstanceWithRequestBuilder(urlString: String) -> RequestBuilder<CertificateResponse> {
        let localVariableRequestBuilder: RequestBuilder<CertificateResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: urlString, parameters: nil, headers: nil, requiresAuthentication: true)
    }

    /**

     - parameter id: (path) the id of the requested resource 
     - returns: Void
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func certificatesDeleteInstance(id: String) async throws {
        return try await certificatesDeleteInstanceWithRequestBuilder(id: id).execute().body
    }

    /**
     - parameter urlString: next or first url from App Store Connect API
     - returns: Void
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func certificatesDeleteInstance(urlString: String) async throws {
        return try await certificatesDeleteInstanceWithRequestBuilder(urlString: urlString).execute().body
    }

    /**
     - DELETE /v1/certificates/{id}
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter id: (path) the id of the requested resource 
     - returns: RequestBuilder<Void> 
     */
    open class func certificatesDeleteInstanceWithRequestBuilder(id: String) -> RequestBuilder<Void> {
        var localVariablePath = "/v1/certificates/{id}"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = ASCAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Void>.Type = ASCAPI.requestBuilderFactory.getNonDecodableBuilder()

        return localVariableRequestBuilder.init(method: "DELETE", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     - DELETE /v1/certificates/{id}
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter urlString: next or first url from App Store Connect API
     - returns: RequestBuilder<Void> 
     */
    open class func certificatesDeleteInstanceWithRequestBuilder(urlString: String) -> RequestBuilder<Void> {
        let localVariableRequestBuilder: RequestBuilder<Void>.Type = ASCAPI.requestBuilderFactory.getNonDecodableBuilder()

        return localVariableRequestBuilder.init(method: "DELETE", URLString: urlString, parameters: nil, headers: nil, requiresAuthentication: true)
    }

    /**
     * enum for parameter filterCertificateType
     */
    public enum FilterCertificateType_certificatesGetCollection: String, CaseIterable {
        case iosDevelopment = "IOS_DEVELOPMENT"
        case iosDistribution = "IOS_DISTRIBUTION"
        case macAppDistribution = "MAC_APP_DISTRIBUTION"
        case macInstallerDistribution = "MAC_INSTALLER_DISTRIBUTION"
        case macAppDevelopment = "MAC_APP_DEVELOPMENT"
        case developerIdKext = "DEVELOPER_ID_KEXT"
        case developerIdApplication = "DEVELOPER_ID_APPLICATION"
        case development = "DEVELOPMENT"
        case distribution = "DISTRIBUTION"
        case passTypeId = "PASS_TYPE_ID"
        case passTypeIdWithNfc = "PASS_TYPE_ID_WITH_NFC"
    }

    /**
     * enum for parameter sort
     */
    public enum Sort_certificatesGetCollection: String, CaseIterable {
        case certificatetype = "certificateType"
        case certificatetype2 = "-certificateType"
        case displayname = "displayName"
        case displayname2 = "-displayName"
        case id = "id"
        case id2 = "-id"
        case serialnumber = "serialNumber"
        case serialnumber2 = "-serialNumber"
    }

    /**
     * enum for parameter fieldsCertificates
     */
    public enum FieldsCertificates_certificatesGetCollection: String, CaseIterable {
        case certificatecontent = "certificateContent"
        case certificatetype = "certificateType"
        case csrcontent = "csrContent"
        case displayname = "displayName"
        case expirationdate = "expirationDate"
        case name = "name"
        case platform = "platform"
        case serialnumber = "serialNumber"
    }

    /**

     - parameter filterCertificateType: (query) filter by attribute &#39;certificateType&#39; (optional)
     - parameter filterDisplayName: (query) filter by attribute &#39;displayName&#39; (optional)
     - parameter filterSerialNumber: (query) filter by attribute &#39;serialNumber&#39; (optional)
     - parameter filterId: (query) filter by id(s) (optional)
     - parameter sort: (query) comma-separated list of sort expressions; resources will be sorted as specified (optional)
     - parameter fieldsCertificates: (query) the fields to include for returned resources of type certificates (optional)
     - parameter limit: (query) maximum resources per page (optional)
     - returns: CertificatesResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func certificatesGetCollection(filterCertificateType: [FilterCertificateType_certificatesGetCollection]? = nil, filterDisplayName: [String]? = nil, filterSerialNumber: [String]? = nil, filterId: [String]? = nil, sort: [Sort_certificatesGetCollection]? = nil, fieldsCertificates: [FieldsCertificates_certificatesGetCollection]? = nil, limit: Int? = nil) async throws -> CertificatesResponse {
        return try await certificatesGetCollectionWithRequestBuilder(filterCertificateType: filterCertificateType, filterDisplayName: filterDisplayName, filterSerialNumber: filterSerialNumber, filterId: filterId, sort: sort, fieldsCertificates: fieldsCertificates, limit: limit).execute().body
    }

    /**
     - parameter urlString: next or first url from App Store Connect API
     - returns: CertificatesResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func certificatesGetCollection(urlString: String) async throws -> CertificatesResponse {
        return try await certificatesGetCollectionWithRequestBuilder(urlString: urlString).execute().body
    }

    /**
     - GET /v1/certificates
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter filterCertificateType: (query) filter by attribute &#39;certificateType&#39; (optional)
     - parameter filterDisplayName: (query) filter by attribute &#39;displayName&#39; (optional)
     - parameter filterSerialNumber: (query) filter by attribute &#39;serialNumber&#39; (optional)
     - parameter filterId: (query) filter by id(s) (optional)
     - parameter sort: (query) comma-separated list of sort expressions; resources will be sorted as specified (optional)
     - parameter fieldsCertificates: (query) the fields to include for returned resources of type certificates (optional)
     - parameter limit: (query) maximum resources per page (optional)
     - returns: RequestBuilder<CertificatesResponse> 
     */
    open class func certificatesGetCollectionWithRequestBuilder(filterCertificateType: [FilterCertificateType_certificatesGetCollection]? = nil, filterDisplayName: [String]? = nil, filterSerialNumber: [String]? = nil, filterId: [String]? = nil, sort: [Sort_certificatesGetCollection]? = nil, fieldsCertificates: [FieldsCertificates_certificatesGetCollection]? = nil, limit: Int? = nil) -> RequestBuilder<CertificatesResponse> {
        let localVariablePath = "/v1/certificates"
        let localVariableURLString = ASCAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "filter[certificateType]": (wrappedValue: filterCertificateType?.encodeToJSON(), isExplode: false),
            "filter[displayName]": (wrappedValue: filterDisplayName?.encodeToJSON(), isExplode: false),
            "filter[serialNumber]": (wrappedValue: filterSerialNumber?.encodeToJSON(), isExplode: false),
            "filter[id]": (wrappedValue: filterId?.encodeToJSON(), isExplode: false),
            "sort": (wrappedValue: sort?.encodeToJSON(), isExplode: false),
            "fields[certificates]": (wrappedValue: fieldsCertificates?.encodeToJSON(), isExplode: false),
            "limit": (wrappedValue: limit?.encodeToJSON(), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<CertificatesResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     - GET /v1/certificates
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter urlString: next or first url from App Store Connect API
     - returns: RequestBuilder<CertificatesResponse> 
     */
    open class func certificatesGetCollectionWithRequestBuilder(urlString: String) -> RequestBuilder<CertificatesResponse> {
        let localVariableRequestBuilder: RequestBuilder<CertificatesResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: urlString, parameters: nil, headers: nil, requiresAuthentication: true)
    }

    /**
     * enum for parameter fieldsCertificates
     */
    public enum FieldsCertificates_certificatesGetInstance: String, CaseIterable {
        case certificatecontent = "certificateContent"
        case certificatetype = "certificateType"
        case csrcontent = "csrContent"
        case displayname = "displayName"
        case expirationdate = "expirationDate"
        case name = "name"
        case platform = "platform"
        case serialnumber = "serialNumber"
    }

    /**

     - parameter id: (path) the id of the requested resource 
     - parameter fieldsCertificates: (query) the fields to include for returned resources of type certificates (optional)
     - returns: CertificateResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func certificatesGetInstance(id: String, fieldsCertificates: [FieldsCertificates_certificatesGetInstance]? = nil) async throws -> CertificateResponse {
        return try await certificatesGetInstanceWithRequestBuilder(id: id, fieldsCertificates: fieldsCertificates).execute().body
    }

    /**
     - parameter urlString: next or first url from App Store Connect API
     - returns: CertificateResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func certificatesGetInstance(urlString: String) async throws -> CertificateResponse {
        return try await certificatesGetInstanceWithRequestBuilder(urlString: urlString).execute().body
    }

    /**
     - GET /v1/certificates/{id}
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter id: (path) the id of the requested resource 
     - parameter fieldsCertificates: (query) the fields to include for returned resources of type certificates (optional)
     - returns: RequestBuilder<CertificateResponse> 
     */
    open class func certificatesGetInstanceWithRequestBuilder(id: String, fieldsCertificates: [FieldsCertificates_certificatesGetInstance]? = nil) -> RequestBuilder<CertificateResponse> {
        var localVariablePath = "/v1/certificates/{id}"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = ASCAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "fields[certificates]": (wrappedValue: fieldsCertificates?.encodeToJSON(), isExplode: false),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<CertificateResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     - GET /v1/certificates/{id}
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter urlString: next or first url from App Store Connect API
     - returns: RequestBuilder<CertificateResponse> 
     */
    open class func certificatesGetInstanceWithRequestBuilder(urlString: String) -> RequestBuilder<CertificateResponse> {
        let localVariableRequestBuilder: RequestBuilder<CertificateResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: urlString, parameters: nil, headers: nil, requiresAuthentication: true)
    }
}
