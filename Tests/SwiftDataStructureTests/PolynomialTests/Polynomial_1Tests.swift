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
	func testPolynomialAdd() {
		let degree = 4
		let coeflist:[Float] = [1,0,3,10,1]
		let polynomial1 = try! Polynomial_1(degree: degree, coef: coeflist)
		let polynomial2 = try! Polynomial_1(degree: degree, coef: coeflist)
		let result = polynomial1 + polynomial2
		XCTAssertEqual(result.degree, degree)
		XCTAssertEqual(result.coefList, coeflist.map{$0*2})
	}
}
