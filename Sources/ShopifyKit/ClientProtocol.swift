//
//  File.swift
//  
//
//  Created by Andreas Loizides on 13/12/2022.
//

import Foundation

public protocol ShopifyClientProtocol{
	//MARK: Variant
	func deleteVariant(ofProductID productID: Int, variantID: Int)async->Bool
	func updateVariant(with update: SHVariantUpdate)async -> SHVariant?
	func updateVariants(with updates: [SHVariantUpdate])async -> SHVariant?
	func createNewVariant(variant: SHVariantUpdate, for productID: Int)async ->SHVariant?
	//MARK: Product
	func deleteProduct(id: Int)async -> Bool
	func updateProduct(with update: SHProductUpdate)async ->SHProduct?
	func createNewProduct(new: SHProduct)async->SHProduct?
	func getAllProducts()async->[SHProduct]?
	func getProduct(withHandle handle: String)async -> SHProduct?
	func getProduct(withID id: Int)async -> SHProduct?
	func getIDOfProduct(withHandle handle: String)async -> Int?
	//MARK: Inventory
	func updateInventory(current: InventoryLevel, update: SHInventorySet)async->InventoryLevel?
	func updateInventories(updates: [(InventoryLevel,SHInventorySet)])async->[InventoryLevel]?
	func getInventory(of invItemID: Int)async ->InventoryLevel?
	func getInventories(of invItemIDs: [Int])async ->[InventoryLevel]?
	func getAllInventories()async -> [InventoryLevel]?
	func getAllInventories(of locationID: Int)async ->[InventoryLevel]?
	func getAllLocations()async ->[SHLocation]?
}
