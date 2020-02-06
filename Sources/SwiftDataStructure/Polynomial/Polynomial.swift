//
//  Polynomial_1.swift
//  
//
//  Created by 游宗諭 on 2020/2/6.
//

import Foundation

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

// MARK: - mathematic
extension Polynomial_1 {
	func add(b: Polynomial_1) -> Polynomial_1 {
		var aPos: Int = degree
		var bPos: Int = b.degree
		let max = Swift.max(aPos, bPos)
		var _coefList = [Float]()
		while aPos >= 0 && bPos >= 0 {
			switch true {
				case aPos > bPos:
					_coefList.append(self.coefList[aPos])
					aPos -= 1
				case aPos < bPos:
					_coefList.append(self.coefList[bPos])
					bPos -= 1
				default /* aPos == bPos */:
					_coefList.append(self.coefList[aPos]+self.coefList[bPos])
					aPos -= 1
					bPos -= 1
			}
		}
		print(_coefList)
		return try! .init(degree: max, coef: _coefList.reversed())
	}
}

// MARK: - Public
extension Polynomial_1 {
	public static func + (lhs:Polynomial_1, rhs: Polynomial_1) -> Polynomial_1 {
		return  lhs.add(b: rhs)
	}
}
