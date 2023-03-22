// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let sHCurrencyExchangeAdjustment = try? newJSONDecoder().decode(SHCurrencyExchangeAdjustment.self, from: jsonData)

import Foundation

// MARK: - SHCurrencyExchangeAdjustment
public struct SHCurrencyExchangeAdjustment: Codable {
    let id: Int
    let adjustment, originalAmount, finalAmount, currency: String?

    enum CodingKeys: String, CodingKey {
        case id, adjustment
        case originalAmount = "original_amount"
        case finalAmount = "final_amount"
        case currency
    }
}
