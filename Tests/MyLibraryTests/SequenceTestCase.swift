//
//  File.swift
//  
//
//  Created by jcruzsa on 28/09/21.
//

import XCTest
@testable import MyLibrary

final class SequenceTestCase: XCTestCase {
    func test_first() {
        let odds = stride(from: 1, through: 9, by: 2)
        XCTAssertEqual(Array(odds), [1, 3, 5, 7, 9])
        XCTAssertEqual(1, [1, 3, 5, 7, 9].first)
        XCTAssertNil(odds.prefix(0).first)
    }
    
    func test_sum() {
        let threeTwoOne = stride(from: 3, through: 1, by: -1)
        XCTAssertEqual(threeTwoOne.sum, 6)
        XCTAssertEqual([0.5, 1, 1.5].sum, 3)
        
    }
}
