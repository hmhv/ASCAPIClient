//
// AppInfoUpdateRequestDataRelationships.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct AppInfoUpdateRequestDataRelationships: Codable, JSONEncodable, Hashable {

    public var primaryCategory: AppInfoUpdateRequestDataRelationshipsPrimaryCategory?
    public var primarySubcategoryOne: AppInfoUpdateRequestDataRelationshipsPrimaryCategory?
    public var primarySubcategoryTwo: AppInfoUpdateRequestDataRelationshipsPrimaryCategory?
    public var secondaryCategory: AppInfoUpdateRequestDataRelationshipsPrimaryCategory?
    public var secondarySubcategoryOne: AppInfoUpdateRequestDataRelationshipsPrimaryCategory?
    public var secondarySubcategoryTwo: AppInfoUpdateRequestDataRelationshipsPrimaryCategory?

    public init(primaryCategory: AppInfoUpdateRequestDataRelationshipsPrimaryCategory? = nil, primarySubcategoryOne: AppInfoUpdateRequestDataRelationshipsPrimaryCategory? = nil, primarySubcategoryTwo: AppInfoUpdateRequestDataRelationshipsPrimaryCategory? = nil, secondaryCategory: AppInfoUpdateRequestDataRelationshipsPrimaryCategory? = nil, secondarySubcategoryOne: AppInfoUpdateRequestDataRelationshipsPrimaryCategory? = nil, secondarySubcategoryTwo: AppInfoUpdateRequestDataRelationshipsPrimaryCategory? = nil) {
        self.primaryCategory = primaryCategory
        self.primarySubcategoryOne = primarySubcategoryOne
        self.primarySubcategoryTwo = primarySubcategoryTwo
        self.secondaryCategory = secondaryCategory
        self.secondarySubcategoryOne = secondarySubcategoryOne
        self.secondarySubcategoryTwo = secondarySubcategoryTwo
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case primaryCategory
        case primarySubcategoryOne
        case primarySubcategoryTwo
        case secondaryCategory
        case secondarySubcategoryOne
        case secondarySubcategoryTwo
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(primaryCategory, forKey: .primaryCategory)
        try container.encodeIfPresent(primarySubcategoryOne, forKey: .primarySubcategoryOne)
        try container.encodeIfPresent(primarySubcategoryTwo, forKey: .primarySubcategoryTwo)
        try container.encodeIfPresent(secondaryCategory, forKey: .secondaryCategory)
        try container.encodeIfPresent(secondarySubcategoryOne, forKey: .secondarySubcategoryOne)
        try container.encodeIfPresent(secondarySubcategoryTwo, forKey: .secondarySubcategoryTwo)
    }
}

