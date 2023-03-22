//
//  SHOrderStatus.swift
//  
//
//  Created by Andreas Loizides on 13/04/2020.
//

import Foundation
enum SHOrderStatus: String, Codable{
    case pending = "pending"
    case authorized = "authorized"
    case partiallyPaid = "partially_paid"
    case paid = "paid"
    case partiallyRefunded = "partially_refunded"
    case refunded = "refunded"
    case voided = "voided"
}
enum SHFulfillStatus: String, Codable{
    case fulfilled = "fulfilled"
    case null = "null"
    case partial = "partial"
    case restocked = "restocked"
}
public struct SHNoteAttributes: Codable{
    let name, value: String
}


