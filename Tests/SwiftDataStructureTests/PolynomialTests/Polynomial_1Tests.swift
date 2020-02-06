//
//  Polynomial_1Tests.swift
//  
//
//  Created by 游宗諭 on 2020/2/6.
//

import XCTest
import SwiftDataStructure

class Polynomial_1Tests: XCTestCase {
	func testCreatePolynomial() {
		let degree = 4
		let coeflist:[Float] = [1,0,3,10,1]
		let polynomial = try! Polynomial_1(degree: degree, coef: coeflist)
		XCTAssertEqual(polynomial.degree, degree)
		XCTAssertEqual(polynomial.coefList, coeflist)
		
		XCTAssertThrowsError(try Polynomial_1(degree: 1, coef: coeflist))
	}
	func testPolynomialDescription() {
		let degree = 4
		let coeflist:[Float] = [1,0,3,10,1]
		let polynomial = try! Polynomial_1(degree: degree, coef: coeflist)
		let expect = "1x^4 + 10x^3 + 3x^2 + 0x^1 + 1"
		XCTAssertEqual(expect, polynomial.description)
	}
}
