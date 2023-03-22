// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let sHIngAddress = try? newJSONDecoder().decode(SHIngAddress.self, from: jsonData)

import Foundation

// MARK: - SHIngAddress
public struct SHIngAddress: Codable {
    public init(firstName: String, address1: String, phone: String, city: String, zip: String?, province: String?, country: String?, lastName: String?, address2: String?, company: String, latitude: String?, longitude: String?, name: String?, countryCode: String?, provinceCode: String?) {
        self.firstName = firstName
        self.address1 = address1
        self.phone = phone
        self.city = city
        self.zip = zip
        self.province = province
        self.country = country
        self.lastName = lastName
        self.address2 = address2
        self.company = company
        self.latitude = latitude
        self.longitude = longitude
        self.name = name
        self.countryCode = countryCode
        self.provinceCode = provinceCode
    }
    
	public let firstName, address1, phone, city: String
	public let zip, province, country, lastName: String?
	public let address2: String?
	public let company: String
	public let latitude, longitude: String?
	public let name, countryCode, provinceCode: String?

	public enum CodingKeys: String, CodingKey {
        case firstName = "first_name"
        case address1, phone, city, zip, province, country
        case lastName = "last_name"
        case address2, company, latitude, longitude, name
        case countryCode = "country_code"
        case provinceCode = "province_code"
    }
}
