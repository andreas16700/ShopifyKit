//
//  File.swift
//  
//
//  Created by Andreas Loizides on 18/04/2020.
//

import Foundation
public struct SHFulfillment: Codable {
    let createdAt: String?
    let id: String
    let lineItems: [SHLineItem]?
    let locationID: Int?
    let name: String?
    let notifyCustomer: Bool?
    let orderID: Int?
    let receipt: SHReceipt?
    let service: String?
    let shipmentStatus: String?
    let status: String?
    let trackingCompany: String?
    let trackingNumbers: [String]?
    let trackingURLs: [String]?
    let updatedAt: String?
    let variantInventoryManagement: String?
    
    enum CodingKeys: String, CodingKey{
        case id, name, service, receipt, status
        case createdAt = "created_at"
        case lineItems = "line_items"
        case locationID = "location_id"
        case notifyCustomer = "notify_customer"
        case orderID = "order_id"
        case shipmentStatus = "shipment_status"
        case trackingCompany = "tracking_company"
        case trackingNumbers = "tracking_numbers"
        case trackingURLs = "tracking_urls"
        case updatedAt = "updated_at"
        case variantInventoryManagement = "variant_inventory_management"
    }
}
