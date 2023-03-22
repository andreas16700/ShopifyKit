// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let sHPaymentDetails = try? newJSONDecoder().decode(SHPaymentDetails.self, from: jsonData)

import Foundation

// MARK: - SHPaymentDetails
public struct SHPaymentDetails: Codable {
    let avsResultCode, creditCardBin, cvvResultCode, creditCardNumber: String
    let creditCardCompany: String

    enum CodingKeys: String, CodingKey {
        case avsResultCode = "avs_result_code"
        case creditCardBin = "credit_card_bin"
        case cvvResultCode = "cvv_result_code"
        case creditCardNumber = "credit_card_number"
        case creditCardCompany = "credit_card_company"
    }
}
