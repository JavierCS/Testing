//
//  FloatingPointTestCase.swift
//  
//
//  Created by jcruzsa on 28/09/21.
//

import XCTest
@testable import MyLibrary

final class FloatingPointTestCase: XCTestCase {
    func test_isInteger() {
        XCTAssert(1.0.isInteger)
        XCTAssertTrue(1.0.isInteger)
        XCTAssertFalse(1.1.isInteger)
    }
}
