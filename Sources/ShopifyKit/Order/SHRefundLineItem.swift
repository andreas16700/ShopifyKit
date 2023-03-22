// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let sHRefundLineItem = try? newJSONDecoder().decode(SHRefundLineItem.self, from: jsonData)

import Foundation

// MARK: - SHRefundLineItem
public struct SHRefundLineItem: Codable {
    let id: Int
    let lineItem: SHLineItem
    let lineItemID, quantity, locationID: Int
    let restockType: String
    let subtotal, totalTax: Double
    let subtotalSet, totalTaxSet: SHSet

    enum CodingKeys: String, CodingKey {
        case id
        case lineItem = "line_item"
        case lineItemID = "line_item_id"
        case quantity
        case locationID = "location_id"
        case restockType = "restock_type"
        case subtotal
        case totalTax = "total_tax"
        case subtotalSet = "subtotal_set"
        case totalTaxSet = "total_tax_set"
    }
}
