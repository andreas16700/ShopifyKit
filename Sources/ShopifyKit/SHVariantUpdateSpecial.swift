//
//  File.swift
//  
//
//  Created by Andreas Loizides on 16/06/2020.
//

public struct SHVariantUpdateSpecial: Codable, Hashable{
	public init(id: Int?, option1: String?, option2: String?, option3: String?, price: String?, compare_at_price: String?, title: String?, sku: String?, image_id: Int?, barcode: String?, weight: Double?, weight_unit: SHWeightUnit?) {
        self.id = id
        self.option1 = option1
        self.option2 = option2
        self.option3 = option3
        self.price = price
        self.compare_at_price = compare_at_price
        self.title = title
        self.sku = sku
        self.image_id = image_id
        self.barcode = barcode
        self.weight = weight
        self.weight_unit = weight_unit
    }
    
	public let id: Int?
	public let option1: String?
	public let option2: String?
	public let option3: String?
	public let price: String?
	public let compare_at_price: String?
	public let title: String?
	public let sku: String?
	public let image_id: Int?
	public let barcode: String?
	public let weight: Double?
	public let weight_unit:SHWeightUnit?
    
    
    
	public init(updateType: SHVariantUpdate) {
        self.id=updateType.id
        self.option1=updateType.option1
        self.option2=updateType.option2
        self.option3=updateType.option3
        self.price=updateType.price
        self.compare_at_price=updateType.compare_at_price
        self.title=updateType.title
        self.sku=nil
        self.image_id=nil
        self.barcode=nil
        self.weight=nil
        self.weight_unit=nil
    }
	public init(newVarType updateType: SHVariant) {
        self.sku=updateType.sku
        self.option1=updateType.option1
        self.option2=updateType.option2
        self.option3=updateType.option3
        self.price=updateType.price
        self.compare_at_price=updateType.compareAtPrice
        self.title=updateType.title
        self.image_id=updateType.imageID
        self.barcode=updateType.barcode
        self.weight=updateType.weight
        self.weight_unit=updateType.weightUnit
		self.id=updateType.id
    }
}
