//
//  File.swift
//  
//
//  Created by Andreas Loizides on 18/04/2020.
//

import Foundation
public struct SHTaxLine: Codable {
    let price: Double?
    let rate: Double?
    let title: String?
    let priceSet: SHSet?
    
    enum CodingKeys: String, CodingKey{
        case price, rate, title
        case priceSet = "price_set"
    }
}
