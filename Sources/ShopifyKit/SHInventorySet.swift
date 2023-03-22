//
//  SHInventorySet.swift
//  
//
//  Created by Andreas Loizides on 04/05/2020.
//

import Foundation


public struct SHInventorySet: Codable, Hashable{
	public init(locationID: Int, inventoryItemID: Int, available: Int) {
		self.locationID = locationID
		self.inventoryItemID = inventoryItemID
		self.available = available
	}
	
	public let locationID, inventoryItemID, available: Int

	public enum CodingKeys: String, CodingKey {
        case locationID = "location_id"
        case inventoryItemID = "inventory_item_id"
        case available
    }
}
