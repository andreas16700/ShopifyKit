// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let sHImage = try? newJSONDecoder().decode(SHImage.self, from: jsonData)

import Foundation

// MARK: - SHImage
public struct SHImage: Codable, Hashable {
	public init(id: Int? = nil, productID: Int? = nil, position: Int? = nil, createdAt: String? = nil, updatedAt: String? = nil, alt: String? = nil, width: Int? = nil, height: Int? = nil, src: String, variantIDS: [Int]? = nil, adminGraphqlAPIID: String? = nil) {
		self.id = id
		self.productID = productID
		self.position = position
		self.createdAt = createdAt
		self.updatedAt = updatedAt
		self.alt = alt
		self.width = width
		self.height = height
		self.src = src
		self.variantIDS = variantIDS
		self.adminGraphqlAPIID = adminGraphqlAPIID
	}
	
    public let id, productID, position: Int?
    public let createdAt, updatedAt: String?
    public let alt: String?
    public let width, height: Int?
    public let src: String
    public let variantIDS: [Int]?
    public let adminGraphqlAPIID: String?

    public enum CodingKeys: String, CodingKey {
        case id
        case productID = "product_id"
        case position
        case createdAt = "created_at"
        case updatedAt = "updated_at"
        case alt, width, height, src
        case variantIDS = "variant_ids"
        case adminGraphqlAPIID = "admin_graphql_api_id"
    }
}
