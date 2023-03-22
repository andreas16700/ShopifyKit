// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let sHRefund = try? newJSONDecoder().decode(SHRefund.self, from: jsonData)

import Foundation

// MARK: - SHRefund
public struct SHRefund: Codable {
    let createdAt: String
    let duties: [SHRefundDuty]
    let id: Int
    let note: String
    let orderAdjustments: [SHOrderAdjustment]
    let processedAt: String
    let refundLineItems: [SHRefundLineItem]
    let restock: Bool
    let transactions: [SHTransaction]
    let userID: Int

    enum CodingKeys: String, CodingKey {
        case createdAt = "created_at"
        case duties, id, note
        case orderAdjustments = "order_adjustments"
        case processedAt = "processed_at"
        case refundLineItems = "refund_line_items"
        case restock, transactions
        case userID = "user_id"
    }
}
