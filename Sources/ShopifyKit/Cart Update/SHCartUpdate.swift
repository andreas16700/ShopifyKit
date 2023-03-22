// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let sHCartUpdate = try? JSONDecoder().decode(SHCartUpdate.self, from: jsonData)

import Foundation

// MARK: - SHCartUpdate
public struct SHCartUpdate: Codable {
    let id: String
    let token: String?
    let lineItems: [SHLineItem]?
    let note: String?
    let createdAt: String
    let updatedAt: String?

    enum CodingKeys: String, CodingKey {
        case id, token
        case lineItems = "line_items"
        case note
        case updatedAt = "updated_at"
        case createdAt = "created_at"
    }
}
