//
//  File.swift
//  
//
//  Created by Andreas Loizides on 01/06/2021.
//

import Foundation
public struct SHNotFoundResponse: Codable{
	let errors: String
}
public struct SHErrorResponse{
	public init(errors: [String : Any]) {
		self.errors = errors
	}
	public init?(from jsonData: Data){
		if let dict = try? JSONSerialization.jsonObject(with: jsonData) as? [String: Any]{
			if let errorsDict = dict["errors"] as? [String: Any]{
				self.errors=errorsDict
				return
			}
		}
		return nil
	}
	
	public let errors: [String: Any]
}

