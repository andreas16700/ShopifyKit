//
//  File.swift
//  
//
//  Created by Andreas Loizides on 13/12/2022.
//

import Foundation

public struct ShopifyError: Error{
	public init(response: String?) {
		self.response = response
	}
	public let response: String?
}
public protocol ShopifyClientProtocol{
	//MARK: Variant
	func deleteVariant(ofProductID productID: Int, variantID: Int)async->Result<Bool,ShopifyError>
	func updateVariant(with update: SHVariantUpdate)async -> Result<SHVariant,ShopifyError>
	func updateVariants(with updates: [SHVariantUpdate])async -> Result<[SHVariant],ShopifyError>
	func createNewVariant(variant: SHVariantUpdate, for productID: Int)async ->Result<SHVariant,ShopifyError>
	func createNewViariants(variants: [SHVariantUpdate], for productID: Int)async -> Result<[SHVariant],ShopifyError>
	//MARK: Product
	func deleteProduct(id: Int)async -> Result<Bool,ShopifyError>
	func updateProduct(with update: SHProductUpdate)async ->Result<SHProduct,ShopifyError>
	func createNewProduct(new: SHProduct)async->Result<SHProduct,ShopifyError>
	func getAllProducts()async->Result<[SHProduct],ShopifyError>
	func getProduct(withHandle handle: String)async -> Result<SHProduct,ShopifyError>
	func getProduct(withID id: Int)async -> Result<SHProduct,ShopifyError>
	func getIDOfProduct(withHandle handle: String)async -> Result<Int,ShopifyError>
	//MARK: Inventory
	func updateInventory(current: InventoryLevel, update: SHInventorySet)async->Result<InventoryLevel,ShopifyError>
	func updateInventories(updates: [SHInventorySet])async->Result<[InventoryLevel],ShopifyError>
	func getInventory(of invItemID: Int)async ->Result<InventoryLevel,ShopifyError>
	func getInventories(of invItemIDs: [Int])async ->Result<[InventoryLevel],ShopifyError>
	func getAllInventories()async -> Result<[InventoryLevel],ShopifyError>
	func getAllInventories(of locationID: Int)async ->Result<[InventoryLevel],ShopifyError>
	func getAllLocations()async ->Result<[SHLocation],ShopifyError>
}
