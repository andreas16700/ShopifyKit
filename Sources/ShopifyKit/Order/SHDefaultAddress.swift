// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let sHDefaultAddress = try? newJSONDecoder().decode(SHDefaultAddress.self, from: jsonData)

import Foundation

// MARK: - SHDefaultAddress
public struct SHDefaultAddress: Codable {
    let id, customerID: Double
    let firstName, lastName, company: String?
    let address1: String?
    let address2: String?
    let city, province, country, zip: String?
    let phone, name, provinceCode, countryCode: String?
    let countryName: String?
    let defaultAddressDefault: Bool

    enum CodingKeys: String, CodingKey {
        case id
        case customerID = "customer_id"
        case firstName = "first_name"
        case lastName = "last_name"
        case company, address1, address2, city, province, country, zip, phone, name
        case provinceCode = "province_code"
        case countryCode = "country_code"
        case countryName = "country_name"
        case defaultAddressDefault = "default"
    }
}
