// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let sHOrderAdjustment = try? newJSONDecoder().decode(SHOrderAdjustment.self, from: jsonData)

import Foundation

// MARK: - SHOrderAdjustment
public struct SHOrderAdjustment: Codable {
    let id, orderID, refundID: Int
    let amount, taxAmount, kind, reason: String
    let amountSet, taxAmountSet: SHSet

    enum CodingKeys: String, CodingKey {
        case id
        case orderID = "order_id"
        case refundID = "refund_id"
        case amount
        case taxAmount = "tax_amount"
        case kind, reason
        case amountSet = "amount_set"
        case taxAmountSet = "tax_amount_set"
    }
}
