// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let sHCustomer = try? newJSONDecoder().decode(SHCustomer.self, from: jsonData)

import Foundation

// MARK: - SHCustomer
public struct SHCustomer: Codable {
    let id: Double
    let email: String?
    let acceptsMarketing: Bool
    let createdAt, updatedAt: String?
    let firstName, lastName: String
    let ordersCount: Int
    let state, totalSpent: String
    let lastOrderID: Int?
    let note: String?
    let verifiedEmail: Bool?
    let multipassIdentifier: String?
    let taxExempt: Bool?
    let phone: String?
    let tags: String?
    let lastOrderName: String?
    let currency: String
    let acceptsMarketingUpdatedAt, marketingOptInLevel: String?
    let adminGraphqlAPIID: String?
    let defaultAddress: SHDefaultAddress?

    enum CodingKeys: String, CodingKey {
        case id, email
        case acceptsMarketing = "accepts_marketing"
        case createdAt = "created_at"
        case updatedAt = "updated_at"
        case firstName = "first_name"
        case lastName = "last_name"
        case ordersCount = "orders_count"
        case state
        case totalSpent = "total_spent"
        case lastOrderID = "last_order_id"
        case note
        case verifiedEmail = "verified_email"
        case multipassIdentifier = "multipass_identifier"
        case taxExempt = "tax_exempt"
        case phone, tags
        case lastOrderName = "last_order_name"
        case currency
        case acceptsMarketingUpdatedAt = "accepts_marketing_updated_at"
        case marketingOptInLevel = "marketing_opt_in_level"
        case adminGraphqlAPIID = "admin_graphql_api_id"
        case defaultAddress = "default_address"
    }
}
