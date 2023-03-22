//
//  File.swift
//  
//
//  Created by Andreas Loizides on 10/08/2021.
//

import Foundation
protocol ConcatinableAsString{
    func asString()->String
}
extension Array{
	mutating func optionalAppend(_ a: Self?){
		if let a=a{append(contentsOf: a)}
	}
}
extension SHOption: ConcatinableAsString{
    func asString() -> String {
        return "Name: \(self.name) Values: \(self.values.joined(separator: ", "))"
    }
}
