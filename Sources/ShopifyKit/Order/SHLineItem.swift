// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let sHLineItem = try? newJSONDecoder().decode(SHLineItem.self, from: jsonData)

import Foundation

// MARK: - SHLineItem
public struct SHLineItem: Codable {
    let id: Double
    let variantID: Int?
    let title: String
    let quantity: Int
    let sku: String
    let variantTitle, vendor: String?
    let fulfillmentService: String?
    let productID: Double
    let requiresShipping, taxable, giftCard: Bool?
    let name: String?
    let variantInventoryManagement: String?
    let properties: SHProperty?
    let productExists: Bool?
    let fulfillableQuantity, grams: Int?
    let price: String
    let fulfillmentStatus, totalDiscount: String?
    let priceSet, totalDiscountSet: SHSet?
    let discountAllocations: [SHDiscountAllocation]?
    let duties: [SHDuty]?
    let adminGraphqlAPIID: String?
    let taxLines: [SHTaxLine]?
    
    public struct SHProperty: Codable{
        let property: String?
    }

    enum CodingKeys: String, CodingKey {
        case id
        case variantID = "variant_id"
        case title, quantity, sku
        case variantTitle = "variant_title"
        case vendor
        case fulfillmentService = "fulfillment_service"
        case productID = "product_id"
        case requiresShipping = "requires_shipping"
        case taxable
        case giftCard = "gift_card"
        case name
        case variantInventoryManagement = "variant_inventory_management"
        case properties
        case productExists = "product_exists"
        case fulfillableQuantity = "fulfillable_quantity"
        case grams, price
        case totalDiscount = "total_discount"
        case fulfillmentStatus = "fulfillment_status"
        case priceSet = "price_set"
        case totalDiscountSet = "total_discount_set"
        case discountAllocations = "discount_allocations"
        case duties
        case adminGraphqlAPIID = "admin_graphql_api_id"
        case taxLines = "tax_lines"
    }
}
