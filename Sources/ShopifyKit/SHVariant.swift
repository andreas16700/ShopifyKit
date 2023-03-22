// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let sHVariant = try? newJSONDecoder().decode(SHVariant.self, from: jsonData)

import Foundation

// MARK: - SHVariant
public struct SHVariant: Codable, Hashable {
	public init(id: Int? = nil, productID: Int? = nil, title: String = "", price: String = "", sku: String = "", position: Int? = nil, inventoryPolicy: SHInventoryPolicy = .deny, compareAtPrice: String? = nil, fulfillmentService: SHFulfillmentService = .manual, inventoryManagement: SHInventoryManagement? = nil, option1: String? = nil, option2: String? = nil, option3: String? = nil, createdAt: String? = nil, updatedAt: String? = nil, taxable: Bool = true, barcode: String? = nil, grams: Int? = nil, imageID: Int? = nil, weight: Double? = nil, weightUnit: SHWeightUnit? = nil, inventoryItemID: Int? = nil, inventoryQuantity: Int? = nil, oldInventoryQuantity: Int? = nil, requiresShipping: Bool? = nil, adminGraphqlAPIID: String? = nil, inventoryLevel: InventoryLevel? = nil) {
		self.id = id
		self.productID = productID
		self.title = title
		self.price = price
		self.sku = sku
		self.position = position
		self.inventoryPolicy = inventoryPolicy
		self.compareAtPrice = compareAtPrice
		self.fulfillmentService = fulfillmentService
		self.inventoryManagement = inventoryManagement
		self.option1 = option1
		self.option2 = option2
		self.option3 = option3
		self.createdAt = createdAt
		self.updatedAt = updatedAt
		self.taxable = taxable
		self.barcode = barcode
		self.grams = grams
		self.imageID = imageID
		self.weight = weight
		self.weightUnit = weightUnit
		self.inventoryItemID = inventoryItemID
		self.inventoryQuantity = inventoryQuantity
		self.oldInventoryQuantity = oldInventoryQuantity
		self.requiresShipping = requiresShipping
		self.adminGraphqlAPIID = adminGraphqlAPIID
		self.inventoryLevel = inventoryLevel
	}
	
//    func hash(into hasher: inout Hasher) {
//        hasher.combine(id)
//    }
//
//    static func == (lhs: SHVariant, rhs: SHVariant) -> Bool {
//        return lhs.id == rhs.id
//    }
    
	public var id, productID: Int?
	public var title, price, sku: String
	public var position: Int?
	public let inventoryPolicy: SHInventoryPolicy
	public var compareAtPrice: String?
	public let fulfillmentService: SHFulfillmentService
	public let inventoryManagement: SHInventoryManagement?
	public var option1: String?
	public var option2: String?
	public var option3: String?
	public var createdAt, updatedAt: String?
	public let taxable: Bool
	public var barcode: String?
	public var grams: Int?
	public var imageID: Int?
	public var weight: Double?
	public let weightUnit: SHWeightUnit?
	public var inventoryItemID: Int?
	public let inventoryQuantity, oldInventoryQuantity: Int?
	public let requiresShipping: Bool?
	public let adminGraphqlAPIID: String?
	public var inventoryLevel: InventoryLevel?

	public enum CodingKeys: String, CodingKey {
        case id
        case productID = "product_id"
        case title, price, sku, position
        case inventoryPolicy = "inventory_policy"
        case compareAtPrice = "compare_at_price"
        case fulfillmentService = "fulfillment_service"
        case inventoryManagement = "inventory_management"
        case option1, option2, option3
        case createdAt = "created_at"
        case updatedAt = "updated_at"
        case taxable, barcode, grams
        case imageID = "image_id"
        case weight
        case weightUnit = "weight_unit"
        case inventoryItemID = "inventory_item_id"
        case inventoryQuantity = "inventory_quantity"
        case oldInventoryQuantity = "old_inventory_quantity"
        case requiresShipping = "requires_shipping"
        case adminGraphqlAPIID = "admin_graphql_api_id"
        case inventoryLevel = "inventory_level"
    }
//	init(from ps: PSItem){
//		var comparePriceString: String?
//		if let compD = ps.computeSHComparePrice(){
//			comparePriceString="\(compD)"
//		}
//		let barcode = ps.listItemBarcodes.first(where: {!$0.isLabelBarcode})?.barcode
//		self.init(id: nil, productID: nil, title: ps.computeSHVariantTitle(), price: "\(ps.computeSHPrice())", sku: ps.itemCode365, position: nil, inventoryPolicy: .deny, compareAtPrice: comparePriceString, fulfillmentService: .manual, inventoryManagement: .shopify, option1: ps.getOption1(name: false), option2: ps.getOption2(name: false), option3: ps.getOption3(name: false), createdAt: nil, updatedAt: nil, taxable: true, barcode: barcode, grams: 0, imageID: nil, weight: Double(ps.itemWeight) , weightUnit: .kg, inventoryItemID: nil, inventoryQuantity: nil, oldInventoryQuantity: nil, requiresShipping: true, adminGraphqlAPIID: nil)
//	}
}
