// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let sHOrder = try? newJSONDecoder().decode(SHOrder.self, from: jsonData)

import Foundation

// MARK: - SHOrder
public struct SHOrder: Codable {
    let id: Double
    let email: String
    let closedAt: String?
    let createdAt, updatedAt: String?
    let number: Int
    let note: String?
    let token: String
    let gateway: String?
    let test: Bool
    let totalPrice, subtotalPrice: String
    let totalWeight: Int?
    let totalTax: String
    let taxesIncluded: Bool
    let financialStatus: SHOrderStatus?
    let currency: String
    let confirmed: Bool
    let totalDiscounts, totalLineItemsPrice: String?
    let cartToken: String?
    let buyerAcceptsMarketing: Bool
    let name: String
    let landingSite, referringSite: String?
    let cancelledAt: String?
    let cancelReason: String?
    let totalPriceUsd, checkoutToken, reference: String?
    let userID: Int?
    let locationID: Int?
    let sourceIdentifier, sourceURL: String?
    let processedAt: String?
    let phone: String?
    let deviceID: Int?
    let customerLocale: String?
    let browserIP: String?
    let appID: Int?
    let landingSiteRef: String?
    let orderNumber: Int
    let discountApplications: [SHDiscountApplication]
    let noteAttributes: [SHNoteAttributes]?
    let discountCodes: [SHDiscountCode]?
    let paymentGatewayNames: [String]?
    let processingMethod: String?
    let checkoutID: Int?
    let sourceName: String?
    let fulfillmentStatus: String?
    let taxLines: [SHTaxLine]?
    let tags, contactEmail: String?
    let orderStatusURL: String
    let presentmentCurrency: String?
    let totalLineItemsPriceSet, totalDiscountsSet, totalShippingPriceSet, subtotalPriceSet: SHSet?
    let totalPriceSet, totalTaxSet: SHSet
    let lineItems: [SHLineItem]
    let fulfillments: [SHFulfillment]?
    let refunds: [SHRefund]?
    let totalTipReceived: String
    let originalTotalDutiesSet, currentTotalDutiesSet: SHSet?
    let adminGraphqlAPIID: String?
    let shippingLines: [SHShippingLine]?
    let billingAddress, shippingAddress: SHIngAddress?
    let customer: SHCustomer?

    enum CodingKeys: String, CodingKey {
        case id, email
        case closedAt = "closed_at"
        case createdAt = "created_at"
        case updatedAt = "updated_at"
        case number, note, token, gateway, test
        case totalPrice = "total_price"
        case subtotalPrice = "subtotal_price"
        case totalWeight = "total_weight"
        case totalTax = "total_tax"
        case taxesIncluded = "taxes_included"
        case currency
        case financialStatus = "financial_status"
        case confirmed
        case totalDiscounts = "total_discounts"
        case totalLineItemsPrice = "total_line_items_price"
        case cartToken = "cart_token"
        case buyerAcceptsMarketing = "buyer_accepts_marketing"
        case name
        case referringSite = "referring_site"
        case landingSite = "landing_site"
        case cancelledAt = "cancelled_at"
        case cancelReason = "cancel_reason"
        case totalPriceUsd = "total_price_usd"
        case checkoutToken = "checkout_token"
        case reference
        case userID = "user_id"
        case locationID = "location_id"
        case sourceIdentifier = "source_identifier"
        case sourceURL = "source_url"
        case processedAt = "processed_at"
        case deviceID = "device_id"
        case phone
        case customerLocale = "customer_locale"
        case appID = "app_id"
        case browserIP = "browser_ip"
        case landingSiteRef = "landing_site_ref"
        case orderNumber = "order_number"
        case discountApplications = "discount_applications"
        case discountCodes = "discount_codes"
        case noteAttributes = "note_attributes"
        case paymentGatewayNames = "payment_gateway_names"
        case processingMethod = "processing_method"
        case checkoutID = "checkout_id"
        case sourceName = "source_name"
        case fulfillmentStatus = "fulfillment_status"
        case taxLines = "tax_lines"
        case tags
        case contactEmail = "contact_email"
        case orderStatusURL = "order_status_url"
        case presentmentCurrency = "presentment_currency"
        case totalLineItemsPriceSet = "total_line_items_price_set"
        case totalDiscountsSet = "total_discounts_set"
        case totalShippingPriceSet = "total_shipping_price_set"
        case subtotalPriceSet = "subtotal_price_set"
        case totalPriceSet = "total_price_set"
        case totalTaxSet = "total_tax_set"
        case lineItems = "line_items"
        case fulfillments, refunds
        case totalTipReceived = "total_tip_received"
        case originalTotalDutiesSet = "original_total_duties_set"
        case currentTotalDutiesSet = "current_total_duties_set"
        case adminGraphqlAPIID = "admin_graphql_api_id"
        case shippingLines = "shipping_lines"
        case billingAddress = "billing_address"
        case shippingAddress = "shipping_address"
        case customer
    }
}
