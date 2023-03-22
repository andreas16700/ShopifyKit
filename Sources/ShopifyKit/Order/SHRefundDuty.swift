// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let sHRefundDuty = try? newJSONDecoder().decode(SHRefundDuty.self, from: jsonData)

import Foundation

// MARK: - SHRefundDuty
public struct SHRefundDuty: Codable {
    let dutyID: Int
    let amountSet: SHSet

    enum CodingKeys: String, CodingKey {
        case dutyID = "duty_id"
        case amountSet = "amount_set"
    }
}
