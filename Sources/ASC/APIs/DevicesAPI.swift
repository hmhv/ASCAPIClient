//
// DevicesAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

open class DevicesAPI {

    /**

     - parameter deviceCreateRequest: (body) Device representation 
     - returns: DeviceResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func devicesCreateInstance(deviceCreateRequest: DeviceCreateRequest) async throws -> DeviceResponse {
        return try await devicesCreateInstanceWithRequestBuilder(deviceCreateRequest: deviceCreateRequest).execute().body
    }

    /**
     - parameter urlString: next or first url from App Store Connect API
     - returns: DeviceResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func devicesCreateInstance(urlString: String) async throws -> DeviceResponse {
        return try await devicesCreateInstanceWithRequestBuilder(urlString: urlString).execute().body
    }

    /**
     - POST /v1/devices
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter deviceCreateRequest: (body) Device representation 
     - returns: RequestBuilder<DeviceResponse> 
     */
    open class func devicesCreateInstanceWithRequestBuilder(deviceCreateRequest: DeviceCreateRequest) -> RequestBuilder<DeviceResponse> {
        let localVariablePath = "/v1/devices"
        let localVariableURLString = ASCAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: deviceCreateRequest)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            "Content-Type": "application/json",
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<DeviceResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     - POST /v1/devices
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter urlString: next or first url from App Store Connect API
     - returns: RequestBuilder<DeviceResponse> 
     */
    open class func devicesCreateInstanceWithRequestBuilder(urlString: String) -> RequestBuilder<DeviceResponse> {
        let localVariableNillableHeaders: [String: Any?] = [
            "Content-Type": "application/json",
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<DeviceResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: urlString, parameters: nil, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     * enum for parameter filterPlatform
     */
    public enum FilterPlatform_devicesGetCollection: String, CaseIterable {
        case ios = "IOS"
        case macOs = "MAC_OS"
        case universal = "UNIVERSAL"
    }

    /**
     * enum for parameter filterStatus
     */
    public enum FilterStatus_devicesGetCollection: String, CaseIterable {
        case enabled = "ENABLED"
        case disabled = "DISABLED"
    }

    /**
     * enum for parameter sort
     */
    public enum Sort_devicesGetCollection: String, CaseIterable {
        case name = "name"
        case name2 = "-name"
        case platform = "platform"
        case platform2 = "-platform"
        case udid = "udid"
        case udid2 = "-udid"
        case status = "status"
        case status2 = "-status"
        case id = "id"
        case id2 = "-id"
    }

    /**
     * enum for parameter fieldsDevices
     */
    public enum FieldsDevices_devicesGetCollection: String, CaseIterable {
        case name = "name"
        case platform = "platform"
        case udid = "udid"
        case deviceclass = "deviceClass"
        case status = "status"
        case model = "model"
        case addeddate = "addedDate"
    }

    /**

     - parameter filterName: (query) filter by attribute &#39;name&#39; (optional)
     - parameter filterPlatform: (query) filter by attribute &#39;platform&#39; (optional)
     - parameter filterUdid: (query) filter by attribute &#39;udid&#39; (optional)
     - parameter filterStatus: (query) filter by attribute &#39;status&#39; (optional)
     - parameter filterId: (query) filter by id(s) (optional)
     - parameter sort: (query) comma-separated list of sort expressions; resources will be sorted as specified (optional)
     - parameter fieldsDevices: (query) the fields to include for returned resources of type devices (optional)
     - parameter limit: (query) maximum resources per page (optional)
     - returns: DevicesResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func devicesGetCollection(filterName: [String]? = nil, filterPlatform: [FilterPlatform_devicesGetCollection]? = nil, filterUdid: [String]? = nil, filterStatus: [FilterStatus_devicesGetCollection]? = nil, filterId: [String]? = nil, sort: [Sort_devicesGetCollection]? = nil, fieldsDevices: [FieldsDevices_devicesGetCollection]? = nil, limit: Int? = nil) async throws -> DevicesResponse {
        return try await devicesGetCollectionWithRequestBuilder(filterName: filterName, filterPlatform: filterPlatform, filterUdid: filterUdid, filterStatus: filterStatus, filterId: filterId, sort: sort, fieldsDevices: fieldsDevices, limit: limit).execute().body
    }

    /**
     - parameter urlString: next or first url from App Store Connect API
     - returns: DevicesResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func devicesGetCollection(urlString: String) async throws -> DevicesResponse {
        return try await devicesGetCollectionWithRequestBuilder(urlString: urlString).execute().body
    }

    /**
     - GET /v1/devices
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter filterName: (query) filter by attribute &#39;name&#39; (optional)
     - parameter filterPlatform: (query) filter by attribute &#39;platform&#39; (optional)
     - parameter filterUdid: (query) filter by attribute &#39;udid&#39; (optional)
     - parameter filterStatus: (query) filter by attribute &#39;status&#39; (optional)
     - parameter filterId: (query) filter by id(s) (optional)
     - parameter sort: (query) comma-separated list of sort expressions; resources will be sorted as specified (optional)
     - parameter fieldsDevices: (query) the fields to include for returned resources of type devices (optional)
     - parameter limit: (query) maximum resources per page (optional)
     - returns: RequestBuilder<DevicesResponse> 
     */
    open class func devicesGetCollectionWithRequestBuilder(filterName: [String]? = nil, filterPlatform: [FilterPlatform_devicesGetCollection]? = nil, filterUdid: [String]? = nil, filterStatus: [FilterStatus_devicesGetCollection]? = nil, filterId: [String]? = nil, sort: [Sort_devicesGetCollection]? = nil, fieldsDevices: [FieldsDevices_devicesGetCollection]? = nil, limit: Int? = nil) -> RequestBuilder<DevicesResponse> {
        let localVariablePath = "/v1/devices"
        let localVariableURLString = ASCAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "filter[name]": (wrappedValue: filterName?.encodeToJSON(), isExplode: false),
            "filter[platform]": (wrappedValue: filterPlatform?.encodeToJSON(), isExplode: false),
            "filter[udid]": (wrappedValue: filterUdid?.encodeToJSON(), isExplode: false),
            "filter[status]": (wrappedValue: filterStatus?.encodeToJSON(), isExplode: false),
            "filter[id]": (wrappedValue: filterId?.encodeToJSON(), isExplode: false),
            "sort": (wrappedValue: sort?.encodeToJSON(), isExplode: false),
            "fields[devices]": (wrappedValue: fieldsDevices?.encodeToJSON(), isExplode: false),
            "limit": (wrappedValue: limit?.encodeToJSON(), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<DevicesResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     - GET /v1/devices
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter urlString: next or first url from App Store Connect API
     - returns: RequestBuilder<DevicesResponse> 
     */
    open class func devicesGetCollectionWithRequestBuilder(urlString: String) -> RequestBuilder<DevicesResponse> {
        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<DevicesResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: urlString, parameters: nil, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     * enum for parameter fieldsDevices
     */
    public enum FieldsDevices_devicesGetInstance: String, CaseIterable {
        case name = "name"
        case platform = "platform"
        case udid = "udid"
        case deviceclass = "deviceClass"
        case status = "status"
        case model = "model"
        case addeddate = "addedDate"
    }

    /**

     - parameter id: (path) the id of the requested resource 
     - parameter fieldsDevices: (query) the fields to include for returned resources of type devices (optional)
     - returns: DeviceResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func devicesGetInstance(id: String, fieldsDevices: [FieldsDevices_devicesGetInstance]? = nil) async throws -> DeviceResponse {
        return try await devicesGetInstanceWithRequestBuilder(id: id, fieldsDevices: fieldsDevices).execute().body
    }

    /**
     - parameter urlString: next or first url from App Store Connect API
     - returns: DeviceResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func devicesGetInstance(urlString: String) async throws -> DeviceResponse {
        return try await devicesGetInstanceWithRequestBuilder(urlString: urlString).execute().body
    }

    /**
     - GET /v1/devices/{id}
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter id: (path) the id of the requested resource 
     - parameter fieldsDevices: (query) the fields to include for returned resources of type devices (optional)
     - returns: RequestBuilder<DeviceResponse> 
     */
    open class func devicesGetInstanceWithRequestBuilder(id: String, fieldsDevices: [FieldsDevices_devicesGetInstance]? = nil) -> RequestBuilder<DeviceResponse> {
        var localVariablePath = "/v1/devices/{id}"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = ASCAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "fields[devices]": (wrappedValue: fieldsDevices?.encodeToJSON(), isExplode: false),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<DeviceResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     - GET /v1/devices/{id}
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter urlString: next or first url from App Store Connect API
     - returns: RequestBuilder<DeviceResponse> 
     */
    open class func devicesGetInstanceWithRequestBuilder(urlString: String) -> RequestBuilder<DeviceResponse> {
        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<DeviceResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: urlString, parameters: nil, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**

     - parameter id: (path) the id of the requested resource 
     - parameter deviceUpdateRequest: (body) Device representation 
     - returns: DeviceResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func devicesUpdateInstance(id: String, deviceUpdateRequest: DeviceUpdateRequest) async throws -> DeviceResponse {
        return try await devicesUpdateInstanceWithRequestBuilder(id: id, deviceUpdateRequest: deviceUpdateRequest).execute().body
    }

    /**
     - parameter urlString: next or first url from App Store Connect API
     - returns: DeviceResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func devicesUpdateInstance(urlString: String) async throws -> DeviceResponse {
        return try await devicesUpdateInstanceWithRequestBuilder(urlString: urlString).execute().body
    }

    /**
     - PATCH /v1/devices/{id}
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter id: (path) the id of the requested resource 
     - parameter deviceUpdateRequest: (body) Device representation 
     - returns: RequestBuilder<DeviceResponse> 
     */
    open class func devicesUpdateInstanceWithRequestBuilder(id: String, deviceUpdateRequest: DeviceUpdateRequest) -> RequestBuilder<DeviceResponse> {
        var localVariablePath = "/v1/devices/{id}"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = ASCAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: deviceUpdateRequest)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            "Content-Type": "application/json",
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<DeviceResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PATCH", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     - PATCH /v1/devices/{id}
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter urlString: next or first url from App Store Connect API
     - returns: RequestBuilder<DeviceResponse> 
     */
    open class func devicesUpdateInstanceWithRequestBuilder(urlString: String) -> RequestBuilder<DeviceResponse> {
        let localVariableNillableHeaders: [String: Any?] = [
            "Content-Type": "application/json",
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<DeviceResponse>.Type = ASCAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PATCH", URLString: urlString, parameters: nil, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }
}
