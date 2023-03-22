// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let sHTransaction = try? newJSONDecoder().decode(SHTransaction.self, from: jsonData)

import Foundation

// MARK: - SHTransaction
public struct SHTransaction: Codable {
    let amount, authorization, createdAt, currency: String
    let deviceID: Int
    let errorCode, gateway: String
    let id: Int
    let kind: String
    let locationID: Int
    let message: String
    let orderID: Int
    let paymentDetails: SHPaymentDetails
    let parentID: Int
    let processedAt: String
    let receipt: SHReceipt
    let sourceName, status: String
    let test: Bool
    let userID: Int
    let currencyExchangeAdjustment: SHCurrencyExchangeAdjustment?

    enum CodingKeys: String, CodingKey {
        case amount, authorization
        case createdAt = "created_at"
        case currency
        case deviceID = "device_id"
        case errorCode = "error_code"
        case gateway, id, kind
        case locationID = "location_id"
        case message
        case orderID = "order_id"
        case paymentDetails = "payment_details"
        case parentID = "parent_id"
        case processedAt = "processed_at"
        case receipt
        case sourceName = "source_name"
        case status, test
        case userID = "user_id"
        case currencyExchangeAdjustment = "currency_exchange_adjustment"
    }
}
