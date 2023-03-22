//
//  File.swift
//  
//
//  Created by Andreas Loizides on 04/05/2020.
//

import Foundation
// MARK: - LocationsResponse
public struct SHLocationsResponse:Codable {
    public let locations: [SHLocation]
}

// MARK: - Location
public struct SHLocation:Codable {
	public init(id: Int, name: String, address1: String? = nil, address2: String? = nil, city: String? = nil, zip: String? = nil, province: String? = nil, country: String, phone: String? = nil, createdAt: String, updatedAt: String, countryCode: String, countryName: String, provinceCode: String? = nil, legacy: Bool, active: Bool, adminGraphqlAPIID: String, localizedCountryName: String, localizedProvinceName: String? = nil) {
		self.id = id
		self.name = name
		self.address1 = address1
		self.address2 = address2
		self.city = city
		self.zip = zip
		self.province = province
		self.country = country
		self.phone = phone
		self.createdAt = createdAt
		self.updatedAt = updatedAt
		self.countryCode = countryCode
		self.countryName = countryName
		self.provinceCode = provinceCode
		self.legacy = legacy
		self.active = active
		self.adminGraphqlAPIID = adminGraphqlAPIID
		self.localizedCountryName = localizedCountryName
		self.localizedProvinceName = localizedProvinceName
	}
	
    public let id: Int
	public let name: String
	public let address1: String?
	public let address2: String?
	public let city, zip, province: String?
	public let country: String
	public let phone: String?
    public var createdAt, updatedAt: String
	public let countryCode, countryName: String
	public let provinceCode: String?
	public let legacy, active: Bool
	public let adminGraphqlAPIID, localizedCountryName: String
	public let localizedProvinceName: String?
    
    enum CodingKeys: String, CodingKey {
            case id, name, address1, address2, city, zip, province, country, phone
            case createdAt = "created_at"
            case updatedAt = "updated_at"
            case countryCode = "country_code"
            case countryName = "country_name"
            case provinceCode = "province_code"
            case legacy, active
            case adminGraphqlAPIID = "admin_graphql_api_id"
            case localizedCountryName = "localized_country_name"
            case localizedProvinceName = "localized_province_name"
        }
    func addToDictionary(dict: inout [String: String]){
        dict["id"]="\(id)"
        dict["name"]=name
        dict["Last updated"]="\(updatedAt)"
    }
}
public struct SHInventoryLevelsResponse: Codable {
	public let inventoryLevels: [InventoryLevel]

    enum CodingKeys: String, CodingKey {
        case inventoryLevels = "inventory_levels"
    }
}

public struct InventoryLevel: Codable, Hashable {
	public init(inventoryItemID: Int, locationID: Int, available: Int? = nil, updatedAt: String, adminGraphqlAPIID: String) {
		self.inventoryItemID = inventoryItemID
		self.locationID = locationID
		self.available = available
		self.updatedAt = updatedAt
		self.adminGraphqlAPIID = adminGraphqlAPIID
	}
	
	public var inventoryItemID, locationID: Int
	public var available: Int?
	public var updatedAt, adminGraphqlAPIID: String

	public enum CodingKeys: String, CodingKey {
        case inventoryItemID = "inventory_item_id"
        case locationID = "location_id"
        case available
        case updatedAt = "updated_at"
        case adminGraphqlAPIID = "admin_graphql_api_id"
    }
}
public struct InventoryLevelWrapper: Codable{
	public let inventoryLevel: InventoryLevel
    enum CodingKeys: String, CodingKey {
        case inventoryLevel = "inventory_level"
    }
}
