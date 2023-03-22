// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let sHDiscountAllocation = try? newJSONDecoder().decode(SHDiscountAllocation.self, from: jsonData)

import Foundation

// MARK: - SHDiscountAllocation
public struct SHDiscountAllocation: Codable {
    let amount: String
    let discountApplicationIndex: Int
    let amountSet: SHSet

    enum CodingKeys: String, CodingKey {
        case amount
        case discountApplicationIndex = "discount_application_index"
        case amountSet = "amount_set"
    }
}
