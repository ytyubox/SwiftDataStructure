//
//  File.swift
//  
//
//  Created by 游宗諭 on 2020/2/9.
//

import Foundation


extension CustomStringConvertible {
	public func description(tabWithMax max:Int) -> String {
		let MaxtabCount = (max / 4) + 1
		let count = description.count
		let myTabCount = MaxtabCount - (count / 4)
		var resultString = description
		for _ in 0..<myTabCount {
			resultString += "\t"
		}
		return resultString
	}
}
