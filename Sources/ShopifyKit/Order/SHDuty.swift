//
//  File.swift
//  
//
//  Created by Andreas Loizides on 18/04/2020.
//

import Foundation
public struct SHDuty: Codable {
    let id, harmonizedSystemCode, countryCodeOfOrigin: String?
    let shopMoney, presentmentMoney: SHMoney?
    let taxLines: [SHTaxLine]?
    let adminGraphqlAPIID: String?

    enum CodingKeys: String, CodingKey {
        case id
        case harmonizedSystemCode = "harmonized_system_code"
        case countryCodeOfOrigin = "country_code_of_origin"
        case shopMoney = "shop_money"
        case presentmentMoney = "presentment_money"
        case taxLines = "tax_lines"
        case adminGraphqlAPIID = "admin_graphql_api_id"
    }
}
