//
//  File.swift
//  
//
//  Created by 游宗諭 on 2020/2/6.
//

struct InitError:Error {
	init(_ message: String) {self.message = message}
	let message: String
}
