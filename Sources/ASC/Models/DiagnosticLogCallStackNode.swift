//
// DiagnosticLogCallStackNode.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct DiagnosticLogCallStackNode: Codable, JSONEncodable, Hashable {

    public var sampleCount: Int?
    public var isBlameFrame: Bool?
    public var symbolName: String?
    public var insightsCategory: String?
    public var offsetIntoSymbol: String?
    public var binaryName: String?
    public var fileName: String?
    public var binaryUUID: String?
    public var lineNumber: String?
    public var address: String?
    public var offsetIntoBinaryTextSegment: String?
    public var rawFrame: String?
    public var subFrames: [DiagnosticLogCallStackNode]?

    public init(sampleCount: Int? = nil, isBlameFrame: Bool? = nil, symbolName: String? = nil, insightsCategory: String? = nil, offsetIntoSymbol: String? = nil, binaryName: String? = nil, fileName: String? = nil, binaryUUID: String? = nil, lineNumber: String? = nil, address: String? = nil, offsetIntoBinaryTextSegment: String? = nil, rawFrame: String? = nil, subFrames: [DiagnosticLogCallStackNode]? = nil) {
        self.sampleCount = sampleCount
        self.isBlameFrame = isBlameFrame
        self.symbolName = symbolName
        self.insightsCategory = insightsCategory
        self.offsetIntoSymbol = offsetIntoSymbol
        self.binaryName = binaryName
        self.fileName = fileName
        self.binaryUUID = binaryUUID
        self.lineNumber = lineNumber
        self.address = address
        self.offsetIntoBinaryTextSegment = offsetIntoBinaryTextSegment
        self.rawFrame = rawFrame
        self.subFrames = subFrames
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case sampleCount
        case isBlameFrame
        case symbolName
        case insightsCategory
        case offsetIntoSymbol
        case binaryName
        case fileName
        case binaryUUID
        case lineNumber
        case address
        case offsetIntoBinaryTextSegment
        case rawFrame
        case subFrames
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(sampleCount, forKey: .sampleCount)
        try container.encodeIfPresent(isBlameFrame, forKey: .isBlameFrame)
        try container.encodeIfPresent(symbolName, forKey: .symbolName)
        try container.encodeIfPresent(insightsCategory, forKey: .insightsCategory)
        try container.encodeIfPresent(offsetIntoSymbol, forKey: .offsetIntoSymbol)
        try container.encodeIfPresent(binaryName, forKey: .binaryName)
        try container.encodeIfPresent(fileName, forKey: .fileName)
        try container.encodeIfPresent(binaryUUID, forKey: .binaryUUID)
        try container.encodeIfPresent(lineNumber, forKey: .lineNumber)
        try container.encodeIfPresent(address, forKey: .address)
        try container.encodeIfPresent(offsetIntoBinaryTextSegment, forKey: .offsetIntoBinaryTextSegment)
        try container.encodeIfPresent(rawFrame, forKey: .rawFrame)
        try container.encodeIfPresent(subFrames, forKey: .subFrames)
    }
}

