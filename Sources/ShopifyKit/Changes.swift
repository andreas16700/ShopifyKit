//
//  File.swift
//  
//
//  Created by Andreas Loizides on 22/04/2020.
//

import Foundation




/**
 returns a product if there are any changes
 */
/*
func compare(shProd: SHProduct, psItemss: [PSItem])->SHProduct?{
    guard shProd.handle == psItemss[0].modelCode365 || shProd.handle == psItemss[0].itemCode365 else{
        print("handle \(shProd.handle) does not match \(psItemss[0].modelCode365) or \(psItemss[0].itemCode365)!!")
        return nil
    }
    let first = psItemss[0]
    //we have a SH product with PS variants so these are possible:
    //->no change
    //->new variants
    //->edited variants
    //->removed (inactive) variants
    //First check product(model)-specific attributes
    
    //check name
    var newName: String?
    var compareTitle = first.modelName
    if (compareTitle == ""){
        compareTitle = first.itemName
    }
    if shProd.title != compareTitle{
        newName=first.modelName
    }
    
    //check product description
    func compareDescriptions(originalHTML: String, newString: String)->String?{
        let c1 = originalHTML.replacingOccurrences(of: "<br>", with: "\n").trimmingCharacters(in: .whitespacesAndNewlines)
        let c2 = newString.trimmingCharacters(in: .whitespacesAndNewlines)
        if c1==c2{
            return nil
        }
        return newString
    }
    //get the new description
    var prodDescr = ""
    for psVar in psItemss{
        if psVar.specifications.count>prodDescr.count{
            prodDescr=psVar.specifications
        }
    }
    
    //comparing it with the old
    //if newDescription is not nil then there is a new description
    let newDescription = compareDescriptions(originalHTML: shProd.bodyHTML, newString: prodDescr)
    //check tags (department, attributes, season,)
    func getNewTag(oldTag: String, psItem: PSItem)->String?{
        var tag = ""
        if (psItem.attribute1_Name != "" || psItem.attribute2_Name != "" || psItem.attribute3_Name != ""){
            tag = "Dept:\(psItem.deptName), Gender:\(psItem.attribute1_Name), \(psItem.modelName), Rebound:\(psItem.attribute3_Name), Season:\(psItem.seasonName), Style:\(psItem.attribute2_Name)"
        }else{
            tag = "\(psItem.modelName), Dept:\(psItem.deptName), Season:\(psItem.seasonName)"
        }
        if oldTag != tag{
            return tag
        }else{
            return nil
        }
    }
    let newTag = getNewTag(oldTag: shProd.tags, psItem: first)
    var newVendor: String?
    if (shProd.vendor != first.brandName){
        newVendor=first.brandName
    }
    //check category
    var newCategory: String?
    if first.categoryName != shProd.productType{
        newCategory=first.categoryName
    }
    let vFirst = shProd.variants[0]
    var newCompareString: String?
    var newPriceString: String?
    func comparePrices(shopString: String, shopCompareString: String, ps1: Double, ps3: Double, newPrice: inout String?, newCompare: String?){
        guard let shop = Double(shopString), let shopCompare = Double(shopCompareString) else{
            errorPrint("ERROR!! SH Prod ID \(shProd.id ?? 0) Shopify prices were NOT converted to double!! \(shopString),\(shopCompareString)")
            return
        }
        var newPriceDouble = ps1
        var newCompareDouble = ps1
        if ps3>0 && ps3 != ps1 && ps3 != ps1+0.01 && ps3+0.01 != ps1{
            //then two prices.
            //ps3 is price and ps1 is compare price
            newPriceDouble=ps3
            newCompareDouble=ps1
        }
        if (newPriceDouble != shop) || (newCompareDouble != shopCompare){
            //newPrice = "\(newPriceDouble)"
            //newCompareDouble = "\(newCompareDouble)"
        }else{
            newPrice = nil
            //newCompareDouble = nil
        }
        return
    }
    //comparePrices(shopString: vFirst.price, shopCompareString: vFirst.compareAtPrice, ps1: first.priceIncl1, ps3: first.priceIncl3, newPrice: &newPriceString, newCompare: &newCompareString)
    //newCompareString and newPriceString only have values if the price is changed.
    
    //check for variant changes
    var shVariantUpdates = [SHVariantUpdate]()
    for psVar in psItemss{
        for i in 0..<shProd.variants.count{
            let variant = shProd.variants[i]
            if variant.sku == psVar.itemCode365{
                //found a matching shopify variant
                //check for changes
                //check option 1(size) and option 2(color)
                var newSize: String?
                var newColor: String?
                var newTitle: String?
                if variant.option1 != psVar.sizeName{
                    newSize=psVar.sizeName
                    newTitle = "\(psVar.sizeName) / \(psVar.colorName)"
                }
                if variant.option2 != psVar.colorName{
                    newColor=psVar.colorName
                    newTitle = "\(psVar.sizeName) / \(psVar.colorName)"
                }
                shVariantUpdates.append(SHVariantUpdate(id: variant.id!, option1: newSize, option2: newColor, price: newPriceString, compare_at_price: newCompareString, title: newTitle))
                break
            }
        }
        //if we're here that means it's a new variant
    }
    return nil
}
*/
