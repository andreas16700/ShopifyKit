// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let sHMoney = try? newJSONDecoder().decode(SHMoney.self, from: jsonData)

import Foundation

// MARK: - SHMoney
public struct SHMoney: Codable {
    let amount, currencyCode: String

    enum CodingKeys: String, CodingKey {
        case amount
        case currencyCode = "currency_code"
    }
}
