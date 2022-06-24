//
// UserRole.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public enum UserRole: String, Codable, CaseIterable, CaseIterableDefaultsLast {
    case admin = "ADMIN"
    case finance = "FINANCE"
    case accountHolder = "ACCOUNT_HOLDER"
    case sales = "SALES"
    case marketing = "MARKETING"
    case appManager = "APP_MANAGER"
    case developer = "DEVELOPER"
    case accessToReports = "ACCESS_TO_REPORTS"
    case customerSupport = "CUSTOMER_SUPPORT"
    case imageManager = "IMAGE_MANAGER"
    case createApps = "CREATE_APPS"
    case cloudManagedDeveloperId = "CLOUD_MANAGED_DEVELOPER_ID"
    case cloudManagedAppDistribution = "CLOUD_MANAGED_APP_DISTRIBUTION"
    case unknownDefaultOpenApi = "unknown_default_open_api"
}
