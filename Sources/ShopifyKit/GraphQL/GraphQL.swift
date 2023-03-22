//
//  File.swift
//  
//
//  Created by Andreas Loizides on 20/07/2022.
//

import Foundation
// MARK: - SHGQLResponse
public struct SHGQLResponse<T: Codable>: Codable {
	public let data: T
	public let extensions: Extensions
}

// MARK: - DataClass
public struct ProductIDBYHandleQuery: Codable {
	public let productByHandle: ProductByHandle?
}

// MARK: - ProductByHandle
public struct ProductByHandle: Codable {
	public let legacyResourceId: String
}

// MARK: - Extensions
public struct Extensions: Codable {
	public let cost: Cost
}

// MARK: - Cost
public struct Cost: Codable {
	public let requestedQueryCost, actualQueryCost: Int
	public let throttleStatus: ThrottleStatus
}

// MARK: - ThrottleStatus
public struct ThrottleStatus: Codable {
	public let maximumAvailable, currentlyAvailable, restoreRate: Int
}
