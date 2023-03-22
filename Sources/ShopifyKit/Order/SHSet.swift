// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let sHSet = try? newJSONDecoder().decode(SHSet.self, from: jsonData)

import Foundation

// MARK: - SHSet
public struct SHSet: Codable {
    let shopMoney, presentmentMoney: SHMoney

    enum CodingKeys: String, CodingKey {
        case shopMoney = "shop_money"
        case presentmentMoney = "presentment_money"
    }
}
