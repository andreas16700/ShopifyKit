// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let sHOption = try? newJSONDecoder().decode(SHOption.self, from: jsonData)

import Foundation

// MARK: - SHOption
public struct SHOption: Codable, Hashable {
	public init(id: Int? = nil, productID: Int? = nil, name: String, position: Int?, values: [String]) {
		self.id = id
		self.productID = productID
		self.name = name
		self.position = position
		self.values = values
	}
	
    public var id, productID: Int?
	public var name: String
	public var position: Int?
	public var values: [String]

	public enum CodingKeys: String, CodingKey {
        case id
        case productID = "product_id"
        case name, position, values
    }
	
}
