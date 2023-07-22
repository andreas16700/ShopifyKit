// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let sHProduct = try? newJSONDecoder().decode(SHProduct.self, from: jsonData)
import Foundation
import Foundation

public struct SHProductWrapper: Codable{
	public init(product: SHProduct) {
		self.product = product
	}
	
	public let product: SHProduct
}
public struct SHProductUpdateWrapper: Codable{
	public init(product: SHProductUpdate) {
		self.product = product
	}
	
	public let product: SHProductUpdate
}
public struct SHVariantWrapper: Codable{
	public init(variant: SHVariant) {
		self.variant = variant
	}
	
	public let variant: SHVariant
}
public struct SHVariantUpdateWrapper: Codable{
	public init(variant: SHVariantUpdate) {
		self.variant = variant
	}
	
	public let variant: SHVariantUpdate
}
public struct SHProductsWrapper: Codable{
	public init(products: [SHProduct]) {
		self.products = products
	}
	
	public let products: [SHProduct]
}
public struct SHImageWrapper: Codable{
	public init(image: SHImage) {
		self.image = image
	}
	
	public let image: SHImage
}

// MARK: - SHProduct
public struct SHProduct: Codable, Hashable {
	public static let defaultVariant:SHVariant = .init(title: "an item", sku: "anItem")
    public init(id: Int? = nil, title: String, bodyHTML: String? = nil, vendor: String = "", productType: String = "", createdAt: String? = nil, handle: String, updatedAt: String? = nil, publishedAt: String? = nil, templateSuffix: String? = nil, publishedScope: String = "", status: Status = .active, tags: String = "", adminGraphqlAPIID: String? = nil, variants: [SHVariant] = [Self.defaultVariant], options: [SHOption]? = nil, images: [SHImage]? = nil, image: SHImage? = nil) {
		
		self.id = id
		self.title = title
		self.bodyHTML = bodyHTML
		self.vendor = vendor
		self.productType = productType
		self.createdAt = createdAt
		self.handle = handle
		self.updatedAt = updatedAt
		self.publishedAt = publishedAt
		self.templateSuffix = templateSuffix
		self.publishedScope = publishedScope
        self.status = status
		self.tags = tags
		self.adminGraphqlAPIID = adminGraphqlAPIID
		self.variants = variants
		self.options = options
		self.images = images
		self.image = image
	}
	
//    public func hash(into hasher: inout Hasher) {
//        hasher.combine(id)
//		hasher.combine(title)
//		hasher.combine(handle)
//    }

    public static func == (lhs: SHProduct, rhs: SHProduct) -> Bool {
        return lhs.id == rhs.id
    }
    
	public var id: Int?
	public var title, vendor, productType: String
	public var bodyHTML: String?
	public var createdAt: String?
	public var handle: String
	public var updatedAt, publishedAt: String?
	public let templateSuffix: String?
	public var publishedScope, tags: String
    public var status: Status
	public let adminGraphqlAPIID: String?
	public var variants: [SHVariant]
	public var options: [SHOption]?
	public var images: [SHImage]?
	public var image: SHImage?

	public enum Status: String, Codable, Hashable {
        case active = "active"
        case archived = "archived"
        case draft = "draft"
    }
    
	public enum CodingKeys: String, CodingKey {
        case id, title
        case bodyHTML = "body_html"
        case vendor
        case productType = "product_type"
        case createdAt = "created_at"
        case handle
        case updatedAt = "updated_at"
        case publishedAt = "published_at"
        case templateSuffix = "template_suffix"
        case publishedScope = "published_scope"
        case status
        case tags
        case adminGraphqlAPIID = "admin_graphql_api_id"
        case variants, options, images, image
    }
}
