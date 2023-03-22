//
//  File.swift
//  
//
//  Created by Andreas Loizides on 24/04/2020.
//

import Foundation

protocol SHVariantKind: Codable {
	
}

public struct ProductAndItsStocks: Codable{
	public init(product: SHProduct, stocksBySKU: [String : Int]) {
		self.product = product
		self.stocksBySKU = stocksBySKU
	}
	
	public let product: SHProduct
	public let stocksBySKU: [String: Int]
}

public struct SHVariantUpdate: Codable, SHVariantKind, Hashable{
	public init(id: Int? = nil, option1: String? = nil, option2: String? = nil, option3: String? = nil, price: String? = nil, compare_at_price: String? = nil, sku: String? = nil, title: String? = nil, barcode: String? = nil) {
        self.id = id
        self.option1 = option1
        self.option2 = option2
        self.option3 = option3
        self.price = price
        self.compare_at_price = compare_at_price
		self.sku = sku
        self.title = title
        self.barcode = barcode
    }
    
	public let id: Int?
	public let option1: String?
	public let option2: String?
	public let option3: String?
	public let price: String?
	public let compare_at_price: String?
	public let sku: String?
	public let title: String?
	public let barcode: String?
    
    func getChanges()->String{
        var s = ""
        if let title = title{
            s+="New variant title: \(title)\n"
        }
        if let option1 = option1{
            s+="New option1: \(option1)\n"
        }
        if let option2 = option2{
            s+="New option2: \(option2)\n"
        }
        if let option3 = option3{
            s+="New option3: \(option3)\n"
        }
        if let price = price{
            s+="New price: \(price)\n"
        }
        if let comparePrice = compare_at_price{
            s+="New comparePrice: \(comparePrice)\n"
        }
        if let barcode = barcode {
            s+="New barcode: \(barcode)\n"
        }
        if s == ""{
            return "No changes"
        }
        return "Changes for variant id \(id ?? -5):\n"+s
    }
}

public struct SHProductUpdate: Codable, Hashable{
	public init(id: Int, title: String? = nil, published: Bool? = nil, body_html: String? = nil, tags: String? = nil, vendor: String? = nil, variants: [SHVariantUpdate]? = nil, options: [SHOption]? = nil, product_type: String? = nil, image: SHImage? = nil, images: [SHImage]? = nil) {
		self.id = id
		self.title = title
		self.published = published
		self.body_html = body_html
		self.tags = tags
		self.vendor = vendor
		self.variants = variants
		self.options = options
		self.product_type = product_type
		self.image = image
		self.images = images
	}
	
	public var id: Int
	public let title: String?
	public let published: Bool?
	public let body_html: String?
	public let tags: String?
	public let vendor: String?
	public let variants: [SHVariantUpdate]?
	public var options: [SHOption]?
	public let product_type: String?
	public let image: SHImage?
	public let images: [SHImage]?
    func getChange()->String{
        var s = ""
        if let title = title{
            s+="New product title: \(title)\n"
        }
        if let body = body_html{
            s+="New description: \(body)\n"
        }
        if let tags = tags{
            s+="New tags: \(tags)\n"
        }
        if let vendor = vendor{
            s+="New vendor: \(vendor)\n"
        }
        if let type = product_type{
            s+="New type: \(type)\n"
        }
        if let published = published{
            s+="product will be published: \(published ? "yes" : "no")\n"
        }
        if s == ""{
            return "No changes"
        }
        return s
    }
}
public struct EmptyResponse: Codable{
    
}
