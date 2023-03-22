// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let sHShippingLine = try? newJSONDecoder().decode(SHShippingLine.self, from: jsonData)

import Foundation

// MARK: - SHShippingLine
public struct SHShippingLine: Codable {
    let id: Double
    let title, price: String
    let code: String?
    let source: String?
    let phone, requestedFulfillmentServiceID, deliveryCategory, carrierIdentifier: String?
    let discountedPrice: String?
    let priceSet, discountedPriceSet: SHSet?
    let discountAllocations: [SHDiscountAllocation]?
    let taxLines: [SHTaxLine]?

    enum CodingKeys: String, CodingKey {
        case id, title, price, code, source, phone
        case requestedFulfillmentServiceID = "requested_fulfillment_service_id"
        case deliveryCategory = "delivery_category"
        case carrierIdentifier = "carrier_identifier"
        case discountedPrice = "discounted_price"
        case priceSet = "price_set"
        case discountedPriceSet = "discounted_price_set"
        case discountAllocations = "discount_allocations"
        case taxLines = "tax_lines"
    }
}
