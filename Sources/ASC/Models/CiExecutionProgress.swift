//
// CiExecutionProgress.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public enum CiExecutionProgress: String, Codable, CaseIterable, CaseIterableDefaultsLast {
    case pending = "PENDING"
    case running = "RUNNING"
    case complete = "COMPLETE"
    case unknownDefaultOpenApi = "unknown_default_open_api"
}