//
//  File.swift
//  
//
//  Created by 游宗諭 on 2020/2/6.
//

import Foundation
struct InitError:Error {
	init(_ message: String) {self.message = message}
	let message: String
}

public class Polynomial_1 {
	public init(degree: Int, coef: [Float]) throws {
		guard degree == coef.count - 1 else {throw InitError("Polynomial_1 degree is not equal to coef.count") }
		self.degree = degree
		self.coefList = coef
	}
	
	public var degree: Int
	public var coefList:[Float]
}

extension Polynomial_1: CustomStringConvertible {
	public var description: String {
		var d:Int = degree
		var coefStringList = [String]()
		
		let formatter = NumberFormatter()
		formatter.minimumFractionDigits = 0
		formatter.maximumFractionDigits = 2
		formatter.numberStyle = .decimal
		
		for coef in coefList.reversed() {
			let this:String
			let coefstring = formatter.string(from: NSNumber(value: coef))!
			if d != 0 {
				this = coefstring + "x^" + d.description
			} else {
				this = coefstring
			}
			coefStringList.append(this)
			d -= 1
		}
		return coefStringList.joined(separator: " + ")
	}
}
