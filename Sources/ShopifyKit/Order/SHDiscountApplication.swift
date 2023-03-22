// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let sHDiscountApplication = try? newJSONDecoder().decode(SHDiscountApplication.self, from: jsonData)

import Foundation

// MARK: - SHDiscountApplication
public struct SHDiscountApplication: Codable {
    let type, value, valueType, allocationMethod: String
    let targetSelection, targetType, discountApplicationDescription, title: String

    enum CodingKeys: String, CodingKey {
        case type, value
        case valueType = "value_type"
        case allocationMethod = "allocation_method"
        case targetSelection = "target_selection"
        case targetType = "target_type"
        case discountApplicationDescription = "description"
        case title
    }
}
